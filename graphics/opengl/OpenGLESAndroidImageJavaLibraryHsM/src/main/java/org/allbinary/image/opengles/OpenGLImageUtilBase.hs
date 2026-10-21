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
module OpenGLImageUtilBase where

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
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified OpenGLBitmap -- org.allbinary.graphics.OpenGLBitmap
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor

data OpenGLImageUtilBase = OpenGLImageUtilBase
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLImageUtilBase where
    javaNull = javaNullRecord "OpenGLImageUtilBase"

instance JavaEquals OpenGLImageUtilBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLImageUtilBase where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLImageUtilBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLImageUtilBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLImageUtilBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    pure this

initFields_ :: OpenGLImageUtilBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLImageUtilBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLImageUtilBase -> IO ()
init_ this = do
    initFields_ this


paint :: (JavaObjectClass this_) => this_ -> OpenGLBitmap.OpenGLBitmap -> OpenGLBitmap.OpenGLBitmap -> Int -> IO (OpenGLBitmap.OpenGLBitmap)
paint object_ a1 a2 a3 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: OpenGLImageUtilBase))) () a1 a2 a3

paint_super :: (JavaObjectClass this_) => this_ -> OpenGLBitmap.OpenGLBitmap -> OpenGLBitmap.OpenGLBitmap -> Int -> IO (OpenGLBitmap.OpenGLBitmap)
paint_super object_ a1 a2 a3 = (paint_impl (javaCast object_ :: OpenGLImageUtilBase)) a1 a2 a3

paint_impl :: OpenGLImageUtilBase -> OpenGLBitmap.OpenGLBitmap -> OpenGLBitmap.OpenGLBitmap -> Int -> IO (OpenGLBitmap.OpenGLBitmap)
paint_impl this alphaBitmap originalBitmap index = do
        javaThrow ((JavaException "RuntimeException" ""))


-- Java overload of paint with a different parameter count: give it a different name
paint :: (JavaObjectClass this_) => this_ -> OpenGLBitmap.OpenGLBitmap -> OpenGLBitmap.OpenGLBitmap -> Int -> BasicColor.BasicColor -> IO (OpenGLBitmap.OpenGLBitmap)
paint object_ a1 a2 a3 a4 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: OpenGLImageUtilBase))) () a1 a2 a3 a4

paint_super :: (JavaObjectClass this_) => this_ -> OpenGLBitmap.OpenGLBitmap -> OpenGLBitmap.OpenGLBitmap -> Int -> BasicColor.BasicColor -> IO (OpenGLBitmap.OpenGLBitmap)
paint_super object_ a1 a2 a3 a4 = (paint_impl (javaCast object_ :: OpenGLImageUtilBase)) a1 a2 a3 a4

paint_impl :: OpenGLImageUtilBase -> OpenGLBitmap.OpenGLBitmap -> OpenGLBitmap.OpenGLBitmap -> Int -> BasicColor.BasicColor -> IO (OpenGLBitmap.OpenGLBitmap)
paint_impl this colorBitmap originalBitmap alpha basicColor = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws IOException
createImage :: (JavaObjectClass this_) => this_ -> String -> IO (OpenGLBitmap.OpenGLBitmap)
createImage object_ a1 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: OpenGLImageUtilBase))) () a1

createImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (OpenGLBitmap.OpenGLBitmap)
createImage_super object_ a1 = (createImage_impl (javaCast object_ :: OpenGLImageUtilBase)) a1

createImage_impl :: OpenGLImageUtilBase -> String -> IO (OpenGLBitmap.OpenGLBitmap)
createImage_impl this name = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws IOException
createImageFromInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (OpenGLBitmap.OpenGLBitmap)
createImageFromInputStream object_ a1 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: OpenGLImageUtilBase))) () a1

createImageFromInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (OpenGLBitmap.OpenGLBitmap)
createImageFromInputStream_super object_ a1 = (createImageFromInputStream_impl (javaCast object_ :: OpenGLImageUtilBase)) a1

createImageFromInputStream_impl :: OpenGLImageUtilBase -> InputStream.InputStream -> IO (OpenGLBitmap.OpenGLBitmap)
createImageFromInputStream_impl this inputStream = do
        javaThrow ((JavaException "RuntimeException" ""))


