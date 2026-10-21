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
-- package org.allbinary.media.graphics.geography.map.racetrack.drop
module RaceTrackDropCellPositionGenerator (module RaceTrackDropCellPositionGenerator, module BaseDropCellPositionGenerator) where

import BaseDropCellPositionGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isDropAllowedAt, isDropAllowedAt_super, isDropAllowedAt_impl, update, update_super, update_impl, processTick, processTick_super, processTick_impl, drop, drop_super, drop_impl, list, timeDelayHelper, sTRAIGHTAWAY, raceTrackGeographicMap, raceTrackGeographicMapCellTypeFactory, basicArrayListUtil)
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
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified BaseDropCellPositionGenerator -- org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator
import qualified BaseRaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap
import qualified NullRaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified RaceTrackGeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory
import qualified RaceTrackGeographicMapInterface -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface
import qualified RaceTrackRoadsGeographicMapCellHistoryFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

data RaceTrackDropCellPositionGenerator = RaceTrackDropCellPositionGenerator
    { header_ :: JavaHeader
    , base :: BaseDropCellPositionGenerator.BaseDropCellPositionGenerator
    , list :: IORef (BasicArrayList.BasicArrayList)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , sTRAIGHTAWAY :: IORef (Int)
    , raceTrackGeographicMap :: IORef (RaceTrackGeographicMapInterface.RaceTrackGeographicMapInterface)
    , raceTrackGeographicMapCellTypeFactory :: IORef (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull RaceTrackDropCellPositionGenerator where
    javaNull = javaNullRecord "RaceTrackDropCellPositionGenerator"

instance JavaEquals RaceTrackDropCellPositionGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackDropCellPositionGenerator where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackDropCellPositionGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RaceTrackDropCellPositionGenerator
newRecord_ = do
    base <- BaseDropCellPositionGenerator.newRecord_
    let header_ = base.header_
    list <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    sTRAIGHTAWAY <- newIORef 0
    raceTrackGeographicMap <- newIORef javaNull
    raceTrackGeographicMapCellTypeFactory <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    let this = RaceTrackDropCellPositionGenerator header_ base list timeDelayHelper sTRAIGHTAWAY raceTrackGeographicMap raceTrackGeographicMapCellTypeFactory basicArrayListUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isDropAllowedAt" (\() -> isDropAllowedAt_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    pure this

initFields_ :: RaceTrackDropCellPositionGenerator -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.timeDelayHelper (javaNull)
    jset this.sTRAIGHTAWAY (4)
    jset this.raceTrackGeographicMap ((javaCast NullRaceTrackGeographicMap.nULL_RACE_TRACK_GEOGRAPHIC_MAP :: RaceTrackGeographicMapInterface.RaceTrackGeographicMapInterface))
    jset this.raceTrackGeographicMapCellTypeFactory =<< (GeographicMapCellTypeFactory.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO RaceTrackDropCellPositionGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackDropCellPositionGenerator -> IO ()
init_ this = do
        BaseDropCellPositionGenerator.init_ this.base
        initFields_ this
        assignedValue <- (TimeDelayHelper.new_1 10000)
        jset (this).timeDelayHelper (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator))

init_impl :: RaceTrackDropCellPositionGenerator -> IO (())
init_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


-- throws Exception
isDropAllowedAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt object_ a1 = jmethod object_ "isDropAllowedAt" (\() -> (isDropAllowedAt_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator))) () a1

isDropAllowedAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt_super object_ a1 = (isDropAllowedAt_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator)) a1

isDropAllowedAt_impl :: RaceTrackDropCellPositionGenerator -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        let raceTrackGeographicMapCellType = (javaCast (jio (RaceTrackGeographicMapInterface.getCellTypeAt ((jget (this).raceTrackGeographicMap)) geographicMapCellPosition)) :: RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
        let raceTrackGeographicMapCellTypeFactory = (javaCast (jget (this).raceTrackGeographicMapCellTypeFactory) :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory)
        when ((raceTrackGeographicMapCellType == (jget (raceTrackGeographicMapCellTypeFactory).hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE)) || (raceTrackGeographicMapCellType == (jget (raceTrackGeographicMapCellTypeFactory).vERTICAL_STRAIGHT_ROAD_CELL_TYPE))) $ do
            javaReturn (True)
        pure (False)


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator)) a1 a2

update_impl :: RaceTrackDropCellPositionGenerator -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this allBinaryGameLayerManager geographicMapInterface = do
        Control.Monad.void (RaceTrackDropCellPositionGenerator.init this)
        let baseRaceTrackGeographicMap = (javaCast geographicMapInterface :: BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap)
        jset (this).raceTrackGeographicMap (baseRaceTrackGeographicMap)
        jset (this).raceTrackGeographicMapCellTypeFactory ((javaCast (jio (BaseRaceTrackGeographicMap.getGeographicMapCellTypeFactory baseRaceTrackGeographicMap)) :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory))
        roadGeographicMapCellHistory <- (RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance)
        trackedList <- (GeographicMapCellHistory.getTracked roadGeographicMapCellHistory)
        geographicMapCellPosition <- newIORef (javaNull)
        let lastIndex = ((jio (BasicArrayList.size trackedList)) - 1)
        total <- newIORef (0)
        ahead <- newIORef (0)
        forM_ [lastIndex, lastIndex + (-1) .. 0 + 1] $ \index -> javaIteration (pure ()) $ do
            jset geographicMapCellPosition ((javaCast (jio (BasicArrayList.get trackedList index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
            jset total (0)
            jset ahead (index)
            fix $ \loop -> when (jio (RaceTrackDropCellPositionGenerator.isDropAllowedAt this (javaCast (jio (BasicArrayList.get trackedList (jget ahead))) :: GeographicMapCellPosition.GeographicMapCellPosition))) $ javaIteration (loop) $ do
                jset total ((jget total) + 1)
                when ((jget total) > (jget (this).sTRAIGHTAWAY)) $ do
                    Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget geographicMapCellPosition))
                    throwIO JavaBreak
                jset ahead ((jget ahead) + 1)
                when ((jget ahead) > lastIndex) $ do
                    throwIO JavaBreak
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (RaceTrackDropCellPositionGenerator.drop this allBinaryGameLayerManager index)
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator)) a1

processTick_impl :: RaceTrackDropCellPositionGenerator -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            index <- (BasicArrayListUtil.getRandomIndex ((jget (this).basicArrayListUtil)) (jget (this).list))
            Control.Monad.void (RaceTrackDropCellPositionGenerator.drop this allBinaryLayerManager index)
        pure ()


-- throws Exception
drop :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop object_ a1 a2 = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator))) () a1 a2

drop_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop_super object_ a1 a2 = (drop_impl (javaCast object_ :: RaceTrackDropCellPositionGenerator)) a1 a2

drop_impl :: RaceTrackDropCellPositionGenerator -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop_impl this allBinaryLayerManager index = do
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))
        pure ()


