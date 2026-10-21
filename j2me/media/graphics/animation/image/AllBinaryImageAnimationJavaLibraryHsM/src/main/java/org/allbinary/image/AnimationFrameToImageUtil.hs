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
-- package org.allbinary.image
module AnimationFrameToImageUtil where

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
import qualified GameFeatureImageCacheFactory -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation

data AnimationFrameToImageUtil = AnimationFrameToImageUtil
    { header_ :: JavaHeader
    }

instance JavaNull AnimationFrameToImageUtil where
    javaNull = javaNullRecord "AnimationFrameToImageUtil"

instance JavaEquals AnimationFrameToImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationFrameToImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass AnimationFrameToImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnimationFrameToImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = AnimationFrameToImageUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceTranslate" (\() -> getInstanceTranslate_impl this)
    jregisterMethod header_ "getInstanceWH" (\() -> getInstanceWH_impl this)
    pure this

initFields_ :: AnimationFrameToImageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AnimationFrameToImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnimationFrameToImageUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AnimationFrameToImageUtil)
getInstance = do
        pure (AnimationFrameToImageUtil.instance_)


-- throws Exception
getInstanceTranslate :: (JavaObjectClass this_) => this_ -> Int -> Int -> Animation.Animation -> IO (Image.Image)
getInstanceTranslate object_ a1 a2 a3 = jmethod object_ "getInstanceTranslate" (\() -> (getInstanceTranslate_impl (javaCast object_ :: AnimationFrameToImageUtil))) () a1 a2 a3

getInstanceTranslate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Animation.Animation -> IO (Image.Image)
getInstanceTranslate_super object_ a1 a2 a3 = (getInstanceTranslate_impl (javaCast object_ :: AnimationFrameToImageUtil)) a1 a2 a3

getInstanceTranslate_impl :: AnimationFrameToImageUtil -> Int -> Int -> Animation.Animation -> IO (Image.Image)
getInstanceTranslate_impl this width height animationInterface = do
        image <- (ImageCache.get ((jio (GameFeatureImageCacheFactory.getInstance))) (jio (Class.getName ((jio (jobjectGetClass AnimationFrameToImageUtil.instance_))))) ((((width * 3)) `Data.Bits.shiftR` 1)) ((((height * 3)) `Data.Bits.shiftR` 1)))
        graphics <- (Image.getGraphics image)
        let tranlateX = ((width `Data.Bits.shiftR` 2))
        let tranlateY = ((height `Data.Bits.shiftR` 2))
        Control.Monad.void (Graphics.translate graphics tranlateX tranlateY)
        Control.Monad.void (Animation.paintXY animationInterface graphics 0 0)
        Control.Monad.void (Graphics.translate graphics (Prelude.negate tranlateX) (Prelude.negate tranlateY))
        pure (image)


-- throws Exception
getInstanceWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> Animation.Animation -> IO (Image.Image)
getInstanceWH object_ a1 a2 a3 = jmethod object_ "getInstanceWH" (\() -> (getInstanceWH_impl (javaCast object_ :: AnimationFrameToImageUtil))) () a1 a2 a3

getInstanceWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Animation.Animation -> IO (Image.Image)
getInstanceWH_super object_ a1 a2 a3 = (getInstanceWH_impl (javaCast object_ :: AnimationFrameToImageUtil)) a1 a2 a3

getInstanceWH_impl :: AnimationFrameToImageUtil -> Int -> Int -> Animation.Animation -> IO (Image.Image)
getInstanceWH_impl this width height animationInterface = do
        image <- (ImageCache.get ((jio (GameFeatureImageCacheFactory.getInstance))) (jio (Class.getName ((jio (jobjectGetClass AnimationFrameToImageUtil.instance_))))) width height)
        graphics <- (Image.getGraphics image)
        Control.Monad.void (Animation.paintXY animationInterface graphics 0 0)
        pure (image)


