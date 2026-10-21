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
module OpenGLESImageTranslate where

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

data OpenGLESImageTranslate = OpenGLESImageTranslate
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLESImageTranslate where
    javaNull = javaNullRecord "OpenGLESImageTranslate"

instance JavaEquals OpenGLESImageTranslate where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESImageTranslate where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESImageTranslate where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESImageTranslate
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLESImageTranslate header_
    jregisterLevel header_ this
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    jregisterMethod header_ "translate2" (\() -> translate2_impl this)
    pure this

initFields_ :: OpenGLESImageTranslate -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESImageTranslate
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESImageTranslate -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLESImageTranslate)
getInstance = do
        pure (OpenGLESImageTranslate.instance_)


translate :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> Float -> Float -> IO (())
translate object_ a1 a2 a3 a4 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: OpenGLESImageTranslate))) () a1 a2 a3 a4

translate_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> Float -> Float -> IO (())
translate_super object_ a1 a2 a3 a4 = (translate_impl (javaCast object_ :: OpenGLESImageTranslate)) a1 a2 a3 a4

translate_impl :: OpenGLESImageTranslate -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> Float -> Float -> IO (())
translate_impl this gl openGLESImage x y = do
        Control.Monad.void (OpenGLESImageProcessor.translate ((jget (openGLESImage).imageProcessor)) gl x y)
        pure ()


translate2 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> IO (())
translate2 object_ a1 a2 = jmethod object_ "translate2" (\() -> (translate2_impl (javaCast object_ :: OpenGLESImageTranslate))) () a1 a2

translate2_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> IO (())
translate2_super object_ a1 a2 = (translate2_impl (javaCast object_ :: OpenGLESImageTranslate)) a1 a2

translate2_impl :: OpenGLESImageTranslate -> GL10.GL10 -> OpenGLESImage.OpenGLESImage -> IO (())
translate2_impl this gl openGLESImage = do
        pure ()


