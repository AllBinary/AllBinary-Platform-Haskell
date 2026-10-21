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
module VehicleFrictionProperties (module VehicleFrictionProperties, module FrictionProperties) where

import FrictionProperties hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTireFrictionNominator, getTireFrictionNominator_super, getTireFrictionNominator_impl, getBrakeFrictionNominator, getBrakeFrictionNominator_super, getBrakeFrictionNominator_impl, getAirFrictionNominator, getAirFrictionNominator_super, getAirFrictionNominator_impl, getCrashFrictionNominator, getCrashFrictionNominator_super, getCrashFrictionNominator_impl, tIRE_FRICTION_NOMINATOR, bRAKE_FRICTION_NOMINATOR, aIR_FRICTION_NOMINATOR, cRASH_FRICTION_NOMINATOR)
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
import qualified FrictionProperties -- org.allbinary.game.physics.FrictionProperties
import qualified FrictionData -- org.allbinary.game.physics.friction.FrictionData

data VehicleFrictionProperties = VehicleFrictionProperties
    { header_ :: JavaHeader
    , base :: FrictionProperties.FrictionProperties
    , tIRE_FRICTION_NOMINATOR :: IORef (Int)
    , bRAKE_FRICTION_NOMINATOR :: IORef (Int)
    , aIR_FRICTION_NOMINATOR :: IORef (Int)
    , cRASH_FRICTION_NOMINATOR :: IORef (Int)
    }

instance JavaNull VehicleFrictionProperties where
    javaNull = javaNullRecord "VehicleFrictionProperties"

instance JavaEquals VehicleFrictionProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VehicleFrictionProperties where
    (==) = jrecordEquals

instance JavaObjectClass VehicleFrictionProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VehicleFrictionProperties
newRecord_ = do
    base <- FrictionProperties.newRecord_
    let header_ = base.header_
    tIRE_FRICTION_NOMINATOR <- newIORef 0
    bRAKE_FRICTION_NOMINATOR <- newIORef 0
    aIR_FRICTION_NOMINATOR <- newIORef 0
    cRASH_FRICTION_NOMINATOR <- newIORef 0
    let this = VehicleFrictionProperties header_ base tIRE_FRICTION_NOMINATOR bRAKE_FRICTION_NOMINATOR aIR_FRICTION_NOMINATOR cRASH_FRICTION_NOMINATOR
    jregisterLevel header_ this
    jregisterMethod header_ "getTireFrictionNominator" (\() -> getTireFrictionNominator_impl this)
    jregisterMethod header_ "getBrakeFrictionNominator" (\() -> getBrakeFrictionNominator_impl this)
    jregisterMethod header_ "getAirFrictionNominator" (\() -> getAirFrictionNominator_impl this)
    jregisterMethod header_ "getCrashFrictionNominator" (\() -> getCrashFrictionNominator_impl this)
    pure this

initFields_ :: VehicleFrictionProperties -> IO ()
initFields_ this = do
    jset this.tIRE_FRICTION_NOMINATOR (0)
    jset this.bRAKE_FRICTION_NOMINATOR (0)
    jset this.aIR_FRICTION_NOMINATOR (0)
    jset this.cRASH_FRICTION_NOMINATOR (0)
    pure ()

new_4 :: Int -> Int -> Int -> Int -> IO VehicleFrictionProperties
new_4 tireFriction brakeFriction airFriction crashFriction = do
    this <- newRecord_
    init_4 this tireFriction brakeFriction airFriction crashFriction
    pure this

init_4 :: VehicleFrictionProperties -> Int -> Int -> Int -> Int -> IO ()
init_4 this tireFriction brakeFriction airFriction crashFriction = do
        FrictionProperties.init_ this.base
        initFields_ this
        jset (this).tIRE_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - tireFriction))
        jset (this).bRAKE_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - brakeFriction))
        jset (this).aIR_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - airFriction))
        jset (this).cRASH_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - crashFriction))
        pure ()


getTireFrictionNominator :: (JavaObjectClass this_) => this_ -> IO (Int)
getTireFrictionNominator object_ = jmethod object_ "getTireFrictionNominator" (\() -> (getTireFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))) ()

getTireFrictionNominator_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTireFrictionNominator_super object_ = (getTireFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))

getTireFrictionNominator_impl :: VehicleFrictionProperties -> IO (Int)
getTireFrictionNominator_impl this = do
        pure ((jget (this).tIRE_FRICTION_NOMINATOR))


getBrakeFrictionNominator :: (JavaObjectClass this_) => this_ -> IO (Int)
getBrakeFrictionNominator object_ = jmethod object_ "getBrakeFrictionNominator" (\() -> (getBrakeFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))) ()

getBrakeFrictionNominator_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getBrakeFrictionNominator_super object_ = (getBrakeFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))

getBrakeFrictionNominator_impl :: VehicleFrictionProperties -> IO (Int)
getBrakeFrictionNominator_impl this = do
        pure ((jget (this).bRAKE_FRICTION_NOMINATOR))


getAirFrictionNominator :: (JavaObjectClass this_) => this_ -> IO (Int)
getAirFrictionNominator object_ = jmethod object_ "getAirFrictionNominator" (\() -> (getAirFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))) ()

getAirFrictionNominator_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAirFrictionNominator_super object_ = (getAirFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))

getAirFrictionNominator_impl :: VehicleFrictionProperties -> IO (Int)
getAirFrictionNominator_impl this = do
        pure ((jget (this).aIR_FRICTION_NOMINATOR))


getCrashFrictionNominator :: (JavaObjectClass this_) => this_ -> IO (Int)
getCrashFrictionNominator object_ = jmethod object_ "getCrashFrictionNominator" (\() -> (getCrashFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))) ()

getCrashFrictionNominator_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCrashFrictionNominator_super object_ = (getCrashFrictionNominator_impl (javaCast object_ :: VehicleFrictionProperties))

getCrashFrictionNominator_impl :: VehicleFrictionProperties -> IO (Int)
getCrashFrictionNominator_impl this = do
        pure ((jget (this).cRASH_FRICTION_NOMINATOR))


