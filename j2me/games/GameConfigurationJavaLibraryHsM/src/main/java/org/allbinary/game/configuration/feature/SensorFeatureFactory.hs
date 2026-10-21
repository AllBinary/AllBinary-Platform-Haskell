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
-- package org.allbinary.game.configuration.feature
module SensorFeatureFactory where

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
import qualified SensorFeature -- same package or java.lang

data SensorFeatureFactory = SensorFeatureFactory
    { header_ :: JavaHeader
    , nO_ORIENTATION :: IORef (SensorFeature.SensorFeature)
    , oRIENTATION_SENSORS :: IORef (SensorFeature.SensorFeature)
    , sIMULATED_ORIENTATION_SENSORS :: IORef (SensorFeature.SensorFeature)
    , yAW :: IORef (SensorFeature.SensorFeature)
    , yAW_MINUS_RIGHT_PLUS_LEFT :: IORef (SensorFeature.SensorFeature)
    , yAW_MINUS_LEFT_PLUS_RIGHT :: IORef (SensorFeature.SensorFeature)
    , pITCH :: IORef (SensorFeature.SensorFeature)
    , rOLL :: IORef (SensorFeature.SensorFeature)
    }

instance JavaNull SensorFeatureFactory where
    javaNull = javaNullRecord "SensorFeatureFactory"

instance JavaEquals SensorFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SensorFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass SensorFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SensorFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    nO_ORIENTATION <- newIORef javaNull
    oRIENTATION_SENSORS <- newIORef javaNull
    sIMULATED_ORIENTATION_SENSORS <- newIORef javaNull
    yAW <- newIORef javaNull
    yAW_MINUS_RIGHT_PLUS_LEFT <- newIORef javaNull
    yAW_MINUS_LEFT_PLUS_RIGHT <- newIORef javaNull
    pITCH <- newIORef javaNull
    rOLL <- newIORef javaNull
    let this = SensorFeatureFactory header_ nO_ORIENTATION oRIENTATION_SENSORS sIMULATED_ORIENTATION_SENSORS yAW yAW_MINUS_RIGHT_PLUS_LEFT yAW_MINUS_LEFT_PLUS_RIGHT pITCH rOLL
    jregisterLevel header_ this
    pure this

initFields_ :: SensorFeatureFactory -> IO ()
initFields_ this = do
    jset this.nO_ORIENTATION =<< (SensorFeature.new_1 "No Orientation")
    jset this.oRIENTATION_SENSORS =<< (SensorFeature.new_1 "Orientation Sensors")
    jset this.sIMULATED_ORIENTATION_SENSORS =<< (SensorFeature.new_1 "Simulated Orientation Sensors")
    jset this.yAW =<< (SensorFeature.new_1 "Yaw")
    jset this.yAW_MINUS_RIGHT_PLUS_LEFT =<< (SensorFeature.new_1 "Yaw -Right +Left")
    jset this.yAW_MINUS_LEFT_PLUS_RIGHT =<< (SensorFeature.new_1 "Yaw -Left +Right ")
    jset this.pITCH =<< (SensorFeature.new_1 "Pitch")
    jset this.rOLL =<< (SensorFeature.new_1 "Roll")
    pure ()


getInstance :: IO (SensorFeatureFactory)
getInstance = do
        pure (SensorFeatureFactory.instance_)

new_ :: IO SensorFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SensorFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


