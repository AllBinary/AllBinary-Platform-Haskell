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
-- package org.allbinary.game.layer.unit
module UnitWaypointBehavior (module UnitWaypointBehavior, module WaypointBehaviorBase) where

import WaypointBehaviorBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initRange, initRange_super, initRange_impl, onEvent, onEvent_super, onEvent_impl, onWaypointEvent, onWaypointEvent_super, onWaypointEvent_impl, addWaypointFromUser, addWaypointFromUser_super, addWaypointFromUser_impl, addWaypointFromBuilding, addWaypointFromBuilding_super, addWaypointFromBuilding_impl, isWaypointListEmptyOrOnlyTargets, isWaypointListEmptyOrOnlyTargets_super, isWaypointListEmptyOrOnlyTargets_impl, insertWaypoint, insertWaypoint_super, insertWaypoint_impl, move, move_super, move_impl, setRandomGeographicMapCellHistory, setRandomGeographicMapCellHistory_super, setRandomGeographicMapCellHistory_impl, setGeographicMapCellHistoryPath, setGeographicMapCellHistoryPath_super, setGeographicMapCellHistoryPath_impl, canInsertWaypoint, canInsertWaypoint_super, canInsertWaypoint_impl, addBuildingChase, addBuildingChase_super, addBuildingChase_impl, moveAwayFromBuilding, moveAwayFromBuilding_super, moveAwayFromBuilding_impl, needToMove, needToMove_super, needToMove_impl, getMovementLogicAsString, getMovementLogicAsString_super, getMovementLogicAsString_impl, isMovingFromStopped, isMovingFromStopped_super, isMovingFromStopped_impl, setMovingFromStopped, setMovingFromStopped_super, setMovingFromStopped_impl, setWaypointPathsList, setWaypointPathsList_super, setWaypointPathsList_impl, getWaypointPathsList, getWaypointPathsList_super, getWaypointPathsList_impl, isMoving, isMoving_super, isMoving_impl, setMoving, setMoving_super, setMoving_impl, isTrackingWaypoint, isTrackingWaypoint_super, isTrackingWaypoint_impl, getPossibleTargetList, getPossibleTargetList_super, getPossibleTargetList_impl, setLastPathGeographicMapCellPosition, setLastPathGeographicMapCellPosition_super, setLastPathGeographicMapCellPosition_impl, getLastPathGeographicMapCellPosition, getLastPathGeographicMapCellPosition_super, getLastPathGeographicMapCellPosition_impl, setCurrentPathGeographicMapCellPosition, setCurrentPathGeographicMapCellPosition_super, setCurrentPathGeographicMapCellPosition_impl, getCurrentPathGeographicMapCellPosition, getCurrentPathGeographicMapCellPosition_super, getCurrentPathGeographicMapCellPosition_impl, setSensorAction, setSensorAction_super, setSensorAction_impl, getSensorAction, getSensorAction_super, getSensorAction_impl, setCurrentTargetLayerInterface, setCurrentTargetLayerInterface_super, setCurrentTargetLayerInterface_impl, getCurrentTargetLayerInterface, getCurrentTargetLayerInterface_super, getCurrentTargetLayerInterface_impl, setCurrentTargetDistance, setCurrentTargetDistance_super, setCurrentTargetDistance_impl, getCurrentTargetDistance, getCurrentTargetDistance_super, getCurrentTargetDistance_impl, getCompleteTimeDelayHelper, getCompleteTimeDelayHelper_super, getCompleteTimeDelayHelper_impl, getCurrentGeographicMapCellHistory, getCurrentGeographicMapCellHistory_super, getCurrentGeographicMapCellHistory_impl, setTrackingWaypoint, setTrackingWaypoint_super, setTrackingWaypoint_impl, pATHING, commonSeps, longWeaponRange, sensorAction, completeTimeDelayHelper, currentGeographicMapCellHistoryP, lastPathGeographicMapCellPosition, currentPathGeographicMapCellPosition, fAKE_WAYPOINT_LAYER, targetList, possibleTargetList, associatedAdvancedRTSGameLayer, moving, movingFromStopped, waypointPathsListP, currentTargetDistance, currentTargetLayerInterfaceP, trackingWaypoint, repeatedToLong)
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
import qualified UnitLayer -- same package or java.lang
import qualified WaypointLogHelper -- same package or java.lang
import qualified GeographicMapCellPositionAreaBase -- same package or java.lang
import qualified PrimaryWaypointHelper -- org.allbinary.game.input.form.PrimaryWaypointHelper
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified SensorAction -- org.allbinary.game.layer.SensorAction
import qualified SensorActionFactory -- org.allbinary.game.layer.SensorActionFactory
import qualified WaypointBehaviorBase -- org.allbinary.game.layer.WaypointBehaviorBase
import qualified BuildingLayer -- org.allbinary.game.layer.building.BuildingLayer
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified WaypointEventListenerInterface -- org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

-- implements WaypointEventListenerInterface
data UnitWaypointBehavior = UnitWaypointBehavior
    { header_ :: JavaHeader
    , base :: WaypointBehaviorBase.WaypointBehaviorBase
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , longWeaponRange :: IORef (Int)
    , sensorAction :: IORef (SensorAction.SensorAction)
    , completeTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , currentGeographicMapCellHistoryP :: IORef (GeographicMapCellHistory.GeographicMapCellHistory)
    , lastPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , currentPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , fAKE_WAYPOINT_LAYER :: IORef (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
    , targetList :: IORef (BasicArrayList.BasicArrayList)
    , possibleTargetList :: IORef (BasicArrayList.BasicArrayList)
    , associatedAdvancedRTSGameLayer :: IORef (UnitLayer.UnitLayer)
    , moving :: IORef (Bool)
    , movingFromStopped :: IORef (Bool)
    , waypointPathsListP :: IORef (BasicArrayList.BasicArrayList)
    , currentTargetDistance :: IORef (Int)
    , currentTargetLayerInterfaceP :: IORef (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
    , trackingWaypoint :: IORef (Bool)
    , repeatedToLong :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull UnitWaypointBehavior where
    javaNull = javaNullRecord "UnitWaypointBehavior"

instance JavaEquals UnitWaypointBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitWaypointBehavior where
    (==) = jrecordEquals

instance JavaObjectClass UnitWaypointBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pATHING = "Pathing"

newRecord_ :: IO UnitWaypointBehavior
newRecord_ = do
    base <- WaypointBehaviorBase.newRecord_
    let header_ = base.header_
    commonSeps <- newIORef javaNull
    longWeaponRange <- newIORef 0
    sensorAction <- newIORef javaNull
    completeTimeDelayHelper <- newIORef javaNull
    currentGeographicMapCellHistoryP <- newIORef javaNull
    lastPathGeographicMapCellPosition <- newIORef javaNull
    currentPathGeographicMapCellPosition <- newIORef javaNull
    fAKE_WAYPOINT_LAYER <- newIORef javaNull
    targetList <- newIORef javaNull
    possibleTargetList <- newIORef javaNull
    associatedAdvancedRTSGameLayer <- newIORef javaNull
    moving <- newIORef False
    movingFromStopped <- newIORef False
    waypointPathsListP <- newIORef javaNull
    currentTargetDistance <- newIORef 0
    currentTargetLayerInterfaceP <- newIORef javaNull
    trackingWaypoint <- newIORef False
    repeatedToLong <- newIORef javaNull
    let this = UnitWaypointBehavior header_ base commonSeps longWeaponRange sensorAction completeTimeDelayHelper currentGeographicMapCellHistoryP lastPathGeographicMapCellPosition currentPathGeographicMapCellPosition fAKE_WAYPOINT_LAYER targetList possibleTargetList associatedAdvancedRTSGameLayer moving movingFromStopped waypointPathsListP currentTargetDistance currentTargetLayerInterfaceP trackingWaypoint repeatedToLong
    jregisterLevel header_ this
    WaypointEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "initRange" (\() -> initRange_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onWaypointEvent" (\() -> onWaypointEvent_impl this)
    jregisterMethod header_ "addWaypointFromUser" (\() -> addWaypointFromUser_impl this)
    jregisterMethod header_ "addWaypointFromBuilding" (\() -> addWaypointFromBuilding_impl this)
    jregisterMethod header_ "isWaypointListEmptyOrOnlyTargets" (\() -> isWaypointListEmptyOrOnlyTargets_impl this)
    jregisterMethod header_ "insertWaypoint" (\() -> insertWaypoint_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "setRandomGeographicMapCellHistory" (\() -> setRandomGeographicMapCellHistory_impl this)
    jregisterMethod header_ "setGeographicMapCellHistoryPath" (\() -> setGeographicMapCellHistoryPath_impl this)
    jregisterMethod header_ "canInsertWaypoint" (\() -> canInsertWaypoint_impl this)
    jregisterMethod header_ "addBuildingChase" (\() -> addBuildingChase_impl this)
    jregisterMethod header_ "moveAwayFromBuilding" (\() -> moveAwayFromBuilding_impl this)
    jregisterMethod header_ "needToMove" (\() -> needToMove_impl this)
    jregisterMethod header_ "getMovementLogicAsString" (\() -> getMovementLogicAsString_impl this)
    jregisterMethod header_ "isMovingFromStopped" (\() -> isMovingFromStopped_impl this)
    jregisterMethod header_ "setMovingFromStopped" (\() -> setMovingFromStopped_impl this)
    jregisterMethod header_ "setWaypointPathsList" (\() -> setWaypointPathsList_impl this)
    jregisterMethod header_ "getWaypointPathsList" (\() -> getWaypointPathsList_impl this)
    jregisterMethod header_ "isMoving" (\() -> isMoving_impl this)
    jregisterMethod header_ "setMoving" (\() -> setMoving_impl this)
    jregisterMethod header_ "isTrackingWaypoint" (\() -> isTrackingWaypoint_impl this)
    jregisterMethod header_ "getPossibleTargetList" (\() -> getPossibleTargetList_impl this)
    jregisterMethod header_ "setLastPathGeographicMapCellPosition" (\() -> setLastPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getLastPathGeographicMapCellPosition" (\() -> getLastPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setCurrentPathGeographicMapCellPosition" (\() -> setCurrentPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getCurrentPathGeographicMapCellPosition" (\() -> getCurrentPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setSensorAction" (\() -> setSensorAction_impl this)
    jregisterMethod header_ "getSensorAction" (\() -> getSensorAction_impl this)
    jregisterMethod header_ "setCurrentTargetLayerInterface" (\() -> setCurrentTargetLayerInterface_impl this)
    jregisterMethod header_ "getCurrentTargetLayerInterface" (\() -> getCurrentTargetLayerInterface_impl this)
    jregisterMethod header_ "setCurrentTargetDistance" (\() -> setCurrentTargetDistance_impl this)
    jregisterMethod header_ "getCurrentTargetDistance" (\() -> getCurrentTargetDistance_impl this)
    jregisterMethod header_ "getCompleteTimeDelayHelper" (\() -> getCompleteTimeDelayHelper_impl this)
    jregisterMethod header_ "getCurrentGeographicMapCellHistory" (\() -> getCurrentGeographicMapCellHistory_impl this)
    jregisterMethod header_ "setTrackingWaypoint" (\() -> setTrackingWaypoint_impl this)
    pure this

initFields_ :: UnitWaypointBehavior -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.longWeaponRange (0)
    jset this.sensorAction ((jget ((jio (SensorActionFactory.getInstance))).aTTACK))
    jset this.completeTimeDelayHelper (javaNull)
    jset this.currentGeographicMapCellHistoryP (javaNull)
    jset this.lastPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.currentPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.fAKE_WAYPOINT_LAYER (javaNull)
    jset this.targetList (javaNull)
    jset this.possibleTargetList (javaNull)
    jset this.associatedAdvancedRTSGameLayer (javaNull)
    jset this.moving (False)
    jset this.movingFromStopped (False)
    jset this.waypointPathsListP =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.currentTargetDistance ((2147483647 :: Int))
    jset this.currentTargetLayerInterfaceP =<< (CollidableDestroyableDamageableLayer.getNullInstance)
    jset this.trackingWaypoint (False)
    jset this.repeatedToLong =<< (TimeDelayHelper.new_1 22000)
    pure ()

new_2 :: UnitLayer.UnitLayer -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO UnitWaypointBehavior
new_2 associatedAdvancedRTSGameLayer fakeWaypoint = do
    this <- newRecord_
    init_2 this associatedAdvancedRTSGameLayer fakeWaypoint
    pure this

init_2 :: UnitWaypointBehavior -> UnitLayer.UnitLayer -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO ()
init_2 this associatedAdvancedRTSGameLayer fakeWaypoint = do
        WaypointBehaviorBase.init_ this.base
        initFields_ this
        jset (this).associatedAdvancedRTSGameLayer (associatedAdvancedRTSGameLayer)
        assignedValue <- (TimeDelayHelper.new_1 30000)
        jset (this).completeTimeDelayHelper (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).targetList (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).possibleTargetList (assignedValue)
        Control.Monad.void (UnitWaypointBehavior.setWaypointPathsList this (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))))
        assignedValue <- (GeographicMapCellHistory.new_)
        jset (this).currentGeographicMapCellHistoryP (assignedValue)
        jset (this).fAKE_WAYPOINT_LAYER (fakeWaypoint)
        pure ()


initRange :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initRange object_ a1 = jmethod object_ "initRange" (\() -> (initRange_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

initRange_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initRange_super object_ a1 = (initRange_impl (javaCast object_ :: UnitWaypointBehavior)) a1

initRange_impl :: UnitWaypointBehavior -> Int -> IO (())
initRange_impl this weaponRange = do
        jset (this).longWeaponRange ((weaponRange `quot` 2))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: UnitWaypointBehavior)) a1

onEvent_impl :: UnitWaypointBehavior -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onWaypointEvent :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onWaypointEvent object_ a1 = jmethod object_ "onWaypointEvent" (\() -> (onWaypointEvent_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

onWaypointEvent_super :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onWaypointEvent_super object_ a1 = (onWaypointEvent_impl (javaCast object_ :: UnitWaypointBehavior)) a1

onWaypointEvent_impl :: UnitWaypointBehavior -> RTSLayerEvent.RTSLayerEvent -> IO (())
onWaypointEvent_impl this event = do
        let advancedRTSGameLayer = (javaCast (jio (RTSLayerEvent.getRtsLayer event)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
        Control.Monad.void (WaypointLogHelper.onWaypointEvent ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) (javaCast advancedRTSGameLayer))
        if (jio (UnitLayer.isSelected ((jget (this).associatedAdvancedRTSGameLayer)))) then do
            Control.Monad.void (UnitWaypointBehavior.addWaypointFromUser this advancedRTSGameLayer)
        else when (jio (AdvancedRTSGameLayer.shouldAddWaypointFromBuilding advancedRTSGameLayer)) $ do
            Control.Monad.void (UnitWaypointBehavior.addWaypointFromBuilding this advancedRTSGameLayer)
        pure ()


-- throws Exception
addWaypointFromUser :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromUser object_ a1 = jmethod object_ "addWaypointFromUser" (\() -> (addWaypointFromUser_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

addWaypointFromUser_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromUser_super object_ a1 = (addWaypointFromUser_impl (javaCast object_ :: UnitWaypointBehavior)) a1

addWaypointFromUser_impl :: UnitWaypointBehavior -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromUser_impl this advancedRTSGameLayer = do
        pure ()


-- throws Exception
addWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromBuilding object_ a1 = jmethod object_ "addWaypointFromBuilding" (\() -> (addWaypointFromBuilding_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

addWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromBuilding_super object_ a1 = (addWaypointFromBuilding_impl (javaCast object_ :: UnitWaypointBehavior)) a1

addWaypointFromBuilding_impl :: UnitWaypointBehavior -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromBuilding_impl this advancedRTSGameLayer = do
        when (((jtoObject advancedRTSGameLayer) == (jtoObject (jio (PrimaryWaypointHelper.getWaypointLayer ((jio (PrimaryWaypointHelper.getInstance))))))) || ((jio (AdvancedRTSGameLayer.getParentLayer advancedRTSGameLayer)) == (jio (UnitLayer.getParentLayer ((jget (this).associatedAdvancedRTSGameLayer)))))) $ do
            when (Prelude.not (jio (BasicArrayList.contains ((jget (this).targetList)) advancedRTSGameLayer))) $ do
                Control.Monad.void (WaypointLogHelper.addWaypointFromBuilding ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) (javaCast advancedRTSGameLayer))
                when (jio (AdvancedRTSGameLayer.isDestroyed advancedRTSGameLayer)) $ do
                    javaThrow ((JavaException "Exception" ("Trying to add a dead: " ++ javaToString advancedRTSGameLayer)))
                Control.Monad.void (BasicArrayList.add ((jget (this).targetList)) advancedRTSGameLayer)
                Control.Monad.void (WaypointLogHelper.addWaypointFromBuildingList ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) (javaCast advancedRTSGameLayer) (jget (this).targetList))
        pure ()


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: UnitWaypointBehavior))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: UnitWaypointBehavior))

isWaypointListEmptyOrOnlyTargets_impl :: UnitWaypointBehavior -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = do
        pure (False)


-- throws Exception
insertWaypoint :: (JavaObjectClass this_) => this_ -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (Bool)
insertWaypoint object_ a1 a2 = jmethod object_ "insertWaypoint" (\() -> (insertWaypoint_impl (javaCast object_ :: UnitWaypointBehavior))) () a1 a2

insertWaypoint_super :: (JavaObjectClass this_) => this_ -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (Bool)
insertWaypoint_super object_ a1 a2 = (insertWaypoint_impl (javaCast object_ :: UnitWaypointBehavior)) a1 a2

insertWaypoint_impl :: UnitWaypointBehavior -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (Bool)
insertWaypoint_impl this index rtsLayer = do
    javaCatchReturn $ do
        when (jio (UnitWaypointBehavior.canInsertWaypoint this index rtsLayer)) $ do
            Control.Monad.void (WaypointLogHelper.insertWaypoint ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) index rtsLayer (jio (WaypointBehaviorBase.getName this)))
            when (jio (CollidableDestroyableDamageableLayer.isDestroyed rtsLayer)) $ do
                javaThrow ((JavaException "Exception" ("Trying to add a dead: " ++ javaToString rtsLayer)))
            Control.Monad.void (BasicArrayList.addAt ((jget (this).targetList)) index rtsLayer)
            Control.Monad.void (WaypointLogHelper.insertWaypointList ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) index rtsLayer (jio (WaypointBehaviorBase.getName this)) (jget (this).targetList))
            javaReturn (True)
        pure (False)


move :: (JavaObjectClass this_) => this_ -> IO (())
move object_ = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: UnitWaypointBehavior))) ()

move_super :: (JavaObjectClass this_) => this_ -> IO (())
move_super object_ = (move_impl (javaCast object_ :: UnitWaypointBehavior))

move_impl :: UnitWaypointBehavior -> IO (())
move_impl this = do
        if (jio (UnitWaypointBehavior.isMoving this)) then do
            Control.Monad.void (UnitWaypointBehavior.setMovingFromStopped this False)
        else do
            Control.Monad.void (UnitWaypointBehavior.setMovingFromStopped this True)
        Control.Monad.void (UnitWaypointBehavior.setMoving this False)
        pure ()


-- throws Exception
setRandomGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistory object_ a1 = jmethod object_ "setRandomGeographicMapCellHistory" (\() -> (setRandomGeographicMapCellHistory_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setRandomGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistory_super object_ a1 = (setRandomGeographicMapCellHistory_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setRandomGeographicMapCellHistory_impl :: UnitWaypointBehavior -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistory_impl this pathsList = do
        size <- (BasicArrayList.size pathsList)
        Control.Monad.void (WaypointLogHelper.setRandomGeographicMapCellHistoryList ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) pathsList)
        when (size > 0) $ do
            let geographicMapCellPositionBasicArrayList = (javaCast (jio (BasicArrayListUtil.getRandom ((jio (BasicArrayListUtil.getInstance))) pathsList)) :: BasicArrayList.BasicArrayList)
            Control.Monad.void (UnitWaypointBehavior.setGeographicMapCellHistoryPath this geographicMapCellPositionBasicArrayList)
        pure ()


-- throws Exception
setGeographicMapCellHistoryPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setGeographicMapCellHistoryPath object_ a1 = jmethod object_ "setGeographicMapCellHistoryPath" (\() -> (setGeographicMapCellHistoryPath_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setGeographicMapCellHistoryPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setGeographicMapCellHistoryPath_super object_ a1 = (setGeographicMapCellHistoryPath_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setGeographicMapCellHistoryPath_impl :: UnitWaypointBehavior -> BasicArrayList.BasicArrayList -> IO (())
setGeographicMapCellHistoryPath_impl this geographicMapCellPositionBasicArrayList = do
        jset (this).lastPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        when (jget ((jget (this).associatedAdvancedRTSGameLayer)).showMoreCaptionStates) $ do
            Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).associatedAdvancedRTSGameLayer))))) (UnitWaypointBehavior.pATHING) (jget ((jio (BasicColorFactory.getInstance))).gREEN))
        Control.Monad.void (GeographicMapCellHistory.init ((jget (this).currentGeographicMapCellHistoryP)))
        Control.Monad.void (UnitLayer.init ((jget (this).associatedAdvancedRTSGameLayer)) (jget (this).currentGeographicMapCellHistoryP) geographicMapCellPositionBasicArrayList)
        Control.Monad.void (UnitWaypointBehavior.setTrackingWaypoint this True)
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jio (UnitWaypointBehavior.getCompleteTimeDelayHelper this))))
        pure ()


canInsertWaypoint :: (JavaObjectClass this_) => this_ -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (Bool)
canInsertWaypoint object_ a1 a2 = jmethod object_ "canInsertWaypoint" (\() -> (canInsertWaypoint_impl (javaCast object_ :: UnitWaypointBehavior))) () a1 a2

canInsertWaypoint_super :: (JavaObjectClass this_) => this_ -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (Bool)
canInsertWaypoint_super object_ a1 a2 = (canInsertWaypoint_impl (javaCast object_ :: UnitWaypointBehavior)) a1 a2

canInsertWaypoint_impl :: UnitWaypointBehavior -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (Bool)
canInsertWaypoint_impl this index rtsLayer = do
    javaCatchReturn $ do
        if ((jio (BasicArrayList.size ((jget (this).targetList)))) > 4) then do
            pure ()
        else if (jio (BasicArrayList.contains ((jget (this).targetList)) rtsLayer)) then do
            pure ()
        else do
            javaReturn (True)
        pure (False)


-- throws Exception
addBuildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addBuildingChase object_ a1 a2 = jmethod object_ "addBuildingChase" (\() -> (addBuildingChase_impl (javaCast object_ :: UnitWaypointBehavior))) () a1 a2

addBuildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addBuildingChase_super object_ a1 a2 = (addBuildingChase_impl (javaCast object_ :: UnitWaypointBehavior)) a1 a2

addBuildingChase_impl :: UnitWaypointBehavior -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addBuildingChase_impl this allbinaryLayer cellPosition = do
        pure ()


-- throws Exception
moveAwayFromBuilding :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (())
moveAwayFromBuilding object_ a1 = jmethod object_ "moveAwayFromBuilding" (\() -> (moveAwayFromBuilding_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

moveAwayFromBuilding_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (())
moveAwayFromBuilding_super object_ a1 = (moveAwayFromBuilding_impl (javaCast object_ :: UnitWaypointBehavior)) a1

moveAwayFromBuilding_impl :: UnitWaypointBehavior -> BuildingLayer.BuildingLayer -> IO (())
moveAwayFromBuilding_impl this buildingLayer = do
        geographicMapCellPosition <- (UnitLayer.getCurrentGeographicMapCellPosition ((jget (this).associatedAdvancedRTSGameLayer)))
        list <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList ((jget (buildingLayer).geographicMapCellPositionAreaBase)))
        when (jio (BasicArrayList.contains list geographicMapCellPosition)) $ do
            when (jio (UnitWaypointBehavior.insertWaypoint this 0 (jget (this).fAKE_WAYPOINT_LAYER))) $ do
                Control.Monad.void (WaypointLogHelper.moveAwayFromBuilding ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)))
                Control.Monad.void (UnitWaypointBehavior.setCurrentTargetLayerInterface this (javaCast (jget (this).fAKE_WAYPOINT_LAYER) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer))
                pathsList <- (BuildingLayer.getMoveOutOfBuildAreaPath buildingLayer geographicMapCellPosition)
                Control.Monad.void (UnitLayer.setClosestGeographicMapCellHistory ((jget (this).associatedAdvancedRTSGameLayer)) pathsList)
        pure ()


needToMove :: (JavaObjectClass this_) => this_ -> IO (Bool)
needToMove object_ = jmethod object_ "needToMove" (\() -> (needToMove_impl (javaCast object_ :: UnitWaypointBehavior))) ()

needToMove_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
needToMove_super object_ = (needToMove_impl (javaCast object_ :: UnitWaypointBehavior))

needToMove_impl :: UnitWaypointBehavior -> IO (Bool)
needToMove_impl this = do
    javaCatchReturn $ do
        Control.Monad.void (WaypointLogHelper.needToMove ((jget ((jget (this).associatedAdvancedRTSGameLayer)).waypointLogHelperP)) (javaCast (jget (this).associatedAdvancedRTSGameLayer)) (javaCast this))
        when (((jio (UnitWaypointBehavior.isTrackingWaypoint this)) || ((jget (this).sensorAction) == (jget ((jio (SensorActionFactory.getInstance))).eVADE))) || ((((jget (this).currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) && ((jio (UnitWaypointBehavior.getCurrentTargetDistance this)) >= ((jget (this).longWeaponRange) + (jio (CollidableDestroyableDamageableLayer.getHalfHeight ((jget (this).currentTargetLayerInterfaceP))))))))) $ do
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).repeatedToLong)))
            javaReturn (True)
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).repeatedToLong)))) $ do
            let message = ("Repeating too long: " ++ javaToString (jio (UnitWaypointBehavior.getMovementLogicAsString this)))
            Control.Monad.void (ForcedLogUtil.log message (jget (this).associatedAdvancedRTSGameLayer))
        pure (False)


getMovementLogicAsString :: (JavaObjectClass this_) => this_ -> IO (String)
getMovementLogicAsString object_ = jmethod object_ "getMovementLogicAsString" (\() -> (getMovementLogicAsString_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getMovementLogicAsString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMovementLogicAsString_super object_ = (getMovementLogicAsString_impl (javaCast object_ :: UnitWaypointBehavior))

getMovementLogicAsString_impl :: UnitWaypointBehavior -> IO (String)
getMovementLogicAsString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "isTrackingWaypoint: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (UnitWaypointBehavior.isTrackingWaypoint this)))
        Control.Monad.void (StringMaker.append stringBuffer " sensorAction: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sensorAction)).name))
        Control.Monad.void (StringMaker.append stringBuffer " getCurrentTargetLayerInterface: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).currentTargetLayerInterfaceP))))
        when ((jget (this).currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) $ do
            Control.Monad.void (StringMaker.append stringBuffer " Target Range: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (UnitWaypointBehavior.getCurrentTargetDistance this)))
            Control.Monad.void (StringMaker.append stringBuffer " >= ")
            Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger ((jget (this).longWeaponRange) + (jio (CollidableDestroyableDamageableLayer.getHalfHeight ((jget (this).currentTargetLayerInterfaceP))))))))
        (StringMaker.toString stringBuffer)


isMovingFromStopped :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMovingFromStopped object_ = jmethod object_ "isMovingFromStopped" (\() -> (isMovingFromStopped_impl (javaCast object_ :: UnitWaypointBehavior))) ()

isMovingFromStopped_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMovingFromStopped_super object_ = (isMovingFromStopped_impl (javaCast object_ :: UnitWaypointBehavior))

isMovingFromStopped_impl :: UnitWaypointBehavior -> IO (Bool)
isMovingFromStopped_impl this = do
        pure ((jget (this).movingFromStopped))


setMovingFromStopped :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMovingFromStopped object_ a1 = jmethod object_ "setMovingFromStopped" (\() -> (setMovingFromStopped_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setMovingFromStopped_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMovingFromStopped_super object_ a1 = (setMovingFromStopped_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setMovingFromStopped_impl :: UnitWaypointBehavior -> Bool -> IO (())
setMovingFromStopped_impl this movingFromStopped = do
        jset (this).movingFromStopped (movingFromStopped)
        pure ()


setWaypointPathsList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setWaypointPathsList object_ a1 = jmethod object_ "setWaypointPathsList" (\() -> (setWaypointPathsList_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setWaypointPathsList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setWaypointPathsList_super object_ a1 = (setWaypointPathsList_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setWaypointPathsList_impl :: UnitWaypointBehavior -> BasicArrayList.BasicArrayList -> IO (())
setWaypointPathsList_impl this waypointPathsList = do
        jset (this).waypointPathsListP (waypointPathsList)
        pure ()


getWaypointPathsList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWaypointPathsList object_ = jmethod object_ "getWaypointPathsList" (\() -> (getWaypointPathsList_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getWaypointPathsList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWaypointPathsList_super object_ = (getWaypointPathsList_impl (javaCast object_ :: UnitWaypointBehavior))

getWaypointPathsList_impl :: UnitWaypointBehavior -> IO (BasicArrayList.BasicArrayList)
getWaypointPathsList_impl this = do
        pure ((jget (this).waypointPathsListP))


isMoving :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMoving object_ = jmethod object_ "isMoving" (\() -> (isMoving_impl (javaCast object_ :: UnitWaypointBehavior))) ()

isMoving_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMoving_super object_ = (isMoving_impl (javaCast object_ :: UnitWaypointBehavior))

isMoving_impl :: UnitWaypointBehavior -> IO (Bool)
isMoving_impl this = do
        pure ((jget (this).moving))


setMoving :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMoving object_ a1 = jmethod object_ "setMoving" (\() -> (setMoving_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setMoving_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMoving_super object_ a1 = (setMoving_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setMoving_impl :: UnitWaypointBehavior -> Bool -> IO (())
setMoving_impl this moving = do
        jset (this).moving (moving)
        pure ()


isTrackingWaypoint :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTrackingWaypoint object_ = jmethod object_ "isTrackingWaypoint" (\() -> (isTrackingWaypoint_impl (javaCast object_ :: UnitWaypointBehavior))) ()

isTrackingWaypoint_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTrackingWaypoint_super object_ = (isTrackingWaypoint_impl (javaCast object_ :: UnitWaypointBehavior))

isTrackingWaypoint_impl :: UnitWaypointBehavior -> IO (Bool)
isTrackingWaypoint_impl this = do
        pure ((jget (this).trackingWaypoint))


getPossibleTargetList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPossibleTargetList object_ = jmethod object_ "getPossibleTargetList" (\() -> (getPossibleTargetList_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getPossibleTargetList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPossibleTargetList_super object_ = (getPossibleTargetList_impl (javaCast object_ :: UnitWaypointBehavior))

getPossibleTargetList_impl :: UnitWaypointBehavior -> IO (BasicArrayList.BasicArrayList)
getPossibleTargetList_impl this = do
        pure ((jget (this).possibleTargetList))


setLastPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setLastPathGeographicMapCellPosition object_ a1 = jmethod object_ "setLastPathGeographicMapCellPosition" (\() -> (setLastPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setLastPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setLastPathGeographicMapCellPosition_super object_ a1 = (setLastPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setLastPathGeographicMapCellPosition_impl :: UnitWaypointBehavior -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setLastPathGeographicMapCellPosition_impl this lastPathGeographicMapCellPosition = do
        jset (this).lastPathGeographicMapCellPosition (lastPathGeographicMapCellPosition)
        pure ()


getLastPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getLastPathGeographicMapCellPosition object_ = jmethod object_ "getLastPathGeographicMapCellPosition" (\() -> (getLastPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getLastPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getLastPathGeographicMapCellPosition_super object_ = (getLastPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior))

getLastPathGeographicMapCellPosition_impl :: UnitWaypointBehavior -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getLastPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).lastPathGeographicMapCellPosition))


setCurrentPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition object_ a1 = jmethod object_ "setCurrentPathGeographicMapCellPosition" (\() -> (setCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setCurrentPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition_super object_ a1 = (setCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setCurrentPathGeographicMapCellPosition_impl :: UnitWaypointBehavior -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition_impl this currentPathGeographicMapCellPosition = do
        jset (this).currentPathGeographicMapCellPosition (currentPathGeographicMapCellPosition)
        pure ()


getCurrentPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentPathGeographicMapCellPosition object_ = jmethod object_ "getCurrentPathGeographicMapCellPosition" (\() -> (getCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getCurrentPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentPathGeographicMapCellPosition_super object_ = (getCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior))

getCurrentPathGeographicMapCellPosition_impl :: UnitWaypointBehavior -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).currentPathGeographicMapCellPosition))


setSensorAction :: (JavaObjectClass this_) => this_ -> SensorAction.SensorAction -> IO (())
setSensorAction object_ a1 = jmethod object_ "setSensorAction" (\() -> (setSensorAction_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setSensorAction_super :: (JavaObjectClass this_) => this_ -> SensorAction.SensorAction -> IO (())
setSensorAction_super object_ a1 = (setSensorAction_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setSensorAction_impl :: UnitWaypointBehavior -> SensorAction.SensorAction -> IO (())
setSensorAction_impl this sensorAction = do
        jset (this).sensorAction (sensorAction)
        pure ()


getSensorAction :: (JavaObjectClass this_) => this_ -> IO (SensorAction.SensorAction)
getSensorAction object_ = jmethod object_ "getSensorAction" (\() -> (getSensorAction_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getSensorAction_super :: (JavaObjectClass this_) => this_ -> IO (SensorAction.SensorAction)
getSensorAction_super object_ = (getSensorAction_impl (javaCast object_ :: UnitWaypointBehavior))

getSensorAction_impl :: UnitWaypointBehavior -> IO (SensorAction.SensorAction)
getSensorAction_impl this = do
        pure ((jget (this).sensorAction))


setCurrentTargetLayerInterface :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setCurrentTargetLayerInterface object_ a1 = jmethod object_ "setCurrentTargetLayerInterface" (\() -> (setCurrentTargetLayerInterface_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setCurrentTargetLayerInterface_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setCurrentTargetLayerInterface_super object_ a1 = (setCurrentTargetLayerInterface_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setCurrentTargetLayerInterface_impl :: UnitWaypointBehavior -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setCurrentTargetLayerInterface_impl this currentTargetLayerInterface = do
        jset (this).currentTargetLayerInterfaceP (currentTargetLayerInterface)
        pure ()


getCurrentTargetLayerInterface :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getCurrentTargetLayerInterface object_ = jmethod object_ "getCurrentTargetLayerInterface" (\() -> (getCurrentTargetLayerInterface_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getCurrentTargetLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getCurrentTargetLayerInterface_super object_ = (getCurrentTargetLayerInterface_impl (javaCast object_ :: UnitWaypointBehavior))

getCurrentTargetLayerInterface_impl :: UnitWaypointBehavior -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getCurrentTargetLayerInterface_impl this = do
        pure ((jget (this).currentTargetLayerInterfaceP))


setCurrentTargetDistance :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentTargetDistance object_ a1 = jmethod object_ "setCurrentTargetDistance" (\() -> (setCurrentTargetDistance_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setCurrentTargetDistance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentTargetDistance_super object_ a1 = (setCurrentTargetDistance_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setCurrentTargetDistance_impl :: UnitWaypointBehavior -> Int -> IO (())
setCurrentTargetDistance_impl this currentTargetDistance = do
        jset (this).currentTargetDistance (currentTargetDistance)
        pure ()


getCurrentTargetDistance :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentTargetDistance object_ = jmethod object_ "getCurrentTargetDistance" (\() -> (getCurrentTargetDistance_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getCurrentTargetDistance_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentTargetDistance_super object_ = (getCurrentTargetDistance_impl (javaCast object_ :: UnitWaypointBehavior))

getCurrentTargetDistance_impl :: UnitWaypointBehavior -> IO (Int)
getCurrentTargetDistance_impl this = do
        pure ((jget (this).currentTargetDistance))


getCompleteTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getCompleteTimeDelayHelper object_ = jmethod object_ "getCompleteTimeDelayHelper" (\() -> (getCompleteTimeDelayHelper_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getCompleteTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getCompleteTimeDelayHelper_super object_ = (getCompleteTimeDelayHelper_impl (javaCast object_ :: UnitWaypointBehavior))

getCompleteTimeDelayHelper_impl :: UnitWaypointBehavior -> IO (TimeDelayHelper.TimeDelayHelper)
getCompleteTimeDelayHelper_impl this = do
        pure ((jget (this).completeTimeDelayHelper))


getCurrentGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getCurrentGeographicMapCellHistory object_ = jmethod object_ "getCurrentGeographicMapCellHistory" (\() -> (getCurrentGeographicMapCellHistory_impl (javaCast object_ :: UnitWaypointBehavior))) ()

getCurrentGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getCurrentGeographicMapCellHistory_super object_ = (getCurrentGeographicMapCellHistory_impl (javaCast object_ :: UnitWaypointBehavior))

getCurrentGeographicMapCellHistory_impl :: UnitWaypointBehavior -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getCurrentGeographicMapCellHistory_impl this = do
        pure ((jget (this).currentGeographicMapCellHistoryP))


setTrackingWaypoint :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setTrackingWaypoint object_ a1 = jmethod object_ "setTrackingWaypoint" (\() -> (setTrackingWaypoint_impl (javaCast object_ :: UnitWaypointBehavior))) () a1

setTrackingWaypoint_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setTrackingWaypoint_super object_ a1 = (setTrackingWaypoint_impl (javaCast object_ :: UnitWaypointBehavior)) a1

setTrackingWaypoint_impl :: UnitWaypointBehavior -> Bool -> IO (())
setTrackingWaypoint_impl this trackingWaypoint = do
        jset (this).trackingWaypoint (trackingWaypoint)
        pure ()


