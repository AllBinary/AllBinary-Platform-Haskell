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
module RaceTrackStartPointUtil where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified PathFindingNode -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNode

data RaceTrackStartPointUtil = RaceTrackStartPointUtil
    { header_ :: JavaHeader
    }

instance JavaNull RaceTrackStartPointUtil where
    javaNull = javaNullRecord "RaceTrackStartPointUtil"

instance JavaEquals RaceTrackStartPointUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackStartPointUtil where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackStartPointUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTrackStartPointUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = RaceTrackStartPointUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: RaceTrackStartPointUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RaceTrackStartPointUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackStartPointUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
get :: BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (GPoint.GPoint)
get geographicMapInterface pathFindingInfo index = do
        list <- (PathFindingInfo.getStartPathFindingNodeList pathFindingInfo)
        let startPathFindingNode = (javaCast (jio (BasicArrayList.get list index)) :: PathFindingNode.PathFindingNode)
        let geographicMapCellPosition = (jget (startPathFindingNode).geographicMapCellPosition)
        point <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
        (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (GPoint.getX point)) ((jio (GPoint.getY point)) + (jio (AllBinaryTiledLayer.getHalfCellHeight ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)))))))


