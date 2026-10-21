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
module PlatformBitmapBase where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory

data PlatformBitmapBase = PlatformBitmapBase
    { header_ :: JavaHeader
    , alpha :: IORef (Int)
    , basicColor :: IORef (BasicColor.BasicColor)
    }

instance JavaNull PlatformBitmapBase where
    javaNull = javaNullRecord "PlatformBitmapBase"

instance JavaEquals PlatformBitmapBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformBitmapBase where
    (==) = jrecordEquals

instance JavaObjectClass PlatformBitmapBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PLATFORM_BITMAP_BASE #-}
nULL_PLATFORM_BITMAP_BASE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformBitmapBase
newRecord_ = do
    header_ <- newJavaHeader
    alpha <- newIORef 0
    basicColor <- newIORef javaNull
    let this = PlatformBitmapBase header_ alpha basicColor
    jregisterLevel header_ this
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    pure this

initFields_ :: PlatformBitmapBase -> IO ()
initFields_ this = do
    jset this.alpha (255)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).nULL_COLOR))
    pure ()

new_ :: IO PlatformBitmapBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformBitmapBase -> IO ()
init_ this = do
    initFields_ this


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: PlatformBitmapBase))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: PlatformBitmapBase))

getWidth_impl :: PlatformBitmapBase -> IO (Int)
getWidth_impl this = do
        pure (0)


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: PlatformBitmapBase))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: PlatformBitmapBase))

getHeight_impl :: PlatformBitmapBase -> IO (Int)
getHeight_impl this = do
        pure (0)


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: PlatformBitmapBase))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: PlatformBitmapBase))

getImage_impl :: PlatformBitmapBase -> IO (Image.Image)
getImage_impl this = do
        pure (NullImage.nULL_IMAGE)


