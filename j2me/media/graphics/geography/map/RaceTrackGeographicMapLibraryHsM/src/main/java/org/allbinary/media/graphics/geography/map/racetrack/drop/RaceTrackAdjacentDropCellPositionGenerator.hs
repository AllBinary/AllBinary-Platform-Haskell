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
module RaceTrackAdjacentDropCellPositionGenerator (module RaceTrackAdjacentDropCellPositionGenerator, module RaceTrackDropCellPositionGenerator) where

import RaceTrackDropCellPositionGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getFirstNonRoadAdjacentCellPosition, getFirstNonRoadAdjacentCellPosition_super, getFirstNonRoadAdjacentCellPosition_impl, update, update_super, update_impl, drop, drop_super, drop_impl, sINGLETON, layerCoveringCellPositionsUtil, groupCommonFactory, surroundingCellPositions, hashtable, geographicMapDirectionUtil)
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
import qualified Any -- same package or java.lang
import qualified RaceTrackAdjacentDropLayerFactory -- same package or java.lang
import qualified RaceTrackGeographicMapInterface -- same package or java.lang
import qualified GeographicMapCellTypeFactory -- same package or java.lang
import qualified GroupCommonFactory -- org.allbinary.game.identification.GroupCommonFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified LayerCoveringCellPositionsUtil -- org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapDirectionUtil -- org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified DropCellPositionGeneratorInterface -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified BaseRaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified RaceTrackGeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified RaceTrackDropCellPositionGenerator

data RaceTrackAdjacentDropCellPositionGenerator = RaceTrackAdjacentDropCellPositionGenerator
    { header_ :: JavaHeader
    , base :: RaceTrackDropCellPositionGenerator.RaceTrackDropCellPositionGenerator
    , layerCoveringCellPositionsUtil :: IORef (LayerCoveringCellPositionsUtil.LayerCoveringCellPositionsUtil)
    , groupCommonFactory :: IORef (GroupCommonFactory.GroupCommonFactory)
    , surroundingCellPositions :: IORef (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition))
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , geographicMapDirectionUtil :: IORef (GeographicMapDirectionUtil.GeographicMapDirectionUtil)
    }

instance JavaNull RaceTrackAdjacentDropCellPositionGenerator where
    javaNull = javaNullRecord "RaceTrackAdjacentDropCellPositionGenerator"

instance JavaEquals RaceTrackAdjacentDropCellPositionGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackAdjacentDropCellPositionGenerator where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackAdjacentDropCellPositionGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO RaceTrackAdjacentDropCellPositionGenerator
newRecord_ = do
    base <- RaceTrackDropCellPositionGenerator.newRecord_
    let header_ = base.header_
    layerCoveringCellPositionsUtil <- newIORef javaNull
    groupCommonFactory <- newIORef javaNull
    surroundingCellPositions <- newIORef javaNull
    hashtable <- newIORef javaNull
    geographicMapDirectionUtil <- newIORef javaNull
    let this = RaceTrackAdjacentDropCellPositionGenerator header_ base layerCoveringCellPositionsUtil groupCommonFactory surroundingCellPositions hashtable geographicMapDirectionUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getFirstNonRoadAdjacentCellPosition" (\() -> getFirstNonRoadAdjacentCellPosition_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    pure this

initFields_ :: RaceTrackAdjacentDropCellPositionGenerator -> IO ()
initFields_ this = do
    jset this.layerCoveringCellPositionsUtil =<< (LayerCoveringCellPositionsUtil.getInstance)
    jset this.groupCommonFactory =<< (GroupCommonFactory.getInstance)
    jset this.surroundingCellPositions ((jnewArray (4) javaNull))
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.geographicMapDirectionUtil =<< (GeographicMapDirectionUtil.getInstance)
    pure ()


getInstance :: IO (DropCellPositionGeneratorInterface.DropCellPositionGeneratorInterface)
getInstance = do
        pure ((javaCast (jget RaceTrackAdjacentDropCellPositionGenerator.sINGLETON) :: DropCellPositionGeneratorInterface.DropCellPositionGeneratorInterface))

new_ :: IO RaceTrackAdjacentDropCellPositionGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackAdjacentDropCellPositionGenerator -> IO ()
init_ this = do
        RaceTrackDropCellPositionGenerator.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getFirstNonRoadAdjacentCellPosition :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getFirstNonRoadAdjacentCellPosition object_ a1 a2 = jmethod object_ "getFirstNonRoadAdjacentCellPosition" (\() -> (getFirstNonRoadAdjacentCellPosition_impl (javaCast object_ :: RaceTrackAdjacentDropCellPositionGenerator))) () a1 a2

getFirstNonRoadAdjacentCellPosition_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getFirstNonRoadAdjacentCellPosition_super object_ a1 a2 = (getFirstNonRoadAdjacentCellPosition_impl (javaCast object_ :: RaceTrackAdjacentDropCellPositionGenerator)) a1 a2

getFirstNonRoadAdjacentCellPosition_impl :: RaceTrackAdjacentDropCellPositionGenerator -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getFirstNonRoadAdjacentCellPosition_impl this column row = do
        nonRoadGeographicMapCellPosition <- newIORef (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        geographicMapCellPositionFactory <- (RaceTrackGeographicMapInterface.getGeographicMapCellPositionFactory ((jget (this).base.raceTrackGeographicMap)))
        assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory column (row - 1))
        jsetIndex ((jget (this).surroundingCellPositions)) (0) (assignedValue)
        assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory column (row + 1))
        jsetIndex ((jget (this).surroundingCellPositions)) (1) (assignedValue)
        assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (column - 1) row)
        jsetIndex ((jget (this).surroundingCellPositions)) (2) (assignedValue)
        assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (column + 1) row)
        jsetIndex ((jget (this).surroundingCellPositions)) (3) (assignedValue)
        let baseRaceTrackGeographicMap = (javaCast (jget (this).base.raceTrackGeographicMap) :: BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap)
        let raceTrackGeographicMapCellTypeFactory = (javaCast (jio (BaseRaceTrackGeographicMap.getGeographicMapCellTypeFactory baseRaceTrackGeographicMap)) :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory)
        geographicMapCellPosition <- newIORef (javaNull)
        raceTrackGeographicMapCellType <- newIORef (javaNull)
        index <- newIORef ((jlength (jget (this).surroundingCellPositions)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset geographicMapCellPosition ((jindex ((jget (this).surroundingCellPositions)) ((jget index))))
            jset raceTrackGeographicMapCellType ((javaCast (jio (RaceTrackGeographicMapInterface.getCellTypeAt ((jget (this).base.raceTrackGeographicMap)) (jget geographicMapCellPosition))) :: RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType))
            when (Prelude.not (jio (RaceTrackGeographicMapCellTypeFactory.isPath raceTrackGeographicMapCellTypeFactory (javaCast (jget raceTrackGeographicMapCellType))))) $ do
                jset nonRoadGeographicMapCellPosition ((jget geographicMapCellPosition))
                throwIO JavaBreak
        pure ((jget nonRoadGeographicMapCellPosition))


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RaceTrackAdjacentDropCellPositionGenerator))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: RaceTrackAdjacentDropCellPositionGenerator)) a1 a2

update_impl :: RaceTrackAdjacentDropCellPositionGenerator -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this allBinaryGameLayerManager geographicMapInterface = do
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (AllBinaryGameLayerManager.iD) allBinaryGameLayerManager)
        Control.Monad.void (RaceTrackDropCellPositionGenerator.update_super this.base allBinaryGameLayerManager geographicMapInterface)
        pure ()


-- throws Exception
drop :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop object_ a1 a2 = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: RaceTrackAdjacentDropCellPositionGenerator))) () a1 a2

drop_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop_super object_ a1 a2 = (drop_impl (javaCast object_ :: RaceTrackAdjacentDropCellPositionGenerator)) a1 a2

drop_impl :: RaceTrackAdjacentDropCellPositionGenerator -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop_impl this allBinaryLayerManager index = do
    javaCatchReturn $ do
        let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get ((jget (this).base.list)) index)) :: GeographicMapCellPosition.GeographicMapCellPosition)
        randomGeographicMapCellPosition <- (RaceTrackAdjacentDropCellPositionGenerator.getFirstNonRoadAdjacentCellPosition this (jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) (jio (GeographicMapCellPosition.getRow geographicMapCellPosition)))
        when (randomGeographicMapCellPosition == javaNull) $ do
            javaReturn (())
        dropCellPositionHistory <- (DropCellPositionHistory.getInstance)
        when (Prelude.not (jio (DropCellPositionHistory.isCellPositionWithDrop dropCellPositionHistory (javaCast geographicMapCellPosition)))) $ do
            direction <- (GeographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition ((jget (this).geographicMapDirectionUtil)) randomGeographicMapCellPosition geographicMapCellPosition)
            objectCanBeNull <- (ABHashtable.get ((jget (this).hashtable)) (jget ((jget (this).groupCommonFactory)).iD))
            if (objectCanBeNull /= javaNull) then do
                pure ()
            else do
                Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (jget ((jget (this).groupCommonFactory)).iD) (jget ((jio (BasicGroupFactory.getInstance))).nONE_ARRAY))
            Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (jget ((jio (DirectionFactory.getInstance))).nAME) direction)
            point <- (GeographicMapCellPosition.getPoint randomGeographicMapCellPosition)
            x <- (GPoint.getX point)
            y <- (GPoint.getY point)
            z <- (GPoint.getZ point)
            layerInterface <- (LayerInterfaceFactoryInterface.getNextInstance ((jio (RaceTrackAdjacentDropLayerFactory.getRandomInstance ((jio (RaceTrackAdjacentDropLayerFactory.getInstance)))))) (jget this.hashtable) x y z)
            let baseRaceTrackGeographicMap = (javaCast (jget (this).base.raceTrackGeographicMap) :: BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap)
            list <- (LayerCoveringCellPositionsUtil.getAll ((jget (this).layerCoveringCellPositionsUtil)) (javaCast baseRaceTrackGeographicMap) randomGeographicMapCellPosition layerInterface (javaCast (jio (BasicArrayListD.new_))))
            when (jio (DropCellPositionHistory.anyCellPositionWithDrop dropCellPositionHistory list)) $ do
                javaReturn (())
            geographicMapCellType <- newIORef (javaNull)
            index2 <- newIORef =<< (BasicArrayList.size list)
            fix $ \loop -> when ((jpreIncrement index2 (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                assignedValue <- (RaceTrackGeographicMapInterface.getCellTypeAt ((jget (this).base.raceTrackGeographicMap)) (javaCast (jio (BasicArrayList.get list (jget index2))) :: GeographicMapCellPosition.GeographicMapCellPosition))
                jset geographicMapCellType (assignedValue)
                when (jio (RaceTrackGeographicMapCellTypeFactory.isPath ((jget (this).base.raceTrackGeographicMapCellTypeFactory)) (jget geographicMapCellType))) $ do
                    javaReturn (())
            Control.Monad.void (DropCellPositionHistory.addAll dropCellPositionHistory list layerInterface)
            Control.Monad.void (AllBinaryLayerManager.append allBinaryLayerManager layerInterface)
    pure ()


