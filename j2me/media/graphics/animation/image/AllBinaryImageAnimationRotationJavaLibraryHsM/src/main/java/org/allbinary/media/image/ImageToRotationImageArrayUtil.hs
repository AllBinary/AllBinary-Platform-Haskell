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
-- package org.allbinary.media.image
module ImageToRotationImageArrayUtil where

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
import qualified ImageRotationUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image

data ImageToRotationImageArrayUtil = ImageToRotationImageArrayUtil
    { header_ :: JavaHeader
    }

instance JavaNull ImageToRotationImageArrayUtil where
    javaNull = javaNullRecord "ImageToRotationImageArrayUtil"

instance JavaEquals ImageToRotationImageArrayUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageToRotationImageArrayUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageToRotationImageArrayUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageToRotationImageArrayUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageToRotationImageArrayUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    pure this

initFields_ :: ImageToRotationImageArrayUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ImageToRotationImageArrayUtil)
getInstance = do
        pure (ImageToRotationImageArrayUtil.instance_)

new_ :: IO ImageToRotationImageArrayUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageToRotationImageArrayUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
generate :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (JavaArray (Image.Image))
generate object_ a1 a2 a3 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: ImageToRotationImageArrayUtil))) () a1 a2 a3

generate_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (JavaArray (Image.Image))
generate_super object_ a1 a2 a3 = (generate_impl (javaCast object_ :: ImageToRotationImageArrayUtil)) a1 a2 a3

generate_impl :: ImageToRotationImageArrayUtil -> Image.Image -> Int -> Int -> IO (JavaArray (Image.Image))
generate_impl this image angleIncrement totalAngle = do
        imageRotationUtil <- (ImageRotationUtil.getInstance)
        let totalFrames = (totalAngle `quot` angleIncrement)
        let imageArray = (jnewArray (totalFrames) javaNull)
        jsetIndex imageArray (0) (image)
        forM_ [1 .. totalFrames - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ImageRotationUtil.createRotatedImage imageRotationUtil image (index * angleIncrement))
            jsetIndex imageArray (index) (assignedValue)
        pure (imageArray)


