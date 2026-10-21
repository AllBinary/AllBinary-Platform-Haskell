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
module FileFactory where

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
import qualified AbFile -- same package or java.lang
import qualified FileNotFoundException -- java.io.FileNotFoundException
import qualified Context -- android.content.Context
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil

data FileFactory = FileFactory
    { header_ :: JavaHeader
    , context :: IORef (Context.Context)
    }

instance JavaNull FileFactory where
    javaNull = javaNullRecord "FileFactory"

instance JavaEquals FileFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileFactory where
    (==) = jrecordEquals

instance JavaObjectClass FileFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_1 (jio (ResourceUtil.getContext ((jio (ResourceUtil.getInstance)))))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileFactory
newRecord_ = do
    header_ <- newJavaHeader
    context <- newIORef javaNull
    let this = FileFactory header_ context
    jregisterLevel header_ this
    jregisterMethod header_ "isFile" (\() -> isFile_impl this)
    jregisterMethod header_ "getContext" (\() -> getContext_impl this)
    jregisterMethod header_ "getFile" (\() -> getFile_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: FileFactory -> IO ()
initFields_ this = do
    jset this.context (javaNull)
    pure ()

new_1 :: Context.Context -> IO FileFactory
new_1 context = do
    this <- newRecord_
    init_1 this context
    pure this

init_1 :: FileFactory -> Context.Context -> IO ()
init_1 this context = do
        initFields_ this
        jset (this).context (context)
        pure ()


getInstance :: IO (FileFactory)
getInstance = do
        pure (FileFactory.sINGLETON)


-- throws Exception
isFile :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isFile object_ a1 = jmethod object_ "isFile" (\() -> (isFile_impl (javaCast object_ :: FileFactory))) () a1

isFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isFile_super object_ a1 = (isFile_impl (javaCast object_ :: FileFactory)) a1

isFile_impl :: FileFactory -> String -> IO (Bool)
isFile_impl this path = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            Control.Monad.void (Context.openFileInput ((jget (this).context)) path)
            pure (True)


getContext :: (JavaObjectClass this_) => this_ -> IO (Context.Context)
getContext object_ = jmethod object_ "getContext" (\() -> (getContext_impl (javaCast object_ :: FileFactory))) ()

getContext_super :: (JavaObjectClass this_) => this_ -> IO (Context.Context)
getContext_super object_ = (getContext_impl (javaCast object_ :: FileFactory))

getContext_impl :: FileFactory -> IO (Context.Context)
getContext_impl this = do
        pure ((jget (this).context))


-- throws Exception
getFile :: (JavaObjectClass this_) => this_ -> String -> IO (AbFile.AbFile)
getFile object_ a1 = jmethod object_ "getFile" (\() -> (getFile_impl (javaCast object_ :: FileFactory))) () a1

getFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (AbFile.AbFile)
getFile_super object_ a1 = (getFile_impl (javaCast object_ :: FileFactory)) a1

getFile_impl :: FileFactory -> String -> IO (AbFile.AbFile)
getFile_impl this filePath = do
        (AbFile.createAbFileFromRawPath filePath)


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (AbFile.AbFile)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: FileFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (AbFile.AbFile)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: FileFactory)) a1 a2

getInstance_impl :: FileFactory -> AbFile.AbFile -> String -> IO (AbFile.AbFile)
getInstance_impl this file childFilePath = do
        (AbFile.createAbFileWithChild file childFilePath)


