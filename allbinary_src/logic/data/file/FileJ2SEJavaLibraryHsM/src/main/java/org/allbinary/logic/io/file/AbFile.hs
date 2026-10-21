{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
module AbFile where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified Any -- same package or java.lang
import qualified File -- java.io.File
import qualified FileFilter -- java.io.FileFilter
import qualified FilenameFilter -- java.io.FilenameFilter
import qualified IOException -- java.io.IOException
import qualified URI -- java.net.URI
import qualified TsUtil -- org.allbinary.TsUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbFileInterface

-- implements AbFileInterface
data AbFile = AbFile
    { header_ :: JavaHeader
    , file :: IORef (File.File)
    }

instance JavaNull AbFile where
    javaNull = javaNullRecord "AbFile"

instance JavaEquals AbFile where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFile where
    (==) = jrecordEquals

instance JavaObjectClass AbFile where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_FILE #-}
nULL_FILE = unsafePerformIO ((AbFile.createAbFileFromRawPath (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))

newRecord_ :: IO AbFile
newRecord_ = do
    header_ <- newJavaHeader
    file <- newIORef javaNull
    let this = AbFile header_ file
    jregisterLevel header_ this
    AbFileInterface.registerInterface_ header_
    jregisterMethod header_ "getFile" (\() -> getFile_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getParent" (\() -> getParent_impl this)
    jregisterMethod header_ "getParentFile" (\() -> getParentFile_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "isAbsolute" (\() -> isAbsolute_impl this)
    jregisterMethod header_ "getAbsolutePath" (\() -> getAbsolutePath_impl this)
    jregisterMethod header_ "getAbsoluteFile" (\() -> getAbsoluteFile_impl this)
    jregisterMethod header_ "getCanonicalPath" (\() -> getCanonicalPath_impl this)
    jregisterMethod header_ "getCanonicalFile" (\() -> getCanonicalFile_impl this)
    jregisterMethod header_ "toURI" (\() -> toURI_impl this)
    jregisterMethod header_ "canRead" (\() -> canRead_impl this)
    jregisterMethod header_ "canWrite" (\() -> canWrite_impl this)
    jregisterMethod header_ "exists" (\() -> exists_impl this)
    jregisterMethod header_ "isDirectory" (\() -> isDirectory_impl this)
    jregisterMethod header_ "isFile" (\() -> isFile_impl this)
    jregisterMethod header_ "isHidden" (\() -> isHidden_impl this)
    jregisterMethod header_ "lastModified" (\() -> lastModified_impl this)
    jregisterMethod header_ "length" (\() -> length_impl this)
    jregisterMethod header_ "createNewFile" (\() -> createNewFile_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "deleteOnExit" (\() -> deleteOnExit_impl this)
    jregisterMethod header_ "list" (\() -> list_impl this)
    jregisterMethod header_ "listWithFilter" (\() -> listWithFilter_impl this)
    jregisterMethod header_ "listFiles" (\() -> listFiles_impl this)
    jregisterMethod header_ "listFilesFileNameFilter" (\() -> listFilesFileNameFilter_impl this)
    jregisterMethod header_ "listFilesFileFilter" (\() -> listFilesFileFilter_impl this)
    jregisterMethod header_ "mkdir" (\() -> mkdir_impl this)
    jregisterMethod header_ "mkdirs" (\() -> mkdirs_impl this)
    jregisterMethod header_ "renameTo" (\() -> renameTo_impl this)
    jregisterMethod header_ "setLastModified" (\() -> setLastModified_impl this)
    jregisterMethod header_ "setReadOnly" (\() -> setReadOnly_impl this)
    jregisterMethod header_ "setWritable" (\() -> setWritable_impl this)
    jregisterMethod header_ "setWritable" (\() -> setWritable_impl this)
    jregisterMethod header_ "setReadable" (\() -> setReadable_impl this)
    jregisterMethod header_ "setReadable" (\() -> setReadable_impl this)
    jregisterMethod header_ "setExecutable" (\() -> setExecutable_impl this)
    jregisterMethod header_ "setExecutable" (\() -> setExecutable_impl this)
    jregisterMethod header_ "canExecute" (\() -> canExecute_impl this)
    jregisterMethod header_ "getTotalSpace" (\() -> getTotalSpace_impl this)
    jregisterMethod header_ "getFreeSpace" (\() -> getFreeSpace_impl this)
    jregisterMethod header_ "getUsableSpace" (\() -> getUsableSpace_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "equals" (\() -> equals_impl this)
    jregisterMethod header_ "hashCode" (\() -> hashCode_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AbFile -> IO ()
initFields_ this = do
    jset this.file (javaNull)
    pure ()


-- throws Exception
createAbFileWithChild :: AbFile -> String -> IO (AbFile)
createAbFileWithChild file childPathName = do
        (new_1 (jio (File.new_2 (jio (AbFile.getFile file)) childPathName)))


-- throws Exception
createAbFile :: String -> IO (AbFile)
createAbFile filePath = do
        (new_1 (jio (File.new_1 (jio (AbPath.toFileSystemString ((jio (AbPath.new_2 filePath (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))))))))


-- throws Exception
createAbFilePathAndName :: String -> String -> IO (AbFile)
createAbFilePathAndName filePath fileName = do
        (new_1 (jio (File.new_2 (jio (AbPath.toFileSystemString ((jio (AbPath.new_2 filePath (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))))) fileName)))


createAbFileFromAbPath :: AbPath.AbPath -> IO (AbFile)
createAbFileFromAbPath abPath = do
        (new_1 (jio (File.new_1 (jio (AbPath.toFileSystemString abPath)))))


createAbFileFromRawPath :: String -> IO (AbFile)
createAbFileFromRawPath filePath = do
        (new_1 (jio (File.new_1 filePath)))

new_1 :: File.File -> IO AbFile
new_1 file = do
    this <- newRecord_
    init_1 this file
    pure this

init_1 :: AbFile -> File.File -> IO ()
init_1 this file = do
        initFields_ this
        jset (this).file (file)
        pure ()


getFile :: (JavaObjectClass this_) => this_ -> IO (File.File)
getFile object_ = jmethod object_ "getFile" (\() -> (getFile_impl (javaCast object_ :: AbFile))) ()

getFile_super :: (JavaObjectClass this_) => this_ -> IO (File.File)
getFile_super object_ = (getFile_impl (javaCast object_ :: AbFile))

getFile_impl :: AbFile -> IO (File.File)
getFile_impl this = do
        pure ((jget (this).file))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AbFile))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AbFile))

getName_impl :: AbFile -> IO (String)
getName_impl this = do
        (File.getName ((jget (this).file)))


getParent :: (JavaObjectClass this_) => this_ -> IO (String)
getParent object_ = jmethod object_ "getParent" (\() -> (getParent_impl (javaCast object_ :: AbFile))) ()

getParent_super :: (JavaObjectClass this_) => this_ -> IO (String)
getParent_super object_ = (getParent_impl (javaCast object_ :: AbFile))

getParent_impl :: AbFile -> IO (String)
getParent_impl this = do
        (File.getParent ((jget (this).file)))


getParentFile :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getParentFile object_ = jmethod object_ "getParentFile" (\() -> (getParentFile_impl (javaCast object_ :: AbFile))) ()

getParentFile_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getParentFile_super object_ = (getParentFile_impl (javaCast object_ :: AbFile))

getParentFile_impl :: AbFile -> IO (Any.Any)
getParentFile_impl this = do
        (fmap jtoObject (File.getParentFile ((jget (this).file))))


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: AbFile))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: AbFile))

getPath_impl :: AbFile -> IO (String)
getPath_impl this = do
        (File.getPath ((jget (this).file)))


isAbsolute :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAbsolute object_ = jmethod object_ "isAbsolute" (\() -> (isAbsolute_impl (javaCast object_ :: AbFile))) ()

isAbsolute_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAbsolute_super object_ = (isAbsolute_impl (javaCast object_ :: AbFile))

isAbsolute_impl :: AbFile -> IO (Bool)
isAbsolute_impl this = do
        (File.isAbsolute ((jget (this).file)))


getAbsolutePath :: (JavaObjectClass this_) => this_ -> IO (String)
getAbsolutePath object_ = jmethod object_ "getAbsolutePath" (\() -> (getAbsolutePath_impl (javaCast object_ :: AbFile))) ()

getAbsolutePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAbsolutePath_super object_ = (getAbsolutePath_impl (javaCast object_ :: AbFile))

getAbsolutePath_impl :: AbFile -> IO (String)
getAbsolutePath_impl this = do
        (File.getAbsolutePath ((jget (this).file)))


getAbsoluteFile :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getAbsoluteFile object_ = jmethod object_ "getAbsoluteFile" (\() -> (getAbsoluteFile_impl (javaCast object_ :: AbFile))) ()

getAbsoluteFile_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getAbsoluteFile_super object_ = (getAbsoluteFile_impl (javaCast object_ :: AbFile))

getAbsoluteFile_impl :: AbFile -> IO (Any.Any)
getAbsoluteFile_impl this = do
        (fmap jtoObject (File.getAbsoluteFile ((jget (this).file))))


-- throws IOException
getCanonicalPath :: (JavaObjectClass this_) => this_ -> IO (String)
getCanonicalPath object_ = jmethod object_ "getCanonicalPath" (\() -> (getCanonicalPath_impl (javaCast object_ :: AbFile))) ()

getCanonicalPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCanonicalPath_super object_ = (getCanonicalPath_impl (javaCast object_ :: AbFile))

getCanonicalPath_impl :: AbFile -> IO (String)
getCanonicalPath_impl this = do
        (File.getCanonicalPath ((jget (this).file)))


-- throws IOException
getCanonicalFile :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getCanonicalFile object_ = jmethod object_ "getCanonicalFile" (\() -> (getCanonicalFile_impl (javaCast object_ :: AbFile))) ()

getCanonicalFile_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getCanonicalFile_super object_ = (getCanonicalFile_impl (javaCast object_ :: AbFile))

getCanonicalFile_impl :: AbFile -> IO (Any.Any)
getCanonicalFile_impl this = do
        (fmap jtoObject (File.getCanonicalFile ((jget (this).file))))


toURI :: (JavaObjectClass this_) => this_ -> IO (URI.URI)
toURI object_ = jmethod object_ "toURI" (\() -> (toURI_impl (javaCast object_ :: AbFile))) ()

toURI_super :: (JavaObjectClass this_) => this_ -> IO (URI.URI)
toURI_super object_ = (toURI_impl (javaCast object_ :: AbFile))

toURI_impl :: AbFile -> IO (URI.URI)
toURI_impl this = do
        (File.toURI ((jget (this).file)))


canRead :: (JavaObjectClass this_) => this_ -> IO (Bool)
canRead object_ = jmethod object_ "canRead" (\() -> (canRead_impl (javaCast object_ :: AbFile))) ()

canRead_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
canRead_super object_ = (canRead_impl (javaCast object_ :: AbFile))

canRead_impl :: AbFile -> IO (Bool)
canRead_impl this = do
        (File.canRead ((jget (this).file)))


canWrite :: (JavaObjectClass this_) => this_ -> IO (Bool)
canWrite object_ = jmethod object_ "canWrite" (\() -> (canWrite_impl (javaCast object_ :: AbFile))) ()

canWrite_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
canWrite_super object_ = (canWrite_impl (javaCast object_ :: AbFile))

canWrite_impl :: AbFile -> IO (Bool)
canWrite_impl this = do
        (File.canWrite ((jget (this).file)))


exists :: (JavaObjectClass this_) => this_ -> IO (Bool)
exists object_ = jmethod object_ "exists" (\() -> (exists_impl (javaCast object_ :: AbFile))) ()

exists_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
exists_super object_ = (exists_impl (javaCast object_ :: AbFile))

exists_impl :: AbFile -> IO (Bool)
exists_impl this = do
        (File.exists ((jget (this).file)))


isDirectory :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDirectory object_ = jmethod object_ "isDirectory" (\() -> (isDirectory_impl (javaCast object_ :: AbFile))) ()

isDirectory_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDirectory_super object_ = (isDirectory_impl (javaCast object_ :: AbFile))

isDirectory_impl :: AbFile -> IO (Bool)
isDirectory_impl this = do
        (File.isDirectory ((jget (this).file)))


isFile :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFile object_ = jmethod object_ "isFile" (\() -> (isFile_impl (javaCast object_ :: AbFile))) ()

isFile_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFile_super object_ = (isFile_impl (javaCast object_ :: AbFile))

isFile_impl :: AbFile -> IO (Bool)
isFile_impl this = do
        (File.isFile ((jget (this).file)))


isHidden :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHidden object_ = jmethod object_ "isHidden" (\() -> (isHidden_impl (javaCast object_ :: AbFile))) ()

isHidden_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHidden_super object_ = (isHidden_impl (javaCast object_ :: AbFile))

isHidden_impl :: AbFile -> IO (Bool)
isHidden_impl this = do
        (File.isHidden ((jget (this).file)))


lastModified :: (JavaObjectClass this_) => this_ -> IO (Int64)
lastModified object_ = jmethod object_ "lastModified" (\() -> (lastModified_impl (javaCast object_ :: AbFile))) ()

lastModified_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
lastModified_super object_ = (lastModified_impl (javaCast object_ :: AbFile))

lastModified_impl :: AbFile -> IO (Int64)
lastModified_impl this = do
        (File.lastModified ((jget (this).file)))


length :: (JavaObjectClass this_) => this_ -> IO (Int64)
length object_ = jmethod object_ "length" (\() -> (length_impl (javaCast object_ :: AbFile))) ()

length_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
length_super object_ = (length_impl (javaCast object_ :: AbFile))

length_impl :: AbFile -> IO (Int64)
length_impl this = do
        (Prelude.fromIntegral (File.length ((jget (this).file))))


-- throws IOException
createNewFile :: (JavaObjectClass this_) => this_ -> IO (Bool)
createNewFile object_ = jmethod object_ "createNewFile" (\() -> (createNewFile_impl (javaCast object_ :: AbFile))) ()

createNewFile_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
createNewFile_super object_ = (createNewFile_impl (javaCast object_ :: AbFile))

createNewFile_impl :: AbFile -> IO (Bool)
createNewFile_impl this = do
        (File.createNewFile ((jget (this).file)))


-- throws IOException
delete :: (JavaObjectClass this_) => this_ -> IO (Bool)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: AbFile))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
delete_super object_ = (delete_impl (javaCast object_ :: AbFile))

delete_impl :: AbFile -> IO (Bool)
delete_impl this = do
        (File.delete ((jget (this).file)))


deleteOnExit :: (JavaObjectClass this_) => this_ -> IO (())
deleteOnExit object_ = jmethod object_ "deleteOnExit" (\() -> (deleteOnExit_impl (javaCast object_ :: AbFile))) ()

deleteOnExit_super :: (JavaObjectClass this_) => this_ -> IO (())
deleteOnExit_super object_ = (deleteOnExit_impl (javaCast object_ :: AbFile))

deleteOnExit_impl :: AbFile -> IO (())
deleteOnExit_impl this = do
        Control.Monad.void (File.deleteOnExit ((jget (this).file)))
        pure ()


list :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
list object_ = jmethod object_ "list" (\() -> (list_impl (javaCast object_ :: AbFile))) ()

list_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
list_super object_ = (list_impl (javaCast object_ :: AbFile))

list_impl :: AbFile -> IO (JavaArray (String))
list_impl this = do
        (File.list ((jget (this).file)))


listWithFilter :: (JavaObjectClass this_) => this_ -> FilenameFilter.FilenameFilter -> IO (JavaArray (String))
listWithFilter object_ a1 = jmethod object_ "listWithFilter" (\() -> (listWithFilter_impl (javaCast object_ :: AbFile))) () a1

listWithFilter_super :: (JavaObjectClass this_) => this_ -> FilenameFilter.FilenameFilter -> IO (JavaArray (String))
listWithFilter_super object_ a1 = (listWithFilter_impl (javaCast object_ :: AbFile)) a1

listWithFilter_impl :: AbFile -> FilenameFilter.FilenameFilter -> IO (JavaArray (String))
listWithFilter_impl this filter = do
        (File.list ((jget (this).file)) filter)


listFiles :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
listFiles object_ = jmethod object_ "listFiles" (\() -> (listFiles_impl (javaCast object_ :: AbFile))) ()

listFiles_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
listFiles_super object_ = (listFiles_impl (javaCast object_ :: AbFile))

listFiles_impl :: AbFile -> IO (JavaArray (Any.Any))
listFiles_impl this = do
        pure ((javaCast (jio (File.listFiles ((jget (this).file)))) :: JavaArray (Any.Any)))


listFilesFileNameFilter :: (JavaObjectClass this_) => this_ -> FilenameFilter.FilenameFilter -> IO (JavaArray (Any.Any))
listFilesFileNameFilter object_ a1 = jmethod object_ "listFilesFileNameFilter" (\() -> (listFilesFileNameFilter_impl (javaCast object_ :: AbFile))) () a1

listFilesFileNameFilter_super :: (JavaObjectClass this_) => this_ -> FilenameFilter.FilenameFilter -> IO (JavaArray (Any.Any))
listFilesFileNameFilter_super object_ a1 = (listFilesFileNameFilter_impl (javaCast object_ :: AbFile)) a1

listFilesFileNameFilter_impl :: AbFile -> FilenameFilter.FilenameFilter -> IO (JavaArray (Any.Any))
listFilesFileNameFilter_impl this filter = do
        pure ((javaCast (jio (File.listFiles ((jget (this).file)) filter)) :: JavaArray (Any.Any)))


listFilesFileFilter :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> IO (JavaArray (Any.Any))
listFilesFileFilter object_ a1 = jmethod object_ "listFilesFileFilter" (\() -> (listFilesFileFilter_impl (javaCast object_ :: AbFile))) () a1

listFilesFileFilter_super :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> IO (JavaArray (Any.Any))
listFilesFileFilter_super object_ a1 = (listFilesFileFilter_impl (javaCast object_ :: AbFile)) a1

listFilesFileFilter_impl :: AbFile -> FileFilter.FileFilter -> IO (JavaArray (Any.Any))
listFilesFileFilter_impl this filter = do
        pure ((javaCast (jio (File.listFiles ((jget (this).file)) filter)) :: JavaArray (Any.Any)))


mkdir :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdir object_ = jmethod object_ "mkdir" (\() -> (mkdir_impl (javaCast object_ :: AbFile))) ()

mkdir_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdir_super object_ = (mkdir_impl (javaCast object_ :: AbFile))

mkdir_impl :: AbFile -> IO (Bool)
mkdir_impl this = do
        (File.mkdir ((jget (this).file)))


mkdirs :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdirs object_ = jmethod object_ "mkdirs" (\() -> (mkdirs_impl (javaCast object_ :: AbFile))) ()

mkdirs_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdirs_super object_ = (mkdirs_impl (javaCast object_ :: AbFile))

mkdirs_impl :: AbFile -> IO (Bool)
mkdirs_impl this = do
        (File.mkdirs ((jget (this).file)))


renameTo :: (JavaObjectClass this_) => this_ -> AbFile -> IO (Bool)
renameTo object_ a1 = jmethod object_ "renameTo" (\() -> (renameTo_impl (javaCast object_ :: AbFile))) () a1

renameTo_super :: (JavaObjectClass this_) => this_ -> AbFile -> IO (Bool)
renameTo_super object_ a1 = (renameTo_impl (javaCast object_ :: AbFile)) a1

renameTo_impl :: AbFile -> AbFile -> IO (Bool)
renameTo_impl this dest = do
        (File.renameTo ((jget (this).file)) (jio (AbFile.getFile dest)))


setLastModified :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: AbFile))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: AbFile)) a1

setLastModified_impl :: AbFile -> Int64 -> IO (Bool)
setLastModified_impl this time = do
        (File.setLastModified ((jget (this).file)) time)


setReadOnly :: (JavaObjectClass this_) => this_ -> IO (Bool)
setReadOnly object_ = jmethod object_ "setReadOnly" (\() -> (setReadOnly_impl (javaCast object_ :: AbFile))) ()

setReadOnly_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
setReadOnly_super object_ = (setReadOnly_impl (javaCast object_ :: AbFile))

setReadOnly_impl :: AbFile -> IO (Bool)
setReadOnly_impl this = do
        (File.setReadOnly ((jget (this).file)))


setWritable :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (Bool)
setWritable object_ a1 a2 = jmethod object_ "setWritable" (\() -> (setWritable_impl (javaCast object_ :: AbFile))) () a1 a2

setWritable_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (Bool)
setWritable_super object_ a1 a2 = (setWritable_impl (javaCast object_ :: AbFile)) a1 a2

setWritable_impl :: AbFile -> Bool -> Bool -> IO (Bool)
setWritable_impl this writable ownerOnly = do
        (File.setExecutable ((jget (this).file)) writable ownerOnly)


-- Java overload of setWritable with a different parameter count: give it a different name
setWritable :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
setWritable object_ a1 = jmethod object_ "setWritable" (\() -> (setWritable_impl (javaCast object_ :: AbFile))) () a1

setWritable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
setWritable_super object_ a1 = (setWritable_impl (javaCast object_ :: AbFile)) a1

setWritable_impl :: AbFile -> Bool -> IO (Bool)
setWritable_impl this writable = do
        (File.setWritable ((jget (this).file)) writable)


setReadable :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (Bool)
setReadable object_ a1 a2 = jmethod object_ "setReadable" (\() -> (setReadable_impl (javaCast object_ :: AbFile))) () a1 a2

setReadable_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (Bool)
setReadable_super object_ a1 a2 = (setReadable_impl (javaCast object_ :: AbFile)) a1 a2

setReadable_impl :: AbFile -> Bool -> Bool -> IO (Bool)
setReadable_impl this readable ownerOnly = do
        (File.setReadable ((jget (this).file)) readable ownerOnly)


-- Java overload of setReadable with a different parameter count: give it a different name
setReadable :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
setReadable object_ a1 = jmethod object_ "setReadable" (\() -> (setReadable_impl (javaCast object_ :: AbFile))) () a1

setReadable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
setReadable_super object_ a1 = (setReadable_impl (javaCast object_ :: AbFile)) a1

setReadable_impl :: AbFile -> Bool -> IO (Bool)
setReadable_impl this readable = do
        (File.setReadable ((jget (this).file)) readable)


setExecutable :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (Bool)
setExecutable object_ a1 a2 = jmethod object_ "setExecutable" (\() -> (setExecutable_impl (javaCast object_ :: AbFile))) () a1 a2

setExecutable_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (Bool)
setExecutable_super object_ a1 a2 = (setExecutable_impl (javaCast object_ :: AbFile)) a1 a2

setExecutable_impl :: AbFile -> Bool -> Bool -> IO (Bool)
setExecutable_impl this executable ownerOnly = do
        (File.setExecutable ((jget (this).file)) executable ownerOnly)


-- Java overload of setExecutable with a different parameter count: give it a different name
setExecutable :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
setExecutable object_ a1 = jmethod object_ "setExecutable" (\() -> (setExecutable_impl (javaCast object_ :: AbFile))) () a1

setExecutable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
setExecutable_super object_ a1 = (setExecutable_impl (javaCast object_ :: AbFile)) a1

setExecutable_impl :: AbFile -> Bool -> IO (Bool)
setExecutable_impl this executable = do
        (File.setExecutable ((jget (this).file)) executable)


canExecute :: (JavaObjectClass this_) => this_ -> IO (Bool)
canExecute object_ = jmethod object_ "canExecute" (\() -> (canExecute_impl (javaCast object_ :: AbFile))) ()

canExecute_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
canExecute_super object_ = (canExecute_impl (javaCast object_ :: AbFile))

canExecute_impl :: AbFile -> IO (Bool)
canExecute_impl this = do
        (File.canExecute ((jget (this).file)))


getTotalSpace :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalSpace object_ = jmethod object_ "getTotalSpace" (\() -> (getTotalSpace_impl (javaCast object_ :: AbFile))) ()

getTotalSpace_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalSpace_super object_ = (getTotalSpace_impl (javaCast object_ :: AbFile))

getTotalSpace_impl :: AbFile -> IO (Int64)
getTotalSpace_impl this = do
        (File.getTotalSpace ((jget (this).file)))


getFreeSpace :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeSpace object_ = jmethod object_ "getFreeSpace" (\() -> (getFreeSpace_impl (javaCast object_ :: AbFile))) ()

getFreeSpace_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeSpace_super object_ = (getFreeSpace_impl (javaCast object_ :: AbFile))

getFreeSpace_impl :: AbFile -> IO (Int64)
getFreeSpace_impl this = do
        (File.getFreeSpace ((jget (this).file)))


getUsableSpace :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUsableSpace object_ = jmethod object_ "getUsableSpace" (\() -> (getUsableSpace_impl (javaCast object_ :: AbFile))) ()

getUsableSpace_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUsableSpace_super object_ = (getUsableSpace_impl (javaCast object_ :: AbFile))

getUsableSpace_impl :: AbFile -> IO (Int64)
getUsableSpace_impl this = do
        (File.getUsableSpace ((jget (this).file)))


compareTo :: (JavaObjectClass this_) => this_ -> File.File -> IO (Int)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: AbFile))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> File.File -> IO (Int)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: AbFile)) a1

compareTo_impl :: AbFile -> File.File -> IO (Int)
compareTo_impl this pathname = do
        (File.compareTo ((jget (this).file)) pathname)


equals :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
equals object_ a1 = jmethod object_ "equals" (\() -> (equals_impl (javaCast object_ :: AbFile))) () (jtoObject a1)

equals_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
equals_super object_ a1 = (equals_impl (javaCast object_ :: AbFile)) (jtoObject a1)

equals_impl :: AbFile -> JavaObject -> IO (Bool)
equals_impl this objObject_ = do
        let obj = jtoObject objObject_
        (TsUtil.equalsNotstring ((jio (TsUtil.getInstance))) (jget (this).file) obj)


hashCode :: (JavaObjectClass this_) => this_ -> IO (Int)
hashCode object_ = jmethod object_ "hashCode" (\() -> (hashCode_impl (javaCast object_ :: AbFile))) ()

hashCode_super :: (JavaObjectClass this_) => this_ -> IO (Int)
hashCode_super object_ = (hashCode_impl (javaCast object_ :: AbFile))

hashCode_impl :: AbFile -> IO (Int)
hashCode_impl this = do
        (File.hashCode ((jget (this).file)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AbFile))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AbFile))

toString_impl :: AbFile -> IO (String)
toString_impl this = do
        (File.toString ((jget (this).file)))


