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
-- package org.allbinary.game.media.graphics.geography.map.racetrack
module PathFindingInfoFactory (module PathFindingInfoFactory, module BasePathFindingInfoFactory) where

import BasePathFindingInfoFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, initMax, initMax_super, initMax_impl, getInstancePathFindingInfo, getInstancePathFindingInfo_super, getInstancePathFindingInfo_impl, init, init_super, init_impl, buildPathFindingNodesForCellPosition, buildPathFindingNodesForCellPosition_super, buildPathFindingNodesForCellPosition_impl, buildPathFindingNodes, buildPathFindingNodes_super, buildPathFindingNodes_impl, instance_, mAX_DIRECTIONS, pathFindingInfo, basicGeographicMapGraph, basicGeographicMapPathFinder, pathFinderGraphVisitorFactoryInterface)
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
import qualified SimplePathFinderGraphVisitorFactory -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified BasicGeographicMapUtil -- org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified BasePathFindingInfoFactory -- org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified RaceTrackRoadsGeographicMapCellHistoryFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory
import qualified PathFindingNodeCostInfoFactoryBase -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase
import qualified BasicGeographicMapGraph -- org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapGraph
import qualified BasicGeographicMapPathFinder -- org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapPathFinder
import qualified PathFinderGraphVisitorFactoryBase -- org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified PathFindingNodeCostInfoFactory -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data PathFindingInfoFactory = PathFindingInfoFactory
    { header_ :: JavaHeader
    , base :: BasePathFindingInfoFactory.BasePathFindingInfoFactory
    , mAX_DIRECTIONS :: IORef (Int)
    , pathFindingInfo :: IORef (PathFindingInfo.PathFindingInfo)
    , basicGeographicMapGraph :: IORef (BasicGeographicMapGraph.BasicGeographicMapGraph)
    , basicGeographicMapPathFinder :: IORef (BasicGeographicMapPathFinder.BasicGeographicMapPathFinder)
    , pathFinderGraphVisitorFactoryInterface :: IORef (PathFinderGraphVisitorFactoryBase.PathFinderGraphVisitorFactoryBase)
    }

instance JavaNull PathFindingInfoFactory where
    javaNull = javaNullRecord "PathFindingInfoFactory"

instance JavaEquals PathFindingInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO PathFindingInfoFactory
newRecord_ = do
    base <- BasePathFindingInfoFactory.newRecord_
    let header_ = base.header_
    mAX_DIRECTIONS <- newIORef 0
    pathFindingInfo <- newIORef javaNull
    basicGeographicMapGraph <- newIORef javaNull
    basicGeographicMapPathFinder <- newIORef javaNull
    pathFinderGraphVisitorFactoryInterface <- newIORef javaNull
    let this = PathFindingInfoFactory header_ base mAX_DIRECTIONS pathFindingInfo basicGeographicMapGraph basicGeographicMapPathFinder pathFinderGraphVisitorFactoryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getInstancePathFindingInfo" (\() -> getInstancePathFindingInfo_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "buildPathFindingNodesForCellPosition" (\() -> buildPathFindingNodesForCellPosition_impl this)
    jregisterMethod header_ "buildPathFindingNodes" (\() -> buildPathFindingNodes_impl this)
    pure this

initFields_ :: PathFindingInfoFactory -> IO ()
initFields_ this = do
    jset this.mAX_DIRECTIONS (4)
    jset this.pathFindingInfo (javaNull)
    jset this.basicGeographicMapGraph (javaNull)
    jset this.basicGeographicMapPathFinder (javaNull)
    jset this.pathFinderGraphVisitorFactoryInterface (javaNull)
    pure ()


getInstance :: IO (PathFindingInfoFactory)
getInstance = do
        pure ((jget PathFindingInfoFactory.instance_))


initMax :: Int -> IO (())
initMax max = do
        assignedValue <- (new_2 (jio (SimplePathFinderGraphVisitorFactory.new_3 1 1 (2147483647 :: Int))) max)
        jset PathFindingInfoFactory.instance_ (assignedValue)
        pure ()

new_2 :: PathFinderGraphVisitorFactoryBase.PathFinderGraphVisitorFactoryBase -> Int -> IO PathFindingInfoFactory
new_2 pathFinderGraphVisitorFactoryInterface max = do
    this <- newRecord_
    init_2 this pathFinderGraphVisitorFactoryInterface max
    pure this

init_2 :: PathFindingInfoFactory -> PathFinderGraphVisitorFactoryBase.PathFinderGraphVisitorFactoryBase -> Int -> IO ()
init_2 this pathFinderGraphVisitorFactoryInterface max = do
        BasePathFindingInfoFactory.init_ this.base
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (PreLogUtil.put "Using Dynamic Path Finding" this (jget (commonStrings).gET_INSTANCE))
        assignedValue <- (BasicGeographicMapPathFinder.new_1 max)
        jset (this).basicGeographicMapPathFinder (assignedValue)
        assignedValue <- (PathFindingInfo.new_3 (jio (PathFindingNodeCostInfoFactory.new_1 max)) (jio (BasicArrayListS.new_1 1)) (jio (BasicArrayListS.new_1 1)))
        jset (this).pathFindingInfo (assignedValue)
        assignedValue <- (BasicGeographicMapGraph.new_1 (javaCast (jio (PathFindingInfo.getPathFindingNodeCostInfoFactoryInterface ((jget (this).pathFindingInfo)))) :: PathFindingNodeCostInfoFactory.PathFindingNodeCostInfoFactory))
        jset (this).basicGeographicMapGraph (assignedValue)
        jset (this).pathFinderGraphVisitorFactoryInterface (pathFinderGraphVisitorFactoryInterface)
        pure ()


-- throws Exception
getInstancePathFindingInfo :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo object_ a1 a2 = jmethod object_ "getInstancePathFindingInfo" (\() -> (getInstancePathFindingInfo_impl (javaCast object_ :: PathFindingInfoFactory))) () a1 a2

getInstancePathFindingInfo_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo_super object_ a1 a2 = (getInstancePathFindingInfo_impl (javaCast object_ :: PathFindingInfoFactory)) a1 a2

getInstancePathFindingInfo_impl :: PathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo_impl this geographicMapInterface mapArray = do
        pathFindingInfo <- (PathFindingInfo.new_3 (jio (PathFindingInfo.getPathFindingNodeCostInfoFactoryInterface ((jget (this).pathFindingInfo)))) (jio (BasicArrayListS.new_1 1)) (jio (BasicArrayListS.new_1 1)))
        Control.Monad.void (GeographicMapCellHistory.init ((jio (RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance))))
        Control.Monad.void (PathFindingInfoFactory.init this geographicMapInterface pathFindingInfo mapArray)
        Control.Monad.void (BasicGeographicMapPathFinder.init ((jget (this).basicGeographicMapPathFinder)) geographicMapInterface (jget (this).basicGeographicMapGraph) (jio (PathFinderGraphVisitorFactoryBase.getInstance ((jget (this).pathFinderGraphVisitorFactoryInterface)) geographicMapInterface)))
        Control.Monad.void (PathFindingInfo.setPathFinder pathFindingInfo (jget (this).basicGeographicMapPathFinder))
        pure (pathFindingInfo)


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PathFindingInfoFactory))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: PathFindingInfoFactory)) a1 a2 a3

init_impl :: PathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
init_impl this geographicMapInterface pathFindingInfo mapArray = do
        Control.Monad.void (BasePathFindingInfoFactory.init_super this.base geographicMapInterface pathFindingInfo mapArray)
        Control.Monad.void (PathFindingInfoFactory.buildPathFindingNodes this geographicMapInterface pathFindingInfo mapArray)
        pure ()


-- throws Exception
buildPathFindingNodesForCellPosition :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
buildPathFindingNodesForCellPosition object_ a1 a2 a3 a4 = jmethod object_ "buildPathFindingNodesForCellPosition" (\() -> (buildPathFindingNodesForCellPosition_impl (javaCast object_ :: PathFindingInfoFactory))) () a1 a2 a3 a4

buildPathFindingNodesForCellPosition_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
buildPathFindingNodesForCellPosition_super object_ a1 a2 a3 a4 = (buildPathFindingNodesForCellPosition_impl (javaCast object_ :: PathFindingInfoFactory)) a1 a2 a3 a4

buildPathFindingNodesForCellPosition_impl :: PathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
buildPathFindingNodesForCellPosition_impl this geographicMapInterface pathFindingInfo mapArray cellPosition = do
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        let cellTypeId = (jindex ((jindex mapArray ((jio (GeographicMapCellPosition.getRow cellPosition))))) ((jio (GeographicMapCellPosition.getColumn cellPosition))))
        geographicMapCellType <- (GeographicMapCellTypeFactory.get ((jio (GeographicMapCellTypeFactory.getInstance))) (jio (BasicGeographicMap.getCellTypeFromMapCellTypeInt geographicMapInterface cellTypeId)))
        let raceTrackGeographicMapCellType = (javaCast geographicMapCellType :: RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        pathFindingNodeCostInfoFactoryInterface <- (PathFindingInfo.getPathFindingNodeCostInfoFactoryInterface pathFindingInfo)
        basicGeographicMapUtil <- (BasicGeographicMapUtil.getInstance)
        row <- newIORef (0)
        column <- newIORef (0)
        goingToGeographicMapCellPosition <- newIORef (javaNull)
        costFromStart <- newIORef (0)
        costToEnd <- newIORef (0)
        forM_ [0 .. (jget (this).mAX_DIRECTIONS) - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (BasicGeographicMapUtil.getBorderingRow basicGeographicMapUtil index cellPosition)
            jset row (assignedValue)
            assignedValue <- (BasicGeographicMapUtil.getBorderingColumn basicGeographicMapUtil index cellPosition)
            jset column (assignedValue)
            when (((((jget row) < (jio (AllBinaryTiledLayer.getRows allBinaryTiledLayer))) && ((jget column) < (jio (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)))) && ((jget row) >= 0)) && ((jget column) >= 0)) $ do
                assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (jget column) (jget row))
                jset goingToGeographicMapCellPosition (assignedValue)
                assignedValue <- (RaceTrackGeographicMapCellType.getTravelCost raceTrackGeographicMapCellType)
                jset costFromStart (assignedValue)
                jset costToEnd ((jget costFromStart))
                Control.Monad.void (PathFindingNodeCostInfoFactoryBase.create pathFindingNodeCostInfoFactoryInterface geographicMapInterface (jget goingToGeographicMapCellPosition) cellPosition (jget costFromStart) (jget costToEnd))
        pure ()


-- throws Exception
buildPathFindingNodes :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
buildPathFindingNodes object_ a1 a2 a3 = jmethod object_ "buildPathFindingNodes" (\() -> (buildPathFindingNodes_impl (javaCast object_ :: PathFindingInfoFactory))) () a1 a2 a3

buildPathFindingNodes_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
buildPathFindingNodes_super object_ a1 a2 a3 = (buildPathFindingNodes_impl (javaCast object_ :: PathFindingInfoFactory)) a1 a2 a3

buildPathFindingNodes_impl :: PathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
buildPathFindingNodes_impl this geographicMapInterface pathFindingInfo mapArray = do
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        totalColumns <- (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)
        totalRows <- (AllBinaryTiledLayer.getRows allBinaryTiledLayer)
        forM_ [0 .. totalColumns - 1] $ \column -> javaIteration (pure ()) $ do
            forM_ [0 .. totalRows - 1] $ \row -> javaIteration (pure ()) $ do
                Control.Monad.void (PathFindingInfoFactory.buildPathFindingNodesForCellPosition this geographicMapInterface pathFindingInfo mapArray (jio (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory column row)))
        pure ()


