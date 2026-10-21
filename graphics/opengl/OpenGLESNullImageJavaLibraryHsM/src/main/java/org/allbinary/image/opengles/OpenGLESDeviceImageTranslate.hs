{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module OpenGLESDeviceImageTranslate (module OpenGLESDeviceImageTranslate, module OpenGLESImageTranslate) where

import OpenGLESImageTranslate hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, translate, translate_super, translate_impl, translate2, translate2_super, translate2_impl, translateX, translateY, translateX2, translateY2)
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
import qualified OpenGLESImage -- same package or java.lang
import qualified OpenGLESImageProcessor -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified OpenGLESImageTranslate

data OpenGLESDeviceImageTranslate = OpenGLESDeviceImageTranslate
    { header_ :: JavaHeader
    , base :: OpenGLESImageTranslate.OpenGLESImageTranslate
    , translateX :: IORef (Float)
    , translateY :: IORef (Float)
    , translateX2 :: IORef (Float)
    , translateY2 :: IORef (Float)
    }

instance JavaNull OpenGLESDeviceImageTranslate where
    javaNull = javaNullRecord "OpenGLESDeviceImageTranslate"

instance JavaEquals OpenGLESDeviceImageTranslate where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESDeviceImageTranslate where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESDeviceImageTranslate where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLESDeviceImageTranslate
newRecord_ = do
    base <- OpenGLESImageTranslate.newRecord_
    let header_ = base.header_
    translateX <- newIORef 0.0
    translateY <- newIORef 0.0
    translateX2 <- newIORef 0.0
    translateY2 <- newIORef 0.0
    let this = OpenGLESDeviceImageTranslate header_ base translateX translateY translateX2 translateY2
    jregisterLevel header_ this
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    jregisterMethod header_ "translate2" (\() -> translate2_impl this)
    pure this

initFields_ :: OpenGLESDeviceImageTranslate -> IO ()
initFields_ this = do
    jset this.translateX (0.0)
    jset this.translateY (0.0)
    jset this.translateX2 (0.0)
    jset this.translateY2 (0.0)
    pure ()

new_ :: IO OpenGLESDeviceImageTranslate
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESDeviceImageTranslate -> IO ()
init_ this = do
    OpenGLESImageTranslate.init_ this.base
    initFields_ this


translate :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> Float -> Float -> IO (())
translate object_ a1 a2 a3 a4 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: OpenGLESDeviceImageTranslate))) () a1 a2 a3 a4

translate_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> Float -> Float -> IO (())
translate_super object_ a1 a2 a3 a4 = (translate_impl (javaCast object_ :: OpenGLESDeviceImageTranslate)) a1 a2 a3 a4

translate_impl :: OpenGLESDeviceImageTranslate -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> Float -> Float -> IO (())
translate_impl this gl openGLESImage x y = do
        Control.Monad.void (OpenGLESImageProcessor.translate ((jget (openGLESImage).imageProcessor)) gl ((jget this.translateX) + (((jget ((jget (openGLESImage).openGLESImageProperties)).scaleX) * x))) ((jget this.translateY) + (((jget ((jget (openGLESImage).openGLESImageProperties)).scaleY) * y))))
        pure ()


translate2 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> IO (())
translate2 object_ a1 a2 = jmethod object_ "translate2" (\() -> (translate2_impl (javaCast object_ :: OpenGLESDeviceImageTranslate))) () a1 a2

translate2_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> IO (())
translate2_super object_ a1 a2 = (translate2_impl (javaCast object_ :: OpenGLESDeviceImageTranslate)) a1 a2

translate2_impl :: OpenGLESDeviceImageTranslate -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> IO (())
translate2_impl this gl openGLESImage = do
        Control.Monad.void (OpenGLESImageProcessor.translate ((jget (openGLESImage).imageProcessor)) gl (jget this.translateX2) (jget this.translateY2))
        pure ()


