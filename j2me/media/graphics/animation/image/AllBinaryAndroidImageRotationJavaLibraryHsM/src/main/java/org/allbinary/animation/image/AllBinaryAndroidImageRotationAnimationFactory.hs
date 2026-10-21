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
module AllBinaryAndroidImageRotationAnimationFactory (module AllBinaryAndroidImageRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFactory, createFactory_super, createFactory_impl, createFactoryA, createFactoryA_super, createFactoryA_impl, createFactoryU, createFactoryU_super, createFactoryU_impl, createFactoryDXYU, createFactoryDXYU_super, createFactoryDXYU_impl, createFactoryADXY, createFactoryADXY_super, createFactoryADXY_impl, init, init_super, init_impl, getCanvasImage, getCanvasImage_super, getCanvasImage_impl, getInstance, getInstance_super, getInstance_impl, angleIncrement, resizeCanvasForRotation)
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
import qualified AllBinaryAdjustedAndroidImageRotationAnimation -- same package or java.lang
import qualified AnimationFactoryImageScaleUtil -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified ImageCopyUtil -- org.allbinary.media.image.ImageCopyUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified BaseImageAnimationFactory

data AllBinaryAndroidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , angleIncrement :: IORef (Int16)
    , resizeCanvasForRotation :: IORef (Bool)
    }

instance JavaNull AllBinaryAndroidImageRotationAnimationFactory where
    javaNull = javaNullRecord "AllBinaryAndroidImageRotationAnimationFactory"

instance JavaEquals AllBinaryAndroidImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryAndroidImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryAndroidImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryAndroidImageRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    angleIncrement <- newIORef 0
    resizeCanvasForRotation <- newIORef False
    let this = AllBinaryAndroidImageRotationAnimationFactory header_ base angleIncrement resizeCanvasForRotation
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getCanvasImage" (\() -> getCanvasImage_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: AllBinaryAndroidImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.angleIncrement (0)
    jset this.resizeCanvasForRotation (False)
    pure ()


-- throws Exception
createFactory :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinaryAndroidImageRotationAnimationFactory)
createFactory image width height animationBehaviorFactory = do
        (new_6 image width height (Prelude.fromIntegral (((Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))) animationBehaviorFactory False)


-- throws Exception
createFactoryA :: Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinaryAndroidImageRotationAnimationFactory)
createFactoryA image width height angleIncrement animationBehaviorFactory = do
        (new_6 image width height angleIncrement animationBehaviorFactory False)


-- throws Exception
createFactoryU :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinaryAndroidImageRotationAnimationFactory)
createFactoryU image animationBehaviorFactory = do
        androidImageRotationAnimationFactory <- (new_6 image (jio (Image.getWidth image)) (jio (Image.getHeight image)) (Prelude.fromIntegral (((Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))) animationBehaviorFactory False)
        Control.Monad.void (AllBinaryAndroidImageRotationAnimationFactory.init androidImageRotationAnimationFactory (Prelude.negate (((jio (Image.getWidth image)) `Data.Bits.shiftR` 2))) (Prelude.negate (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2))))
        pure (androidImageRotationAnimationFactory)


-- throws Exception
createFactoryDXYU :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinaryAndroidImageRotationAnimationFactory)
createFactoryDXYU image dx dy animationBehaviorFactory = do
        androidImageRotationAnimationFactory <- (new_6 image (jio (Image.getWidth image)) (jio (Image.getHeight image)) (Prelude.fromIntegral (((Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))) animationBehaviorFactory False)
        Control.Monad.void (AllBinaryAndroidImageRotationAnimationFactory.init androidImageRotationAnimationFactory dx dy)
        pure (androidImageRotationAnimationFactory)


-- throws Exception
createFactoryADXY :: Image.Image -> Int -> Int -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> Bool -> IO (AllBinaryAndroidImageRotationAnimationFactory)
createFactoryADXY image width height dx dy angleIncrement animationBehaviorFactory resizeCanvasForRotation = do
        androidImageRotationAnimationFactory <- (new_6 image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation)
        Control.Monad.void (AllBinaryAndroidImageRotationAnimationFactory.init androidImageRotationAnimationFactory dx dy)
        pure (androidImageRotationAnimationFactory)


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinaryAndroidImageRotationAnimationFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: AllBinaryAndroidImageRotationAnimationFactory)) a1 a2

init_impl :: AllBinaryAndroidImageRotationAnimationFactory -> Int -> Int -> IO (())
init_impl this dx dy = do
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (dy)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).originalDx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).originalDy (dy)
        pure ()

new_6 :: Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> Bool -> IO AllBinaryAndroidImageRotationAnimationFactory
new_6 image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation = do
    this <- newRecord_
    init_6 this image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation
    pure this

init_6 :: AllBinaryAndroidImageRotationAnimationFactory -> Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> Bool -> IO ()
init_6 this image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (width) (height) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).angleIncrement (angleIncrement)
        jset (this).resizeCanvasForRotation (resizeCanvasForRotation)
        pure ()


-- throws Exception
getCanvasImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getCanvasImage object_ = jmethod object_ "getCanvasImage" (\() -> (getCanvasImage_impl (javaCast object_ :: AllBinaryAndroidImageRotationAnimationFactory))) ()

getCanvasImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getCanvasImage_super object_ = (getCanvasImage_impl (javaCast object_ :: AllBinaryAndroidImageRotationAnimationFactory))

getCanvasImage_impl :: AllBinaryAndroidImageRotationAnimationFactory -> IO (Image.Image)
getCanvasImage_impl this = do
    javaCatchReturn $ do
        features <- (Features.getInstance)
        if ((jget (this).resizeCanvasForRotation) && (Prelude.not (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))))) then do
            javaReturn =<< (ImageCopyUtil.createImageScale ((jio (ImageCopyUtil.getInstance))) (jio (BaseImageAnimationFactory.getImage this)) (1.44) False)
        else do
            javaReturn =<< (BaseImageAnimationFactory.getImage this)


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryAndroidImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinaryAndroidImageRotationAnimationFactory)) a1

getInstance_impl :: AllBinaryAndroidImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        canvasImage <- (AllBinaryAndroidImageRotationAnimationFactory.getCanvasImage this)
        scaledImage <- (AnimationFactoryImageScaleUtil.createImage ((jget (this).base.animationFactoryImageScaleUtil)) canvasImage (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        copyOfScaledImage <- (ImageCopyUtil.createImage ((jio (ImageCopyUtil.getInstance))) scaledImage)
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            Control.Monad.void (AnimationFactoryImageScaleUtil.processAdjust ((jget (this).base.animationFactoryImageScaleUtil)) this)
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryAdjustedAndroidImageRotationAnimation.new_7 scaledImage copyOfScaledImage (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget this.base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryFlickerAndroidImageRotationAnimation.new_5 scaledImage copyOfScaledImage (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


