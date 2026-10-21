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
module AllBinaryHTMLImageRotationAnimationFactory (module AllBinaryHTMLImageRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFactoryADXY, createFactoryADXY_super, createFactoryADXY_impl, init, init_super, init_impl, getInstance, getInstance_super, getInstance_impl, getAngleIncrement, getAngleIncrement_super, getAngleIncrement_impl, angleIncrement)
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
import qualified AllBinaryHTMLImageRotationAnimation -- same package or java.lang
import qualified AllBinaryAdjustedHTMLImageRotationAnimation -- same package or java.lang
import qualified AnimationFactoryImageScaleUtil -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified ImageCopyUtil -- org.allbinary.media.image.ImageCopyUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified BaseImageAnimationFactory

data AllBinaryHTMLImageRotationAnimationFactory = AllBinaryHTMLImageRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , angleIncrement :: IORef (Int16)
    }

instance JavaNull AllBinaryHTMLImageRotationAnimationFactory where
    javaNull = javaNullRecord "AllBinaryHTMLImageRotationAnimationFactory"

instance JavaEquals AllBinaryHTMLImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryHTMLImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryHTMLImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryHTMLImageRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    angleIncrement <- newIORef 0
    let this = AllBinaryHTMLImageRotationAnimationFactory header_ base angleIncrement
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getAngleIncrement" (\() -> getAngleIncrement_impl this)
    pure this

initFields_ :: AllBinaryHTMLImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.angleIncrement (0)
    pure ()


-- throws Exception
createFactoryADXY :: Image.Image -> Int -> Int -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinaryHTMLImageRotationAnimationFactory)
createFactoryADXY image width height dx dy angleIncrement animationBehaviorFactory = do
        htmlImageRotationAnimationFactory <- (new_5 image width height angleIncrement animationBehaviorFactory)
        Control.Monad.void (AllBinaryHTMLImageRotationAnimationFactory.init htmlImageRotationAnimationFactory dx dy)
        pure (htmlImageRotationAnimationFactory)

new_5 :: Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO AllBinaryHTMLImageRotationAnimationFactory
new_5 image width height angleIncrement animationBehaviorFactory = do
    this <- newRecord_
    init_5 this image width height angleIncrement animationBehaviorFactory
    pure this

init_5 :: AllBinaryHTMLImageRotationAnimationFactory -> Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_5 this image width height angleIncrement animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (width) (height) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).angleIncrement (angleIncrement)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimationFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimationFactory)) a1 a2

init_impl :: AllBinaryHTMLImageRotationAnimationFactory -> Int -> Int -> IO (())
init_impl this dx dy = do
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (dy)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).originalDx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).originalDy (dy)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimationFactory)) a1

getInstance_impl :: AllBinaryHTMLImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        scaledImage <- (AnimationFactoryImageScaleUtil.createImage ((jget (this).base.animationFactoryImageScaleUtil)) (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        copyOfScaledImage <- (ImageCopyUtil.createImage ((jio (ImageCopyUtil.getInstance))) scaledImage)
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            Control.Monad.void (AnimationFactoryImageScaleUtil.processAdjust ((jget (this).base.animationFactoryImageScaleUtil)) this)
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryAdjustedHTMLImageRotationAnimation.new_7 scaledImage copyOfScaledImage (jio (AngleInfo.getInstance (jio (AllBinaryHTMLImageRotationAnimationFactory.getAngleIncrement this)))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryHTMLImageRotationAnimation.new_5 scaledImage copyOfScaledImage (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


getAngleIncrement :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement object_ = jmethod object_ "getAngleIncrement" (\() -> (getAngleIncrement_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimationFactory))) ()

getAngleIncrement_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement_super object_ = (getAngleIncrement_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimationFactory))

getAngleIncrement_impl :: AllBinaryHTMLImageRotationAnimationFactory -> IO (Int16)
getAngleIncrement_impl this = do
        pure ((jget (this).angleIncrement))


