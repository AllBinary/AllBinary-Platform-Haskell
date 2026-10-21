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
module NoGyroSensor (module NoGyroSensor, module AllBinaryOrientationSensor) where

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
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified AllBinarySensorListener -- org.allbinary.input.AllBinarySensorListener
import qualified Orientation -- org.allbinary.logic.math.Orientation
import qualified AllBinaryOrientationSensor

-- implements AllBinarySensorListener
data NoGyroSensor = NoGyroSensor
    { header_ :: JavaHeader
    , base :: AllBinaryOrientationSensor.AllBinaryOrientationSensor
    }

instance JavaNull NoGyroSensor where
    javaNull = javaNullRecord "NoGyroSensor"

instance JavaEquals NoGyroSensor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoGyroSensor where
    (==) = jrecordEquals

instance JavaObjectClass NoGyroSensor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoGyroSensor
newRecord_ = do
    base <- AllBinaryOrientationSensor.newRecord_
    let header_ = base.header_
    let this = NoGyroSensor header_ base
    jregisterLevel header_ this
    AllBinarySensorListener.registerInterface_ header_
    jregisterMethod header_ "getOrientation" (\() -> getOrientation_impl this)
    jregisterMethod header_ "onSensorChange" (\() -> onSensorChange_impl this)
    pure this

initFields_ :: NoGyroSensor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoGyroSensor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoGyroSensor -> IO ()
init_ this = do
        AllBinaryOrientationSensor.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
getOrientation :: (JavaObjectClass this_) => this_ -> IO (Orientation.Orientation)
getOrientation object_ = jmethod object_ "getOrientation" (\() -> (getOrientation_impl (javaCast object_ :: NoGyroSensor))) ()

getOrientation_super :: (JavaObjectClass this_) => this_ -> IO (Orientation.Orientation)
getOrientation_super object_ = (getOrientation_impl (javaCast object_ :: NoGyroSensor))

getOrientation_impl :: NoGyroSensor -> IO (Orientation.Orientation)
getOrientation_impl this = do
        pure ((jget Orientation.nONE))


onSensorChange :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange object_ = jmethod object_ "onSensorChange" (\() -> (onSensorChange_impl (javaCast object_ :: NoGyroSensor))) ()

onSensorChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange_super object_ = (onSensorChange_impl (javaCast object_ :: NoGyroSensor))

onSensorChange_impl :: NoGyroSensor -> IO (())
onSensorChange_impl this = do
        pure ()


