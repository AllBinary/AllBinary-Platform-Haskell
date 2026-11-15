-- Compiles the generated Haskell sources with ghc --make.
-- Usage: runghc build.hs Ghc OutputDir FailOnError SourceDir [DependencySourceDir...]
--
-- The generated module names are the Java class names without the package while the files are in Java package directories.
-- GHC only finds imported modules by file name on its search path so every source file is passed to ghc.
-- The dependency source directories are nearest first like Maven. A module that a nearer directory has is not passed again
-- so a class in 2 dependencies is compiled once like Maven uses the nearest one.
-- The file list is passed in a GHC response file because it can be longer than the Windows command line.
--
-- Java classes can use each other and Haskell modules can not import each other without a boot file. For each cycle
-- of imports one import becomes an import {-# SOURCE #-} of a generated .hs-boot file. A base class import is kept and
-- the import of the subclass by the base class is the one that changes. The changed files are copies in OutputDir.

import Control.Monad (filterM, forM, forM_, when)
import Data.Char (isAlpha, isAlphaNum, isLower, isSpace, isUpper)
import Data.Graph (SCC (..), stronglyConnComp)
import Data.List (isPrefixOf, sort, sortOn)
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import GHC.ResponseFile (escapeArgs)
import System.Directory (createDirectoryIfMissing, doesDirectoryExist, listDirectory, removePathForcibly)
import System.Environment (getArgs)
import System.Exit (ExitCode (..), exitWith)
import System.FilePath (splitDirectories, takeBaseName, takeExtension, (</>))
import System.IO (IOMode (ReadMode), char8, hGetLine, hIsEOF, hPutStrLn, hSetEncoding, stderr, withFile)
import System.Process (rawSystem)

main :: IO ()
main = do
    args <- getArgs
    case args of
        (ghc : outputDir : failOnError : sourceDir : dependencyDirs) -> build ghc outputDir failOnError sourceDir dependencyDirs
        _ -> do
            hPutStrLn stderr "Usage: runghc build.hs Ghc OutputDir FailOnError SourceDir [DependencySourceDir...]"
            exitWith (ExitFailure 2)

build :: FilePath -> FilePath -> String -> FilePath -> [FilePath] -> IO ()
build ghc outputDir failOnError sourceDir dependencyDirs = do
    existingDependencyDirs <- filterM doesDirectoryExist dependencyDirs
    forM_ (filter (`notElem` existingDependencyDirs) dependencyDirs) $ \dependencyDir ->
        hPutStrLn stderr ("Warning: Haskell dependency source directory does not exist: " ++ dependencyDir)
    sources <- findSources sourceDir
    if null sources
        then putStrLn ("No Haskell sources in " ++ sourceDir)
        else do
            dependencySources <- mapM findSources existingDependencyDirs
            availableSources <- withRequiredModules (sources : dependencySources)
            let (nearestSources, duplicateCount) = nearestModules (withoutReplacedStubs availableSources)
            when (duplicateCount > 0) $
                putStrLn ("Haskell modules also in a nearer source directory: " ++ show duplicateCount)
            createDirectoryIfMissing True outputDir
            allSources <- breakCycles outputDir nearestSources
            let responseFile = outputDir </> "ghc-sources.rsp"
            writeFile responseFile (escapeArgs allSources)
            exitCode <- rawSystem ghc ["--make", "-no-link", "-fkeep-going", "-outputdir", outputDir, "@" ++ responseFile]
            case exitCode of
                ExitSuccess -> putStrLn ("Haskell modules compiled: " ++ show (length sources) ++ " and dependency modules: " ++ show (length allSources - length sources))
                ExitFailure _ -> do
                    hPutStrLn stderr "Haskell build failed"
                    when (failOnError == "true") (exitWith exitCode)

-- Java classes that stub projects provide until a platform project provides the real one: the module name and the
-- stub project directories in tiers, the fuller stubs first. Java uses the jar order, but GHC compiles every dependency
-- source together, so only the dependency copies of the best tier present are kept: a real copy (outside the stub
-- projects) first, then the first stub tier, and so on. For example, TsUtil of TempBaseJavaLibrary does not have
-- getRecord and getByteArray that KeyValuePersistance uses, while the J2MEOnly and NoneOnly stubs have them.
-- The sources of the project itself are checked the same way, so a stub project such as J2MEOnlyJavaLibrary gets the
-- platform copy too: the MIDPUtil of J2MEOnly calls the J2ME overloads such as Image.createImage(int, int) that the
-- MicroEmulator for polyglot of the Haskell builds does not have, and the Haskell platform copy is in the runtime.
-- AbPathData of LogJ2MEJavaLibrary has only the separators, while the other Log platform copies such as LogJ2SE also have
-- getNameFromPath that AbFilePath of BasePreloaderFileJavaLibrary uses, and LogJ2ME can be the nearer one.
stubModules :: [(String, [[String]])]
stubModules =
    [ ("TsUtil", [["J2MEOnlyJavaLibraryHsM", "NoneOnlyJavaLibraryHsM"], ["TempBaseJavaLibraryHsM"]])
    , ("MIDPUtil", [["J2MEOnlyJavaLibraryHsM"]])
    , ("AbPathData", [["LogJ2MEJavaLibraryHsM"]])
    -- TouchButton of NoTouchButtonJavaLibrary has new_6 and getRectangleP, while TouchButtonRecognizer, FullTouchButton,
    -- and BasicNeededTouchButtonsBuilder of TouchButtonJavaLibrary use new_7 and getRectangle (GameJ2MELibrary has both)
    , ("TouchButton", [["NoTouchButtonJavaLibraryHsM"]])
    -- The cell positions and touch inputs such as SECOND_FROM_BOTTOM_LEFT that BasicNeededTouchButtonsBuilder uses. The
    -- NoTouchButton BasicTouchButtonsBuilder and CancelTouchButtonInputFactory stay for the projects without touch buttons.
    , ("BasicTouchButtonCellPositionFactory", [["NoTouchButtonJavaLibraryHsM"]])
    , ("BasicTouchInputFactory", [["NoTouchButtonJavaLibraryHsM"]])
    ]

-- 0 for a real copy, 1 for the first stub tier, ...
stubTier :: FilePath -> Int
stubTier path = case lookup (takeBaseName path) stubModules of
    Just tiers -> case [index | (index, projects) <- zip [1 ..] tiers, any (`elem` projects) (splitDirectories path)] of
        (index : _) -> index
        [] -> 0
    Nothing -> 0

withoutReplacedStubs :: [[FilePath]] -> [[FilePath]]
withoutReplacedStubs directories = map (filter keep) directories
  where
    bestTiers = Map.fromListWith min [(takeBaseName path, stubTier path) | path <- concat directories]
    keep path = stubTier path <= Map.findWithDefault 0 (takeBaseName path) bestTiers

-- A source with the line "-- Haskell build requires modules: A B" in its first lines is left out of a build without
-- those modules, such as the runtime MIDPUtil in a project without the MicroEmulator
withRequiredModules :: [[FilePath]] -> IO [[FilePath]]
withRequiredModules directories = mapM (filterM hasRequired) directories
  where
    available = Set.fromList (map takeBaseName (concat directories))
    hasRequired path = all (`Set.member` available) <$> requiredModules path

requiredModulesMarker :: String
requiredModulesMarker = "-- Haskell build requires modules:"

-- The modules after the marker in the first 40 lines, read as bytes because only the ASCII marker matters
requiredModules :: FilePath -> IO [String]
requiredModules path = withFile path ReadMode $ \handle -> do
    hSetEncoding handle char8
    let loop count
            | count >= (40 :: Int) = pure []
            | otherwise = do
                end <- hIsEOF handle
                if end
                    then pure []
                    else do
                        line <- hGetLine handle
                        if requiredModulesMarker `isPrefixOf` line
                            then pure (words (drop (length requiredModulesMarker) line))
                            else loop (count + 1)
    loop 0

-- The files of each module name from the nearest directory and how many files were left out
nearestModules :: [[FilePath]] -> ([FilePath], Int)
nearestModules directories = go Set.empty (concat directories) [] 0
  where
    go _ [] kept duplicates = (reverse kept, duplicates)
    go seen (path : paths) kept duplicates
        | Set.member moduleName seen = go seen paths kept (duplicates + 1)
        | otherwise = go (Set.insert moduleName seen) paths (path : kept) duplicates
      where
        moduleName = takeBaseName path

findSources :: FilePath -> IO [FilePath]
findSources dir = do
    exists <- doesDirectoryExist dir
    if not exists
        then return []
        else do
            names <- listDirectory dir
            fmap concat $ forM (sort names) $ \name -> do
                let path = dir </> name
                isDirectory <- doesDirectoryExist path
                if isDirectory
                    then findSources path
                    else return [path | takeExtension path == ".hs"]

-- ===== Import cycles =====

data Import = Import
    { importModule :: String
    , importQualified :: Bool
    }

-- The modules a source imports with whether the import is qualified. An unqualified import is the base class.
parseImports :: String -> [Import]
parseImports text = [parsed | line <- lines text, Just parsed <- [parseImport line]]

parseImport :: String -> Maybe Import
parseImport line
    | "import " `isPrefixOf` line =
        let rest = words (drop 7 line)
        in case rest of
            ("qualified" : name : _) -> Just (Import (moduleWord name) True)
            (name : _) | name /= "{-#" -> Just (Import (moduleWord name) False)
            _ -> Nothing
    | otherwise = Nothing
  where
    moduleWord = takeWhile (\character -> isAlphaNum character || character == '_' || character == '.')

-- The sources with the cycles broken: changed copies of the importing modules and the boot files of the imported ones
breakCycles :: FilePath -> [FilePath] -> IO [FilePath]
breakCycles outputDir sources = do
    -- Remove obsolete generated boot files before rebuilding the current import graph.
    let cycleDir = outputDir </> "cycle-sources"
    cycleDirExists <- doesDirectoryExist cycleDir
    when cycleDirExists (removePathForcibly cycleDir)
    texts <- mapM readFileStrict sources
    let modules = Map.fromList [(takeBaseName path, (path, text)) | (path, text) <- zip sources texts]
        importsOf = Map.map (\(_, text) -> filter (\imported -> Map.member (importModule imported) modules) (parseImports text)) modules
        sourceImports = chooseSourceImports (Map.map snd modules) importsOf
    if Set.null sourceImports
        then pure sources
        else do
            let cycleDir = outputDir </> "cycle-sources"
                moduleTexts = Map.map snd modules
                cycleModules = cycleMembers importsOf
                -- The cycles whose records all move to a types module: module -> types module name
                typesModuleOf = Map.fromList
                    [ (member, cycleTypesModuleName members)
                    | members <- Set.toList (Set.fromList (Map.elems cycleModules))
                    , all (\member -> canMoveRecord member (Map.findWithDefault "" member moduleTexts)) (Set.toList members)
                    , member <- Set.toList members ]
                typesModules = Map.fromListWith Set.union [(typesModule, Set.singleton member) | (member, typesModule) <- Map.toList typesModuleOf]
                sourceImportedModules = Set.map snd sourceImports
                -- The modules of the cycle that the signatures of a boot file use also get a boot file so that boot file
                -- can import them {-# SOURCE #-} and keep those signatures such as registerMIDletAccess :: MIDletAccess.MIDletAccess -> IO ()
                -- Not needed for a cycle with a types module since its boot files have all the types.
                usedByBootFiles = Set.fromList
                    [ target
                    | importer <- Set.toList sourceImportedModules
                    , not (Map.member importer typesModuleOf)
                    , let text = snd (modules Map.! importer)
                          signatureLines = filter isSignature (lines text)
                    , imported <- Map.findWithDefault [] importer importsOf
                    , importQualified imported
                    , let target = importModule imported
                    , target /= importer
                    , Set.member target (Map.findWithDefault Set.empty importer cycleModules)
                    , any (mentionsModule target) signatureLines
                    ]
                directBootModules = sourceImportedModules `Set.union` usedByBootFiles
                bootModules = directBootModules `Set.union` baseBootModules moduleTexts importsOf typesModuleOf directBootModules
                changedModules = Set.map fst sourceImports `Set.union` bootModules `Set.union` Map.keysSet typesModuleOf
                bootImports = chooseBootImports moduleTexts importsOf bootModules cycleModules sourceImports
            createDirectoryIfMissing True cycleDir
            putStrLn ("Haskell import cycles broken with boot files for: " ++ unwords (Set.toList bootModules))
            when (not (Map.null typesModules)) $
                putStrLn ("Haskell import cycle records moved to: " ++ unwords (Map.keys typesModules))
            typesPaths <- forM (Map.toList typesModules) $ \(typesModule, members) -> do
                let typesPath = cycleDir </> (typesModule ++ ".hs")
                writeFile typesPath (cycleTypesModule typesModule members moduleTexts)
                pure typesPath
            changed <- forM (Set.toList changedModules) $ \moduleName -> do
                let (_, text) = modules Map.! moduleName
                    members = Map.findWithDefault Set.empty moduleName cycleModules
                    sourceTargets = Set.fromList [target | (importer, target) <- Set.toList sourceImports, importer == moduleName]
                    copyPath = cycleDir </> (moduleName ++ ".hs")
                    sourceLines = map (sourceImport sourceTargets) (lines text)
                case Map.lookup moduleName typesModuleOf of
                    Just typesModule -> do
                        writeFile copyPath (unlines (moduleWithMovedRecord typesModule members moduleName text sourceLines))
                        when (Set.member moduleName bootModules) $
                            writeFile (cycleDir </> (moduleName ++ ".hs-boot")) (typedBootFile typesModule members moduleName text)
                    Nothing -> do
                        writeFile copyPath (unlines sourceLines)
                        when (Set.member moduleName bootModules) $
                            writeFile (cycleDir </> (moduleName ++ ".hs-boot")) (bootFile moduleName members (Map.findWithDefault Set.empty moduleName bootImports) text)
                pure (moduleName, copyPath)
            let changedPaths = Map.fromList changed
            pure (typesPaths ++ [Map.findWithDefault path (takeBaseName path) changedPaths | path <- sources])

-- ===== Types module of a cycle =====
-- Java classes of a cycle use each other's types so the boot files of the cycle can not import each other for all of
-- them. The records of all the classes of the cycle move to a generated types module that imports no module of the
-- cycle. Each module of the cycle imports its record from it and exports it, and each module and boot file of the cycle
-- imports the types module qualified as the name of each module of the cycle so Display.Display is the same type. The
-- boot files then have every signature.

cycleTypesModuleName :: Set.Set String -> String
cycleTypesModuleName members = "CycleTypes" ++ Set.findMin members

-- A generated class module: its record and one module line such as module Display where
canMoveRecord :: String -> String -> Bool
canMoveRecord moduleName text = not (null (moduleRecordLines moduleName text)) && length moduleLines == 1 && all endsWithWhere moduleLines
  where
    moduleLines = [line | line <- lines text, ("module " ++ moduleName ++ " ") `isPrefixOf` line || line == "module " ++ moduleName]
    endsWithWhere line = "where" `isSuffixOf'` trimEnd line
    trimEnd = reverse . dropWhile isSpace . reverse
    isSuffixOf' suffix whole = reverse suffix `isPrefixOf` reverse whole

-- The types module: the language extensions and the imports of the modules of the cycle other than the cycle ones and
-- the records with the types of the cycle qualified by the types module such as CycleTypesAlert.Display
cycleTypesModule :: String -> Set.Set String -> Map.Map String String -> String
cycleTypesModule typesModule members texts = unlines (pragmas ++ header ++ imports ++ concat records)
  where
    memberTexts = [Map.findWithDefault "" member texts | member <- Set.toList members]
    pragmas = "{-# LANGUAGE DuplicateRecordFields #-}" : uniqueLines [line | text <- memberTexts, line <- lines text, "{-# LANGUAGE" `isPrefixOf` line]
    header =
        [ "-- Generated by build.hs: the records of the classes of an import cycle. See build.hs."
        , "module " ++ typesModule ++ " where"
        , "" ]
    imports = uniqueLines
        [ importText
        | text <- memberTexts
        , line <- lines text
        , Just imported <- [parseImport line]
        , not (Set.member (importModule imported) members)
        , let importText = withoutComment line ]
    -- Each record and its instances such as instance JavaNull Display, which move with the record so every module
    -- that has the type has its instances
    records =
        [ "" : first : map (qualifyCycleTypes typesModule members) rest ++ concatMap (\block -> "" : map (qualifyCycleTypes typesModule members) block) (moduleInstanceBlocks member text)
        | member <- Set.toList members
        , let text = Map.findWithDefault "" member texts
        , (first : rest) <- [moduleRecordLines member text] ]
    withoutComment line = trimEnd (takeComment line)
    takeComment line = case line of
        [] -> []
        ('-' : '-' : _) -> []
        (character : rest) -> character : takeComment rest
    trimEnd = reverse . dropWhile isSpace . reverse

uniqueLines :: [String] -> [String]
uniqueLines = go Set.empty
  where
    go _ [] = []
    go seen (line : rest)
        | Set.member line seen = go seen rest
        | otherwise = line : go (Set.insert line seen) rest

-- The instances of the record of a generated class module: each instance Class Name where and its indented lines
moduleInstanceBlocks :: String -> String -> [[String]]
moduleInstanceBlocks moduleName text = go (lines text)
  where
    go [] = []
    go (line : rest)
        | isRecordInstance moduleName line = let (body, after) = span startsWithSpace rest in (line : body) : go after
        | otherwise = go rest
    startsWithSpace (character : _) = isSpace character
    startsWithSpace [] = False

isRecordInstance :: String -> String -> Bool
isRecordInstance moduleName line = case words line of
    ["instance", _, name, "where"] -> name == moduleName
    _ -> False

-- The lines without the record instances
withoutInstanceBlocks :: String -> [String] -> [String]
withoutInstanceBlocks moduleName = go
  where
    go [] = []
    go (line : rest)
        | isRecordInstance moduleName line = go (dropWhile startsWithSpace rest)
        | otherwise = line : go rest
    startsWithSpace (character : _) = isSpace character
    startsWithSpace [] = False

-- The type names of the cycle in a record line such as IORef (Displayable.Displayable) or IORef (Command) qualified by
-- the types module such as IORef (CycleTypesAlert.Displayable). A string such as "Displayable" stays the same.
qualifyCycleTypes :: String -> Set.Set String -> String -> String
qualifyCycleTypes typesModule members = go ' '
  where
    go _ [] = []
    go _ ('"' : remaining) = let (literal, after) = stringLiteral remaining in '"' : literal ++ go '"' after
    go previous rest@(character : remaining)
        | not (isIdentifierCharacter previous) && isUpper character =
            let (qualifier, afterQualifier) = span isIdentifierCharacter rest
            in case afterQualifier of
                ('.' : nameStart@(first : _)) | isUpper first ->
                    let (name, afterName) = span isIdentifierCharacter nameStart
                        replaced = if Set.member qualifier members then typesModule ++ "." ++ name else qualifier ++ "." ++ name
                    in replaced ++ go (last name) afterName
                _ ->
                    let replaced = if Set.member qualifier members then typesModule ++ "." ++ qualifier else qualifier
                    in replaced ++ go (last qualifier) afterQualifier
        | otherwise = character : go character remaining
    isIdentifierCharacter character = isAlphaNum character || character == '_' || character == '\''
    -- The rest of a string literal with its closing quote and the text after it
    stringLiteral text = case text of
        [] -> ([], [])
        ('\\' : escaped : rest) -> let (literal, after) = stringLiteral rest in ('\\' : escaped : literal, after)
        ('"' : rest) -> ("\"", rest)
        (character : rest) -> let (literal, after) = stringLiteral rest in (character : literal, after)

-- The imports of the types module for a module or boot file of the cycle: its own record unqualified, the record of a
-- module imported unqualified (the base class) unqualified, and each record qualified as the name of its module
typesModuleImports :: String -> Set.Set String -> String -> String -> [String]
typesModuleImports typesModule members moduleName text =
    [ "import " ++ typesModule ++ " (" ++ moduleName ++ " (..))" ] ++
    [ "import " ++ typesModule ++ " (" ++ base ++ " (..))" | base <- unqualifiedMembers ] ++
    [ "import qualified " ++ typesModule ++ " as " ++ member ++ " (" ++ member ++ " (..))" | member <- Set.toList members ]
  where
    unqualifiedMembers = uniqueLines [importModule imported | line <- lines text, Just imported <- [parseImport line], not (importQualified imported), Set.member (importModule imported) members, importModule imported /= moduleName]

-- The module without its record that imports it from the types module and exports it
moduleWithMovedRecord :: String -> Set.Set String -> String -> String -> [String] -> [String]
moduleWithMovedRecord typesModule members moduleName text sourceLines = concatMap changeLine (withoutInstanceBlocks moduleName withoutRecord)
  where
    recordLength = length (moduleRecordLines moduleName text)
    withoutRecord = case break (("data " ++ moduleName ++ " ") `isPrefixOf`) sourceLines of
        (before, after) -> before ++ drop recordLength after
    changeLine line
        | ("module " ++ moduleName) `isPrefixOf` line && isModuleLine line = exportingRecord line : typesModuleImports typesModule members moduleName text
        | otherwise = [line]
    isModuleLine line = case drop (length ("module " ++ moduleName)) line of
        [] -> True
        (character : _) -> isSpace character || character == '('
    -- module Display where -> module Display (module Display, Display (..)) where
    -- module NullCanvas (module NullCanvas, module Canvas) where -> module NullCanvas (NullCanvas (..), module NullCanvas, module Canvas) where
    exportingRecord line =
        let rest = dropWhile isSpace (drop (length ("module " ++ moduleName)) line)
        in case rest of
            ('(' : exports) -> "module " ++ moduleName ++ " (" ++ moduleName ++ " (..), " ++ exports
            _ -> "module " ++ moduleName ++ " (module " ++ moduleName ++ ", " ++ moduleName ++ " (..)) " ++ rest

-- The boot file of a module of a cycle with a types module: all its signatures. The record and its instances are in
-- the types module.
typedBootFile :: String -> Set.Set String -> String -> String -> String
typedBootFile typesModule members moduleName text = unlines (header ++ imports ++ baseImports ++ typesModuleImports typesModule members moduleName text ++ [""] ++ signatures)
  where
    cycleOthers = Set.delete moduleName members
    sourceLines = lines text
    -- The module of a subclass exports the module of its base class such as module Canvas (module Canvas, module Displayable)
    -- so Canvas.isFullScreenMode is the one of Displayable. The boot file does too with the boot file of the base class.
    reexported = moduleReexports moduleName text
    exports = if null reexported then "" else " (module " ++ moduleName ++ concatMap (", module " ++) reexported ++ ")"
    header = takeWhile (not . ("module " `isPrefixOf`)) sourceLines ++ ["module " ++ moduleName ++ exports ++ " where", ""]
    imports = [line | line <- sourceLines, Just imported <- [parseImport line], not (Set.member (importModule imported) cycleOthers), importModule imported /= moduleName]
    baseImports = ["import {-# SOURCE #-} " ++ drop 7 line | line <- sourceLines, Just imported <- [parseImport line], not (importQualified imported), Set.member (importModule imported) cycleOthers]
    signatures = filter isSignature sourceLines

-- The other modules a module exports such as Displayable of module Canvas (module Canvas, module Displayable) where
moduleReexports :: String -> String -> [String]
moduleReexports moduleName text =
    [ name
    | line <- lines text
    , ("module " ++ moduleName ++ " (") `isPrefixOf` line
    , let exportText = takeWhile (/= ')') (drop (length ("module " ++ moduleName ++ " (")) line)
    , entry <- splitOnComma exportText
    , ("module" : name : _) <- [words entry]
    , name /= moduleName ]
  where
    splitOnComma value = case break (== ',') value of
        (first, []) -> [first]
        (first, _ : rest) -> first : splitOnComma rest

-- The base classes in the cycle of the boot modules of the cycles with a types module, and their base classes, so the
-- boot file of a subclass can import the boot file of its base class {-# SOURCE #-}
baseBootModules :: Map.Map String String -> Map.Map String [Import] -> Map.Map String String -> Set.Set String -> Set.Set String
baseBootModules texts importsOf typesModuleOf = go Set.empty . Set.toList
  where
    go found [] = found
    go found (moduleName : rest)
        | not (Map.member moduleName typesModuleOf) = go found rest
        | otherwise =
            let bases = [importModule imported | imported <- Map.findWithDefault [] moduleName importsOf, not (importQualified imported), Map.lookup (importModule imported) typesModuleOf == Map.lookup moduleName typesModuleOf, importModule imported /= moduleName, Map.member (importModule imported) texts]
                new = filter (`Set.notMember` found) bases
            in go (foldr Set.insert found new) (new ++ rest)

readFileStrict :: FilePath -> IO String
readFileStrict path = do
    text <- readFile path
    length text `seq` pure text

-- The import line of a target module as an import {-# SOURCE #-}
sourceImport :: Set.Set String -> String -> String
sourceImport targets line = case parseImport line of
    Just imported | Set.member (importModule imported) targets && importQualified imported ->
        "import {-# SOURCE #-} qualified " ++ unwords (drop 2 (words line))
    _ -> line

-- The imports that become source imports as (importer, imported). The cycles are found again after each choice
-- until there are none. The import of a module that imports the importer unqualified is chosen first because that
-- module is the subclass of the importer. Then the import of a module whose record fits its boot file is chosen so the
-- importer can read the fields of the record. Among those the import that loses the fewest functions is chosen: a
-- function the importer uses is lost when its signature uses another module of the cycle since the boot file may not
-- have that signature.
chooseSourceImports :: Map.Map String String -> Map.Map String [Import] -> Set.Set (String, String)
chooseSourceImports texts = go Set.empty
  where
    usedNames = Map.map moduleUsedNames texts
    signatureModules = Map.map moduleSignatureModules texts
    lostFunctions memberSet (importer, target) =
        let used = Map.findWithDefault Set.empty target (Map.findWithDefault Map.empty importer usedNames)
            signatures = Map.findWithDefault Map.empty target signatureModules
            others = Set.delete target memberSet
            isLost name = case Map.lookup name signatures of
                Just modules -> not (Set.null (modules `Set.intersection` others))
                Nothing -> True
        in length (filter isLost (Set.toList used))
    go chosen importsOf =
        case [members | CyclicSCC members <- stronglyConnComp [(name, name, map importModule imported) | (name, imported) <- Map.toList importsOf]] of
            [] -> chosen
            (members : _) ->
                let memberSet = Set.fromList members
                    -- Not the import of a base class: the subclass also imports it unqualified and that import can not be a source import
                    importsUnqualified importer target = any (\other -> importModule other == target && not (importQualified other)) (Map.findWithDefault [] importer importsOf)
                    edges = [(importer, imported) | importer <- members, imported <- Map.findWithDefault [] importer importsOf, Set.member (importModule imported) memberSet, importQualified imported, not (importsUnqualified importer (importModule imported))]
                    isSubclassEdge (importer, imported) = any (\back -> importModule back == importer && not (importQualified back)) (Map.findWithDefault [] (importModule imported) importsOf)
                    fitsBoot (_, imported) = recordFitsBoot texts memberSet (importModule imported)
                    byLostFunctions = sortOn (\(importer, imported) -> lostFunctions memberSet (importer, importModule imported))
                    candidates = filter isSubclassEdge edges ++ byLostFunctions (filter fitsBoot edges) ++ byLostFunctions edges
                in case candidates of
                    [] -> chosen
                    ((importer, imported) : _) ->
                        let target = importModule imported
                            removed = Map.adjust (filter (\other -> importModule other /= target)) importer importsOf
                        in go (Set.insert (importer, target) chosen) removed

-- The modules in a cycle with each module
cycleMembers :: Map.Map String [Import] -> Map.Map String (Set.Set String)
cycleMembers importsOf = Map.fromList
    [ (member, Set.fromList members)
    | CyclicSCC members <- stronglyConnComp [(name, name, map importModule imported) | (name, imported) <- Map.toList importsOf]
    , member <- members ]

-- The boot file of a generated class module: the type, its instances, and the signatures that do not use the
-- other modules of the cycle. The imports of the other modules of the cycle are left out so the boot file has no cycle.
-- The exception is the boot files of other modules of the cycle that chooseBootImports picked: those are imported
-- {-# SOURCE #-} so the signatures that use them are kept such as getCurrent :: this_ -> IO (Displayable.Displayable).
-- The type is the record with its fields when no field uses the other modules, so a module of the cycle can read the
-- fields such as basicColorUtil.isAlpha. Otherwise the type is abstract.
bootFile :: String -> Set.Set String -> Set.Set String -> String -> String
bootFile moduleName members bootTargets text = unlines (header ++ imports ++ bootImportLines ++ declarations ++ signatures)
  where
    cycleOthers = Set.delete moduleName members
    others = cycleOthers `Set.difference` bootTargets
    sourceLines = lines text
    header = takeWhile (not . ("module " `isPrefixOf`)) sourceLines ++ ["module " ++ moduleName ++ " where", ""]
    imports = [line | line <- sourceLines, Just imported <- [parseImport line], not (Set.member (importModule imported) cycleOthers), importModule imported /= moduleName]
    bootImportLines = ["import {-# SOURCE #-} qualified " ++ target | target <- Set.toList bootTargets]
    recordLines = moduleRecordLines moduleName text
    typeDeclaration = if null recordLines || any usesModule recordLines then ["data " ++ moduleName] else recordLines
    declarations =
        [ "" ] ++ typeDeclaration ++
        [ "instance JavaNull " ++ moduleName
        , "instance JavaEquals " ++ moduleName
        , "instance Eq " ++ moduleName
        , "instance JavaObjectClass " ++ moduleName
        , "" ]
    signatures = [line | line <- sourceLines, isSignature line, not (usesModule line)]
    usesModule line = any (`mentionsModule` line) (Set.toList others)

-- A top level type signature such as name :: Type on one line like the generated code has
isSignature :: String -> Bool
isSignature line = case line of
    (first : _) | isLower first || first == '_' -> " :: " `isPrefixOf` dropWhile (not . isSpace) line
    _ -> False

-- The qualified names of a text as (module, name) such as ("Display", "getCurrent") for Display.getCurrent
qualifiedNames :: String -> [(String, String)]
qualifiedNames = go ' '
  where
    go _ [] = []
    go previous rest@(character : remaining)
        | not (isIdentifierCharacter previous) && isUpper character =
            let (qualifier, afterQualifier) = span isIdentifierCharacter rest
            in case afterQualifier of
                ('.' : nameStart@(first : _)) | isAlpha first || first == '_' ->
                    let (name, afterName) = span isIdentifierCharacter nameStart
                    in (qualifier, name) : go (last name) afterName
                _ -> go (last qualifier) afterQualifier
        | otherwise = go character remaining
    isIdentifierCharacter character = isAlphaNum character || character == '_' || character == '\''

-- True when the line has a name qualified by the module such as Display.getCurrent but not BaseDisplay.getCurrent
mentionsModule :: String -> String -> Bool
mentionsModule moduleName line = go ' ' line
  where
    qualifier = moduleName ++ "."
    go _ [] = False
    go previous rest@(character : remaining)
        | not (isIdentifierCharacter previous) && qualifier `isPrefixOf` rest = True
        | otherwise = go character remaining
    isIdentifierCharacter character = isAlphaNum character || character == '_' || character == '\''

-- The qualified names a module uses: imported module -> names such as Display.getCurrent
moduleUsedNames :: String -> Map.Map String (Set.Set String)
moduleUsedNames text = Map.fromListWith Set.union [(qualifier, Set.singleton name) | (qualifier, name) <- qualifiedNames text, startsLower name]
  where
    startsLower name = case name of
        (first : _) -> isLower first || first == '_'
        [] -> False

-- The modules each top level signature of a module uses: name -> modules
moduleSignatureModules :: String -> Map.Map String (Set.Set String)
moduleSignatureModules text = Map.fromList [(takeWhile (not . isSpace) line, Set.fromList (map fst (qualifiedNames line))) | line <- lines text, isSignature line]

-- The field names of the generated record of a class module such as ui of { header_ :: JavaHeader, ui :: IORef (...) }
moduleFieldNames :: String -> String -> [String]
moduleFieldNames moduleName text = [name | line <- drop 1 (moduleRecordLines moduleName text), (separator : name : "::" : _) <- [words line], separator == "{" || separator == ",", name /= "header_"]

-- True when the text reads the field of another object such as (jget (cmd).ui) and not a field of this
readsOtherField :: String -> String -> Bool
readsOtherField text field = go "" text
  where
    access = ")." ++ field
    -- before is the last characters before rest in reverse so (this).field is "siht(" before ")."
    go _ [] = False
    go before rest@(character : remaining)
        | access `isPrefixOf` rest && endsName (drop (length access) rest) && before /= "siht(" = True
        | otherwise = go (take 5 (character : before)) remaining
    endsName after = case after of
        (character : _) -> not (isAlphaNum character || character == '_' || character == '\'')
        [] -> True

-- The boot files each boot file imports {-# SOURCE #-}: other boot modules of its cycle that its signatures or record
-- use and that it imports qualified. GHC does not allow boot files to import each other in a cycle so imports are only
-- added when the imported boot files do not already reach the importer. Each signature or the record needs all the
-- modules it uses so those imports are added together. The signatures that the modules importing the boot file
-- {-# SOURCE #-} use and the record when they read its fields are added first.
chooseBootImports :: Map.Map String String -> Map.Map String [Import] -> Set.Set String -> Map.Map String (Set.Set String) -> Set.Set (String, String) -> Map.Map String (Set.Set String)
chooseBootImports texts importsOf bootModules cycleModules sourceImports = foldl addRequirement Map.empty orderedRequirements
  where
    importersOf = Map.fromListWith (++) [(target, [importer]) | (importer, target) <- Set.toList sourceImports]
    requirements =
        [ ((moduleName, needed), weight)
        | moduleName <- Set.toList bootModules
        , let text = Map.findWithDefault "" moduleName texts
              members = Map.findWithDefault Set.empty moduleName cycleModules
              importers = Map.findWithDefault [] moduleName importersOf
              importerTexts = [Map.findWithDefault "" importer texts | importer <- importers]
              usedByImporters = Set.unions [Map.findWithDefault Set.empty moduleName (moduleUsedNames importerText) | importerText <- importerTexts]
              qualifiedImports = Set.fromList [importModule imported | imported <- Map.findWithDefault [] moduleName importsOf, importQualified imported]
              importable = Set.delete moduleName (members `Set.intersection` bootModules `Set.intersection` qualifiedImports)
              cycleModulesOf modules = Set.delete moduleName (modules `Set.intersection` members)
              recordModules = cycleModulesOf (Set.fromList (map fst (concatMap qualifiedNames (moduleRecordLines moduleName text))))
              recordIsRead = any (\importerText -> any (readsOtherField importerText) (moduleFieldNames moduleName text)) importerTexts
              signatureRequirements =
                  [ (cycleModulesOf modules, if Set.member name usedByImporters then 10 else 1)
                  | (name, modules) <- Map.toList (moduleSignatureModules text) ]
              recordRequirement = [(recordModules, if recordIsRead then 100 else 1 :: Int)]
        , (needed, weight) <- recordRequirement ++ signatureRequirements
        , not (Set.null needed)
        , needed `Set.isSubsetOf` importable
        ]
    totals = Map.fromListWith (+) requirements
    orderedRequirements = [requirement | (_, _, requirement) <- sort [(negate weight, Set.size needed, (moduleName, needed)) | ((moduleName, needed), weight) <- Map.toList totals]]
    addRequirement edges (moduleName, needed) =
        let missing = Set.toList (needed `Set.difference` Map.findWithDefault Set.empty moduleName edges)
            added = foldl (\current target -> current >>= addEdge target) (Just edges) missing
            addEdge target current
                | reaches current target moduleName = Nothing
                | otherwise = Just (Map.insertWith Set.union moduleName (Set.singleton target) current)
        in maybe edges id added
    reaches edges from to = search Set.empty [from]
      where
        search _ [] = False
        search seen (current : rest)
            | current == to = True
            | Set.member current seen = search seen rest
            | otherwise = search (Set.insert current seen) (Set.toList (Map.findWithDefault Set.empty current edges) ++ rest)

-- The generated record of a class module: data Name = Name followed by its indented field lines
moduleRecordLines :: String -> String -> [String]
moduleRecordLines moduleName text = case break (("data " ++ moduleName ++ " ") `isPrefixOf`) (lines text) of
    (_, first : rest) -> first : takeWhile startsWithSpace rest
    _ -> []
  where
    startsWithSpace (character : _) = isSpace character
    startsWithSpace [] = False

-- True when the record of the module does not use the other modules so its boot file can have the whole record
recordFitsBoot :: Map.Map String String -> Set.Set String -> String -> Bool
recordFitsBoot texts others moduleName = case Map.lookup moduleName texts of
    Just text -> not (any (\line -> any (`mentionsModule` line) (Set.toList (Set.delete moduleName others))) (moduleRecordLines moduleName text))
    Nothing -> False
