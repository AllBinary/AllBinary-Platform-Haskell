{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2006 AllBinary
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
-- package org.allbinary.media.graphics.geography.pathfinding
module PathFindingNodeCostInfoFactory (module PathFindingNodeCostInfoFactory, module PathFindingNodeCostInfoFactoryBase) where

import PathFindingNodeCostInfoFactoryBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, create, create_super, create_impl, getTotalCost, getTotalCost_super, getTotalCost_impl)
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
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified PathFindingNodeCostInfoFactoryBase

data PathFindingNodeCostInfoFactory = PathFindingNodeCostInfoFactory
    { header_ :: JavaHeader
    , base :: PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase
    }

instance JavaNull PathFindingNodeCostInfoFactory where
    javaNull = javaNullRecord "PathFindingNodeCostInfoFactory"

instance JavaEquals PathFindingNodeCostInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNodeCostInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNodeCostInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFindingNodeCostInfoFactory
newRecord_ = do
    base <- PathFindingNodeCostInfoFactoryBase.newRecord_
    let header_ = base.header_
    let this = PathFindingNodeCostInfoFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "getTotalCost" (\() -> getTotalCost_impl this)
    pure this

initFields_ :: PathFindingNodeCostInfoFactory -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO PathFindingNodeCostInfoFactory
new_1 max = do
    this <- newRecord_
    init_1 this max
    pure this

init_1 :: PathFindingNodeCostInfoFactory -> Int -> IO ()
init_1 this max = do
        PathFindingNodeCostInfoFactoryBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (())
create object_ a1 a2 a3 a4 a5 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: PathFindingNodeCostInfoFactory))) () a1 a2 a3 a4 a5

create_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (())
create_super object_ a1 a2 a3 a4 a5 = (create_impl (javaCast object_ :: PathFindingNodeCostInfoFactory)) a1 a2 a3 a4 a5

create_impl :: PathFindingNodeCostInfoFactory -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (())
create_impl this geographicMapInterface goingToGeographicMapCellPosition geographicMapCellPosition costFromStart costToEnd = do
        pure ()


-- throws Exception
getTotalCost :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost object_ a1 a2 a3 = jmethod object_ "getTotalCost" (\() -> (getTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfoFactory))) () a1 a2 a3

getTotalCost_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost_super object_ a1 a2 a3 = (getTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfoFactory)) a1 a2 a3

getTotalCost_impl :: PathFindingNodeCostInfoFactory -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost_impl this geographicMapInterface comingFromGeographicMapCellPosition geographicMapCellPosition = do
        geographicMapCellType <- (BasicGeographicMap.getCellTypeAt geographicMapInterface comingFromGeographicMapCellPosition)
        geographicMapCellType2 <- (BasicGeographicMap.getCellTypeAt geographicMapInterface geographicMapCellPosition)
        let raceTrackGeographicMapCellType = (javaCast geographicMapCellType :: RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
        let raceTrackGeographicMapCellType2 = (javaCast geographicMapCellType2 :: RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
        pure (((Prelude.fromIntegral (jio (RaceTrackGeographicMapCellType.getTravelCost raceTrackGeographicMapCellType))) + (Prelude.fromIntegral (jio (RaceTrackGeographicMapCellType.getTravelCost raceTrackGeographicMapCellType2)))))


