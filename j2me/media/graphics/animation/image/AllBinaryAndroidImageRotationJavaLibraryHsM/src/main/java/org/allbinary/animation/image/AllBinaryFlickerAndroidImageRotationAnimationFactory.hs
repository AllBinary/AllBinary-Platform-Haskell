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
module AllBinaryFlickerAndroidImageRotationAnimationFactory where

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
import qualified AllBinaryFlickerAndroidImageRotationAnimation -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ImageCopyUtil -- org.allbinary.media.image.ImageCopyUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data AllBinaryFlickerAndroidImageRotationAnimationFactory = AllBinaryFlickerAndroidImageRotationAnimationFactory
    { header_ :: JavaHeader
    , image :: IORef (Image.Image)
    , angleIncrement :: IORef (Int16)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull AllBinaryFlickerAndroidImageRotationAnimationFactory where
    javaNull = javaNullRecord "AllBinaryFlickerAndroidImageRotationAnimationFactory"

instance JavaEquals AllBinaryFlickerAndroidImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryFlickerAndroidImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryFlickerAndroidImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryFlickerAndroidImageRotationAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    image <- newIORef javaNull
    angleIncrement <- newIORef 0
    animationBehaviorFactory <- newIORef javaNull
    let this = AllBinaryFlickerAndroidImageRotationAnimationFactory header_ image angleIncrement animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getAngleIncrement" (\() -> getAngleIncrement_impl this)
    jregisterMethod header_ "setImage" (\() -> setImage_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.image (NullImage.nULL_IMAGE)
    jset this.angleIncrement (0)
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_5 :: Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO AllBinaryFlickerAndroidImageRotationAnimationFactory
new_5 image width height angleIncrement animationBehaviorFactory = do
    this <- newRecord_
    init_5 this image width height angleIncrement animationBehaviorFactory
    pure this

init_5 :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_5 this image width height angleIncrement animationBehaviorFactory = do
        initFields_ this
        Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimationFactory.setImage this image)
        jset (this).angleIncrement (angleIncrement)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory)) a1

getInstance_impl :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        image <- (ImageCopyUtil.createImage ((jio (ImageCopyUtil.getInstance))) (jio (AllBinaryFlickerAndroidImageRotationAnimationFactory.getImage this)))
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryFlickerAndroidImageRotationAnimation.new_5 (jio (AllBinaryFlickerAndroidImageRotationAnimationFactory.getImage this)) image (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


getAngleIncrement :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement object_ = jmethod object_ "getAngleIncrement" (\() -> (getAngleIncrement_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))) ()

getAngleIncrement_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement_super object_ = (getAngleIncrement_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))

getAngleIncrement_impl :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> IO (Int16)
getAngleIncrement_impl this = do
        pure ((jget (this).angleIncrement))


setImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
setImage object_ a1 = jmethod object_ "setImage" (\() -> (setImage_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))) () a1

setImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
setImage_super object_ a1 = (setImage_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory)) a1

setImage_impl :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> Image.Image -> IO (())
setImage_impl this image = do
        jset (this).image (image)
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))

getImage_impl :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> IO (Image.Image)
getImage_impl this = do
        pure ((jget (this).image))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimationFactory)) a1

setInitialScale_impl :: AllBinaryFlickerAndroidImageRotationAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


