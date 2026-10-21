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
module RaceTrackGeographicMapCellTypes where

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

data RaceTrackGeographicMapCellTypes = RaceTrackGeographicMapCellTypes
    { header_ :: JavaHeader
    , bOTTOM_LEFT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , tOP_LEFT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , tOP_RIGHT_TURN_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , vERTICAL_STRAIGHT_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , sTART_LINE_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    , dEFAULT_FINISH_LINE_ROAD_CELL_TYPE :: IORef (RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
    }

instance JavaNull RaceTrackGeographicMapCellTypes where
    javaNull = javaNullRecord "RaceTrackGeographicMapCellTypes"

instance JavaEquals RaceTrackGeographicMapCellTypes where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackGeographicMapCellTypes where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackGeographicMapCellTypes where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTrackGeographicMapCellTypes
newRecord_ = do
    header_ <- newJavaHeader
    bOTTOM_LEFT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    tOP_LEFT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    tOP_RIGHT_TURN_ROAD_CELL_TYPE <- newIORef javaNull
    hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE <- newIORef javaNull
    vERTICAL_STRAIGHT_ROAD_CELL_TYPE <- newIORef javaNull
    sTART_LINE_ROAD_CELL_TYPE <- newIORef javaNull
    dEFAULT_FINISH_LINE_ROAD_CELL_TYPE <- newIORef javaNull
    let this = RaceTrackGeographicMapCellTypes header_ bOTTOM_LEFT_TURN_ROAD_CELL_TYPE bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE tOP_LEFT_TURN_ROAD_CELL_TYPE tOP_RIGHT_TURN_ROAD_CELL_TYPE hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE vERTICAL_STRAIGHT_ROAD_CELL_TYPE sTART_LINE_ROAD_CELL_TYPE dEFAULT_FINISH_LINE_ROAD_CELL_TYPE
    jregisterLevel header_ this
    pure this

initFields_ :: RaceTrackGeographicMapCellTypes -> IO ()
initFields_ this = do
    jset this.bOTTOM_LEFT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.tOP_LEFT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.tOP_RIGHT_TURN_ROAD_CELL_TYPE (javaNull)
    jset this.hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE (javaNull)
    jset this.vERTICAL_STRAIGHT_ROAD_CELL_TYPE (javaNull)
    jset this.sTART_LINE_ROAD_CELL_TYPE (javaNull)
    jset this.dEFAULT_FINISH_LINE_ROAD_CELL_TYPE (javaNull)
    pure ()


getInstance :: IO (RaceTrackGeographicMapCellTypes)
getInstance = do
        pure (RaceTrackGeographicMapCellTypes.instance_)

new_ :: IO RaceTrackGeographicMapCellTypes
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackGeographicMapCellTypes -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Bottom Left Turn" 1 1 0)
        jset (this).bOTTOM_LEFT_TURN_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Bottom Right Turn" 2 1 0)
        jset (this).bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Top Left Turn" 3 1 0)
        jset (this).tOP_LEFT_TURN_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Top Right Turne" 4 1 0)
        jset (this).tOP_RIGHT_TURN_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Horizontal Straight" 5 1 0)
        jset (this).hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Vertical Straight" 6 1 0)
        jset (this).vERTICAL_STRAIGHT_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Start Line" 7 1 0)
        jset (this).sTART_LINE_ROAD_CELL_TYPE (assignedValue)
        assignedValue <- (RaceTrackGeographicMapCellType.new_4 "Finish Line" 8 1 0)
        jset (this).dEFAULT_FINISH_LINE_ROAD_CELL_TYPE (assignedValue)
        pure ()


