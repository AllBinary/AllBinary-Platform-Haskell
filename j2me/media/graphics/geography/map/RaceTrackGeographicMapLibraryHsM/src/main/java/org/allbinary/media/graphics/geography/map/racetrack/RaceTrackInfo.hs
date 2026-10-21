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
module RaceTrackInfo where

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
import qualified RaceTrackFrictionProperties -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor

data RaceTrackInfo = RaceTrackInfo
    { header_ :: JavaHeader
    , id :: IORef (Int)
    , name :: IORef (String)
    , raceTrackFrictionProperties :: IORef (RaceTrackFrictionProperties.RaceTrackFrictionProperties)
    , foregroundBasicColor :: IORef (BasicColor.BasicColor)
    , backgroundBasicColor :: IORef (BasicColor.BasicColor)
    , qualifyTime :: IORef (Int)
    , worstContinuePosition :: IORef (Int)
    , totalLaps :: IORef (Int)
    }

instance JavaNull RaceTrackInfo where
    javaNull = javaNullRecord "RaceTrackInfo"

instance JavaEquals RaceTrackInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackInfo where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTrackInfo
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef javaNull
    name <- newIORef ""
    raceTrackFrictionProperties <- newIORef javaNull
    foregroundBasicColor <- newIORef javaNull
    backgroundBasicColor <- newIORef javaNull
    qualifyTime <- newIORef 0
    worstContinuePosition <- newIORef 0
    totalLaps <- newIORef 0
    let this = RaceTrackInfo header_ id name raceTrackFrictionProperties foregroundBasicColor backgroundBasicColor qualifyTime worstContinuePosition totalLaps
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getQualifyTime" (\() -> getQualifyTime_impl this)
    jregisterMethod header_ "setQualifyTime" (\() -> setQualifyTime_impl this)
    jregisterMethod header_ "getWorstContinuePosition" (\() -> getWorstContinuePosition_impl this)
    jregisterMethod header_ "setWorstContinuePosition" (\() -> setWorstContinuePosition_impl this)
    jregisterMethod header_ "getTotalLaps" (\() -> getTotalLaps_impl this)
    jregisterMethod header_ "setTotalLaps" (\() -> setTotalLaps_impl this)
    jregisterMethod header_ "getForegroundBasicColor" (\() -> getForegroundBasicColor_impl this)
    jregisterMethod header_ "setForegroundBasicColor" (\() -> setForegroundBasicColor_impl this)
    jregisterMethod header_ "getBackgroundBasicColor" (\() -> getBackgroundBasicColor_impl this)
    jregisterMethod header_ "setBackgroundBasicColor" (\() -> setBackgroundBasicColor_impl this)
    jregisterMethod header_ "getRaceTrackFrictionProperties" (\() -> getRaceTrackFrictionProperties_impl this)
    jregisterMethod header_ "setRaceTrackFrictionProperties" (\() -> setRaceTrackFrictionProperties_impl this)
    pure this

initFields_ :: RaceTrackInfo -> IO ()
initFields_ this = do
    jset this.id (javaNull)
    jset this.name (javaNull)
    jset this.raceTrackFrictionProperties (javaNull)
    jset this.foregroundBasicColor (javaNull)
    jset this.backgroundBasicColor (javaNull)
    jset this.qualifyTime (0)
    jset this.worstContinuePosition (0)
    jset this.totalLaps (0)
    pure ()

new_8 :: Int -> String -> RaceTrackFrictionProperties.RaceTrackFrictionProperties -> BasicColor.BasicColor -> BasicColor.BasicColor -> Int -> Int -> Int -> IO RaceTrackInfo
new_8 id name raceTrackFrictionProperties foregroundBasicColor backgroundBasicColor qualifyTime worstContinuePosition totalLaps = do
    this <- newRecord_
    init_8 this id name raceTrackFrictionProperties foregroundBasicColor backgroundBasicColor qualifyTime worstContinuePosition totalLaps
    pure this

init_8 :: RaceTrackInfo -> Int -> String -> RaceTrackFrictionProperties.RaceTrackFrictionProperties -> BasicColor.BasicColor -> BasicColor.BasicColor -> Int -> Int -> Int -> IO ()
init_8 this id name raceTrackFrictionProperties foregroundBasicColor backgroundBasicColor qualifyTime worstContinuePosition totalLaps = do
        initFields_ this
        jset (this).id (id)
        jset (this).name (name)
        jset (this).raceTrackFrictionProperties (raceTrackFrictionProperties)
        jset (this).backgroundBasicColor (backgroundBasicColor)
        jset (this).foregroundBasicColor (foregroundBasicColor)
        jset (this).qualifyTime (qualifyTime)
        jset (this).worstContinuePosition (worstContinuePosition)
        jset (this).totalLaps (totalLaps)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: RaceTrackInfo))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: RaceTrackInfo))

getId_impl :: RaceTrackInfo -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


setId :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: RaceTrackInfo))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: RaceTrackInfo)) a1

setId_impl :: RaceTrackInfo -> Int -> IO (())
setId_impl this id = do
        jset (this).id (id)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: RaceTrackInfo))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: RaceTrackInfo))

getName_impl :: RaceTrackInfo -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: RaceTrackInfo))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: RaceTrackInfo)) a1

setName_impl :: RaceTrackInfo -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getQualifyTime :: (JavaObjectClass this_) => this_ -> IO (Int)
getQualifyTime object_ = jmethod object_ "getQualifyTime" (\() -> (getQualifyTime_impl (javaCast object_ :: RaceTrackInfo))) ()

getQualifyTime_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getQualifyTime_super object_ = (getQualifyTime_impl (javaCast object_ :: RaceTrackInfo))

getQualifyTime_impl :: RaceTrackInfo -> IO (Int)
getQualifyTime_impl this = do
        pure ((jget (this).qualifyTime))


setQualifyTime :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setQualifyTime object_ a1 = jmethod object_ "setQualifyTime" (\() -> (setQualifyTime_impl (javaCast object_ :: RaceTrackInfo))) () a1

setQualifyTime_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setQualifyTime_super object_ a1 = (setQualifyTime_impl (javaCast object_ :: RaceTrackInfo)) a1

setQualifyTime_impl :: RaceTrackInfo -> Int -> IO (())
setQualifyTime_impl this qualifyTime = do
        jset (this).qualifyTime (qualifyTime)
        pure ()


getWorstContinuePosition :: (JavaObjectClass this_) => this_ -> IO (Int)
getWorstContinuePosition object_ = jmethod object_ "getWorstContinuePosition" (\() -> (getWorstContinuePosition_impl (javaCast object_ :: RaceTrackInfo))) ()

getWorstContinuePosition_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWorstContinuePosition_super object_ = (getWorstContinuePosition_impl (javaCast object_ :: RaceTrackInfo))

getWorstContinuePosition_impl :: RaceTrackInfo -> IO (Int)
getWorstContinuePosition_impl this = do
        pure ((jget (this).worstContinuePosition))


setWorstContinuePosition :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWorstContinuePosition object_ a1 = jmethod object_ "setWorstContinuePosition" (\() -> (setWorstContinuePosition_impl (javaCast object_ :: RaceTrackInfo))) () a1

setWorstContinuePosition_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWorstContinuePosition_super object_ a1 = (setWorstContinuePosition_impl (javaCast object_ :: RaceTrackInfo)) a1

setWorstContinuePosition_impl :: RaceTrackInfo -> Int -> IO (())
setWorstContinuePosition_impl this worstContinuePosition = do
        jset (this).worstContinuePosition (worstContinuePosition)
        pure ()


getTotalLaps :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalLaps object_ = jmethod object_ "getTotalLaps" (\() -> (getTotalLaps_impl (javaCast object_ :: RaceTrackInfo))) ()

getTotalLaps_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalLaps_super object_ = (getTotalLaps_impl (javaCast object_ :: RaceTrackInfo))

getTotalLaps_impl :: RaceTrackInfo -> IO (Int)
getTotalLaps_impl this = do
        pure ((jget (this).totalLaps))


setTotalLaps :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalLaps object_ a1 = jmethod object_ "setTotalLaps" (\() -> (setTotalLaps_impl (javaCast object_ :: RaceTrackInfo))) () a1

setTotalLaps_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalLaps_super object_ a1 = (setTotalLaps_impl (javaCast object_ :: RaceTrackInfo)) a1

setTotalLaps_impl :: RaceTrackInfo -> Int -> IO (())
setTotalLaps_impl this totalLaps = do
        jset (this).totalLaps (totalLaps)
        pure ()


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: RaceTrackInfo))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: RaceTrackInfo))

getForegroundBasicColor_impl :: RaceTrackInfo -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = do
        pure ((jget (this).foregroundBasicColor))


setForegroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor object_ a1 = jmethod object_ "setForegroundBasicColor" (\() -> (setForegroundBasicColor_impl (javaCast object_ :: RaceTrackInfo))) () a1

setForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_super object_ a1 = (setForegroundBasicColor_impl (javaCast object_ :: RaceTrackInfo)) a1

setForegroundBasicColor_impl :: RaceTrackInfo -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_impl this foregroundBasicColor = do
        jset (this).foregroundBasicColor (foregroundBasicColor)
        pure ()


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: RaceTrackInfo))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: RaceTrackInfo))

getBackgroundBasicColor_impl :: RaceTrackInfo -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = do
        pure ((jget (this).backgroundBasicColor))


setBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor object_ a1 = jmethod object_ "setBackgroundBasicColor" (\() -> (setBackgroundBasicColor_impl (javaCast object_ :: RaceTrackInfo))) () a1

setBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor_super object_ a1 = (setBackgroundBasicColor_impl (javaCast object_ :: RaceTrackInfo)) a1

setBackgroundBasicColor_impl :: RaceTrackInfo -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor_impl this backgroundBasicColor = do
        jset (this).backgroundBasicColor (backgroundBasicColor)
        pure ()


getRaceTrackFrictionProperties :: (JavaObjectClass this_) => this_ -> IO (RaceTrackFrictionProperties.RaceTrackFrictionProperties)
getRaceTrackFrictionProperties object_ = jmethod object_ "getRaceTrackFrictionProperties" (\() -> (getRaceTrackFrictionProperties_impl (javaCast object_ :: RaceTrackInfo))) ()

getRaceTrackFrictionProperties_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackFrictionProperties.RaceTrackFrictionProperties)
getRaceTrackFrictionProperties_super object_ = (getRaceTrackFrictionProperties_impl (javaCast object_ :: RaceTrackInfo))

getRaceTrackFrictionProperties_impl :: RaceTrackInfo -> IO (RaceTrackFrictionProperties.RaceTrackFrictionProperties)
getRaceTrackFrictionProperties_impl this = do
        pure ((jget (this).raceTrackFrictionProperties))


setRaceTrackFrictionProperties :: (JavaObjectClass this_) => this_ -> RaceTrackFrictionProperties.RaceTrackFrictionProperties -> IO (())
setRaceTrackFrictionProperties object_ a1 = jmethod object_ "setRaceTrackFrictionProperties" (\() -> (setRaceTrackFrictionProperties_impl (javaCast object_ :: RaceTrackInfo))) () a1

setRaceTrackFrictionProperties_super :: (JavaObjectClass this_) => this_ -> RaceTrackFrictionProperties.RaceTrackFrictionProperties -> IO (())
setRaceTrackFrictionProperties_super object_ a1 = (setRaceTrackFrictionProperties_impl (javaCast object_ :: RaceTrackInfo)) a1

setRaceTrackFrictionProperties_impl :: RaceTrackInfo -> RaceTrackFrictionProperties.RaceTrackFrictionProperties -> IO (())
setRaceTrackFrictionProperties_impl this raceTrackFrictionProperties = do
        jset (this).raceTrackFrictionProperties (raceTrackFrictionProperties)
        pure ()


