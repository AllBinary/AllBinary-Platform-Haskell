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
module PooledImageArrayRotationAnimationFactory where

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
import qualified Any -- same package or java.lang
import qualified ImageArrayRotationAnimationInfo -- same package or java.lang
import qualified AdjustedImageArrayRotationAnimation -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified ImageToRotationImageArrayUtil -- org.allbinary.media.image.ImageToRotationImageArrayUtil

-- implements AnimationInterfaceFactoryInterface
data PooledImageArrayRotationAnimationFactory = PooledImageArrayRotationAnimationFactory
    { header_ :: JavaHeader
    , allBinaryImageRotationAnimationInfo :: IORef (Any.Any)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull PooledImageArrayRotationAnimationFactory where
    javaNull = javaNullRecord "PooledImageArrayRotationAnimationFactory"

instance JavaEquals PooledImageArrayRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PooledImageArrayRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass PooledImageArrayRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PooledImageArrayRotationAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    allBinaryImageRotationAnimationInfo <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = PooledImageArrayRotationAnimationFactory header_ allBinaryImageRotationAnimationInfo animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: PooledImageArrayRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.allBinaryImageRotationAnimationInfo ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    jset this.animationBehaviorFactory (javaNull)
    pure ()


-- throws Exception
createFactory :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (PooledImageArrayRotationAnimationFactory)
createFactory image animationBehaviorFactory = do
        let totalAngle = (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE))
        let angleIncrement = ((totalAngle `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))
        (new_7 image (jio (Image.getWidth image)) (jio (Image.getHeight image)) (Prelude.negate (((jio (Image.getWidth image)) `Data.Bits.shiftR` 2))) (Prelude.negate (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2))) angleIncrement animationBehaviorFactory)


-- throws Exception
createDXY :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (PooledImageArrayRotationAnimationFactory)
createDXY image dx dy animationBehaviorFactory = do
        let totalAngle = (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE))
        let angleIncrement = ((totalAngle `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))
        (new_7 image (jio (Image.getWidth image)) (jio (Image.getHeight image)) dx dy angleIncrement animationBehaviorFactory)

new_7 :: Image.Image -> Int -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO PooledImageArrayRotationAnimationFactory
new_7 image width height dx dy angleIncrement animationBehaviorFactory = do
    this <- newRecord_
    init_7 this image width height dx dy angleIncrement animationBehaviorFactory
    pure this

init_7 :: PooledImageArrayRotationAnimationFactory -> Image.Image -> Int -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_7 this image width height dx dy angleIncrement animationBehaviorFactory = do
        initFields_ this
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        let totalAngle = (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE))
        imageArray <- (ImageToRotationImageArrayUtil.generate ((jio (ImageToRotationImageArrayUtil.getInstance))) image angleIncrement totalAngle)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Any.Any) (ImageArrayRotationAnimationInfo.new_5 imageArray angleIncrement totalAngle dx dy))
        jset (this).allBinaryImageRotationAnimationInfo (assignedValue)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PooledImageArrayRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: PooledImageArrayRotationAnimationFactory)) a1

getInstance_impl :: PooledImageArrayRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo (jget (this).allBinaryImageRotationAnimationInfo) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: PooledImageArrayRotationAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: PooledImageArrayRotationAnimationFactory)) a1

setInitialScale_impl :: PooledImageArrayRotationAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


