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
-- package org.allbinary.game.layer
module VehicleProperties where

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
import qualified VehicleFrictionProperties -- same package or java.lang
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties

data VehicleProperties = VehicleProperties
    { header_ :: JavaHeader
    , velocityProperties :: IORef (VelocityProperties.VelocityProperties)
    , vehicleFrictionProperties :: IORef (VehicleFrictionProperties.VehicleFrictionProperties)
    }

instance JavaNull VehicleProperties where
    javaNull = javaNullRecord "VehicleProperties"

instance JavaEquals VehicleProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VehicleProperties where
    (==) = jrecordEquals

instance JavaObjectClass VehicleProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VehicleProperties
newRecord_ = do
    header_ <- newJavaHeader
    velocityProperties <- newIORef javaNull
    vehicleFrictionProperties <- newIORef javaNull
    let this = VehicleProperties header_ velocityProperties vehicleFrictionProperties
    jregisterLevel header_ this
    jregisterMethod header_ "getVehicleFrictionProperties" (\() -> getVehicleFrictionProperties_impl this)
    jregisterMethod header_ "setVehicleFrictionProperties" (\() -> setVehicleFrictionProperties_impl this)
    jregisterMethod header_ "getVelocityProperties" (\() -> getVelocityProperties_impl this)
    pure this

initFields_ :: VehicleProperties -> IO ()
initFields_ this = do
    jset this.velocityProperties (javaNull)
    jset this.vehicleFrictionProperties (javaNull)
    pure ()

new_2 :: VelocityProperties.VelocityProperties -> VehicleFrictionProperties.VehicleFrictionProperties -> IO VehicleProperties
new_2 velocityProperties vehicleFrictionProperties = do
    this <- newRecord_
    init_2 this velocityProperties vehicleFrictionProperties
    pure this

init_2 :: VehicleProperties -> VelocityProperties.VelocityProperties -> VehicleFrictionProperties.VehicleFrictionProperties -> IO ()
init_2 this velocityProperties vehicleFrictionProperties = do
        initFields_ this
        jset (this).velocityProperties (velocityProperties)
        jset (this).vehicleFrictionProperties (vehicleFrictionProperties)
        pure ()


getVehicleFrictionProperties :: (JavaObjectClass this_) => this_ -> IO (VehicleFrictionProperties.VehicleFrictionProperties)
getVehicleFrictionProperties object_ = jmethod object_ "getVehicleFrictionProperties" (\() -> (getVehicleFrictionProperties_impl (javaCast object_ :: VehicleProperties))) ()

getVehicleFrictionProperties_super :: (JavaObjectClass this_) => this_ -> IO (VehicleFrictionProperties.VehicleFrictionProperties)
getVehicleFrictionProperties_super object_ = (getVehicleFrictionProperties_impl (javaCast object_ :: VehicleProperties))

getVehicleFrictionProperties_impl :: VehicleProperties -> IO (VehicleFrictionProperties.VehicleFrictionProperties)
getVehicleFrictionProperties_impl this = do
        pure ((jget (this).vehicleFrictionProperties))


setVehicleFrictionProperties :: (JavaObjectClass this_) => this_ -> VehicleFrictionProperties.VehicleFrictionProperties -> IO (())
setVehicleFrictionProperties object_ a1 = jmethod object_ "setVehicleFrictionProperties" (\() -> (setVehicleFrictionProperties_impl (javaCast object_ :: VehicleProperties))) () a1

setVehicleFrictionProperties_super :: (JavaObjectClass this_) => this_ -> VehicleFrictionProperties.VehicleFrictionProperties -> IO (())
setVehicleFrictionProperties_super object_ a1 = (setVehicleFrictionProperties_impl (javaCast object_ :: VehicleProperties)) a1

setVehicleFrictionProperties_impl :: VehicleProperties -> VehicleFrictionProperties.VehicleFrictionProperties -> IO (())
setVehicleFrictionProperties_impl this vehicleFrictionProperties = do
        jset (this).vehicleFrictionProperties (vehicleFrictionProperties)
        pure ()


getVelocityProperties :: (JavaObjectClass this_) => this_ -> IO (VelocityProperties.VelocityProperties)
getVelocityProperties object_ = jmethod object_ "getVelocityProperties" (\() -> (getVelocityProperties_impl (javaCast object_ :: VehicleProperties))) ()

getVelocityProperties_super :: (JavaObjectClass this_) => this_ -> IO (VelocityProperties.VelocityProperties)
getVelocityProperties_super object_ = (getVelocityProperties_impl (javaCast object_ :: VehicleProperties))

getVelocityProperties_impl :: VehicleProperties -> IO (VelocityProperties.VelocityProperties)
getVelocityProperties_impl this = do
        pure ((jget (this).velocityProperties))


