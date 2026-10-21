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
-- package org.allbinary.media.graphics.geography.map.racetrack
module CustomMapGenerator (module CustomMapGenerator, module CustomMapGeneratorBase) where

import CustomMapGeneratorBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, copyMapIntoCustomMap, copyMapIntoCustomMap_super, copyMapIntoCustomMap_impl, getCustomType, getCustomType_super, getCustomType_impl, getCustomMapArray, getCustomMapArray_super, getCustomMapArray_impl, customMapArray, raceTrackGeographicMap, geographicMapCellTypeFactory, dropCellPositionHistory)
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
import qualified RaceTrackGeographicMap -- same package or java.lang
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified WaypointLayer -- org.allbinary.game.layer.waypoint.WaypointLayer
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified CustomMapGeneratorBase

data CustomMapGenerator = CustomMapGenerator
    { header_ :: JavaHeader
    , base :: CustomMapGeneratorBase.CustomMapGeneratorBase
    , customMapArray :: IORef (JavaArray (JavaArray (Int)))
    , raceTrackGeographicMap :: IORef (RaceTrackGeographicMap.RaceTrackGeographicMap)
    , geographicMapCellTypeFactory :: IORef (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
    , dropCellPositionHistory :: IORef (DropCellPositionHistory.DropCellPositionHistory)
    }

instance JavaNull CustomMapGenerator where
    javaNull = javaNullRecord "CustomMapGenerator"

instance JavaEquals CustomMapGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomMapGenerator where
    (==) = jrecordEquals

instance JavaObjectClass CustomMapGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomMapGenerator
newRecord_ = do
    base <- CustomMapGeneratorBase.newRecord_
    let header_ = base.header_
    customMapArray <- newIORef javaNull
    raceTrackGeographicMap <- newIORef javaNull
    geographicMapCellTypeFactory <- newIORef javaNull
    dropCellPositionHistory <- newIORef javaNull
    let this = CustomMapGenerator header_ base customMapArray raceTrackGeographicMap geographicMapCellTypeFactory dropCellPositionHistory
    jregisterLevel header_ this
    jregisterMethod header_ "copyMapIntoCustomMap" (\() -> copyMapIntoCustomMap_impl this)
    jregisterMethod header_ "getCustomType" (\() -> getCustomType_impl this)
    jregisterMethod header_ "getCustomMapArray" (\() -> getCustomMapArray_impl this)
    pure this

initFields_ :: CustomMapGenerator -> IO ()
initFields_ this = do
    jset this.customMapArray (javaNull)
    jset this.raceTrackGeographicMap (javaNull)
    jset this.geographicMapCellTypeFactory (javaNull)
    jset this.dropCellPositionHistory =<< (DropCellPositionHistory.getInstance)
    pure ()

new_1 :: RaceTrackGeographicMap.RaceTrackGeographicMap -> IO CustomMapGenerator
new_1 raceTrackGeographicMap = do
    this <- newRecord_
    init_1 this raceTrackGeographicMap
    pure this

init_1 :: CustomMapGenerator -> RaceTrackGeographicMap.RaceTrackGeographicMap -> IO ()
init_1 this raceTrackGeographicMap = do
        CustomMapGeneratorBase.init_ this.base
        initFields_ this
        jset (this).raceTrackGeographicMap (raceTrackGeographicMap)
        assignedValue <- (RaceTrackGeographicMap.getGeographicMapCellTypeFactory ((jget (this).raceTrackGeographicMap)))
        jset (this).geographicMapCellTypeFactory (assignedValue)
        mapArray <- (RaceTrackData.getMapArray ((jio (RaceTrackGeographicMap.getRaceTrackData raceTrackGeographicMap))))
        let size2 = (jlength (jindex mapArray (0)))
        jset (this).customMapArray ((jnewArray2 ((jlength mapArray)) (size2) 0))
        when (((jlength mapArray) /= (jlength (jget (this).customMapArray))) || ((jlength (jindex mapArray (0))) /= (jlength (jindex ((jget (this).customMapArray)) (0))))) $ do
            javaThrow ((JavaException "Exception" "Array Incorrect"))
        pure ()


-- throws Exception
copyMapIntoCustomMap :: (JavaObjectClass this_) => this_ -> IO (())
copyMapIntoCustomMap object_ = jmethod object_ "copyMapIntoCustomMap" (\() -> (copyMapIntoCustomMap_impl (javaCast object_ :: CustomMapGenerator))) ()

copyMapIntoCustomMap_super :: (JavaObjectClass this_) => this_ -> IO (())
copyMapIntoCustomMap_super object_ = (copyMapIntoCustomMap_impl (javaCast object_ :: CustomMapGenerator))

copyMapIntoCustomMap_impl :: CustomMapGenerator -> IO (())
copyMapIntoCustomMap_impl this = do
        mapArray <- (RaceTrackData.getMapArray ((jio (RaceTrackGeographicMap.getRaceTrackData ((jget (this).raceTrackGeographicMap))))))
        let startIndex2 = ((jlength (jindex mapArray (0))) - 1)
        forM_ [((jlength mapArray) - 1), ((jlength mapArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            forM_ [startIndex2, startIndex2 + (-1) .. 0] $ \index2 -> javaIteration (pure ()) $ do
                assignedValue <- (CustomMapGenerator.getCustomType this index2 index (jindex ((jindex mapArray (index))) (index2)))
                jsetIndex ((jindex ((jget (this).customMapArray)) (index))) (index2) (assignedValue)
        pure ()


-- throws Exception
getCustomType :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getCustomType object_ a1 a2 a3 = jmethod object_ "getCustomType" (\() -> (getCustomType_impl (javaCast object_ :: CustomMapGenerator))) () a1 a2 a3

getCustomType_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getCustomType_super object_ a1 a2 a3 = (getCustomType_impl (javaCast object_ :: CustomMapGenerator)) a1 a2 a3

getCustomType_impl :: CustomMapGenerator -> Int -> Int -> Int -> IO (Int)
getCustomType_impl this column row currentType = do
    javaCatchReturn $ do
        emptyType <- (GeographicMapCellTypeFactory.getEmptyType ((jget (this).geographicMapCellTypeFactory)))
        geographicMapCellPositionFactory <- (RaceTrackGeographicMap.getGeographicMapCellPositionFactory ((jget (this).raceTrackGeographicMap)))
        cellPosition <- (fmap (\value_ -> javaCast value_ :: CellPosition.CellPosition) (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory column row))
        when (jio (DropCellPositionHistory.isCellPositionWithDrop ((jget (this).dropCellPositionHistory)) cellPosition)) $ do
            layer <- (DropCellPositionHistory.getLayerInterface ((jget (this).dropCellPositionHistory)) cellPosition)
            when (layer == AllBinaryLayer.nULL_ALLBINARY_LAYER) $ do
                javaReturn (emptyType)
            let rtsLayer = (javaCast layer :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            when (Prelude.not (((jio (AdvancedRTSGameLayer.getType rtsLayer)) == (jio (WaypointLayer.getStaticType))))) $ do
                javaReturn (emptyType)
        pure (currentType)


getCustomMapArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getCustomMapArray object_ = jmethod object_ "getCustomMapArray" (\() -> (getCustomMapArray_impl (javaCast object_ :: CustomMapGenerator))) ()

getCustomMapArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getCustomMapArray_super object_ = (getCustomMapArray_impl (javaCast object_ :: CustomMapGenerator))

getCustomMapArray_impl :: CustomMapGenerator -> IO (JavaArray (JavaArray (Int)))
getCustomMapArray_impl this = do
        pure ((jget (this).customMapArray))


