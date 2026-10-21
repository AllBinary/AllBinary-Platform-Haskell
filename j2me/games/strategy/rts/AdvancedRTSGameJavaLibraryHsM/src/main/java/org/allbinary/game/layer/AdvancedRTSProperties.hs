{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.layer
module AdvancedRTSProperties where

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
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified NoShakeAnimationListener -- org.allbinary.animation.transition.shake.NoShakeAnimationListener
import qualified ShakeAnimationListener -- org.allbinary.animation.transition.shake.ShakeAnimationListener
import qualified ShakeAnimationListenerFactory -- org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified AllBinaryNoVibration -- org.allbinary.media.AllBinaryNoVibration
import qualified AllBinaryVibration -- org.allbinary.media.AllBinaryVibration
import qualified AllBinaryVibrationME -- org.allbinary.media.AllBinaryVibrationME

data AdvancedRTSProperties = AdvancedRTSProperties
    { header_ :: JavaHeader
    , shakeListener :: IORef (ShakeAnimationListener.ShakeAnimationListener)
    , vibration :: IORef (AllBinaryVibrationME.AllBinaryVibrationME)
    , duration :: IORef (Int)
    , waypointBehaviorBase :: IORef (TickableInterface.TickableInterface)
    }

instance JavaNull AdvancedRTSProperties where
    javaNull = javaNullRecord "AdvancedRTSProperties"

instance JavaEquals AdvancedRTSProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvancedRTSProperties where
    (==) = jrecordEquals

instance JavaObjectClass AdvancedRTSProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvancedRTSProperties
newRecord_ = do
    header_ <- newJavaHeader
    shakeListener <- newIORef javaNull
    vibration <- newIORef javaNull
    duration <- newIORef 0
    waypointBehaviorBase <- newIORef javaNull
    let this = AdvancedRTSProperties header_ shakeListener vibration duration waypointBehaviorBase
    jregisterLevel header_ this
    pure this

initFields_ :: AdvancedRTSProperties -> IO ()
initFields_ this = do
    jset this.shakeListener (javaNull)
    jset this.vibration (javaNull)
    jset this.duration (0)
    jset this.waypointBehaviorBase (javaNull)
    pure ()


createPropertiesSimulated :: IO (AdvancedRTSProperties)
createPropertiesSimulated = do
        (new_4 (NoShakeAnimationListener.nO_SHAKE_ANIMATION_LISTENER) (jget AllBinaryNoVibration.nO_VIBRATION) 0 (jio (WaypointBehaviorBase.new_)))


createProperties :: IO (AdvancedRTSProperties)
createProperties = do
        (new_4 (jio (ShakeAnimationListenerFactory.getInstance)) (jio (AllBinaryVibration.getInstance)) ((jio (GameConfiguration.getValue ((jget ((jio (GameConfigurationCentral.getInstance))).vIBRATION)))) * 100) (jio (WaypointBehaviorBase.new_)))

new_4 :: ShakeAnimationListener.ShakeAnimationListener -> AllBinaryVibrationME.AllBinaryVibrationME -> Int -> TickableInterface.TickableInterface -> IO AdvancedRTSProperties
new_4 shakeListener vibration duration waypointBehaviorBase = do
    this <- newRecord_
    init_4 this shakeListener vibration duration waypointBehaviorBase
    pure this

init_4 :: AdvancedRTSProperties -> ShakeAnimationListener.ShakeAnimationListener -> AllBinaryVibrationME.AllBinaryVibrationME -> Int -> TickableInterface.TickableInterface -> IO ()
init_4 this shakeListener vibration duration waypointBehaviorBase = do
        initFields_ this
        jset (this).shakeListener (shakeListener)
        jset (this).vibration (vibration)
        jset (this).duration (duration)
        jset (this).waypointBehaviorBase (waypointBehaviorBase)
        pure ()


