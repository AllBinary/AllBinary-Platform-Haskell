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
module ImageRotationAnimationFactory (module ImageRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getAngleIncrementP, getAngleIncrementP_super, getAngleIncrementP_impl, angleIncrement)
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
import qualified ImageBaseRotationAnimation -- same package or java.lang
import qualified AdjustedImageBaseRotationAnimation -- same package or java.lang
import qualified AnimationFactoryImageScaleUtil -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified BaseImageAnimationFactory

data ImageRotationAnimationFactory = ImageRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , angleIncrement :: IORef (Int16)
    }

instance JavaNull ImageRotationAnimationFactory where
    javaNull = javaNullRecord "ImageRotationAnimationFactory"

instance JavaEquals ImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass ImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    angleIncrement <- newIORef 0
    let this = ImageRotationAnimationFactory header_ base angleIncrement
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getAngleIncrementP" (\() -> getAngleIncrementP_impl this)
    pure this

initFields_ :: ImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.angleIncrement (0)
    pure ()

new_7 :: Image.Image -> Int -> Int -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ImageRotationAnimationFactory
new_7 image width height dx dy angleIncrement animationBehaviorFactory = do
    this <- newRecord_
    init_7 this image width height dx dy angleIncrement animationBehaviorFactory
    pure this

init_7 :: ImageRotationAnimationFactory -> Image.Image -> Int -> Int -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_7 this image width height dx dy angleIncrement animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (width) (height) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).angleIncrement (angleIncrement)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (dy)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: ImageRotationAnimationFactory)) a1

getInstance_impl :: ImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            Control.Monad.void (AnimationFactoryImageScaleUtil.processAdjust ((jget (this).base.animationFactoryImageScaleUtil)) (javaCast this))
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedImageBaseRotationAnimation.new_6 (jio (BaseImageAnimationFactory.getImage this)) (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (ImageBaseRotationAnimation.new_4 (jio (BaseImageAnimationFactory.getImage this)) (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


getAngleIncrementP :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrementP object_ = jmethod object_ "getAngleIncrementP" (\() -> (getAngleIncrementP_impl (javaCast object_ :: ImageRotationAnimationFactory))) ()

getAngleIncrementP_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrementP_super object_ = (getAngleIncrementP_impl (javaCast object_ :: ImageRotationAnimationFactory))

getAngleIncrementP_impl :: ImageRotationAnimationFactory -> IO (Int16)
getAngleIncrementP_impl this = do
        pure ((jget (this).angleIncrement))


