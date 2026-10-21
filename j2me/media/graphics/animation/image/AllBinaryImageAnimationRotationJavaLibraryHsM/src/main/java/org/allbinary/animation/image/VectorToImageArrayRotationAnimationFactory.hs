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
module VectorToImageArrayRotationAnimationFactory (module VectorToImageArrayRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, getInstance, getInstance_super, getInstance_impl, getAngleIncrement, getAngleIncrement_super, getAngleIncrement_impl, setInitialScale, setInitialScale_super, setInitialScale_impl, imageArray, angleIncrement)
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
import qualified AdjustedImageArrayRotationAnimation -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified VectorAnimation -- org.allbinary.animation.VectorAnimation
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified AnimationFrameToImageUtil -- org.allbinary.image.AnimationFrameToImageUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified ImageToRotationImageArrayUtil -- org.allbinary.media.image.ImageToRotationImageArrayUtil
import qualified VectorInfo -- org.allbinary.vector.VectorInfo
import qualified BaseImageAnimationFactory

data VectorToImageArrayRotationAnimationFactory = VectorToImageArrayRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , imageArray :: IORef (JavaArray (Image.Image))
    , angleIncrement :: IORef (Int)
    }

instance JavaNull VectorToImageArrayRotationAnimationFactory where
    javaNull = javaNullRecord "VectorToImageArrayRotationAnimationFactory"

instance JavaEquals VectorToImageArrayRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorToImageArrayRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass VectorToImageArrayRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VectorToImageArrayRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    imageArray <- newIORef javaNull
    angleIncrement <- newIORef 0
    let this = VectorToImageArrayRotationAnimationFactory header_ base imageArray angleIncrement
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getAngleIncrement" (\() -> getAngleIncrement_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: VectorToImageArrayRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.imageArray (NullImage.nULL_IMAGE_ARRAY)
    jset this.angleIncrement (0)
    pure ()

new_3 :: VectorInfo.VectorInfo -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO VectorToImageArrayRotationAnimationFactory
new_3 vectorInfo basicColor animationBehaviorFactory = do
    this <- newRecord_
    init_3 this vectorInfo basicColor animationBehaviorFactory
    pure this

init_3 :: VectorToImageArrayRotationAnimationFactory -> VectorInfo.VectorInfo -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_3 this vectorInfo basicColor animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (jio (AnimationFrameToImageUtil.getInstanceTranslate ((jio (AnimationFrameToImageUtil.getInstance))) (jio (VectorInfo.getWidth vectorInfo)) (jio (VectorInfo.getHeight vectorInfo)) (jio (VectorAnimation.createVectorAnimation (jio (VectorInfo.getPoints vectorInfo)) basicColor (jio (AnimationBehaviorFactory.getOrCreateInstance animationBehaviorFactory)))))) (jio (PrimitiveIntUtil.getArrayInstance)) (0) (0) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (VectorToImageArrayRotationAnimationFactory.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory))

init_impl :: VectorToImageArrayRotationAnimationFactory -> IO (())
init_impl this = do
        angleFactory <- (AngleFactory.getInstance)
        jset (this).angleIncrement (((Prelude.fromIntegral (jget (angleFactory).tOTAL_ANGLE)) `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))
        assignedValue <- (ImageToRotationImageArrayUtil.generate ((jio (ImageToRotationImageArrayUtil.getInstance))) (jio (BaseImageAnimationFactory.getImage this)) (jio (VectorToImageArrayRotationAnimationFactory.getAngleIncrement this)) (Prelude.fromIntegral (jget (angleFactory).tOTAL_ANGLE)))
        jset (this).imageArray (assignedValue)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory)) a1

getInstance_impl :: VectorToImageArrayRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedImageArrayRotationAnimation.new_6 (jget (this).imageArray) (jio (AngleInfo.getInstance (Prelude.fromIntegral (jio (VectorToImageArrayRotationAnimationFactory.getAngleIncrement this))))) (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedImageArrayRotationAnimation.createAnimation (jget (this).imageArray) (jio (AngleInfo.getInstance (Prelude.fromIntegral (jget (this).angleIncrement)))) (Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


getAngleIncrement :: (JavaObjectClass this_) => this_ -> IO (Int)
getAngleIncrement object_ = jmethod object_ "getAngleIncrement" (\() -> (getAngleIncrement_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory))) ()

getAngleIncrement_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAngleIncrement_super object_ = (getAngleIncrement_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory))

getAngleIncrement_impl :: VectorToImageArrayRotationAnimationFactory -> IO (Int)
getAngleIncrement_impl this = do
        pure ((jget (this).angleIncrement))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: VectorToImageArrayRotationAnimationFactory)) a1

setInitialScale_impl :: VectorToImageArrayRotationAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


