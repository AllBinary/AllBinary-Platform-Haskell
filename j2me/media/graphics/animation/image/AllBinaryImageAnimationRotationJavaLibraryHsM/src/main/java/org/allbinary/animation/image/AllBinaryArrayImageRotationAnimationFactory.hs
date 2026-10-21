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
module AllBinaryArrayImageRotationAnimationFactory (module AllBinaryArrayImageRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFactory, createFactory_super, createFactory_impl, createFactoryA, createFactoryA_super, createFactoryA_impl, init, init_super, init_impl, initDXY, initDXY_super, initDXY_impl, getInstance, getInstance_super, getInstance_impl, setImageArray, setImageArray_super, setImageArray_impl, getAngleIncrement, getAngleIncrement_super, getAngleIncrement_impl, imageArray, angleIncrement)
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
import qualified ImageArrayRotationAnimation -- same package or java.lang
import qualified AdjustedImageArrayRotationAnimation -- same package or java.lang
import qualified AnimationFactoryImageScaleUtil -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ImageToRotationImageArrayUtil -- org.allbinary.media.image.ImageToRotationImageArrayUtil
import qualified BaseImageAnimationFactory

data AllBinaryArrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , imageArray :: IORef (JavaArray (Image.Image))
    , angleIncrement :: IORef (Int)
    }

instance JavaNull AllBinaryArrayImageRotationAnimationFactory where
    javaNull = javaNullRecord "AllBinaryArrayImageRotationAnimationFactory"

instance JavaEquals AllBinaryArrayImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryArrayImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryArrayImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryArrayImageRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    imageArray <- newIORef javaNull
    angleIncrement <- newIORef 0
    let this = AllBinaryArrayImageRotationAnimationFactory header_ base imageArray angleIncrement
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initDXY" (\() -> initDXY_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setImageArray" (\() -> setImageArray_impl this)
    jregisterMethod header_ "getAngleIncrement" (\() -> getAngleIncrement_impl this)
    pure this

initFields_ :: AllBinaryArrayImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.imageArray (NullImage.nULL_IMAGE_ARRAY)
    jset this.angleIncrement (0)
    pure ()


-- throws Exception
createFactory :: Image.Image -> Int -> Int -> IO (AllBinaryArrayImageRotationAnimationFactory)
createFactory image dx dy = do
        arrayImageRotationAnimationFactory <- (new_5 image (jio (Image.getWidth image)) (jio (Image.getHeight image)) ((Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))) (jio (AnimationBehaviorFactory.getInstance)))
        Control.Monad.void (AllBinaryArrayImageRotationAnimationFactory.initDXY arrayImageRotationAnimationFactory dx dy)
        pure (arrayImageRotationAnimationFactory)


-- throws Exception
createFactoryA :: Image.Image -> Int -> Int -> Int -> IO (AllBinaryArrayImageRotationAnimationFactory)
createFactoryA image dx dy angleIncrement = do
        arrayImageRotationAnimationFactory <- (new_5 image (jio (Image.getWidth image)) (jio (Image.getHeight image)) angleIncrement (jio (AnimationBehaviorFactory.getInstance)))
        Control.Monad.void (AllBinaryArrayImageRotationAnimationFactory.initDXY arrayImageRotationAnimationFactory dx dy)
        pure (arrayImageRotationAnimationFactory)

new_5 :: Image.Image -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO AllBinaryArrayImageRotationAnimationFactory
new_5 image width height angleIncrement animationBehaviorFactory = do
    this <- newRecord_
    init_5 this image width height angleIncrement animationBehaviorFactory
    pure this

init_5 :: AllBinaryArrayImageRotationAnimationFactory -> Image.Image -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_5 this image width height angleIncrement animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (width) (height) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).angleIncrement (angleIncrement)
        Control.Monad.void (AllBinaryArrayImageRotationAnimationFactory.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))

init_impl :: AllBinaryArrayImageRotationAnimationFactory -> IO (())
init_impl this = do
        Control.Monad.void (AllBinaryArrayImageRotationAnimationFactory.setImageArray this (jio (ImageToRotationImageArrayUtil.generate ((jio (ImageToRotationImageArrayUtil.getInstance))) (jio (BaseImageAnimationFactory.getImage this)) (jio (AllBinaryArrayImageRotationAnimationFactory.getAngleIncrement this)) (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)))))
        pure ()


initDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initDXY object_ a1 a2 = jmethod object_ "initDXY" (\() -> (initDXY_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))) () a1 a2

initDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initDXY_super object_ a1 a2 = (initDXY_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory)) a1 a2

initDXY_impl :: AllBinaryArrayImageRotationAnimationFactory -> Int -> Int -> IO (())
initDXY_impl this dx dy = do
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (dy)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).originalDx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).originalDy (dy)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory)) a1

getInstance_impl :: AllBinaryArrayImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        let scaledImageArray = (jnewArray ((jlength (jget (this).imageArray))) javaNull)
        let size = (jlength scaledImageArray)
        image <- (BaseImageAnimationFactory.getImage this)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (AnimationFactoryImageScaleUtil.createImage ((jget (this).base.animationFactoryImageScaleUtil)) image (jio (Image.getWidth image)) (jio (Image.getHeight image)) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
            jsetIndex scaledImageArray (index) (assignedValue)
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            Control.Monad.void (AnimationFactoryImageScaleUtil.processAdjust ((jget (this).base.animationFactoryImageScaleUtil)) this)
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedImageArrayRotationAnimation.new_6 scaledImageArray (jio (AngleInfo.getInstance (Prelude.fromIntegral (jio (AllBinaryArrayImageRotationAnimationFactory.getAngleIncrement this))))) (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (ImageArrayRotationAnimation.new_4 scaledImageArray (jio (AngleInfo.getInstance (Prelude.fromIntegral (jio (AllBinaryArrayImageRotationAnimationFactory.getAngleIncrement this))))) (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


setImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray object_ a1 = jmethod object_ "setImageArray" (\() -> (setImageArray_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))) () a1

setImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray_super object_ a1 = (setImageArray_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory)) a1

setImageArray_impl :: AllBinaryArrayImageRotationAnimationFactory -> JavaArray (Image.Image) -> IO (())
setImageArray_impl this imageArray = do
        jset (this).imageArray (imageArray)
        pure ()


getAngleIncrement :: (JavaObjectClass this_) => this_ -> IO (Int)
getAngleIncrement object_ = jmethod object_ "getAngleIncrement" (\() -> (getAngleIncrement_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))) ()

getAngleIncrement_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAngleIncrement_super object_ = (getAngleIncrement_impl (javaCast object_ :: AllBinaryArrayImageRotationAnimationFactory))

getAngleIncrement_impl :: AllBinaryArrayImageRotationAnimationFactory -> IO (Int)
getAngleIncrement_impl this = do
        pure ((jget (this).angleIncrement))


