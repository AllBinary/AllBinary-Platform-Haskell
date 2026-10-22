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
-- package org.allbinary.game.layer.waypoint
module NoCacheWaypoint (module NoCacheWaypoint, module WaypointBase) where

import WaypointBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, releaseCachedPaths, releaseCachedPaths_super, releaseCachedPaths_impl, getPathsListFromCacheOnly, getPathsListFromCacheOnly_super, getPathsListFromCacheOnly_impl, getPathsListRunnable, getPathsListRunnable_super, getPathsListRunnable_impl, getEndGeographicMapCellPosition, getEndGeographicMapCellPosition_super, getEndGeographicMapCellPosition_impl, createPaths, createPaths_super, createPaths_impl, onEvent, onEvent_super, onEvent_impl, onBuildingEvent, onBuildingEvent_super, onBuildingEvent_impl, reset, reset_super, reset_impl, visit, visit_super, visit_impl, ownerLayer)
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
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified BuildingEventListenerInterface -- org.allbinary.game.layer.building.event.BuildingEventListenerInterface
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified UnitWaypointBehavior -- org.allbinary.game.layer.unit.UnitWaypointBehavior
import qualified PathFindingInfoFactory -- org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified CustomMapGenerator -- org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator
import qualified RaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified PathGenerator -- org.allbinary.media.graphics.geography.pathfinding.PathGenerator
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified WaypointBase

-- implements BuildingEventListenerInterface
data NoCacheWaypoint = NoCacheWaypoint
    { header_ :: JavaHeader
    , base :: WaypointBase.WaypointBase
    , ownerLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    }

instance JavaNull NoCacheWaypoint where
    javaNull = javaNullRecord "NoCacheWaypoint"

instance JavaEquals NoCacheWaypoint where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoCacheWaypoint where
    (==) = jrecordEquals

instance JavaObjectClass NoCacheWaypoint where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoCacheWaypoint
newRecord_ = do
    base <- WaypointBase.newRecord_
    let header_ = base.header_
    ownerLayer <- newIORef javaNull
    let this = NoCacheWaypoint header_ base ownerLayer
    jregisterLevel header_ this
    BuildingEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "releaseCachedPaths" (\() -> releaseCachedPaths_impl this)
    jregisterMethod header_ "getPathsListFromCacheOnly" (\() -> getPathsListFromCacheOnly_impl this)
    jregisterMethod header_ "getPathsListRunnable" (\() -> getPathsListRunnable_impl this)
    jregisterMethod header_ "getEndGeographicMapCellPosition" (\() -> getEndGeographicMapCellPosition_impl this)
    jregisterMethod header_ "createPaths" (\() -> createPaths_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onBuildingEvent" (\() -> onBuildingEvent_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: NoCacheWaypoint -> IO ()
initFields_ this = do
    jset this.ownerLayer (javaNull)
    pure ()

new_2 :: PathFindingLayerInterface.PathFindingLayerInterface -> Sound.Sound -> IO NoCacheWaypoint
new_2 ownerLayer sound = do
    this <- newRecord_
    init_2 this ownerLayer sound
    pure this

init_2 :: NoCacheWaypoint -> PathFindingLayerInterface.PathFindingLayerInterface -> Sound.Sound -> IO ()
init_2 this ownerLayer sound = do
        WaypointBase.init_1 this.base (sound)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).ownerLayer (ownerLayer)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: NoCacheWaypoint))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: NoCacheWaypoint)) a1

setAllBinaryGameLayerManager_impl :: NoCacheWaypoint -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (WaypointBase.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        pure ()


releaseCachedPaths :: (JavaObjectClass this_) => this_ -> IO (())
releaseCachedPaths object_ = jmethod object_ "releaseCachedPaths" (\() -> (releaseCachedPaths_impl (javaCast object_ :: NoCacheWaypoint))) ()

releaseCachedPaths_super :: (JavaObjectClass this_) => this_ -> IO (())
releaseCachedPaths_super object_ = (releaseCachedPaths_impl (javaCast object_ :: NoCacheWaypoint))

releaseCachedPaths_impl :: NoCacheWaypoint -> IO (())
releaseCachedPaths_impl this = do
        pure ()


-- throws Exception
getPathsListFromCacheOnly :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListFromCacheOnly object_ a1 = jmethod object_ "getPathsListFromCacheOnly" (\() -> (getPathsListFromCacheOnly_impl (javaCast object_ :: NoCacheWaypoint))) () a1

getPathsListFromCacheOnly_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListFromCacheOnly_super object_ a1 = (getPathsListFromCacheOnly_impl (javaCast object_ :: NoCacheWaypoint)) a1

getPathsListFromCacheOnly_impl :: NoCacheWaypoint -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListFromCacheOnly_impl this geographicMapCellPosition = do
        (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))


-- throws Exception
getPathsListRunnable :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListRunnable object_ a1 = jmethod object_ "getPathsListRunnable" (\() -> (getPathsListRunnable_impl (javaCast object_ :: NoCacheWaypoint))) () a1

getPathsListRunnable_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListRunnable_super object_ a1 = (getPathsListRunnable_impl (javaCast object_ :: NoCacheWaypoint)) a1

getPathsListRunnable_impl :: NoCacheWaypoint -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListRunnable_impl this geographicMapCellPosition = do
        (NoCacheWaypoint.createPaths this geographicMapCellPosition)


-- throws Exception
getEndGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getEndGeographicMapCellPosition object_ a1 = jmethod object_ "getEndGeographicMapCellPosition" (\() -> (getEndGeographicMapCellPosition_impl (javaCast object_ :: NoCacheWaypoint))) () a1

getEndGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getEndGeographicMapCellPosition_super object_ a1 = (getEndGeographicMapCellPosition_impl (javaCast object_ :: NoCacheWaypoint)) a1

getEndGeographicMapCellPosition_impl :: NoCacheWaypoint -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getEndGeographicMapCellPosition_impl this startGeographicMapCellPosition = do
        endList <- (PathFindingLayerInterface.getEndGeographicMapCellPositionList ((jget (this).ownerLayer)))
        endGeographicMapCellPosition <- newIORef ((javaCast (jio (BasicArrayListUtil.getRandom ((jio (BasicArrayListUtil.getInstance))) endList)) :: GeographicMapCellPosition.GeographicMapCellPosition))
        when (startGeographicMapCellPosition == (jget endGeographicMapCellPosition)) $ do
            forM_ [((jio (BasicArrayList.size endList)) - 1), ((jio (BasicArrayList.size endList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                jset endGeographicMapCellPosition ((javaCast (jio (BasicArrayList.get endList index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
                when (startGeographicMapCellPosition /= (jget endGeographicMapCellPosition)) $ do
                    throwIO JavaBreak
        pure ((jget endGeographicMapCellPosition))


-- throws Exception
createPaths :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
createPaths object_ a1 = jmethod object_ "createPaths" (\() -> (createPaths_impl (javaCast object_ :: NoCacheWaypoint))) () a1

createPaths_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
createPaths_super object_ a1 = (createPaths_impl (javaCast object_ :: NoCacheWaypoint)) a1

createPaths_impl :: NoCacheWaypoint -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
createPaths_impl this startGeographicMapCellPosition = do
    javaCatchReturn $ do
        endGeographicMapCellPosition <- (NoCacheWaypoint.getEndGeographicMapCellPosition this startGeographicMapCellPosition)
        when (endGeographicMapCellPosition == javaNull) $ do
            javaReturn =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
        when (startGeographicMapCellPosition == endGeographicMapCellPosition) $ do
            if (jio (PathFindingLayerInterface.shouldHandleStartSameAsEnd ((jget (this).ownerLayer)))) then do
                javaReturn =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
            else do
                javaThrow ((JavaException "Exception" ("Start should not be End: " ++ javaToString endGeographicMapCellPosition)))
        let geographicMapCompositeInterface = (javaCast (jget (this).base.allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        let raceTrackGeographicMap = (javaCast geographicMapInterface :: RaceTrackGeographicMap.RaceTrackGeographicMap)
        raceTrackGeographicMapCellTypeFactory <- (RaceTrackGeographicMap.getGeographicMapCellTypeFactory raceTrackGeographicMap)
        let customMapGenerator = (javaCast (jio (RaceTrackGeographicMap.getCustomMapGenerator raceTrackGeographicMap)) :: CustomMapGenerator.CustomMapGenerator)
        Control.Monad.void (CustomMapGenerator.copyMapIntoCustomMap customMapGenerator)
        customMapArray <- (CustomMapGenerator.getCustomMapArray customMapGenerator)
        assignedValue <- (GeographicMapCellTypeFactory.getStartType raceTrackGeographicMapCellTypeFactory)
        jsetIndex ((jindex customMapArray ((jio (GeographicMapCellPosition.getRow startGeographicMapCellPosition))))) ((jio (GeographicMapCellPosition.getColumn startGeographicMapCellPosition))) (assignedValue)
        assignedValue <- (GeographicMapCellTypeFactory.getEndType raceTrackGeographicMapCellTypeFactory)
        jsetIndex ((jindex customMapArray ((jio (GeographicMapCellPosition.getRow endGeographicMapCellPosition))))) ((jio (GeographicMapCellPosition.getColumn endGeographicMapCellPosition))) (assignedValue)
        pathFindingInfo <- (PathFindingInfoFactory.getInstancePathFindingInfo ((jio (PathFindingInfoFactory.getInstance))) (javaCast raceTrackGeographicMap) customMapArray)
        list <- (PathGenerator.getInstanceNoCache ((jio (PathGenerator.getInstance))) geographicMapInterface pathFindingInfo 2)
        when ((jio (BasicArrayList.size list)) < 1) $ do
            javaThrow ((JavaException "Exception" "Path may have been cleared by clearing caching"))
        pure (list)


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: NoCacheWaypoint))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: NoCacheWaypoint)) a1

onEvent_impl :: NoCacheWaypoint -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onBuildingEvent :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent object_ a1 = jmethod object_ "onBuildingEvent" (\() -> (onBuildingEvent_impl (javaCast object_ :: NoCacheWaypoint))) () a1

onBuildingEvent_super :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent_super object_ a1 = (onBuildingEvent_impl (javaCast object_ :: NoCacheWaypoint)) a1

onBuildingEvent_impl :: NoCacheWaypoint -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent_impl this event = do
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: NoCacheWaypoint))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: NoCacheWaypoint))

reset_impl :: NoCacheWaypoint -> IO (())
reset_impl this = do
        Control.Monad.void (WaypointBase.clear ((jio (WaypointBase.getConnectedWaypointList this))))
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: NoCacheWaypoint))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: NoCacheWaypoint)) a1

visit_impl :: NoCacheWaypoint -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
visit_impl this unitLayer = do
    javaCatchReturn $ do
        when ((jindex ((jio (PathFindingLayerInterface.getGroupInterface unitLayer))) (0)) /= (jindex ((jio (PathFindingLayerInterface.getGroupInterface ((jget (this).ownerLayer))))) (0))) $ do
            javaReturn (())
        size <- (WaypointBase.size ((jio (WaypointBase.getConnectedWaypointList this))))
        when (size > 0) $ do
            let unitWaypointBehavior = (javaCast (jio (PathFindingLayerInterface.getWaypointBehavior unitLayer)) :: UnitWaypointBehavior.UnitWaypointBehavior)
            fix $ \loop -> when ((jio (WaypointBase.size ((jio (WaypointBase.getConnectedWaypointList this))))) > 0) $ javaIteration (loop) $ do
                let rtsLayer = (javaCast (jio (WaypointBase.get ((jio (WaypointBase.getConnectedWaypointList this))) 0)) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
                if (jio (CollidableDestroyableDamageableLayer.isDestroyed rtsLayer)) then do
                    Control.Monad.void (WaypointBase.remove ((jio (WaypointBase.getConnectedWaypointList this))) rtsLayer)
                else do
                    Control.Monad.void (PathFindingLayerInterface.handleCost unitLayer (jget (this).ownerLayer))
                    Control.Monad.void (UnitWaypointBehavior.insertWaypoint unitWaypointBehavior 0 rtsLayer)
                    throwIO JavaBreak
    pure ()


