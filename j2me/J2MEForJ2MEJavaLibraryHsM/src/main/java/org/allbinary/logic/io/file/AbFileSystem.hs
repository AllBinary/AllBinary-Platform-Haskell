{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
module AbFileSystem where

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
import qualified InputStream -- java.io.InputStream
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AbFileSystem = AbFileSystem
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull AbFileSystem where
    javaNull = javaNullRecord "AbFileSystem"

instance JavaEquals AbFileSystem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileSystem where
    (==) = jrecordEquals

instance JavaObjectClass AbFileSystem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbFileSystem
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = AbFileSystem header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "isDirectoryOrFile" (\() -> isDirectoryOrFile_impl this)
    jregisterMethod header_ "isDirectory" (\() -> isDirectory_impl this)
    jregisterMethod header_ "getFilesAsStringArrayForPath" (\() -> getFilesAsStringArrayForPath_impl this)
    jregisterMethod header_ "readAsString" (\() -> readAsString_impl this)
    jregisterMethod header_ "readAsString_2" (\() -> readAsString_2_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: AbFileSystem -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO AbFileSystem
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbFileSystem -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbFileSystem)
getInstance = do
        pure (AbFileSystem.instance_)


isDirectoryOrFile :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isDirectoryOrFile object_ a1 = jmethod object_ "isDirectoryOrFile" (\() -> (isDirectoryOrFile_impl (javaCast object_ :: AbFileSystem))) () a1

isDirectoryOrFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isDirectoryOrFile_super object_ a1 = (isDirectoryOrFile_impl (javaCast object_ :: AbFileSystem)) a1

isDirectoryOrFile_impl :: AbFileSystem -> String -> IO (Bool)
isDirectoryOrFile_impl this path = do
        pure (False)


isDirectory :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isDirectory object_ a1 = jmethod object_ "isDirectory" (\() -> (isDirectory_impl (javaCast object_ :: AbFileSystem))) () a1

isDirectory_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isDirectory_super object_ a1 = (isDirectory_impl (javaCast object_ :: AbFileSystem)) a1

isDirectory_impl :: AbFileSystem -> String -> IO (Bool)
isDirectory_impl this path = do
        pure (False)


getFilesAsStringArrayForPath :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (String))
getFilesAsStringArrayForPath object_ a1 = jmethod object_ "getFilesAsStringArrayForPath" (\() -> (getFilesAsStringArrayForPath_impl (javaCast object_ :: AbFileSystem))) () a1

getFilesAsStringArrayForPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (String))
getFilesAsStringArrayForPath_super object_ a1 = (getFilesAsStringArrayForPath_impl (javaCast object_ :: AbFileSystem)) a1

getFilesAsStringArrayForPath_impl :: AbFileSystem -> String -> IO (JavaArray (String))
getFilesAsStringArrayForPath_impl this currentDirPath = do
        (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))


readAsString :: (JavaObjectClass this_) => this_ -> String -> IO (String)
readAsString object_ a1 = jmethod object_ "readAsString" (\() -> (readAsString_impl (javaCast object_ :: AbFileSystem))) () a1

readAsString_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
readAsString_super object_ a1 = (readAsString_impl (javaCast object_ :: AbFileSystem)) a1

readAsString_impl :: AbFileSystem -> String -> IO (String)
readAsString_impl this fileName = do
        let bytes = (jnewArray (1000000) 0)
        (AbFileSystem.readAsString_2 this fileName bytes)


readAsString_2 :: (JavaObjectClass this_) => this_ -> String -> JavaArray (Int8) -> IO (String)
readAsString_2 object_ a1 a2 = jmethod object_ "readAsString_2" (\() -> (readAsString_2_impl (javaCast object_ :: AbFileSystem))) () a1 a2

readAsString_2_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (Int8) -> IO (String)
readAsString_2_super object_ a1 a2 = (readAsString_2_impl (javaCast object_ :: AbFileSystem)) a1 a2

readAsString_2_impl :: AbFileSystem -> String -> JavaArray (Int8) -> IO (String)
readAsString_2_impl this fileName bytes = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


close :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
close object_ a1 = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: AbFileSystem))) () (jtoObject a1)

close_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
close_super object_ a1 = (close_impl (javaCast object_ :: AbFileSystem)) (jtoObject a1)

close_impl :: AbFileSystem -> JavaObject -> IO (Bool)
close_impl this closeableObject_ = do
        let closeable = jtoObject closeableObject_
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cLOSE) e)
            pure (False)
            ) $ do
            when (closeable /= javaNull) $ do
                let inputStream = ((javaCast closeable :: InputStream.InputStream))
                Control.Monad.void (InputStream.close inputStream)
            pure (True)


