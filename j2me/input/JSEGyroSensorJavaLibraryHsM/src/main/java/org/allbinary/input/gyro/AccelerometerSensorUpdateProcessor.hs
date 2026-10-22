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
-- package org.allbinary.input.gyro
module AccelerometerSensorUpdateProcessor (module AccelerometerSensorUpdateProcessor, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl)
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
import qualified Processor -- org.allbinary.canvas.Processor
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified SensorFeatureFactory -- org.allbinary.game.configuration.feature.SensorFeatureFactory
import qualified NoCompleteMotionGestureInputEventListener -- org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener
import qualified SingleKeyPressGameKeyFromMotionGestureEventListener -- org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener
import qualified AccelerometerSensorFactory -- org.allbinary.input.accelerometer.AccelerometerSensorFactory

data AccelerometerSensorUpdateProcessor = AccelerometerSensorUpdateProcessor
    { header_ :: JavaHeader
    , base :: Processor.Processor
    }

instance JavaNull AccelerometerSensorUpdateProcessor where
    javaNull = javaNullRecord "AccelerometerSensorUpdateProcessor"

instance JavaEquals AccelerometerSensorUpdateProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AccelerometerSensorUpdateProcessor where
    (==) = jrecordEquals

instance JavaObjectClass AccelerometerSensorUpdateProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AccelerometerSensorUpdateProcessor
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    let this = AccelerometerSensorUpdateProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: AccelerometerSensorUpdateProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AccelerometerSensorUpdateProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AccelerometerSensorUpdateProcessor -> IO ()
init_ this = do
    Processor.init_ this.base
    initFields_ this


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AccelerometerSensorUpdateProcessor))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: AccelerometerSensorUpdateProcessor))

process_impl :: AccelerometerSensorUpdateProcessor -> IO (())
process_impl this = do
        sensorFeatureFactory <- (SensorFeatureFactory.getInstance)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget (sensorFeatureFactory).oRIENTATION_SENSORS)))) then do
            Control.Monad.void (AllBinaryOrientationSensor.setCompleteMotionGestureInputEventListener ((jio (AccelerometerSensorFactory.getInstance))) (javaCast (jio (SingleKeyPressGameKeyFromMotionGestureEventListener.new_))))
        else if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget (sensorFeatureFactory).sIMULATED_ORIENTATION_SENSORS)))) then do
            Control.Monad.void (AllBinaryOrientationSensor.setCompleteMotionGestureInputEventListener ((jio (AccelerometerSensorFactory.getInstance))) (javaCast (jio (SingleKeyPressGameKeyFromMotionGestureEventListener.new_))))
        else if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget (sensorFeatureFactory).nO_ORIENTATION)))) then do
            Control.Monad.void (AllBinaryOrientationSensor.setCompleteMotionGestureInputEventListener ((jio (AccelerometerSensorFactory.getInstance))) (javaCast (jio (NoCompleteMotionGestureInputEventListener.getInstance))))
        else do
            javaThrow ((JavaException "Exception" "Sensor Feature Not Set"))
        pure ()


