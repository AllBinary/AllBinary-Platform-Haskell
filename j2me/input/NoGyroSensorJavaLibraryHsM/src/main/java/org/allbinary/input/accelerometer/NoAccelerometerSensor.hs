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
module NoAccelerometerSensor (module NoAccelerometerSensor, module AllBinaryOrientationSensor) where

import AllBinaryOrientationSensor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getOrientation, getOrientation_super, getOrientation_impl, onSensorChange, onSensorChange_super, onSensorChange_impl)
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
import qualified AllBinaryOrientationSensor -- org.allbinary.input.gyro.AllBinaryOrientationSensor
import qualified Orientation -- org.allbinary.logic.math.Orientation

data NoAccelerometerSensor = NoAccelerometerSensor
    { header_ :: JavaHeader
    , base :: AllBinaryOrientationSensor.AllBinaryOrientationSensor
    }

instance JavaNull NoAccelerometerSensor where
    javaNull = javaNullRecord "NoAccelerometerSensor"

instance JavaEquals NoAccelerometerSensor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoAccelerometerSensor where
    (==) = jrecordEquals

instance JavaObjectClass NoAccelerometerSensor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoAccelerometerSensor
newRecord_ = do
    base <- AllBinaryOrientationSensor.newRecord_
    let header_ = base.header_
    let this = NoAccelerometerSensor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getOrientation" (\() -> getOrientation_impl this)
    jregisterMethod header_ "onSensorChange" (\() -> onSensorChange_impl this)
    pure this

initFields_ :: NoAccelerometerSensor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoAccelerometerSensor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoAccelerometerSensor -> IO ()
init_ this = do
        AllBinaryOrientationSensor.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getOrientation :: (JavaObjectClass this_) => this_ -> IO (Orientation.Orientation)
getOrientation object_ = jmethod object_ "getOrientation" (\() -> (getOrientation_impl (javaCast object_ :: NoAccelerometerSensor))) ()

getOrientation_super :: (JavaObjectClass this_) => this_ -> IO (Orientation.Orientation)
getOrientation_super object_ = (getOrientation_impl (javaCast object_ :: NoAccelerometerSensor))

getOrientation_impl :: NoAccelerometerSensor -> IO (Orientation.Orientation)
getOrientation_impl this = do
        pure ((jget Orientation.nONE))


onSensorChange :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange object_ = jmethod object_ "onSensorChange" (\() -> (onSensorChange_impl (javaCast object_ :: NoAccelerometerSensor))) ()

onSensorChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange_super object_ = (onSensorChange_impl (javaCast object_ :: NoAccelerometerSensor))

onSensorChange_impl :: NoAccelerometerSensor -> IO (())
onSensorChange_impl this = do
        pure ()


