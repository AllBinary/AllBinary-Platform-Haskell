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
-- package org.allbinary.platform.opengles
module PlatformTextureBaseFactory where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PlatformTextureBaseFactory = PlatformTextureBaseFactory
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull PlatformTextureBaseFactory where
    javaNull = javaNullRecord "PlatformTextureBaseFactory"

instance JavaEquals PlatformTextureBaseFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformTextureBaseFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlatformTextureBaseFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PLATFORM_TEXTURE_BASE_FACTORY #-}
nULL_PLATFORM_TEXTURE_BASE_FACTORY = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformTextureBaseFactory
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = PlatformTextureBaseFactory header_ commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    pure this

initFields_ :: PlatformTextureBaseFactory -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO PlatformTextureBaseFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformTextureBaseFactory -> IO ()
init_ this = do
    initFields_ this


load :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Image.Image -> Int -> Bool -> IO (())
load object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: PlatformTextureBaseFactory))) () a1 a2 a3 a4 a5 a6

load_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Image.Image -> Int -> Bool -> IO (())
load_super object_ a1 a2 a3 a4 a5 a6 = (load_impl (javaCast object_ :: PlatformTextureBaseFactory)) a1 a2 a3 a4 a5 a6

load_impl :: PlatformTextureBaseFactory -> GL10.GL10 -> Int -> Int -> Image.Image -> Int -> Bool -> IO (())
load_impl this gl target level image border flip = do
        pure ()


