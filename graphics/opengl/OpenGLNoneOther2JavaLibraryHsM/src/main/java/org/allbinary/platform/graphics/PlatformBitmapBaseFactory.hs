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
-- package org.allbinary.platform.graphics
module PlatformBitmapBaseFactory where

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
import qualified PlatformBitmapBase -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image

data PlatformBitmapBaseFactory = PlatformBitmapBaseFactory
    { header_ :: JavaHeader
    }

instance JavaNull PlatformBitmapBaseFactory where
    javaNull = javaNullRecord "PlatformBitmapBaseFactory"

instance JavaEquals PlatformBitmapBaseFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformBitmapBaseFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlatformBitmapBaseFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PLATFORM_BITMAP_BASE_FACTORY #-}
nULL_PLATFORM_BITMAP_BASE_FACTORY = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformBitmapBaseFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = PlatformBitmapBaseFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "createBitmap" (\() -> createBitmap_impl this)
    pure this

initFields_ :: PlatformBitmapBaseFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PlatformBitmapBaseFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformBitmapBaseFactory -> IO ()
init_ this = do
    initFields_ this


createBitmap :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (PlatformBitmapBase.PlatformBitmapBase)
createBitmap object_ a1 = jmethod object_ "createBitmap" (\() -> (createBitmap_impl (javaCast object_ :: PlatformBitmapBaseFactory))) () a1

createBitmap_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (PlatformBitmapBase.PlatformBitmapBase)
createBitmap_super object_ a1 = (createBitmap_impl (javaCast object_ :: PlatformBitmapBaseFactory)) a1

createBitmap_impl :: PlatformBitmapBaseFactory -> Image.Image -> IO (PlatformBitmapBase.PlatformBitmapBase)
createBitmap_impl this image = do
        pure (PlatformBitmapBase.nULL_PLATFORM_BITMAP_BASE)


