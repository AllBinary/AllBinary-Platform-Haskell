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
-- package org.allbinary.image.opengles
module OpenGLImageFactory where

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
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory

data OpenGLImageFactory = OpenGLImageFactory
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLImageFactory where
    javaNull = javaNullRecord "OpenGLImageFactory"

instance JavaEquals OpenGLImageFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLImageFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLImageFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_OPENGL_IMAGE_FACTORY #-}
nULL_OPENGL_IMAGE_FACTORY = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLImageFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLImageFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: OpenGLImageFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLImageFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLImageFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO (Image.Image)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: OpenGLImageFactory))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO (Image.Image)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: OpenGLImageFactory)) a1 a2 a3

getInstance_impl :: OpenGLImageFactory -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO (Image.Image)
getInstance_impl this image bitmapFactory textureFactory = do
        javaThrow ((JavaException "RuntimeException" ""))


