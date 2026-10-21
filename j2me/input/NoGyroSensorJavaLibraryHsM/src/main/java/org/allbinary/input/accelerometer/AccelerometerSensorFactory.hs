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
-- package org.allbinary.input.accelerometer
module AccelerometerSensorFactory where

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
import qualified NoAccelerometerSensor -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified SensorFeatureFactory -- org.allbinary.game.configuration.feature.SensorFeatureFactory
import qualified AllBinaryOrientationSensor -- org.allbinary.input.gyro.AllBinaryOrientationSensor

data AccelerometerSensorFactory = AccelerometerSensorFactory
    { header_ :: JavaHeader
    }

instance JavaNull AccelerometerSensorFactory where
    javaNull = javaNullRecord "AccelerometerSensorFactory"

instance JavaEquals AccelerometerSensorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AccelerometerSensorFactory where
    (==) = jrecordEquals

instance JavaObjectClass AccelerometerSensorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE allBinaryAccelerometerSensor #-}
allBinaryAccelerometerSensor = unsafePerformIO (newIORef (AllBinaryOrientationSensor.nULL_ALLBINARY_ORIENTATION_SENSOR))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AccelerometerSensorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = AccelerometerSensorFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: AccelerometerSensorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AccelerometerSensorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AccelerometerSensorFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
init :: IO (())
init = do
        features <- (Features.getInstance)
        sensorFeatureFactory <- (SensorFeatureFactory.getInstance)
        if (jio (Features.isFeature features (jget (sensorFeatureFactory).oRIENTATION_SENSORS))) then do
            javaThrow ((JavaException "Exception" "No Orientation Sensors"))
        else if (jio (Features.isFeature features (jget (sensorFeatureFactory).sIMULATED_ORIENTATION_SENSORS))) then do
            javaThrow ((JavaException "Exception" "No Simulation Sensors"))
        else if (jio (Features.isFeature features (jget (sensorFeatureFactory).nO_ORIENTATION))) then do
            assignedValue <- (NoAccelerometerSensor.new_)
            jset AccelerometerSensorFactory.allBinaryAccelerometerSensor (assignedValue)
        else do
            javaThrow ((JavaException "Exception" "Not Such SensorFeature"))
        pure ()


getInstance :: IO (AllBinaryOrientationSensor.AllBinaryOrientationSensor)
getInstance = do
        pure ((jget AccelerometerSensorFactory.allBinaryAccelerometerSensor))


