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
module SingleSensorGameUpdateProcessor (module SingleSensorGameUpdateProcessor, module SensorGameUpdateProcessor) where

import SensorGameUpdateProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, sendNotifications, sendNotifications_super, sendNotifications_impl, accelerometerSensorUpdateProcessor, gyroSensorUpdateProcessor)
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
import qualified AccelerometerSensorUpdateProcessor -- same package or java.lang
import qualified GyroSensorUpdateProcessor -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Processor -- org.allbinary.canvas.Processor
import qualified SensorGameUpdateProcessor

data SingleSensorGameUpdateProcessor = SingleSensorGameUpdateProcessor
    { header_ :: JavaHeader
    , base :: SensorGameUpdateProcessor.SensorGameUpdateProcessor
    , accelerometerSensorUpdateProcessor :: IORef (Processor.Processor)
    , gyroSensorUpdateProcessor :: IORef (Processor.Processor)
    }

instance JavaNull SingleSensorGameUpdateProcessor where
    javaNull = javaNullRecord "SingleSensorGameUpdateProcessor"

instance JavaEquals SingleSensorGameUpdateProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SingleSensorGameUpdateProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SingleSensorGameUpdateProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SingleSensorGameUpdateProcessor
newRecord_ = do
    base <- SensorGameUpdateProcessor.newRecord_
    let header_ = base.header_
    accelerometerSensorUpdateProcessor <- newIORef javaNull
    gyroSensorUpdateProcessor <- newIORef javaNull
    let this = SingleSensorGameUpdateProcessor header_ base accelerometerSensorUpdateProcessor gyroSensorUpdateProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "sendNotifications" (\() -> sendNotifications_impl this)
    pure this

initFields_ :: SingleSensorGameUpdateProcessor -> IO ()
initFields_ this = do
    jset this.accelerometerSensorUpdateProcessor =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (AccelerometerSensorUpdateProcessor.new_))
    jset this.gyroSensorUpdateProcessor =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (GyroSensorUpdateProcessor.new_))
    pure ()

new_ :: IO SingleSensorGameUpdateProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SingleSensorGameUpdateProcessor -> IO ()
init_ this = do
    SensorGameUpdateProcessor.init_ this.base
    initFields_ this


-- throws Exception
process :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SingleSensorGameUpdateProcessor))) () (jtoObject a1)

process_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: SingleSensorGameUpdateProcessor)) (jtoObject a1)

process_impl :: SingleSensorGameUpdateProcessor -> JavaObject -> IO (())
process_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (SensorGameUpdateProcessor.setNoSensors this)
        pure ()


-- throws Exception
sendNotifications :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
sendNotifications object_ a1 = jmethod object_ "sendNotifications" (\() -> (sendNotifications_impl (javaCast object_ :: SingleSensorGameUpdateProcessor))) () (jtoObject a1)

sendNotifications_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
sendNotifications_super object_ a1 = (sendNotifications_impl (javaCast object_ :: SingleSensorGameUpdateProcessor)) (jtoObject a1)

sendNotifications_impl :: SingleSensorGameUpdateProcessor -> JavaObject -> IO (())
sendNotifications_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


