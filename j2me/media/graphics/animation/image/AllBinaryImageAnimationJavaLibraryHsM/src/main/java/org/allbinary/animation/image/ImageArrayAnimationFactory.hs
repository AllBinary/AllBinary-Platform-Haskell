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
-- package org.allbinary.animation.image
module ImageArrayAnimationFactory where

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
import qualified ImageArrayAnimation -- same package or java.lang
import qualified AdjustedImageArrayAnimation -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data ImageArrayAnimationFactory = ImageArrayAnimationFactory
    { header_ :: JavaHeader
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , imageArray :: IORef (JavaArray (Image.Image))
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull ImageArrayAnimationFactory where
    javaNull = javaNullRecord "ImageArrayAnimationFactory"

instance JavaEquals ImageArrayAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageArrayAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    dx <- newIORef 0
    dy <- newIORef 0
    imageArray <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = ImageArrayAnimationFactory header_ dx dy imageArray animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: ImageArrayAnimationFactory -> IO ()
initFields_ this = do
    jset this.dx (0)
    jset this.dy (0)
    jset this.imageArray (javaNull)
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_4 :: JavaArray (Image.Image) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ImageArrayAnimationFactory
new_4 imageArray dx dy animationBehaviorFactory = do
    this <- newRecord_
    init_4 this imageArray dx dy animationBehaviorFactory
    pure this

init_4 :: ImageArrayAnimationFactory -> JavaArray (Image.Image) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_4 this imageArray dx dy animationBehaviorFactory = do
        initFields_ this
        jset (this).imageArray (imageArray)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ImageArrayAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: ImageArrayAnimationFactory)) a1

getInstance_impl :: ImageArrayAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        if (((jget (this).dx) /= 0) || ((jget (this).dy) /= 0)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedImageArrayAnimation.new_4 (jget (this).imageArray) (jget (this).dx) (jget (this).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (ImageArrayAnimation.new_2 (jget (this).imageArray) (jio (AnimationBehavior.getInstance))))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: ImageArrayAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: ImageArrayAnimationFactory)) a1

setInitialScale_impl :: ImageArrayAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


