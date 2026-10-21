{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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
module ImageJ2MEScaleUtil where

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
import qualified ImageScaleUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory

data ImageJ2MEScaleUtil = ImageJ2MEScaleUtil
    { header_ :: JavaHeader
    }

instance JavaNull ImageJ2MEScaleUtil where
    javaNull = javaNullRecord "ImageJ2MEScaleUtil"

instance JavaEquals ImageJ2MEScaleUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageJ2MEScaleUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageJ2MEScaleUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageJ2MEScaleUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageJ2MEScaleUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "scaleArray" (\() -> scaleArray_impl this)
    jregisterMethod header_ "scale" (\() -> scale_impl this)
    pure this

initFields_ :: ImageJ2MEScaleUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ImageJ2MEScaleUtil)
getInstance = do
        pure (ImageJ2MEScaleUtil.instance_)

new_ :: IO ImageJ2MEScaleUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageJ2MEScaleUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
scaleArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Int -> IO (JavaArray (Image.Image))
scaleArray object_ a1 a2 a3 = jmethod object_ "scaleArray" (\() -> (scaleArray_impl (javaCast object_ :: ImageJ2MEScaleUtil))) () a1 a2 a3

scaleArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Int -> IO (JavaArray (Image.Image))
scaleArray_super object_ a1 a2 a3 = (scaleArray_impl (javaCast object_ :: ImageJ2MEScaleUtil)) a1 a2 a3

scaleArray_impl :: ImageJ2MEScaleUtil -> JavaArray (Image.Image) -> Int -> Int -> IO (JavaArray (Image.Image))
scaleArray_impl this images width height = do
        forM_ [0 .. (jlength images) - 1] $ \index -> javaIteration (pure ()) $ do
            let image = (jindex images (index))
            assignedValue <- (ImageScaleUtil.createImage2 ((jio (ImageScaleUtil.getInstance))) (jio (GameFeatureImageCacheFactory.getInstance)) image ((Prelude.fromIntegral width) / 2.0) (Prelude.realToFrac (jnumericDouble (jio (Image.getWidth image)))) (Prelude.fromIntegral height) (Prelude.realToFrac (jnumericDouble (jio (Image.getHeight image)))) False)
            jsetIndex images (index) (assignedValue)
        pure (images)


-- throws Exception
scale :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Image.Image)
scale object_ a1 a2 a3 = jmethod object_ "scale" (\() -> (scale_impl (javaCast object_ :: ImageJ2MEScaleUtil))) () a1 a2 a3

scale_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Image.Image)
scale_super object_ a1 a2 a3 = (scale_impl (javaCast object_ :: ImageJ2MEScaleUtil)) a1 a2 a3

scale_impl :: ImageJ2MEScaleUtil -> Image.Image -> Int -> Int -> IO (Image.Image)
scale_impl this image width height = do
        (ImageScaleUtil.createImage2 ((jio (ImageScaleUtil.getInstance))) (jio (GameFeatureImageCacheFactory.getInstance)) image (Prelude.fromIntegral width) (Prelude.realToFrac (jnumericDouble (jio (Image.getWidth image)))) (Prelude.fromIntegral height) (Prelude.realToFrac (jnumericDouble (jio (Image.getHeight image)))) False)


