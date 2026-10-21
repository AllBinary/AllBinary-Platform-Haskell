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
-- package org.allbinary.animation
module RotationAnimationFactory where

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
import qualified NullRotationAnimation -- same package or java.lang
import qualified AnimationBehavior -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
-- implements ProceduralAnimationInterfaceFactoryInterface
data RotationAnimationFactory = RotationAnimationFactory
    { header_ :: JavaHeader
    , totalAngle :: IORef (Int16)
    , angleIncrement :: IORef (Int16)
    }

instance JavaNull RotationAnimationFactory where
    javaNull = javaNullRecord "RotationAnimationFactory"

instance JavaEquals RotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass RotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RotationAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    totalAngle <- newIORef 0
    angleIncrement <- newIORef 0
    let this = RotationAnimationFactory header_ totalAngle angleIncrement
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: RotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.totalAngle (0)
    jset this.angleIncrement (0)
    pure ()


createFactory :: IO (RotationAnimationFactory)
createFactory = do
        let totalAngle = (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)
        (new_2 totalAngle (Prelude.fromIntegral (((Prelude.fromIntegral totalAngle) `quot` (jio (GameConfigurationCentral.getGameControlFidelity ((jio (GameConfigurationCentral.getInstance)))))))))

new_2 :: Int16 -> Int16 -> IO RotationAnimationFactory
new_2 totalAngle angleIncrement = do
    this <- newRecord_
    init_2 this totalAngle angleIncrement
    pure this

init_2 :: RotationAnimationFactory -> Int16 -> Int16 -> IO ()
init_2 this totalAngle angleIncrement = do
        initFields_ this
        jset (this).totalAngle (totalAngle)
        jset (this).angleIncrement (angleIncrement)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: RotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: RotationAnimationFactory)) a1

getInstance_impl :: RotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (NullRotationAnimation.createTotalAngle (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget (this).totalAngle) (jio (AnimationBehavior.getInstance))))


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: RotationAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: RotationAnimationFactory)) a1

getInstanceAnimation_impl :: RotationAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (NullRotationAnimation.createTotalAngle (jio (AngleInfo.getInstance (jget (this).angleIncrement))) (jget (this).totalAngle) (jio (AnimationBehavior.getInstance))))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: RotationAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: RotationAnimationFactory)) a1

setInitialScale_impl :: RotationAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


