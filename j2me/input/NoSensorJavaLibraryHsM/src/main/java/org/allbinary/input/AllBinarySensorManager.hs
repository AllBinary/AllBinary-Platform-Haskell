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
-- package org.allbinary.input
module AllBinarySensorManager where

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
import qualified AccelerometerSensorFactory -- org.allbinary.input.accelerometer.AccelerometerSensorFactory
import qualified GyroSensorFactory -- org.allbinary.input.gyro.GyroSensorFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data AllBinarySensorManager = AllBinarySensorManager
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , oRIENTATION_SENSOR_INPUT :: IORef (String)
    , oRIENTATION_TYPE :: IORef (String)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AllBinarySensorManager where
    javaNull = javaNullRecord "AllBinarySensorManager"

instance JavaEquals AllBinarySensorManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinarySensorManager where
    (==) = jrecordEquals

instance JavaObjectClass AllBinarySensorManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinarySensorManager
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    oRIENTATION_SENSOR_INPUT <- newIORef ""
    oRIENTATION_TYPE <- newIORef ""
    list <- newIORef javaNull
    let this = AllBinarySensorManager header_ logUtil commonStrings oRIENTATION_SENSOR_INPUT oRIENTATION_TYPE list
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getSensorNamesList" (\() -> getSensorNamesList_impl this)
    jregisterMethod header_ "shutdown" (\() -> shutdown_impl this)
    pure this

initFields_ :: AllBinarySensorManager -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.oRIENTATION_SENSOR_INPUT ("Orientation Sensor Input")
    jset this.oRIENTATION_TYPE ("Orientation Type")
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (AllBinarySensorManager)
getInstance = do
        when ((jget AllBinarySensorManager.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset AllBinarySensorManager.instance_ (assignedValue)
        pure ((javaCast (jget AllBinarySensorManager.instance_) :: AllBinarySensorManager))

new_ :: IO AllBinarySensorManager
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinarySensorManager -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (GyroSensorFactory.init)
            Control.Monad.void (AccelerometerSensorFactory.init)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinarySensorManager))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AllBinarySensorManager))

init_impl :: AllBinarySensorManager -> IO (())
init_impl this = do
        pure ()


getSensorNamesList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSensorNamesList object_ = jmethod object_ "getSensorNamesList" (\() -> (getSensorNamesList_impl (javaCast object_ :: AllBinarySensorManager))) ()

getSensorNamesList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSensorNamesList_super object_ = (getSensorNamesList_impl (javaCast object_ :: AllBinarySensorManager))

getSensorNamesList_impl :: AllBinarySensorManager -> IO (BasicArrayList.BasicArrayList)
getSensorNamesList_impl this = do
        pure ((jget (this).list))


shutdown :: (JavaObjectClass this_) => this_ -> IO (())
shutdown object_ = jmethod object_ "shutdown" (\() -> (shutdown_impl (javaCast object_ :: AllBinarySensorManager))) ()

shutdown_super :: (JavaObjectClass this_) => this_ -> IO (())
shutdown_super object_ = (shutdown_impl (javaCast object_ :: AllBinarySensorManager))

shutdown_impl :: AllBinarySensorManager -> IO (())
shutdown_impl this = do
        pure ()


