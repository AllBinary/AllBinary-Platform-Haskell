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
module RaceTrackGeographicMapCellTypeFactory (module RaceTrackGeographicMapCellTypeFactory, module GeographicMapCellTypeFactory) where

import GeographicMapCellTypeFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getStartType, getStartType_super, getStartType_impl, getEndType, getEndType_super, getEndType_impl, getEmptyType, getEmptyType_super, getEmptyType_impl, isPath, isPath_super, isPath_impl, instanceC, eMPTY_CELL_TYPE, eASY_CELL_TYPE, bOTTOM_LEFT_TURN_ROAD_CELL_TYPE, bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE, tOP_LEFT_TURN_ROAD_CELL_TYPE, tOP_RIGHT_TURN_ROAD_CELL_TYPE, hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE, vERTICAL_STRAIGHT_ROAD_CELL_TYPE, sTART_LINE_ROAD_CELL_TYPE, dEFAULT_FINISH_LINE_ROAD_CELL_TYPE, fINISH_LINE_ROAD_CELL_TYPE)
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
import qualified RaceTrackGeographicMapCellType -- same package or java.lang
import qualified RaceTrackGeographicMapCellTypes -- same package or java.lang
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory

data RaceTrackGeographicMapCellTypeFactory = RaceTrackGeographicMapCellTypeFactory
    { header_ :: JavaHeader
    , base :: GeographicMapCellTypeFactory.GeographicMapCellTypeFactory
    , eMPTY_CELL_TYPE :: IORef (GeographicMapCellType.GeographicMapCellType)
    , eASY_CELL_TYPE :: IORef (GeographicMapCellType.GeographicMapCellType)
    , bOTTOM_LEFT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , tOP_LEFT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , tOP_RIGHT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , vERTICAL_STRAIGHT_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , sTART_LINE_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , dEFAULT_FINISH_LINE_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , fINISH_LINE_ROAD_CELL_TYPE :: IORef (GeographicMapCellType.GeographicMapCellType)
    }

instance JavaNull RaceTrackGeographicMapCellTypeFactory where
    javaNull = javaNullRecord "RaceTrackGeographicMapCellTypeFactory"

instance JavaEquals RaceTrackGeographicMapCellTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackGeographicMapCellTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackGeographicMapCellTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO RaceTrackGeographicMapCellTypeFactory
newRecord_ = do
    base <- GeographicMapCellTypeFactory.newRecord_
    let header_ = base.header_
    eMPTY_CELL_TYPE <- newIORef javaNull
    eASY_CELL_TYPE <- newIORef javaNull
    bOTTOM_LEFT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    tOP_LEFT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    tOP_RIGHT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE <- newIORef javaNull
    vERTICAL_STRAIGHT_ROAD_CELL_TYPE <- newIORef javaNull
    sTART_LINE_ROAD_CELL_TYPE <- newIORef javaNull
    dEFAULT_FINISH_LINE_ROAD_CELL_TYPE <- newIORef javaNull
    fINISH_LINE_ROAD_CELL_TYPE <- newIORef javaNull
    let this = RaceTrackGeographicMapCellTypeFactory header_ base eMPTY_CELL_TYPE eASY_CELL_TYPE bOTTOM_LEFT_TURN_ROAD_CELL_TYPE bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE tOP_LEFT_TURN_ROAD_CELL_TYPE tOP_RIGHT_TURN_ROAD_CELL_TYPE hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE vERTICAL_STRAIGHT_ROAD_CELL_TYPE sTART_LINE_ROAD_CELL_TYPE dEFAULT_FINISH_LINE_ROAD_CELL_TYPE fINISH_LINE_ROAD_CELL_TYPE
    jregisterLevel header_ this
    jregisterMethod header_ "getStartType" (\() -> getStartType_impl this)
    jregisterMethod header_ "getEndType" (\() -> getEndType_impl this)
    jregisterMethod header_ "getEmptyType" (\() -> getEmptyType_impl this)
    jregisterMethod header_ "isPath" (\() -> isPath_impl this)
    pure this

initFields_ :: RaceTrackGeographicMapCellTypeFactory -> IO ()
initFields_ this = do
    jset this.eMPTY_CELL_TYPE =<< (GeographicMapCellType.new_2 0 (Prelude.negate 1))
    jset this.eASY_CELL_TYPE ((jget (this).eMPTY_CELL_TYPE))
    jset this.bOTTOM_LEFT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.tOP_LEFT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.tOP_RIGHT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE (javaNull)
    jset this.vERTICAL_STRAIGHT_ROAD_CELL_TYPE (javaNull)
    jset this.sTART_LINE_ROAD_CELL_TYPE (javaNull)
    jset this.dEFAULT_FINISH_LINE_ROAD_CELL_TYPE (javaNull)
    jset this.fINISH_LINE_ROAD_CELL_TYPE (GeographicMapCellType.nULL_GEOGRAPHIC_MAP_CELL_TYPE)
    pure ()


getInstance :: IO (RaceTrackGeographicMapCellTypeFactory)
getInstance = do
        pure (RaceTrackGeographicMapCellTypeFactory.instanceC)

new_ :: IO RaceTrackGeographicMapCellTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackGeographicMapCellTypeFactory -> IO ()
init_ this = do
        GeographicMapCellTypeFactory.init_ this.base
        initFields_ this
        raceTrackGeographicMapCellTypes <- (RaceTrackGeographicMapCellTypes.getInstance)
        jset (this).bOTTOM_LEFT_TURN_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).bOTTOM_LEFT_TURN_ROAD_CELL_TYPE))
        jset (this).bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE))
        jset (this).tOP_LEFT_TURN_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).tOP_LEFT_TURN_ROAD_CELL_TYPE))
        jset (this).tOP_RIGHT_TURN_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).tOP_RIGHT_TURN_ROAD_CELL_TYPE))
        jset (this).hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE))
        jset (this).vERTICAL_STRAIGHT_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).vERTICAL_STRAIGHT_ROAD_CELL_TYPE))
        jset (this).sTART_LINE_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).sTART_LINE_ROAD_CELL_TYPE))
        jset (this).dEFAULT_FINISH_LINE_ROAD_CELL_TYPE ((jget (raceTrackGeographicMapCellTypes).dEFAULT_FINISH_LINE_ROAD_CELL_TYPE))
        pure ()


getStartType :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType object_ = jmethod object_ "getStartType" (\() -> (getStartType_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))) ()

getStartType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType_super object_ = (getStartType_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))

getStartType_impl :: RaceTrackGeographicMapCellTypeFactory -> IO (Int)
getStartType_impl this = do
        (RaceTrackGeographicMapCellType.getType ((jget (this).sTART_LINE_ROAD_CELL_TYPE)))


getEndType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType object_ = jmethod object_ "getEndType" (\() -> (getEndType_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))) ()

getEndType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType_super object_ = (getEndType_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))

getEndType_impl :: RaceTrackGeographicMapCellTypeFactory -> IO (Int)
getEndType_impl this = do
        (GeographicMapCellType.getType ((jget (this).fINISH_LINE_ROAD_CELL_TYPE)))


getEmptyType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType object_ = jmethod object_ "getEmptyType" (\() -> (getEmptyType_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))) ()

getEmptyType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType_super object_ = (getEmptyType_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))

getEmptyType_impl :: RaceTrackGeographicMapCellTypeFactory -> IO (Int)
getEmptyType_impl this = do
        (GeographicMapCellType.getType ((jget (this).eMPTY_CELL_TYPE)))


isPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath object_ a1 = jmethod object_ "isPath" (\() -> (isPath_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory))) () a1

isPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_super object_ a1 = (isPath_impl (javaCast object_ :: RaceTrackGeographicMapCellTypeFactory)) a1

isPath_impl :: RaceTrackGeographicMapCellTypeFactory -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_impl this cellType = do
    javaCatchReturn $ do
        when ((cellType /= (jget (this).eMPTY_CELL_TYPE)) && (cellType /= (jget (this).eASY_CELL_TYPE))) $ do
            javaReturn (True)
        pure (False)


