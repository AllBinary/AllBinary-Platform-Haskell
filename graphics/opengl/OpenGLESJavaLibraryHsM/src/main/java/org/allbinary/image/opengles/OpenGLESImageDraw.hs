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
module OpenGLESImageDraw where

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

data OpenGLESImageDraw = OpenGLESImageDraw
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLESImageDraw where
    javaNull = javaNullRecord "OpenGLESImageDraw"

instance JavaEquals OpenGLESImageDraw where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESImageDraw where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESImageDraw where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESImageDraw
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLESImageDraw header_
    jregisterLevel header_ this
    jregisterMethod header_ "drawRegion" (\() -> drawRegion_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    pure this

initFields_ :: OpenGLESImageDraw -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESImageDraw
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESImageDraw -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLESImageDraw)
getInstance = do
        pure (OpenGLESImageDraw.instance_)


drawRegion :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "drawRegion" (\() -> (drawRegion_impl (javaCast object_ :: OpenGLESImageDraw))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (drawRegion_impl (javaCast object_ :: OpenGLESImageDraw)) a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_impl :: OpenGLESImageDraw -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_impl this gl viewHeight x_src y_src width height x y z = do
        pure ()


draw :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw object_ a1 a2 a3 a4 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: OpenGLESImageDraw))) () a1 a2 a3 a4

draw_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_super object_ a1 a2 a3 a4 = (draw_impl (javaCast object_ :: OpenGLESImageDraw)) a1 a2 a3 a4

draw_impl :: OpenGLESImageDraw -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_impl this gl x y z = do
        pure ()


