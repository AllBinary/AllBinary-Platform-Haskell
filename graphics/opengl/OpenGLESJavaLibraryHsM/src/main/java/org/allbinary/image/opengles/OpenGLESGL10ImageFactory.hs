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
module OpenGLESGL10ImageFactory (module OpenGLESGL10ImageFactory, module OpenGLImageFactory) where

import OpenGLImageFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl)
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
import qualified OpenGLESGL10Image -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory
import qualified OpenGLImageFactory

data OpenGLESGL10ImageFactory = OpenGLESGL10ImageFactory
    { header_ :: JavaHeader
    , base :: OpenGLImageFactory.OpenGLImageFactory
    }

instance JavaNull OpenGLESGL10ImageFactory where
    javaNull = javaNullRecord "OpenGLESGL10ImageFactory"

instance JavaEquals OpenGLESGL10ImageFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGL10ImageFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGL10ImageFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLESGL10ImageFactory
newRecord_ = do
    base <- OpenGLImageFactory.newRecord_
    let header_ = base.header_
    let this = OpenGLESGL10ImageFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: OpenGLESGL10ImageFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESGL10ImageFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESGL10ImageFactory -> IO ()
init_ this = do
    OpenGLImageFactory.init_ this.base
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO (Image.Image)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: OpenGLESGL10ImageFactory))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO (Image.Image)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: OpenGLESGL10ImageFactory)) a1 a2 a3

getInstance_impl :: OpenGLESGL10ImageFactory -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO (Image.Image)
getInstance_impl this image bitmapFactory textureFactory = do
        (fmap (\value_ -> javaCast value_ :: Image.Image) (OpenGLESGL10Image.new_3 image bitmapFactory textureFactory))


