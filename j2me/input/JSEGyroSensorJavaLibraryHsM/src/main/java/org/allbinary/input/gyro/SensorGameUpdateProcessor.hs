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
module SensorGameUpdateProcessor where

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
import qualified Any -- same package or java.lang
import qualified GyroSensorFactory -- same package or java.lang
import qualified NoCompleteMotionGestureInputEventListener -- org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener
import qualified AllBinarySensor -- org.allbinary.input.AllBinarySensor
import qualified NoAllBinarySensor -- org.allbinary.input.NoAllBinarySensor
import qualified AccelerometerSensorFactory -- org.allbinary.input.accelerometer.AccelerometerSensorFactory

data SensorGameUpdateProcessor = SensorGameUpdateProcessor
    { header_ :: JavaHeader
    , inputSensor :: IORef (AllBinarySensor.AllBinarySensor)
    }

instance JavaNull SensorGameUpdateProcessor where
    javaNull = javaNullRecord "SensorGameUpdateProcessor"

instance JavaEquals SensorGameUpdateProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SensorGameUpdateProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SensorGameUpdateProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SensorGameUpdateProcessor
newRecord_ = do
    header_ <- newJavaHeader
    inputSensor <- newIORef javaNull
    let this = SensorGameUpdateProcessor header_ inputSensor
    jregisterLevel header_ this
    jregisterMethod header_ "setInputSensor" (\() -> setInputSensor_impl this)
    jregisterMethod header_ "getInputSensor" (\() -> getInputSensor_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "sendNotifications" (\() -> sendNotifications_impl this)
    jregisterMethod header_ "isAnySensor" (\() -> isAnySensor_impl this)
    jregisterMethod header_ "setNoSensors" (\() -> setNoSensors_impl this)
    pure this

initFields_ :: SensorGameUpdateProcessor -> IO ()
initFields_ this = do
    jset this.inputSensor (javaNull)
    pure ()

new_ :: IO SensorGameUpdateProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SensorGameUpdateProcessor -> IO ()
init_ this = do
    initFields_ this


setInputSensor :: (JavaObjectClass this_) => this_ -> AllBinarySensor.AllBinarySensor -> IO (())
setInputSensor object_ a1 = jmethod object_ "setInputSensor" (\() -> (setInputSensor_impl (javaCast object_ :: SensorGameUpdateProcessor))) () a1

setInputSensor_super :: (JavaObjectClass this_) => this_ -> AllBinarySensor.AllBinarySensor -> IO (())
setInputSensor_super object_ a1 = (setInputSensor_impl (javaCast object_ :: SensorGameUpdateProcessor)) a1

setInputSensor_impl :: SensorGameUpdateProcessor -> AllBinarySensor.AllBinarySensor -> IO (())
setInputSensor_impl this inputSensor = do
        jset (this).inputSensor (inputSensor)
        pure ()


getInputSensor :: (JavaObjectClass this_) => this_ -> IO (AllBinarySensor.AllBinarySensor)
getInputSensor object_ = jmethod object_ "getInputSensor" (\() -> (getInputSensor_impl (javaCast object_ :: SensorGameUpdateProcessor))) ()

getInputSensor_super :: (JavaObjectClass this_) => this_ -> IO (AllBinarySensor.AllBinarySensor)
getInputSensor_super object_ = (getInputSensor_impl (javaCast object_ :: SensorGameUpdateProcessor))

getInputSensor_impl :: SensorGameUpdateProcessor -> IO (AllBinarySensor.AllBinarySensor)
getInputSensor_impl this = do
        pure ((jget (this).inputSensor))


-- throws Exception
process :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SensorGameUpdateProcessor))) () (jtoObject a1)

process_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: SensorGameUpdateProcessor)) (jtoObject a1)

process_impl :: SensorGameUpdateProcessor -> JavaObject -> IO (())
process_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


-- throws Exception
sendNotifications :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
sendNotifications object_ a1 = jmethod object_ "sendNotifications" (\() -> (sendNotifications_impl (javaCast object_ :: SensorGameUpdateProcessor))) () (jtoObject a1)

sendNotifications_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
sendNotifications_super object_ a1 = (sendNotifications_impl (javaCast object_ :: SensorGameUpdateProcessor)) (jtoObject a1)

sendNotifications_impl :: SensorGameUpdateProcessor -> JavaObject -> IO (())
sendNotifications_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


isAnySensor :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnySensor object_ = jmethod object_ "isAnySensor" (\() -> (isAnySensor_impl (javaCast object_ :: SensorGameUpdateProcessor))) ()

isAnySensor_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnySensor_super object_ = (isAnySensor_impl (javaCast object_ :: SensorGameUpdateProcessor))

isAnySensor_impl :: SensorGameUpdateProcessor -> IO (Bool)
isAnySensor_impl this = do
    javaCatchReturn $ do
        if ((jtoObject (jget (this).inputSensor)) == (jtoObject (jio (NoAllBinarySensor.getInstance)))) then do
            javaReturn (False)
        else do
            javaReturn (True)


setNoSensors :: (JavaObjectClass this_) => this_ -> IO (())
setNoSensors object_ = jmethod object_ "setNoSensors" (\() -> (setNoSensors_impl (javaCast object_ :: SensorGameUpdateProcessor))) ()

setNoSensors_super :: (JavaObjectClass this_) => this_ -> IO (())
setNoSensors_super object_ = (setNoSensors_impl (javaCast object_ :: SensorGameUpdateProcessor))

setNoSensors_impl :: SensorGameUpdateProcessor -> IO (())
setNoSensors_impl this = do
        Control.Monad.void (AllBinaryOrientationSensor.setCompleteMotionGestureInputEventListener ((jio (GyroSensorFactory.getInstance))) (javaCast (jio (NoCompleteMotionGestureInputEventListener.getInstance))))
        Control.Monad.void (AllBinaryOrientationSensor.setCompleteMotionGestureInputEventListener ((jio (AccelerometerSensorFactory.getInstance))) (javaCast (jio (NoCompleteMotionGestureInputEventListener.getInstance))))
        Control.Monad.void (SensorGameUpdateProcessor.setInputSensor this (javaCast (jio (NoAllBinarySensor.getInstance))))
        pure ()


