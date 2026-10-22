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
module AllBinaryJ2SEImageRotationAnimationFactory (module AllBinaryJ2SEImageRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createDXY, createDXY_super, createDXY_impl, getCanvasImage, getCanvasImage_super, getCanvasImage_impl, getInstance, getInstance_super, getInstance_impl, getAngleIncrement, getAngleIncrement_super, getAngleIncrement_impl, angleIncrementP, resizeCanvasForRotation)
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
import qualified AllBinaryJ2SEImageRotationAnimation -- same package or java.lang
import qualified AllBinaryAdjustedJ2SEImageRotationAnimation -- same package or java.lang
import qualified AnimationFactoryImageScaleUtil -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLUtil -- org.allbinary.graphics.opengles.OpenGLUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ImageCopyUtil -- org.allbinary.media.image.ImageCopyUtil
import qualified BaseImageAnimationFactory

data AllBinaryJ2SEImageRotationAnimationFactory = AllBinaryJ2SEImageRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , angleIncrementP :: IORef (Int16)
    , resizeCanvasForRotation :: IORef (Bool)
    }

instance JavaNull AllBinaryJ2SEImageRotationAnimationFactory where
    javaNull = javaNullRecord "AllBinaryJ2SEImageRotationAnimationFactory"

instance JavaEquals AllBinaryJ2SEImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryJ2SEImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryJ2SEImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryJ2SEImageRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    angleIncrementP <- newIORef 0
    resizeCanvasForRotation <- newIORef False
    let this = AllBinaryJ2SEImageRotationAnimationFactory header_ base angleIncrementP resizeCanvasForRotation
    jregisterLevel header_ this
    jregisterMethod header_ "getCanvasImage" (\() -> getCanvasImage_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getAngleIncrement" (\() -> getAngleIncrement_impl this)
    pure this

initFields_ :: AllBinaryJ2SEImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.angleIncrementP (0)
    jset this.resizeCanvasForRotation (False)
    pure ()


-- throws Exception
createDXY :: Image.Image -> Int -> Int -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> Bool -> IO (AllBinaryJ2SEImageRotationAnimationFactory)
createDXY image width height dx dy angleIncrement animationBehaviorFactory resizeCanvasForRotation = do
        imageRotationAnimationFactory <- (new_6 image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation)
        jset ((jget (imageRotationAnimationFactory).animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (imageRotationAnimationFactory).animationFactoryInitializationVisitor)).dy (dy)
        jset ((jget (imageRotationAnimationFactory).animationFactoryInitializationVisitor)).originalDx (dx)
        jset ((jget (imageRotationAnimationFactory).animationFactoryInitializationVisitor)).originalDy (dy)
        pure (imageRotationAnimationFactory)

new_6 :: Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> Bool -> IO AllBinaryJ2SEImageRotationAnimationFactory
new_6 image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation = do
    this <- newRecord_
    init_6 this image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation
    pure this

init_6 :: AllBinaryJ2SEImageRotationAnimationFactory -> Image.Image -> Int -> Int -> Int16 -> AnimationBehaviorFactory.AnimationBehaviorFactory -> Bool -> IO ()
init_6 this image width height angleIncrement animationBehaviorFactory resizeCanvasForRotation = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (width) (height) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).angleIncrementP (angleIncrement)
        jset (this).resizeCanvasForRotation (resizeCanvasForRotation)
        pure ()


-- throws Exception
getCanvasImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getCanvasImage object_ = jmethod object_ "getCanvasImage" (\() -> (getCanvasImage_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimationFactory))) ()

getCanvasImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getCanvasImage_super object_ = (getCanvasImage_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimationFactory))

getCanvasImage_impl :: AllBinaryJ2SEImageRotationAnimationFactory -> IO (Image.Image)
getCanvasImage_impl this = do
    javaCatchReturn $ do
        features <- (Features.getInstance)
        if ((jget (this).resizeCanvasForRotation) && (Prelude.not (jio (Features.isDefault features (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))))) then do
            javaReturn =<< (ImageCopyUtil.createImageScale ((jio (ImageCopyUtil.getInstance))) (jio (BaseImageAnimationFactory.getImage this)) (1.44) False)
        else do
            javaReturn =<< (BaseImageAnimationFactory.getImage this)


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimationFactory)) a1

getInstance_impl :: AllBinaryJ2SEImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        imageCopyUtil <- (ImageCopyUtil.getInstance)
        canvasImage <- (AllBinaryJ2SEImageRotationAnimationFactory.getCanvasImage this)
        scaledImage <- newIORef =<< (AnimationFactoryImageScaleUtil.createImage ((jget (this).base.animationFactoryImageScaleUtil)) canvasImage (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        openGLUtil <- (OpenGLUtil.getInstance)
        assignedValue <- (OpenGLUtil.addImage openGLUtil (jget scaledImage))
        jset scaledImage (assignedValue)
        copyOfScaledImage <- (ImageCopyUtil.createImageForRotation imageCopyUtil (jget scaledImage))
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            Control.Monad.void (AnimationFactoryImageScaleUtil.processAdjust ((jget (this).base.animationFactoryImageScaleUtil)) (javaCast this))
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryAdjustedJ2SEImageRotationAnimation.new_7 (jget scaledImage) copyOfScaledImage (jio (AngleInfo.getInstance (jget (this).angleIncrementP))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryJ2SEImageRotationAnimation.new_5 (jget scaledImage) copyOfScaledImage (jio (AngleInfo.getInstance (jget (this).angleIncrementP))) (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


getAngleIncrement :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement object_ = jmethod object_ "getAngleIncrement" (\() -> (getAngleIncrement_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimationFactory))) ()

getAngleIncrement_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement_super object_ = (getAngleIncrement_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimationFactory))

getAngleIncrement_impl :: AllBinaryJ2SEImageRotationAnimationFactory -> IO (Int16)
getAngleIncrement_impl this = do
        pure ((jget (this).angleIncrementP))


