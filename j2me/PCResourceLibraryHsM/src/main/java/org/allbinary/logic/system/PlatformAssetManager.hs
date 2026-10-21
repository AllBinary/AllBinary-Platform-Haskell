{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.logic.system
module PlatformAssetManager where

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
import qualified InputStream -- java.io.InputStream
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil

data PlatformAssetManager = PlatformAssetManager
    { header_ :: JavaHeader
    }

instance JavaNull PlatformAssetManager where
    javaNull = javaNullRecord "PlatformAssetManager"

instance JavaEquals PlatformAssetManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformAssetManager where
    (==) = jrecordEquals

instance JavaObjectClass PlatformAssetManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformAssetManager
newRecord_ = do
    header_ <- newJavaHeader
    let this = PlatformAssetManager header_
    jregisterLevel header_ this
    jregisterMethod header_ "getResourceAsStream" (\() -> getResourceAsStream_impl this)
    pure this

initFields_ :: PlatformAssetManager -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PlatformAssetManager
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformAssetManager -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlatformAssetManager)
getInstance = do
        pure (PlatformAssetManager.instance_)


-- throws Exception
getResourceAsStream :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream object_ a1 = jmethod object_ "getResourceAsStream" (\() -> (getResourceAsStream_impl (javaCast object_ :: PlatformAssetManager))) () a1

getResourceAsStream_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream_super object_ a1 = (getResourceAsStream_impl (javaCast object_ :: PlatformAssetManager)) a1

getResourceAsStream_impl :: PlatformAssetManager -> String -> IO (InputStream.InputStream)
getResourceAsStream_impl this resource = do
        resourceUtil <- (ResourceUtil.getInstance)
        inputStream <- (ResourceUtil.getResourceAsStream resourceUtil resource)
        pure (inputStream)


