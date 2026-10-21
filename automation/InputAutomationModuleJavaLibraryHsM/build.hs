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
import Data.Char (isAlphaNum, isLower, isSpace)
import Data.Graph (SCC (..), stronglyConnComp)
import Data.List (isPrefixOf, sort)
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import GHC.ResponseFile (escapeArgs)
import System.Directory (createDirectoryIfMissing, doesDirectoryExist, listDirectory)
import System.Environment (getArgs)
import System.Exit (ExitCode (..), exitWith)
import System.FilePath (takeBaseName, takeExtension, (</>))
import System.IO (hPutStrLn, stderr)
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
            let (nearestSources, duplicateCount) = nearestModules (sources : dependencySources)
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
    texts <- mapM readFileStrict sources
    let modules = Map.fromList [(takeBaseName path, (path, text)) | (path, text) <- zip sources texts]
        importsOf = Map.map (\(_, text) -> filter (\imported -> Map.member (importModule imported) modules) (parseImports text)) modules
        sourceImports = chooseSourceImports (Map.map snd modules) importsOf
    if Set.null sourceImports
        then pure sources
        else do
            let cycleDir = outputDir </> "cycle-sources"
                bootModules = Set.map snd sourceImports
                changedModules = Set.map fst sourceImports `Set.union` bootModules
                cycleModules = cycleMembers importsOf
            createDirectoryIfMissing True cycleDir
            putStrLn ("Haskell import cycles broken with boot files for: " ++ unwords (Set.toList bootModules))
            changed <- forM (Set.toList changedModules) $ \moduleName -> do
                let (_, text) = modules Map.! moduleName
                    sourceTargets = Set.fromList [target | (importer, target) <- Set.toList sourceImports, importer == moduleName]
                    copyPath = cycleDir </> (moduleName ++ ".hs")
                writeFile copyPath (unlines (map (sourceImport sourceTargets) (lines text)))
                when (Set.member moduleName bootModules) $
                    writeFile (cycleDir </> (moduleName ++ ".hs-boot")) (bootFile moduleName (Map.findWithDefault Set.empty moduleName cycleModules) text)
                pure (moduleName, copyPath)
            let changedPaths = Map.fromList changed
            pure [Map.findWithDefault path (takeBaseName path) changedPaths | path <- sources]

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
-- importer can read the fields of the record.
chooseSourceImports :: Map.Map String String -> Map.Map String [Import] -> Set.Set (String, String)
chooseSourceImports texts = go Set.empty
  where
    go chosen importsOf =
        case [members | CyclicSCC members <- stronglyConnComp [(name, name, map importModule imported) | (name, imported) <- Map.toList importsOf]] of
            [] -> chosen
            (members : _) ->
                let memberSet = Set.fromList members
                    edges = [(importer, imported) | importer <- members, imported <- Map.findWithDefault [] importer importsOf, Set.member (importModule imported) memberSet, importQualified imported]
                    isSubclassEdge (importer, imported) = any (\back -> importModule back == importer && not (importQualified back)) (Map.findWithDefault [] (importModule imported) importsOf)
                    fitsBoot (_, imported) = recordFitsBoot texts memberSet (importModule imported)
                    candidates = filter isSubclassEdge edges ++ filter fitsBoot edges ++ edges
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
-- The type is the record with its fields when no field uses the other modules, so a module of the cycle can read the
-- fields such as basicColorUtil.isAlpha. Otherwise the type is abstract.
bootFile :: String -> Set.Set String -> String -> String
bootFile moduleName members text = unlines (header ++ imports ++ declarations ++ signatures)
  where
    others = Set.delete moduleName members
    sourceLines = lines text
    header = takeWhile (not . ("module " `isPrefixOf`)) sourceLines ++ ["module " ++ moduleName ++ " where", ""]
    imports = [line | line <- sourceLines, Just imported <- [parseImport line], not (Set.member (importModule imported) others), importModule imported /= moduleName]
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
    -- A top level type signature such as name :: Type on one line like the generated code has
    isSignature line = case line of
        (first : _) | isLower first || first == '_' -> " :: " `isPrefixOf` dropWhile (not . isSpace) line
        _ -> False
    usesModule line = any (\other -> (other ++ ".") `isInfix` line) (Set.toList others)

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
    Just text -> not (any (\line -> any (\other -> (other ++ ".") `isInfix` line) (Set.toList (Set.delete moduleName others))) (moduleRecordLines moduleName text))
    Nothing -> False

isInfix :: String -> String -> Bool
isInfix part whole = any (part `isPrefixOf`) (suffixes whole)
  where
    suffixes [] = [[]]
    suffixes value@(_ : rest) = value : suffixes rest
