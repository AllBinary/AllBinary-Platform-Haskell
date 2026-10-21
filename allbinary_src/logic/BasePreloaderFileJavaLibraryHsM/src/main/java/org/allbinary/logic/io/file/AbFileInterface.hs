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
module AbFileInterface where

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
import qualified FilenameFilter -- java.io.FilenameFilter
import qualified IOException -- java.io.IOException
import qualified URI -- java.net.URI

-- Java interface: the classes that implement it have these functions
data AbFileInterface = AbFileInterface
    { header_ :: JavaHeader
    }

instance JavaNull AbFileInterface where
    javaNull = javaNullRecord "AbFileInterface"

instance JavaEquals AbFileInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileInterface where
    (==) = jrecordEquals

instance JavaObjectClass AbFileInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AbFileInterface
fromHeader_ header = AbFileInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AbFileInterface header)


canRead :: (JavaObjectClass this_) => this_ -> IO (Bool)
canRead object_ = jmethod object_ "canRead" (\() -> (canRead_impl (javaCast object_ :: AbFileInterface))) ()

canRead_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
canRead_super object_ = (canRead_impl (javaCast object_ :: AbFileInterface))

canRead_impl :: AbFileInterface -> IO (Bool)
canRead_impl this = javaAbstractMethod "canRead"


canWrite :: (JavaObjectClass this_) => this_ -> IO (Bool)
canWrite object_ = jmethod object_ "canWrite" (\() -> (canWrite_impl (javaCast object_ :: AbFileInterface))) ()

canWrite_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
canWrite_super object_ = (canWrite_impl (javaCast object_ :: AbFileInterface))

canWrite_impl :: AbFileInterface -> IO (Bool)
canWrite_impl this = javaAbstractMethod "canWrite"


-- throws IOException
createNewFile :: (JavaObjectClass this_) => this_ -> IO (Bool)
createNewFile object_ = jmethod object_ "createNewFile" (\() -> (createNewFile_impl (javaCast object_ :: AbFileInterface))) ()

createNewFile_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
createNewFile_super object_ = (createNewFile_impl (javaCast object_ :: AbFileInterface))

createNewFile_impl :: AbFileInterface -> IO (Bool)
createNewFile_impl this = javaAbstractMethod "createNewFile"


-- throws IOException
delete :: (JavaObjectClass this_) => this_ -> IO (Bool)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: AbFileInterface))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
delete_super object_ = (delete_impl (javaCast object_ :: AbFileInterface))

delete_impl :: AbFileInterface -> IO (Bool)
delete_impl this = javaAbstractMethod "delete"


deleteOnExit :: (JavaObjectClass this_) => this_ -> IO (())
deleteOnExit object_ = jmethod object_ "deleteOnExit" (\() -> (deleteOnExit_impl (javaCast object_ :: AbFileInterface))) ()

deleteOnExit_super :: (JavaObjectClass this_) => this_ -> IO (())
deleteOnExit_super object_ = (deleteOnExit_impl (javaCast object_ :: AbFileInterface))

deleteOnExit_impl :: AbFileInterface -> IO (())
deleteOnExit_impl this = javaAbstractMethod "deleteOnExit"


exists :: (JavaObjectClass this_) => this_ -> IO (Bool)
exists object_ = jmethod object_ "exists" (\() -> (exists_impl (javaCast object_ :: AbFileInterface))) ()

exists_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
exists_super object_ = (exists_impl (javaCast object_ :: AbFileInterface))

exists_impl :: AbFileInterface -> IO (Bool)
exists_impl this = javaAbstractMethod "exists"


getAbsolutePath :: (JavaObjectClass this_) => this_ -> IO (String)
getAbsolutePath object_ = jmethod object_ "getAbsolutePath" (\() -> (getAbsolutePath_impl (javaCast object_ :: AbFileInterface))) ()

getAbsolutePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAbsolutePath_super object_ = (getAbsolutePath_impl (javaCast object_ :: AbFileInterface))

getAbsolutePath_impl :: AbFileInterface -> IO (String)
getAbsolutePath_impl this = javaAbstractMethod "getAbsolutePath"


-- throws IOException
getCanonicalPath :: (JavaObjectClass this_) => this_ -> IO (String)
getCanonicalPath object_ = jmethod object_ "getCanonicalPath" (\() -> (getCanonicalPath_impl (javaCast object_ :: AbFileInterface))) ()

getCanonicalPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCanonicalPath_super object_ = (getCanonicalPath_impl (javaCast object_ :: AbFileInterface))

getCanonicalPath_impl :: AbFileInterface -> IO (String)
getCanonicalPath_impl this = javaAbstractMethod "getCanonicalPath"


getParent :: (JavaObjectClass this_) => this_ -> IO (String)
getParent object_ = jmethod object_ "getParent" (\() -> (getParent_impl (javaCast object_ :: AbFileInterface))) ()

getParent_super :: (JavaObjectClass this_) => this_ -> IO (String)
getParent_super object_ = (getParent_impl (javaCast object_ :: AbFileInterface))

getParent_impl :: AbFileInterface -> IO (String)
getParent_impl this = javaAbstractMethod "getParent"


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: AbFileInterface))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: AbFileInterface))

getPath_impl :: AbFileInterface -> IO (String)
getPath_impl this = javaAbstractMethod "getPath"


isAbsolute :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAbsolute object_ = jmethod object_ "isAbsolute" (\() -> (isAbsolute_impl (javaCast object_ :: AbFileInterface))) ()

isAbsolute_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAbsolute_super object_ = (isAbsolute_impl (javaCast object_ :: AbFileInterface))

isAbsolute_impl :: AbFileInterface -> IO (Bool)
isAbsolute_impl this = javaAbstractMethod "isAbsolute"


isDirectory :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDirectory object_ = jmethod object_ "isDirectory" (\() -> (isDirectory_impl (javaCast object_ :: AbFileInterface))) ()

isDirectory_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDirectory_super object_ = (isDirectory_impl (javaCast object_ :: AbFileInterface))

isDirectory_impl :: AbFileInterface -> IO (Bool)
isDirectory_impl this = javaAbstractMethod "isDirectory"


isFile :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFile object_ = jmethod object_ "isFile" (\() -> (isFile_impl (javaCast object_ :: AbFileInterface))) ()

isFile_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFile_super object_ = (isFile_impl (javaCast object_ :: AbFileInterface))

isFile_impl :: AbFileInterface -> IO (Bool)
isFile_impl this = javaAbstractMethod "isFile"


isHidden :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHidden object_ = jmethod object_ "isHidden" (\() -> (isHidden_impl (javaCast object_ :: AbFileInterface))) ()

isHidden_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHidden_super object_ = (isHidden_impl (javaCast object_ :: AbFileInterface))

isHidden_impl :: AbFileInterface -> IO (Bool)
isHidden_impl this = javaAbstractMethod "isHidden"


lastModified :: (JavaObjectClass this_) => this_ -> IO (Int64)
lastModified object_ = jmethod object_ "lastModified" (\() -> (lastModified_impl (javaCast object_ :: AbFileInterface))) ()

lastModified_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
lastModified_super object_ = (lastModified_impl (javaCast object_ :: AbFileInterface))

lastModified_impl :: AbFileInterface -> IO (Int64)
lastModified_impl this = javaAbstractMethod "lastModified"


length :: (JavaObjectClass this_) => this_ -> IO (Int64)
length object_ = jmethod object_ "length" (\() -> (length_impl (javaCast object_ :: AbFileInterface))) ()

length_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
length_super object_ = (length_impl (javaCast object_ :: AbFileInterface))

length_impl :: AbFileInterface -> IO (Int64)
length_impl this = javaAbstractMethod "length"


list :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
list object_ = jmethod object_ "list" (\() -> (list_impl (javaCast object_ :: AbFileInterface))) ()

list_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
list_super object_ = (list_impl (javaCast object_ :: AbFileInterface))

list_impl :: AbFileInterface -> IO (JavaArray (String))
list_impl this = javaAbstractMethod "list"


listWithFilter :: (JavaObjectClass this_) => this_ -> FilenameFilter.FilenameFilter -> IO (JavaArray (String))
listWithFilter object_ a1 = jmethod object_ "listWithFilter" (\() -> (listWithFilter_impl (javaCast object_ :: AbFileInterface))) () a1

listWithFilter_super :: (JavaObjectClass this_) => this_ -> FilenameFilter.FilenameFilter -> IO (JavaArray (String))
listWithFilter_super object_ a1 = (listWithFilter_impl (javaCast object_ :: AbFileInterface)) a1

listWithFilter_impl :: AbFileInterface -> FilenameFilter.FilenameFilter -> IO (JavaArray (String))
listWithFilter_impl this filter = javaAbstractMethod "listWithFilter"


mkdir :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdir object_ = jmethod object_ "mkdir" (\() -> (mkdir_impl (javaCast object_ :: AbFileInterface))) ()

mkdir_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdir_super object_ = (mkdir_impl (javaCast object_ :: AbFileInterface))

mkdir_impl :: AbFileInterface -> IO (Bool)
mkdir_impl this = javaAbstractMethod "mkdir"


mkdirs :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdirs object_ = jmethod object_ "mkdirs" (\() -> (mkdirs_impl (javaCast object_ :: AbFileInterface))) ()

mkdirs_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
mkdirs_super object_ = (mkdirs_impl (javaCast object_ :: AbFileInterface))

mkdirs_impl :: AbFileInterface -> IO (Bool)
mkdirs_impl this = javaAbstractMethod "mkdirs"


setLastModified :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: AbFileInterface))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: AbFileInterface)) a1

setLastModified_impl :: AbFileInterface -> Int64 -> IO (Bool)
setLastModified_impl this time = javaAbstractMethod "setLastModified"


setReadOnly :: (JavaObjectClass this_) => this_ -> IO (Bool)
setReadOnly object_ = jmethod object_ "setReadOnly" (\() -> (setReadOnly_impl (javaCast object_ :: AbFileInterface))) ()

setReadOnly_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
setReadOnly_super object_ = (setReadOnly_impl (javaCast object_ :: AbFileInterface))

setReadOnly_impl :: AbFileInterface -> IO (Bool)
setReadOnly_impl this = javaAbstractMethod "setReadOnly"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AbFileInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AbFileInterface))

toString_impl :: AbFileInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


toURI :: (JavaObjectClass this_) => this_ -> IO (URI.URI)
toURI object_ = jmethod object_ "toURI" (\() -> (toURI_impl (javaCast object_ :: AbFileInterface))) ()

toURI_super :: (JavaObjectClass this_) => this_ -> IO (URI.URI)
toURI_super object_ = (toURI_impl (javaCast object_ :: AbFileInterface))

toURI_impl :: AbFileInterface -> IO (URI.URI)
toURI_impl this = javaAbstractMethod "toURI"


