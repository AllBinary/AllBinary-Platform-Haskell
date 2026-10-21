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
-- package org.allbinary.media.graphics.geography.map.racetrack
module RaceTrackFrictionProperties where

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
import qualified FrictionData -- org.allbinary.game.physics.friction.FrictionData

data RaceTrackFrictionProperties = RaceTrackFrictionProperties
    { header_ :: JavaHeader
    , rOAD_FRICTION_NOMINATOR :: IORef (Int)
    , gROUND_FRICTION_NOMINATOR :: IORef (Int)
    }

instance JavaNull RaceTrackFrictionProperties where
    javaNull = javaNullRecord "RaceTrackFrictionProperties"

instance JavaEquals RaceTrackFrictionProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackFrictionProperties where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackFrictionProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTrackFrictionProperties
newRecord_ = do
    header_ <- newJavaHeader
    rOAD_FRICTION_NOMINATOR <- newIORef 0
    gROUND_FRICTION_NOMINATOR <- newIORef 0
    let this = RaceTrackFrictionProperties header_ rOAD_FRICTION_NOMINATOR gROUND_FRICTION_NOMINATOR
    jregisterLevel header_ this
    jregisterMethod header_ "getRoadFrictionNominator" (\() -> getRoadFrictionNominator_impl this)
    jregisterMethod header_ "getGroundFrictionNominator" (\() -> getGroundFrictionNominator_impl this)
    pure this

initFields_ :: RaceTrackFrictionProperties -> IO ()
initFields_ this = do
    jset this.rOAD_FRICTION_NOMINATOR (0)
    jset this.gROUND_FRICTION_NOMINATOR (0)
    pure ()

new_2 :: Int -> Int -> IO RaceTrackFrictionProperties
new_2 roadFriction groundFriction = do
    this <- newRecord_
    init_2 this roadFriction groundFriction
    pure this

init_2 :: RaceTrackFrictionProperties -> Int -> Int -> IO ()
init_2 this roadFriction groundFriction = do
        initFields_ this
        jset (this).rOAD_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - roadFriction))
        jset (this).gROUND_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - groundFriction))
        pure ()


getRoadFrictionNominator :: (JavaObjectClass this_) => this_ -> IO (Int)
getRoadFrictionNominator object_ = jmethod object_ "getRoadFrictionNominator" (\() -> (getRoadFrictionNominator_impl (javaCast object_ :: RaceTrackFrictionProperties))) ()

getRoadFrictionNominator_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRoadFrictionNominator_super object_ = (getRoadFrictionNominator_impl (javaCast object_ :: RaceTrackFrictionProperties))

getRoadFrictionNominator_impl :: RaceTrackFrictionProperties -> IO (Int)
getRoadFrictionNominator_impl this = do
        pure ((jget (this).rOAD_FRICTION_NOMINATOR))


getGroundFrictionNominator :: (JavaObjectClass this_) => this_ -> IO (Int)
getGroundFrictionNominator object_ = jmethod object_ "getGroundFrictionNominator" (\() -> (getGroundFrictionNominator_impl (javaCast object_ :: RaceTrackFrictionProperties))) ()

getGroundFrictionNominator_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getGroundFrictionNominator_super object_ = (getGroundFrictionNominator_impl (javaCast object_ :: RaceTrackFrictionProperties))

getGroundFrictionNominator_impl :: RaceTrackFrictionProperties -> IO (Int)
getGroundFrictionNominator_impl this = do
        pure ((jget (this).gROUND_FRICTION_NOMINATOR))


