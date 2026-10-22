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
module UnitWaypointBehavior2 (module UnitWaypointBehavior2, module UnitWaypointBehavior) where

import UnitWaypointBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initRange, initRange_super, initRange_impl, getNextUnvisitedPathGeographicMapCellPosition, getNextUnvisitedPathGeographicMapCellPosition_super, getNextUnvisitedPathGeographicMapCellPosition_impl, isRunning, isRunning_super, isRunning_impl, processTick, processTick_super, processTick_impl, onEnemyMovement, onEnemyMovement_super, onEnemyMovement_impl, processPossibleTarget, processPossibleTarget_super, processPossibleTarget_impl, teleportIfNoProgress, teleportIfNoProgress_super, teleportIfNoProgress_impl, setTarget, setTarget_super, setTarget_impl, setTargetPath, setTargetPath_super, setTargetPath_impl, setGeographicMapCellHistoryPath, setGeographicMapCellHistoryPath_super, setGeographicMapCellHistoryPath_impl, processWaypoint, processWaypoint_super, processWaypoint_impl, wander, wander_super, wander_impl, visitIfAtMidPoint, visitIfAtMidPoint_super, visitIfAtMidPoint_impl, processTargetList, processTargetList_super, processTargetList_impl, processTargeting, processTargeting_super, processTargeting_impl, updateCurrentPathGeographicMapCellPosition, updateCurrentPathGeographicMapCellPosition_super, updateCurrentPathGeographicMapCellPosition_impl, setWaypointPath, setWaypointPath_super, setWaypointPath_impl, runWaypointPathTask, runWaypointPathTask_super, runWaypointPathTask_impl, removeWaypoint, removeWaypoint_super, removeWaypoint_impl, clearTarget, clearTarget_super, clearTarget_impl, isWaypointListEmptyOrOnlyTargets, isWaypointListEmptyOrOnlyTargets_super, isWaypointListEmptyOrOnlyTargets_impl, isCloseRange, isCloseRange_super, isCloseRange_impl, isInSensorRange, isInSensorRange_super, isInSensorRange_impl, getCurrentTargetingStateString, getCurrentTargetingStateString_super, getCurrentTargetingStateString_impl, addWaypointFromUser, addWaypointFromUser_super, addWaypointFromUser_impl, addBuildingChase, addBuildingChase_super, addBuildingChase_impl, buildingChase, buildingChase_super, buildingChase_impl, logUtil, unitWaypointStrings, basicColorFactory, layerDistanceUtil, pathFindingThreadPool, progressTimeDelayHelper, wanderPathsList, waypointPathRunnable, sensorRange, closeRange, nextUnvisitedPathGeographicMapCellPosition, afterNextUnvisitedPathGeographicMapCellPosition, waitingOnTargetPath, waitingOnWaypointPath, targetWithoutCachedPathLayerInterface, runningWaypointPathList, tARGET_DISTANCE, tARGET_LAYER, buildingSteeringVisitor)
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
import qualified UnitWaypointStrings -- same package or java.lang
import qualified UnitLayer -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Waypoint2LogHelper -- same package or java.lang
import qualified GeographicMapCellHistory -- same package or java.lang
import qualified CommonSeps -- same package or java.lang
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified SteeringVisitor -- org.allbinary.game.layer.SteeringVisitor
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified MultipassWaypointPathRunnable -- org.allbinary.game.layer.MultipassWaypointPathRunnable
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified WaypointPathRunnable -- org.allbinary.game.layer.WaypointPathRunnable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified WaypointPathRunnableBase -- org.allbinary.game.layer.WaypointPathRunnableBase
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified WaypointBase -- org.allbinary.game.layer.waypoint.WaypointBase
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified LayerDistanceUtil -- org.allbinary.math.LayerDistanceUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified PathFindingThreadPool -- org.allbinary.thread.PathFindingThreadPool
import qualified ThreadPool -- org.allbinary.thread.ThreadPool
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified UnitWaypointBehavior

data UnitWaypointBehavior2 = UnitWaypointBehavior2
    { header_ :: JavaHeader
    , base :: UnitWaypointBehavior.UnitWaypointBehavior
    , logUtil :: IORef (LogUtil.LogUtil)
    , unitWaypointStrings :: IORef (UnitWaypointStrings.UnitWaypointStrings)
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , layerDistanceUtil :: IORef (LayerDistanceUtil.LayerDistanceUtil)
    , pathFindingThreadPool :: IORef (ThreadPool.ThreadPool)
    , progressTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , wanderPathsList :: IORef (BasicArrayList.BasicArrayList)
    , waypointPathRunnable :: IORef (WaypointPathRunnableBase.WaypointPathRunnableBase)
    , sensorRange :: IORef (Int)
    , closeRange :: IORef (Int)
    , nextUnvisitedPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , afterNextUnvisitedPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , waitingOnTargetPath :: IORef (Bool)
    , waitingOnWaypointPath :: IORef (Bool)
    , targetWithoutCachedPathLayerInterface :: IORef (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
    , buildingSteeringVisitor :: IORef (BuildingSteeringVisitor.BuildingSteeringVisitor)
    }

instance JavaNull UnitWaypointBehavior2 where
    javaNull = javaNullRecord "UnitWaypointBehavior2"

instance JavaEquals UnitWaypointBehavior2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitWaypointBehavior2 where
    (==) = jrecordEquals

instance JavaObjectClass UnitWaypointBehavior2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE runningWaypointPathList #-}
runningWaypointPathList = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)))

tARGET_DISTANCE = "Target Distance"

tARGET_LAYER = "Target Layer"

newRecord_ :: IO UnitWaypointBehavior2
newRecord_ = do
    base <- UnitWaypointBehavior.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    unitWaypointStrings <- newIORef javaNull
    basicColorFactory <- newIORef javaNull
    layerDistanceUtil <- newIORef javaNull
    pathFindingThreadPool <- newIORef javaNull
    progressTimeDelayHelper <- newIORef javaNull
    wanderPathsList <- newIORef javaNull
    waypointPathRunnable <- newIORef javaNull
    sensorRange <- newIORef 0
    closeRange <- newIORef 0
    nextUnvisitedPathGeographicMapCellPosition <- newIORef javaNull
    afterNextUnvisitedPathGeographicMapCellPosition <- newIORef javaNull
    waitingOnTargetPath <- newIORef False
    waitingOnWaypointPath <- newIORef False
    targetWithoutCachedPathLayerInterface <- newIORef javaNull
    buildingSteeringVisitor <- newIORef javaNull
    let this = UnitWaypointBehavior2 header_ base logUtil unitWaypointStrings basicColorFactory layerDistanceUtil pathFindingThreadPool progressTimeDelayHelper wanderPathsList waypointPathRunnable sensorRange closeRange nextUnvisitedPathGeographicMapCellPosition afterNextUnvisitedPathGeographicMapCellPosition waitingOnTargetPath waitingOnWaypointPath targetWithoutCachedPathLayerInterface buildingSteeringVisitor
    jregisterLevel header_ this
    jregisterMethod header_ "initRange" (\() -> initRange_impl this)
    jregisterMethod header_ "getNextUnvisitedPathGeographicMapCellPosition" (\() -> getNextUnvisitedPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "onEnemyMovement" (\() -> onEnemyMovement_impl this)
    jregisterMethod header_ "processPossibleTarget" (\() -> processPossibleTarget_impl this)
    jregisterMethod header_ "teleportIfNoProgress" (\() -> teleportIfNoProgress_impl this)
    jregisterMethod header_ "setTarget" (\() -> setTarget_impl this)
    jregisterMethod header_ "setTargetPath" (\() -> setTargetPath_impl this)
    jregisterMethod header_ "setGeographicMapCellHistoryPath" (\() -> setGeographicMapCellHistoryPath_impl this)
    jregisterMethod header_ "processWaypoint" (\() -> processWaypoint_impl this)
    jregisterMethod header_ "wander" (\() -> wander_impl this)
    jregisterMethod header_ "visitIfAtMidPoint" (\() -> visitIfAtMidPoint_impl this)
    jregisterMethod header_ "processTargetList" (\() -> processTargetList_impl this)
    jregisterMethod header_ "processTargeting" (\() -> processTargeting_impl this)
    jregisterMethod header_ "updateCurrentPathGeographicMapCellPosition" (\() -> updateCurrentPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setWaypointPath" (\() -> setWaypointPath_impl this)
    jregisterMethod header_ "runWaypointPathTask" (\() -> runWaypointPathTask_impl this)
    jregisterMethod header_ "removeWaypoint" (\() -> removeWaypoint_impl this)
    jregisterMethod header_ "clearTarget" (\() -> clearTarget_impl this)
    jregisterMethod header_ "isWaypointListEmptyOrOnlyTargets" (\() -> isWaypointListEmptyOrOnlyTargets_impl this)
    jregisterMethod header_ "isCloseRange" (\() -> isCloseRange_impl this)
    jregisterMethod header_ "isInSensorRange" (\() -> isInSensorRange_impl this)
    jregisterMethod header_ "getCurrentTargetingStateString" (\() -> getCurrentTargetingStateString_impl this)
    jregisterMethod header_ "addWaypointFromUser" (\() -> addWaypointFromUser_impl this)
    jregisterMethod header_ "addBuildingChase" (\() -> addBuildingChase_impl this)
    jregisterMethod header_ "buildingChase" (\() -> buildingChase_impl this)
    pure this

initFields_ :: UnitWaypointBehavior2 -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.unitWaypointStrings =<< (UnitWaypointStrings.getInstance)
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.layerDistanceUtil =<< (LayerDistanceUtil.getInstance)
    jset this.pathFindingThreadPool =<< (PathFindingThreadPool.getInstance)
    jset this.progressTimeDelayHelper (javaNull)
    jset this.wanderPathsList (javaNull)
    jset this.waypointPathRunnable (javaNull)
    jset this.sensorRange (0)
    jset this.closeRange (0)
    jset this.nextUnvisitedPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.afterNextUnvisitedPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.waitingOnTargetPath (False)
    jset this.waitingOnWaypointPath (False)
    jset this.targetWithoutCachedPathLayerInterface =<< (CollidableDestroyableDamageableLayer.getNullInstance)
    jset this.buildingSteeringVisitor =<< (BuildingSteeringVisitor.new_)
    pure ()

new_2 :: UnitLayer.UnitLayer -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO UnitWaypointBehavior2
new_2 ownerAdvancedRTSGameLayer fakeWaypoint = do
    this <- newRecord_
    init_2 this ownerAdvancedRTSGameLayer fakeWaypoint
    pure this

init_2 :: UnitWaypointBehavior2 -> UnitLayer.UnitLayer -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO ()
init_2 this ownerAdvancedRTSGameLayer fakeWaypoint = do
        UnitWaypointBehavior.init_2 this.base (ownerAdvancedRTSGameLayer) (fakeWaypoint)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (TimeDelayHelper.new_1 5000)
        jset (this).progressTimeDelayHelper (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).wanderPathsList (assignedValue)
        features <- (Features.getInstance)
        jset (this).waypointPathRunnable ((if (jio (J2MEUtil.isHTML)) then (jio (MultipassWaypointPathRunnable.new_)) else (jio (WaypointPathRunnable.new_))))
        pure ()


initRange :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initRange object_ a1 = jmethod object_ "initRange" (\() -> (initRange_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

initRange_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initRange_super object_ a1 = (initRange_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

initRange_impl :: UnitWaypointBehavior2 -> Int -> IO (())
initRange_impl this weaponRange = do
        Control.Monad.void (UnitWaypointBehavior.initRange_super this.base weaponRange)
        jset (this).closeRange (weaponRange)
        jset (this).sensorRange ((weaponRange * 4))
        Control.Monad.void (Waypoint2LogHelper.initRange ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (jget (this).closeRange) (jget (this).sensorRange))
        pure ()


getNextUnvisitedPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedPathGeographicMapCellPosition object_ = jmethod object_ "getNextUnvisitedPathGeographicMapCellPosition" (\() -> (getNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

getNextUnvisitedPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedPathGeographicMapCellPosition_super object_ = (getNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior2))

getNextUnvisitedPathGeographicMapCellPosition_impl :: UnitWaypointBehavior2 -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).nextUnvisitedPathGeographicMapCellPosition))


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: UnitWaypointBehavior2))

isRunning_impl :: UnitWaypointBehavior2 -> IO (Bool)
isRunning_impl this = do
    javaCatchReturn $ do
        if (jio (WaypointPathRunnableBase.isRunning ((jget (this).waypointPathRunnable)))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

processTick_impl :: UnitWaypointBehavior2 -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
    javaCatchReturn $ do
        when (jio (WaypointPathRunnableBase.isRunning ((jget (this).waypointPathRunnable)))) $ do
            if ((jget (this).base.waypointPathsListP) /= UnitWaypointBehavior2.runningWaypointPathList) then do
                Control.Monad.void (WaypointPathRunnableBase.setRunning ((jget (this).waypointPathRunnable)) False)
                if (jget (this).waitingOnTargetPath) then do
                    Control.Monad.void (UnitWaypointBehavior2.setTargetPath this)
                else if (jget (this).waitingOnWaypointPath) then do
                    Control.Monad.void (UnitWaypointBehavior2.setWaypointPath this (javaCast (jio (WaypointPathRunnableBase.getTargetLayer ((jget (this).waypointPathRunnable)))) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer))
                else do
                    javaThrow ((JavaException "Exception" "Should not happen"))
            else do
                javaReturn (())
        Control.Monad.void (UnitWaypointBehavior2.processTargetList this)
        if (Prelude.not (jio (WaypointPathRunnableBase.isRunning ((jget (this).waypointPathRunnable))))) then do
            Control.Monad.void (UnitWaypointBehavior2.processWaypoint this)
        else do
            javaReturn (())
        if (Prelude.not (jio (WaypointPathRunnableBase.isRunning ((jget (this).waypointPathRunnable))))) then do
            Control.Monad.void (UnitWaypointBehavior2.processTargeting this)
        else do
            javaReturn (())
        if (Prelude.not (jio (WaypointPathRunnableBase.isRunning ((jget (this).waypointPathRunnable))))) then do
            Control.Monad.void (UnitWaypointBehavior2.teleportIfNoProgress this)
        else do
            javaReturn (())
    pure ()


-- throws Exception
onEnemyMovement :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
onEnemyMovement object_ a1 = jmethod object_ "onEnemyMovement" (\() -> (onEnemyMovement_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

onEnemyMovement_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
onEnemyMovement_super object_ a1 = (onEnemyMovement_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

onEnemyMovement_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
onEnemyMovement_impl this layerInterface = do
        anotherTargetDistance <- (LayerDistanceUtil.getDistance ((jget (this).layerDistanceUtil)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast layerInterface))
        if ((jtoObject layerInterface) == (jtoObject (jget (this).base.currentTargetLayerInterfaceP))) then do
            Control.Monad.void (UnitWaypointBehavior.setCurrentTargetDistance this anotherTargetDistance)
        else do
            Control.Monad.void (UnitWaypointBehavior2.processPossibleTarget this layerInterface anotherTargetDistance)
        pure ()


-- throws Exception
processPossibleTarget :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (())
processPossibleTarget object_ a1 a2 = jmethod object_ "processPossibleTarget" (\() -> (processPossibleTarget_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

processPossibleTarget_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (())
processPossibleTarget_super object_ a1 a2 = (processPossibleTarget_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

processPossibleTarget_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (())
processPossibleTarget_impl this layerInterface anotherTargetDistance = do
        let isShorterThanCurrentTargetDistance = ((jio (UnitWaypointBehavior.getCurrentTargetDistance this)) > anotherTargetDistance)
        let isCurrentTargetDestroyed = (((jget (this).base.currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) && (jio (CollidableDestroyableDamageableLayer.isDestroyed ((jget (this).base.currentTargetLayerInterfaceP)))))
        Control.Monad.void (Waypoint2LogHelper.processPossibleTarget ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (javaCast layerInterface) anotherTargetDistance isShorterThanCurrentTargetDistance isCurrentTargetDestroyed)
        if (((jio (UnitWaypointBehavior2.isWaypointListEmptyOrOnlyTargets this)) && (jio (UnitWaypointBehavior2.isInSensorRange this (javaCast layerInterface) anotherTargetDistance))) && ((isShorterThanCurrentTargetDistance || isCurrentTargetDestroyed))) then do
            Control.Monad.void (Waypoint2LogHelper.processSetTarget ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (javaCast layerInterface) anotherTargetDistance)
            Control.Monad.void (UnitWaypointBehavior2.setTarget this layerInterface anotherTargetDistance)
        else when ((jio (UnitWaypointBehavior2.isCloseRange this layerInterface anotherTargetDistance)) && ((isShorterThanCurrentTargetDistance || isCurrentTargetDestroyed))) $ do
            Control.Monad.void (Waypoint2LogHelper.processPossibleTargetCloser ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (javaCast layerInterface) anotherTargetDistance)
            Control.Monad.void (UnitWaypointBehavior2.setTarget this layerInterface anotherTargetDistance)
        pure ()


-- throws Exception
teleportIfNoProgress :: (JavaObjectClass this_) => this_ -> IO (())
teleportIfNoProgress object_ = jmethod object_ "teleportIfNoProgress" (\() -> (teleportIfNoProgress_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

teleportIfNoProgress_super :: (JavaObjectClass this_) => this_ -> IO (())
teleportIfNoProgress_super object_ = (teleportIfNoProgress_impl (javaCast object_ :: UnitWaypointBehavior2))

teleportIfNoProgress_impl :: UnitWaypointBehavior2 -> IO (())
teleportIfNoProgress_impl this = do
        when ((jio (UnitWaypointBehavior.isTrackingWaypoint this)) || (jio (PathFindingLayerInterface.isDestroyed ((jio (UnitLayer.getParentLayer ((jget (this).base.associatedAdvancedRTSGameLayer)))))))) $ do
            when ((jio (TimeDelayHelper.isTimeTNT ((jget (this).progressTimeDelayHelper)))) && ((jget (this).nextUnvisitedPathGeographicMapCellPosition) /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)) $ do
                Control.Monad.void (UnitLayer.teleportTo ((jget (this).base.associatedAdvancedRTSGameLayer)) (jget (this).nextUnvisitedPathGeographicMapCellPosition))
            when (jio (TimeDelayHelper.isTimeTNT ((jio (UnitWaypointBehavior.getCompleteTimeDelayHelper this))))) $ do
                let geographicMapCellPosition = (javaCast (jio (GeographicMapCellHistory.get ((jio (GeographicMapCellHistory.getTracked ((jget (this).base.currentGeographicMapCellHistoryP))))) ((jio (GeographicMapCellHistory.getSize ((jget (this).base.currentGeographicMapCellHistoryP)))) - 1))) :: GeographicMapCellPosition.GeographicMapCellPosition)
                Control.Monad.void (UnitLayer.teleportTo ((jget (this).base.associatedAdvancedRTSGameLayer)) geographicMapCellPosition)
        pure ()


-- throws Exception
setTarget :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (())
setTarget object_ a1 a2 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

setTarget_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (())
setTarget_super object_ a1 a2 = (setTarget_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

setTarget_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (())
setTarget_impl this layerInterface anotherTargetDistance = do
        Control.Monad.void (Waypoint2LogHelper.setTarget ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (javaCast layerInterface) anotherTargetDistance)
        Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).tARGET) (jget ((jio (BasicColorFactory.getInstance))).gREEN))
        Control.Monad.void (UnitLayer.setLoad ((jget (this).base.associatedAdvancedRTSGameLayer)) 0)
        Control.Monad.void (UnitWaypointBehavior.setCurrentTargetDistance this anotherTargetDistance)
        Control.Monad.void (UnitWaypointBehavior.setCurrentTargetLayerInterface this (javaCast layerInterface))
        Control.Monad.void (UnitWaypointBehavior.setTrackingWaypoint this False)
        Control.Monad.void (BasicArrayList.clear ((jget (this).base.targetList)))
        when ((Prelude.not (jio (UnitWaypointBehavior2.isCloseRange this layerInterface anotherTargetDistance))) && (jio (UnitWaypointBehavior.canInsertWaypoint this 0 (jget (this).base.currentTargetLayerInterfaceP)))) $ do
            geographicMapCellPosition <- (UnitLayer.getCurrentGeographicMapCellPosition ((jget (this).base.associatedAdvancedRTSGameLayer)))
            let pathFindingLayerInterface = ((javaCast (jget (this).base.currentTargetLayerInterfaceP) :: PathFindingLayerInterface.PathFindingLayerInterface))
            waypoint <- (PathFindingLayerInterface.getWaypoint ((jio (PathFindingLayerInterface.getWaypointBehavior pathFindingLayerInterface))))
            list <- (WaypointBase.getPathsListFromCacheOnly waypoint geographicMapCellPosition)
            Control.Monad.void (UnitWaypointBehavior.setWaypointPathsList this list)
            if ((jget (this).base.waypointPathsListP) == javaNull) then do
                jset (this).targetWithoutCachedPathLayerInterface ((jget (this).base.currentTargetLayerInterfaceP))
            else when ((jio (BasicArrayList.size ((jget (this).base.waypointPathsListP)))) /= 0) $ do
                Control.Monad.void (UnitWaypointBehavior2.setTargetPath this)
        pure ()


-- throws Exception
setTargetPath :: (JavaObjectClass this_) => this_ -> IO (())
setTargetPath object_ = jmethod object_ "setTargetPath" (\() -> (setTargetPath_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

setTargetPath_super :: (JavaObjectClass this_) => this_ -> IO (())
setTargetPath_super object_ = (setTargetPath_impl (javaCast object_ :: UnitWaypointBehavior2))

setTargetPath_impl :: UnitWaypointBehavior2 -> IO (())
setTargetPath_impl this = do
    javaCatchReturn $ do
        when ((jget (this).base.currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) $ do
            when (jio (CollidableDestroyableDamageableLayer.isDestroyed ((jget (this).base.currentTargetLayerInterfaceP)))) $ do
                Control.Monad.void (Waypoint2LogHelper.setTargetPath ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
                Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).kILL) (jget ((jget (this).basicColorFactory)).oRANGE))
                Control.Monad.void (UnitWaypointBehavior2.clearTarget this)
                javaReturn (())
            when ((jtoObject (jget (this).base.currentTargetLayerInterfaceP)) == (jtoObject (jio (WaypointPathRunnableBase.getTargetLayer ((jget (this).waypointPathRunnable)))))) $ do
                Control.Monad.void (Waypoint2LogHelper.setTargetPathIgnoreNewPath ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this))
                Control.Monad.void (UnitWaypointBehavior.insertWaypoint this 0 (jget (this).base.currentTargetLayerInterfaceP))
                Control.Monad.void (UnitWaypointBehavior.setRandomGeographicMapCellHistory this (jget (this).base.waypointPathsListP))
    pure ()


-- throws Exception
setGeographicMapCellHistoryPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setGeographicMapCellHistoryPath object_ a1 = jmethod object_ "setGeographicMapCellHistoryPath" (\() -> (setGeographicMapCellHistoryPath_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

setGeographicMapCellHistoryPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setGeographicMapCellHistoryPath_super object_ a1 = (setGeographicMapCellHistoryPath_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

setGeographicMapCellHistoryPath_impl :: UnitWaypointBehavior2 -> BasicArrayList.BasicArrayList -> IO (())
setGeographicMapCellHistoryPath_impl this geographicMapCellPositionBasicArrayList = do
        Control.Monad.void (UnitWaypointBehavior.setCurrentPathGeographicMapCellPosition this (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION))
        jset (this).nextUnvisitedPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        Control.Monad.void (UnitWaypointBehavior.setGeographicMapCellHistoryPath_super this.base geographicMapCellPositionBasicArrayList)
        pure ()


-- throws Exception
processWaypoint :: (JavaObjectClass this_) => this_ -> IO (())
processWaypoint object_ = jmethod object_ "processWaypoint" (\() -> (processWaypoint_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

processWaypoint_super :: (JavaObjectClass this_) => this_ -> IO (())
processWaypoint_super object_ = (processWaypoint_impl (javaCast object_ :: UnitWaypointBehavior2))

processWaypoint_impl :: UnitWaypointBehavior2 -> IO (())
processWaypoint_impl this = do
    javaCatchReturn $ do
        size <- (BasicArrayList.size ((jget (this).base.targetList)))
        when (size > 0) $ do
            let targetLayer = (javaCast (jio (BasicArrayList.get ((jget (this).base.targetList)) 0)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            Control.Monad.void (Waypoint2LogHelper.processWaypoint ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (javaCast targetLayer) size)
            if (jio (AdvancedRTSGameLayer.isDestroyed targetLayer)) then do
                Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).wAYPOINT_DESTROYED_SHORT) (jget ((jget (this).basicColorFactory)).yELLOW))
                Control.Monad.void (UnitWaypointBehavior2.removeWaypoint this (javaCast targetLayer) (jget ((jget (this).unitWaypointStrings)).wAYPOINT_DESTROYED))
            else do
                geographicMapCellPosition <- (UnitLayer.getCurrentGeographicMapCellPosition ((jget (this).base.associatedAdvancedRTSGameLayer)))
                if (jio (UnitWaypointBehavior.isTrackingWaypoint this)) then do
                    Control.Monad.void (Waypoint2LogHelper.processWaypointTracked ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this))
                    when (jio (UnitWaypointBehavior2.visitIfAtMidPoint this geographicMapCellPosition)) $ do
                        Control.Monad.void (Waypoint2LogHelper.processWaypointTrackedVisit ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) geographicMapCellPosition)
                    when ((jio (GeographicMapCellHistory.isAllVisited2 ((jget (this).base.currentGeographicMapCellHistoryP)))) && ((jget (this).base.currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance)))) $ do
                        let oldWaypointLayer = (javaCast (jget (this).base.currentTargetLayerInterfaceP) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
                        Control.Monad.void (WaypointBase.visit ((jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior oldWaypointLayer)))))) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
                        Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).aLL_VISITED_SHORT) (jget ((jget (this).basicColorFactory)).gREEN))
                        Control.Monad.void (UnitWaypointBehavior2.removeWaypoint this (javaCast (jget (this).base.currentTargetLayerInterfaceP) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer) (jget ((jget (this).unitWaypointStrings)).aLL_VISITED))
                else when (((jget (this).base.currentTargetLayerInterfaceP) == javaNull) || (jget (this).base.base.waypointOverridesAttacking)) $ do
                    list <- (WaypointBase.getPathsListFromCacheOnly ((jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior targetLayer)))))) geographicMapCellPosition)
                    Control.Monad.void (UnitWaypointBehavior.setWaypointPathsList this list)
                    when ((jget (this).base.waypointPathsListP) == javaNull) $ do
                        jset (this).waitingOnWaypointPath (True)
                        Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).tHINKING) (jget ((jget (this).basicColorFactory)).gREEN))
                        Control.Monad.void (UnitWaypointBehavior2.runWaypointPathTask this targetLayer)
                        javaReturn (())
                    Control.Monad.void (UnitWaypointBehavior2.setWaypointPath this targetLayer)
    pure ()


-- throws Exception
wander :: (JavaObjectClass this_) => this_ -> IO (())
wander object_ = jmethod object_ "wander" (\() -> (wander_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

wander_super :: (JavaObjectClass this_) => this_ -> IO (())
wander_super object_ = (wander_impl (javaCast object_ :: UnitWaypointBehavior2))

wander_impl :: UnitWaypointBehavior2 -> IO (())
wander_impl this = do
        when (jio (GeographicMapCellHistory.isAllVisited2 ((jget (this).base.currentGeographicMapCellHistoryP)))) $ do
            Control.Monad.void (Waypoint2LogHelper.wander ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
            Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).wANDERING) (jget ((jget (this).basicColorFactory)).rED))
            Control.Monad.void (BasicArrayList.clear ((jget (this).wanderPathsList)))
            Control.Monad.void (BasicArrayList.add ((jget (this).wanderPathsList)) (jio (UnitLayer.getSurroundingGeographicMapCellPositionList ((jget (this).base.associatedAdvancedRTSGameLayer)))))
            Control.Monad.void (UnitWaypointBehavior.setRandomGeographicMapCellHistory this (jget (this).wanderPathsList))
        Control.Monad.void (UnitWaypointBehavior2.visitIfAtMidPoint this (jio (UnitWaypointBehavior.getCurrentPathGeographicMapCellPosition this)))
        Control.Monad.void (UnitWaypointBehavior2.updateCurrentPathGeographicMapCellPosition this)
        Control.Monad.void (UnitLayer.trackTo ((jget (this).base.associatedAdvancedRTSGameLayer)) (jget ((jget (this).unitWaypointStrings)).nEXT_PATH_NODE))
        pure ()


visitIfAtMidPoint :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
visitIfAtMidPoint object_ a1 = jmethod object_ "visitIfAtMidPoint" (\() -> (visitIfAtMidPoint_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

visitIfAtMidPoint_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
visitIfAtMidPoint_super object_ a1 = (visitIfAtMidPoint_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

visitIfAtMidPoint_impl :: UnitWaypointBehavior2 -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
visitIfAtMidPoint_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        let unitLayer = (jget (this).base.associatedAdvancedRTSGameLayer)
        when ((geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && ((jget (this).nextUnvisitedPathGeographicMapCellPosition) == geographicMapCellPosition)) $ do
            point <- (GeographicMapCellPosition.getMidPoint geographicMapCellPosition)
            afterNextPoint <- (GeographicMapCellPosition.getMidPoint ((jget (this).afterNextUnvisitedPathGeographicMapCellPosition)))
            beyondMidPoint <- newIORef (True)
            if ((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) == (jio (GeographicMapCellPosition.getColumn ((jget (this).afterNextUnvisitedPathGeographicMapCellPosition))))) then do
                pure ()
            else if ((jio (GPoint.getX point)) < (jio (GPoint.getX afterNextPoint))) then do
                when (((jio (UnitLayer.getXP unitLayer)) + (jio (UnitLayer.getHalfWidth unitLayer))) < (jio (GPoint.getX point))) $ do
                    jset beyondMidPoint (False)
            else do
                when (((jio (UnitLayer.getXP unitLayer)) + (jio (UnitLayer.getHalfWidth unitLayer))) > (jio (GPoint.getX point))) $ do
                    jset beyondMidPoint (False)
            if ((jio (GeographicMapCellPosition.getRow geographicMapCellPosition)) == (jio (GeographicMapCellPosition.getRow ((jget (this).afterNextUnvisitedPathGeographicMapCellPosition))))) then do
                pure ()
            else if ((jio (GPoint.getY point)) < (jio (GPoint.getY afterNextPoint))) then do
                when (((jio (UnitLayer.getYP unitLayer)) + (jio (UnitLayer.getHalfHeight unitLayer))) < (jio (GPoint.getY point))) $ do
                    jset beyondMidPoint (False)
            else do
                when (((jio (UnitLayer.getYP unitLayer)) + (jio (UnitLayer.getHalfHeight unitLayer))) > (jio (GPoint.getY point))) $ do
                    jset beyondMidPoint (False)
            when (jget beyondMidPoint) $ do
                javaReturn =<< (GeographicMapCellHistory.visit ((jget (this).base.currentGeographicMapCellHistoryP)) geographicMapCellPosition)
        pure (False)


-- throws Exception
processTargetList :: (JavaObjectClass this_) => this_ -> IO (())
processTargetList object_ = jmethod object_ "processTargetList" (\() -> (processTargetList_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

processTargetList_super :: (JavaObjectClass this_) => this_ -> IO (())
processTargetList_super object_ = (processTargetList_impl (javaCast object_ :: UnitWaypointBehavior2))

processTargetList_impl :: UnitWaypointBehavior2 -> IO (())
processTargetList_impl this = do
        assignedValue <- (CollidableDestroyableDamageableLayer.getNullInstance)
        jset (this).targetWithoutCachedPathLayerInterface (assignedValue)
        forM_ [((jio (BasicArrayList.size ((jio (UnitWaypointBehavior.getPossibleTargetList this))))) - 1), ((jio (BasicArrayList.size ((jio (UnitWaypointBehavior.getPossibleTargetList this))))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let layerInterface = (javaCast (jio (BasicArrayList.get ((jio (UnitWaypointBehavior.getPossibleTargetList this))) index)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            if (jio (AdvancedRTSGameLayer.isDestroyed layerInterface)) then do
                Control.Monad.void (BasicArrayList.remove ((jio (UnitWaypointBehavior.getPossibleTargetList this))) layerInterface)
            else do
                Control.Monad.void (UnitWaypointBehavior2.onEnemyMovement this layerInterface)
        when ((jget (this).targetWithoutCachedPathLayerInterface) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) $ do
            jset (this).waitingOnTargetPath (True)
            Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).tHINKING_ABOUT_TARGET) (jget ((jget (this).basicColorFactory)).gREEN))
            Control.Monad.void (UnitWaypointBehavior2.runWaypointPathTask this (javaCast (jget (this).base.currentTargetLayerInterfaceP) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer))
        Control.Monad.void (BasicArrayList.clear ((jio (UnitWaypointBehavior.getPossibleTargetList this))))
        pure ()


-- throws Exception
processTargeting :: (JavaObjectClass this_) => this_ -> IO (())
processTargeting object_ = jmethod object_ "processTargeting" (\() -> (processTargeting_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

processTargeting_super :: (JavaObjectClass this_) => this_ -> IO (())
processTargeting_super object_ = (processTargeting_impl (javaCast object_ :: UnitWaypointBehavior2))

processTargeting_impl :: UnitWaypointBehavior2 -> IO (())
processTargeting_impl this = do
    javaCatchReturn $ do
        if (((jget (this).base.currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) && (((jio (UnitWaypointBehavior2.isInSensorRange this (jget (this).base.currentTargetLayerInterfaceP) (jio (UnitWaypointBehavior.getCurrentTargetDistance this)))) || (jio (UnitWaypointBehavior.isTrackingWaypoint this))))) then do
            when (jio (CollidableDestroyableDamageableLayer.isDestroyed ((jget (this).base.currentTargetLayerInterfaceP)))) $ do
                Control.Monad.void (Waypoint2LogHelper.targetDestroyed ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
                Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).kILL) (jget ((jget (this).basicColorFactory)).oRANGE))
                Control.Monad.void (UnitWaypointBehavior2.clearTarget this)
                javaReturn (())
            dx <- newIORef (0)
            dy <- newIORef (0)
            if (jio (UnitWaypointBehavior.isTrackingWaypoint this)) then do
                Control.Monad.void (UnitWaypointBehavior2.updateCurrentPathGeographicMapCellPosition this)
                point <- (GeographicMapCellPosition.getMidPoint ((jget (this).nextUnvisitedPathGeographicMapCellPosition)))
                jset dx ((((jio (UnitLayer.getXP ((jget (this).base.associatedAdvancedRTSGameLayer)))) + (jio (UnitLayer.getHalfWidth ((jget (this).base.associatedAdvancedRTSGameLayer))))) - (jio (GPoint.getX point))))
                jset dy ((((jio (UnitLayer.getYP ((jget (this).base.associatedAdvancedRTSGameLayer)))) + (jio (UnitLayer.getHalfHeight ((jget (this).base.associatedAdvancedRTSGameLayer))))) - (jio (GPoint.getY point))))
                Control.Monad.void (Waypoint2LogHelper.processTargeting ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (jget dx) (jget dy))
            else do
                Control.Monad.void (Waypoint2LogHelper.processTargetingNonWayPoint ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (jget dx) (jget dy))
                jset dx (((((jio (UnitLayer.getXP ((jget (this).base.associatedAdvancedRTSGameLayer)))) + (jio (UnitLayer.getHalfWidth ((jget (this).base.associatedAdvancedRTSGameLayer)))))) - (((jio (CollidableDestroyableDamageableLayer.getXP ((jget (this).base.currentTargetLayerInterfaceP)))) + (jio (CollidableDestroyableDamageableLayer.getHalfWidth ((jget (this).base.currentTargetLayerInterfaceP))))))))
                jset dy (((((jio (UnitLayer.getYP ((jget (this).base.associatedAdvancedRTSGameLayer)))) + (jio (UnitLayer.getHalfHeight ((jget (this).base.associatedAdvancedRTSGameLayer)))))) - (((jio (CollidableDestroyableDamageableLayer.getYP ((jget (this).base.currentTargetLayerInterfaceP)))) + (jio (CollidableDestroyableDamageableLayer.getHalfHeight ((jget (this).base.currentTargetLayerInterfaceP))))))))
            Control.Monad.void (UnitLayer.trackToDXY ((jget (this).base.associatedAdvancedRTSGameLayer)) (jget dx) (jget dy))
        else do
            if (jio (PathFindingLayerInterface.isDestroyed ((jio (UnitLayer.getParentLayer ((jget (this).base.associatedAdvancedRTSGameLayer))))))) then do
                Control.Monad.void (UnitWaypointBehavior2.wander this)
            else do
                when (jget ((jget (this).base.associatedAdvancedRTSGameLayer)).showMoreCaptionStates) $ do
                    Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).sTOP) (jget ((jget (this).basicColorFactory)).yELLOW))
                Control.Monad.void (UnitLayer.allStop ((jget (this).base.associatedAdvancedRTSGameLayer)))
    pure ()


updateCurrentPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (())
updateCurrentPathGeographicMapCellPosition object_ = jmethod object_ "updateCurrentPathGeographicMapCellPosition" (\() -> (updateCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

updateCurrentPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (())
updateCurrentPathGeographicMapCellPosition_super object_ = (updateCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: UnitWaypointBehavior2))

updateCurrentPathGeographicMapCellPosition_impl :: UnitWaypointBehavior2 -> IO (())
updateCurrentPathGeographicMapCellPosition_impl this = do
        Control.Monad.void (UnitWaypointBehavior.setLastPathGeographicMapCellPosition this (jio (UnitWaypointBehavior.getCurrentPathGeographicMapCellPosition this)))
        Control.Monad.void (UnitWaypointBehavior.setCurrentPathGeographicMapCellPosition this (jget (this).nextUnvisitedPathGeographicMapCellPosition))
        assignedValue <- (GeographicMapCellHistory.getFirstUnvisited ((jget (this).base.currentGeographicMapCellHistoryP)))
        jset (this).nextUnvisitedPathGeographicMapCellPosition (assignedValue)
        assignedValue <- (GeographicMapCellHistory.getAfterIfNotLast ((jget (this).base.currentGeographicMapCellHistoryP)) (jget (this).nextUnvisitedPathGeographicMapCellPosition))
        jset (this).afterNextUnvisitedPathGeographicMapCellPosition (assignedValue)
        when ((jio (UnitWaypointBehavior.getCurrentPathGeographicMapCellPosition this)) /= (jget (this).nextUnvisitedPathGeographicMapCellPosition)) $ do
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).progressTimeDelayHelper)))
        pure ()


-- throws Exception
setWaypointPath :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
setWaypointPath object_ a1 = jmethod object_ "setWaypointPath" (\() -> (setWaypointPath_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

setWaypointPath_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
setWaypointPath_super object_ a1 = (setWaypointPath_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

setWaypointPath_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
setWaypointPath_impl this waypointLayer = do
        if ((jio (BasicArrayList.size ((jget (this).base.waypointPathsListP)))) /= 0) then do
            Control.Monad.void (UnitWaypointBehavior.setCurrentTargetLayerInterface this (javaCast waypointLayer))
            let mAX = (2147483647 :: Int)
            Control.Monad.void (UnitWaypointBehavior.setCurrentTargetDistance this mAX)
            Control.Monad.void (UnitWaypointBehavior.setRandomGeographicMapCellHistory this (jget (this).base.waypointPathsListP))
        else do
            Control.Monad.void (WaypointBase.visit ((jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior waypointLayer)))))) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
            Control.Monad.void (CaptionAnimationHelperBase.update ((jio (UnitLayer.getCaptionAnimationHelper ((jget (this).base.associatedAdvancedRTSGameLayer))))) (jget ((jget (this).unitWaypointStrings)).aLREADY_THERE_SHORT) (jget ((jget (this).basicColorFactory)).yELLOW))
            Control.Monad.void (UnitWaypointBehavior2.removeWaypoint this (javaCast waypointLayer) (jget ((jget (this).unitWaypointStrings)).aLREADY_THERE))
        pure ()


-- throws Exception
runWaypointPathTask :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
runWaypointPathTask object_ a1 = jmethod object_ "runWaypointPathTask" (\() -> (runWaypointPathTask_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

runWaypointPathTask_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
runWaypointPathTask_super object_ a1 = (runWaypointPathTask_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

runWaypointPathTask_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
runWaypointPathTask_impl this waypointLayer = do
        Control.Monad.void (UnitWaypointBehavior.setWaypointPathsList this (UnitWaypointBehavior2.runningWaypointPathList))
        when (jio (WaypointPathRunnableBase.isRunning ((jget (this).waypointPathRunnable)))) $ do
            javaThrow ((JavaException "Exception" "Should never be running here"))
        Control.Monad.void (WaypointPathRunnableBase.setRunning ((jget (this).waypointPathRunnable)) True)
        Control.Monad.void (WaypointPathRunnableBase.setUnitLayer ((jget (this).waypointPathRunnable)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
        Control.Monad.void (WaypointPathRunnableBase.setTargetLayer ((jget (this).waypointPathRunnable)) (javaCast waypointLayer))
        Control.Monad.void (ThreadPool.runTask ((jget (this).pathFindingThreadPool)) (javaCast (jget (this).waypointPathRunnable)))
        pure ()


-- throws Exception
removeWaypoint :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> String -> IO (())
removeWaypoint object_ a1 a2 = jmethod object_ "removeWaypoint" (\() -> (removeWaypoint_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

removeWaypoint_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> String -> IO (())
removeWaypoint_super object_ a1 a2 = (removeWaypoint_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

removeWaypoint_impl :: UnitWaypointBehavior2 -> RTSLayer.RTSLayer -> String -> IO (())
removeWaypoint_impl this waypointLayer reason = do
        Control.Monad.void (Waypoint2LogHelper.removeWaypoint ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (javaCast waypointLayer) reason)
        Control.Monad.void (BasicArrayList.remove ((jget (this).base.targetList)) waypointLayer)
        Control.Monad.void (Waypoint2LogHelper.removeWaypointList ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast this) (jget (this).base.targetList))
        when ((jtoObject (jget (this).base.currentTargetLayerInterfaceP)) == (jtoObject waypointLayer)) $ do
            Control.Monad.void (Waypoint2LogHelper.removeWaypointClear ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
            Control.Monad.void (UnitWaypointBehavior2.clearTarget this)
        pure ()


-- throws Exception
clearTarget :: (JavaObjectClass this_) => this_ -> IO (())
clearTarget object_ = jmethod object_ "clearTarget" (\() -> (clearTarget_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

clearTarget_super :: (JavaObjectClass this_) => this_ -> IO (())
clearTarget_super object_ = (clearTarget_impl (javaCast object_ :: UnitWaypointBehavior2))

clearTarget_impl :: UnitWaypointBehavior2 -> IO (())
clearTarget_impl this = do
        Control.Monad.void (Waypoint2LogHelper.clearTarget ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)))
        Control.Monad.void (UnitWaypointBehavior.setCurrentTargetLayerInterface this (jio (CollidableDestroyableDamageableLayer.getNullInstance)))
        Control.Monad.void (UnitWaypointBehavior.setTrackingWaypoint this False)
        let mAX = (2147483647 :: Int)
        Control.Monad.void (UnitWaypointBehavior.setCurrentTargetDistance this mAX)
        Control.Monad.void (TrackingEventHandler.fireEvent ((jio (TrackingEventHandler.getInstance))) (javaCast (jio (UnitLayer.getTrackingEvent ((jget (this).base.associatedAdvancedRTSGameLayer))))))
        pure ()


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: UnitWaypointBehavior2))

isWaypointListEmptyOrOnlyTargets_impl :: UnitWaypointBehavior2 -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = do
    javaCatchReturn $ do
        let list = (jget (this).base.targetList)
        when ((jio (BasicArrayList.size list)) == 0) $ do
            javaReturn (True)
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let layerInterface = (javaCast (jio (BasicArrayList.get list index)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            when (jio (AdvancedRTSGameLayer.isWaypointListEmptyOrOnlyTargets layerInterface)) $ do
                javaReturn (False)
        pure (True)


isCloseRange :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (Bool)
isCloseRange object_ a1 a2 = jmethod object_ "isCloseRange" (\() -> (isCloseRange_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

isCloseRange_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (Bool)
isCloseRange_super object_ a1 a2 = (isCloseRange_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

isCloseRange_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> Int -> IO (Bool)
isCloseRange_impl this layerInterface targetDistance = do
        pure ((targetDistance < ((jget (this).closeRange) + (jio (AdvancedRTSGameLayer.getHalfHeight layerInterface)))))


isInSensorRange :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (Bool)
isInSensorRange object_ a1 a2 = jmethod object_ "isInSensorRange" (\() -> (isInSensorRange_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

isInSensorRange_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (Bool)
isInSensorRange_super object_ a1 a2 = (isInSensorRange_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

isInSensorRange_impl :: UnitWaypointBehavior2 -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (Bool)
isInSensorRange_impl this layerInterface targetDistance = do
        pure ((targetDistance < ((jget (this).sensorRange) + (jio (CollidableDestroyableDamageableLayer.getHalfHeight layerInterface)))))


getCurrentTargetingStateString :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentTargetingStateString object_ = jmethod object_ "getCurrentTargetingStateString" (\() -> (getCurrentTargetingStateString_impl (javaCast object_ :: UnitWaypointBehavior2))) ()

getCurrentTargetingStateString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentTargetingStateString_super object_ = (getCurrentTargetingStateString_impl (javaCast object_ :: UnitWaypointBehavior2))

getCurrentTargetingStateString_impl :: UnitWaypointBehavior2 -> IO (String)
getCurrentTargetingStateString_impl this = do
        stringBuffer <- (StringMaker.new_)
        when ((jget (this).base.currentTargetLayerInterfaceP) /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (UnitWaypointBehavior2.tARGET_LAYER))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.commonSeps)).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableDestroyableDamageableLayer.getName ((jget (this).base.currentTargetLayerInterfaceP)))))
            Control.Monad.void (StringMaker.append stringBuffer " with ")
            Control.Monad.void (StringMaker.append stringBuffer (UnitWaypointBehavior2.tARGET_DISTANCE))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.commonSeps)).sPACE))
            Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (UnitWaypointBehavior.getCurrentTargetDistance this)))))
        (StringMaker.toString stringBuffer)


-- throws Exception
addWaypointFromUser :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromUser object_ a1 = jmethod object_ "addWaypointFromUser" (\() -> (addWaypointFromUser_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1

addWaypointFromUser_super :: (JavaObjectClass this_) => this_ -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromUser_super object_ a1 = (addWaypointFromUser_impl (javaCast object_ :: UnitWaypointBehavior2)) a1

addWaypointFromUser_impl :: UnitWaypointBehavior2 -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
addWaypointFromUser_impl this advancedRTSGameLayer = do
        when (jio (AdvancedRTSGameLayer.isDestroyed advancedRTSGameLayer)) $ do
            javaThrow ((JavaException "Exception" ("Trying to add a dead: " ++ javaToString advancedRTSGameLayer)))
        Control.Monad.void (Waypoint2LogHelper.addWaypointFromUser ((jget ((jget (this).base.associatedAdvancedRTSGameLayer)).waypoint2LogHelperP)) (javaCast (jget (this).base.associatedAdvancedRTSGameLayer)) (javaCast advancedRTSGameLayer))
        Control.Monad.void (BasicArrayList.clear ((jget (this).base.targetList)))
        Control.Monad.void (BasicArrayList.add ((jget (this).base.targetList)) advancedRTSGameLayer)
        Control.Monad.void (UnitWaypointBehavior2.clearTarget this)
        pure ()


-- throws Exception
addBuildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addBuildingChase object_ a1 a2 = jmethod object_ "addBuildingChase" (\() -> (addBuildingChase_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

addBuildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addBuildingChase_super object_ a1 a2 = (addBuildingChase_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

addBuildingChase_impl :: UnitWaypointBehavior2 -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addBuildingChase_impl this allbinaryLayer cellPosition = do
        when (Prelude.not (jio (BuildingSteeringVisitor.contains ((jio (BuildingSteeringVisitor.getList ((jget (this).buildingSteeringVisitor))))) allbinaryLayer))) $ do
            Control.Monad.void (BuildingSteeringVisitor.add ((jio (BuildingSteeringVisitor.getList ((jget (this).buildingSteeringVisitor))))) allbinaryLayer)
            Control.Monad.void (BasicArrayList.add ((jio (BuildingSteeringVisitor.getPositionList ((jget (this).buildingSteeringVisitor))))) cellPosition)
        when (Prelude.not (jio (BasicArrayList.contains ((jio (UnitWaypointBehavior.getSteeringVisitorList this))) (jget (this).buildingSteeringVisitor)))) $ do
            Control.Monad.void (BasicArrayList.add ((jio (UnitWaypointBehavior.getSteeringVisitorList this))) (jget (this).buildingSteeringVisitor))
        pure ()


-- throws Exception
buildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase object_ a1 a2 = jmethod object_ "buildingChase" (\() -> (buildingChase_impl (javaCast object_ :: UnitWaypointBehavior2))) () a1 a2

buildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_super object_ a1 a2 = (buildingChase_impl (javaCast object_ :: UnitWaypointBehavior2)) a1 a2

buildingChase_impl :: UnitWaypointBehavior2 -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_impl this allbinaryLayer cellPosition = do
        (UnitLayer.buildingChase ((jget (this).base.associatedAdvancedRTSGameLayer)) allbinaryLayer cellPosition)

-- Java nested class BuildingSteeringVisitor: move it to its own module BuildingSteeringVisitor

