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
module ImageCreationUtil where

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
import qualified Class -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory

data ImageCreationUtil = ImageCreationUtil
    { header_ :: JavaHeader
    }

instance JavaNull ImageCreationUtil where
    javaNull = javaNullRecord "ImageCreationUtil"

instance JavaEquals ImageCreationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCreationUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageCreationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageCreationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageCreationUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "createImageWH" (\() -> createImageWH_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    pure this

initFields_ :: ImageCreationUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ImageCreationUtil)
getInstance = do
        pure (ImageCreationUtil.instance_)

new_ :: IO ImageCreationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCreationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createImageWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Image.Image)
createImageWH object_ a1 a2 = jmethod object_ "createImageWH" (\() -> (createImageWH_impl (javaCast object_ :: ImageCreationUtil))) () a1 a2

createImageWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Image.Image)
createImageWH_super object_ a1 a2 = (createImageWH_impl (javaCast object_ :: ImageCreationUtil)) a1 a2

createImageWH_impl :: ImageCreationUtil -> Int -> Int -> IO (Image.Image)
createImageWH_impl this width height = do
        image <- (GameFeatureImageCacheFactory.get ((jio (GameFeatureImageCacheFactory.getInstance))) (jio (Class.getName ((jio (jobjectGetClass this))))) width height)
        pure (image)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> Float -> IO (Image.Image)
createImage object_ a1 a2 a3 a4 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageCreationUtil))) () a1 a2 a3 a4

createImage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> Float -> IO (Image.Image)
createImage_super object_ a1 a2 a3 a4 = (createImage_impl (javaCast object_ :: ImageCreationUtil)) a1 a2 a3 a4

createImage_impl :: ImageCreationUtil -> Int -> Int -> Float -> Float -> IO (Image.Image)
createImage_impl this width height maxScaleX maxScaleY = do
        image <- (GameFeatureImageCacheFactory.get ((jio (GameFeatureImageCacheFactory.getInstance))) (jio (Class.getName ((jio (jobjectGetClass this))))) ((Prelude.truncate (((Prelude.fromIntegral width) * maxScaleX))) + 1) ((Prelude.truncate (((Prelude.fromIntegral height) * maxScaleY))) + 1))
        pure (image)


