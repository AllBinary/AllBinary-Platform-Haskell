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
-- package org.allbinary.image.opengles
module OpenGLESImageProcessor where

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

data OpenGLESImageProcessor = OpenGLESImageProcessor
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLESImageProcessor where
    javaNull = javaNullRecord "OpenGLESImageProcessor"

instance JavaEquals OpenGLESImageProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESImageProcessor where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESImageProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESImageProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLESImageProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    jregisterMethod header_ "rotate" (\() -> rotate_impl this)
    jregisterMethod header_ "scale" (\() -> scale_impl this)
    jregisterMethod header_ "colorMask" (\() -> colorMask_impl this)
    pure this

initFields_ :: OpenGLESImageProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESImageProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESImageProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLESImageProcessor)
getInstance = do
        pure (OpenGLESImageProcessor.instance_)


translate :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> IO (())
translate object_ a1 a2 a3 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: OpenGLESImageProcessor))) () a1 a2 a3

translate_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> IO (())
translate_super object_ a1 a2 a3 = (translate_impl (javaCast object_ :: OpenGLESImageProcessor)) a1 a2 a3

translate_impl :: OpenGLESImageProcessor -> GL10.GL10 -> Float -> Float -> IO (())
translate_impl this gl translateX translateY = do
        pure ()


rotate :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> IO (())
rotate object_ a1 a2 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: OpenGLESImageProcessor))) () a1 a2

rotate_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> IO (())
rotate_super object_ a1 a2 = (rotate_impl (javaCast object_ :: OpenGLESImageProcessor)) a1 a2

rotate_impl :: OpenGLESImageProcessor -> GL10.GL10 -> Float -> IO (())
rotate_impl this gl angle = do
        pure ()


scale :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> IO (())
scale object_ a1 a2 a3 = jmethod object_ "scale" (\() -> (scale_impl (javaCast object_ :: OpenGLESImageProcessor))) () a1 a2 a3

scale_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> IO (())
scale_super object_ a1 a2 a3 = (scale_impl (javaCast object_ :: OpenGLESImageProcessor)) a1 a2 a3

scale_impl :: OpenGLESImageProcessor -> GL10.GL10 -> Float -> Float -> IO (())
scale_impl this gl scaleX scaleY = do
        pure ()


colorMask :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> IO (())
colorMask object_ a1 a2 a3 a4 a5 = jmethod object_ "colorMask" (\() -> (colorMask_impl (javaCast object_ :: OpenGLESImageProcessor))) () a1 a2 a3 a4 a5

colorMask_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> IO (())
colorMask_super object_ a1 a2 a3 a4 a5 = (colorMask_impl (javaCast object_ :: OpenGLESImageProcessor)) a1 a2 a3 a4 a5

colorMask_impl :: OpenGLESImageProcessor -> GL10.GL10 -> Float -> Float -> Float -> Float -> IO (())
colorMask_impl this gl red green blue alpha = do
        pure ()


