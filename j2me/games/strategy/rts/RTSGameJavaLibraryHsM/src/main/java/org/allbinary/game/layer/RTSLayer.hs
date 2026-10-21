{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module RTSLayer (module RTSLayer, module MultiPlayerGameLayer) where

import MultiPlayerGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createSimulatedInstance, createSimulatedInstance_super, createSimulatedInstance_impl, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, updateWaypointBehavior, updateWaypointBehavior_super, updateWaypointBehavior_impl, construct, construct_super, construct_impl, select, select_super, select_impl, deselect, deselect_super, deselect_impl, setSelected, setSelected_super, setSelected_impl, isSelected, isSelected_super, isSelected_impl, getPercentComplete, getPercentComplete_super, getPercentComplete_impl, getScrollSelectionForm, getScrollSelectionForm_super, getScrollSelectionForm_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, processBuiltTick, processBuiltTick_super, processBuiltTick_impl, processTick, processTick_super, processTick_impl, processInput, processInput_super, processInput_impl, reload, reload_super, reload_impl, onMovement, onMovement_super, onMovement_impl, onMovementFound, onMovementFound_super, onMovementFound_impl, paint, paint_super, paint_impl, damage, damage_super, damage_impl, getSourceId, getSourceId_super, getSourceId_impl, downgrade, downgrade_super, downgrade_impl, upgrade, upgrade_super, upgrade_impl, isCompleted, isCompleted_super, isCompleted_impl, build, build_super, build_impl, isSelfUpgradeable, isSelfUpgradeable_super, isSelfUpgradeable_impl, getCost, getCost_super, getCost_impl, getDowngradeCost, getDowngradeCost_super, getDowngradeCost_impl, getUpgradeCost, getUpgradeCost_super, getUpgradeCost_impl, isUpgradeable, isUpgradeable_super, isUpgradeable_impl, isDowngradeable, isDowngradeable_super, isDowngradeable_impl, getLevel, getLevel_super, getLevel_impl, setLevel, setLevel_super, setLevel_impl, getVerticleBuildAnimationInterface, getVerticleBuildAnimationInterface_super, getVerticleBuildAnimationInterface_impl, getAnimationInterface, getAnimationInterface_super, getAnimationInterface_impl, setAnimationInterface, setAnimationInterface_super, setAnimationInterface_impl, setTarget, setTarget_super, setTarget_impl, createHudPaintable, createHudPaintable_super, createHudPaintable_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, getMaxLevel, getMaxLevel_super, getMaxLevel_impl, setMaxLevel, setMaxLevel_super, setMaxLevel_impl, getHealthInterface, getHealthInterface_super, getHealthInterface_impl, setHealthInterface, setHealthInterface_super, setHealthInterface_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, getEndGeographicMapCellPositionList, getEndGeographicMapCellPositionList_super, getEndGeographicMapCellPositionList_impl, getGeographicMapCellPositionArea, getGeographicMapCellPositionArea_super, getGeographicMapCellPositionArea_impl, shouldHandleStartSameAsEnd, shouldHandleStartSameAsEnd_super, shouldHandleStartSameAsEnd_impl, handleCost, handleCost_super, handleCost_impl, getWaypointBehavior, getWaypointBehavior_super, getWaypointBehavior_impl, getParentLayer, getParentLayer_super, getParentLayer_impl, getRTSLayer2LogHelper, getRTSLayer2LogHelper_super, getRTSLayer2LogHelper_impl, getWaypointLogHelper, getWaypointLogHelper_super, getWaypointLogHelper_impl, getWaypoint2LogHelper, getWaypoint2LogHelper_super, getWaypoint2LogHelper_impl, getWaypointRunnableLogHelper, getWaypointRunnableLogHelper_super, getWaypointRunnableLogHelper_impl, shouldAddWaypointFromBuilding, shouldAddWaypointFromBuilding_super, shouldAddWaypointFromBuilding_impl, getCaptionAnimationHelper, getCaptionAnimationHelper_super, getCaptionAnimationHelper_impl, isShowMoreCaptionStates, isShowMoreCaptionStates_super, isShowMoreCaptionStates_impl, init, init_super, init_impl, getCurrentGeographicMapCellPosition, getCurrentGeographicMapCellPosition_super, getCurrentGeographicMapCellPosition_impl, getTopLeftGeographicMapCellPosition, getTopLeftGeographicMapCellPosition_super, getTopLeftGeographicMapCellPosition_impl, getMoveOutOfBuildAreaPath, getMoveOutOfBuildAreaPath_super, getMoveOutOfBuildAreaPath_impl, setClosestGeographicMapCellHistory, setClosestGeographicMapCellHistory_super, setClosestGeographicMapCellHistory_impl, teleportTo, teleportTo_super, teleportTo_impl, setLoad, setLoad_super, setLoad_impl, getSurroundingGeographicMapCellPositionList, getSurroundingGeographicMapCellPositionList_super, getSurroundingGeographicMapCellPositionList_impl, trackTo, trackTo_super, trackTo_impl, trackToDXY, trackToDXY_super, trackToDXY_impl, isWaypointListEmptyOrOnlyTargets, isWaypointListEmptyOrOnlyTargets_super, isWaypointListEmptyOrOnlyTargets_impl, getTrackingEvent, getTrackingEvent_super, getTrackingEvent_impl, buildingChase, buildingChase_super, buildingChase_impl, allStop, allStop_super, allStop_impl, getMinStaticType, getMinStaticType_super, getMinStaticType_impl, getMaxStaticType, getMaxStaticType_super, getMaxStaticType_impl, isRTSLayer, isRTSLayer_super, isRTSLayer_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, getRootName, getRootName_super, getRootName_impl, getRotationAnimationInterface, getRotationAnimationInterface_super, getRotationAnimationInterface_impl, setFrame, setFrame_super, setFrame_impl, setRotationAnimationInterface, setRotationAnimationInterface_super, setRotationAnimationInterface_impl, debug, showMoreCaptionStates, inputProcessorArray, rtsLayer2LogHelper, waypointLogHelperP, waypoint2LogHelperP, waypointRunnableLogHelperP, rtsFormInput, verticleBuildAnimationInterface, rangeAnimation, initRangeAnimation, sensorRangeAnimation, initSensorRangeAnimation, baseAnimationInterface, buildFrameTimeHelper, buildAnimationInterface, animationInterface, initAnimationInterface, indexedButShouldBeRotationAnimationInterface, emptyAnimationInterface, destroyAnimationInterface, fireTimeHelper, rootName, hashtable, bUILD_VALUE, geographicMapCellPositionAreaBase, healthInterface, id, level, maxLevel, hackVerticleBuild, slightAngle, mAIN_INDEX, sECONDARY_INDEX, percentCompleteP, destroyed, selected, rtsLayerUtil, layerDistanceUtil)
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
import qualified RTSLayer2LogHelper -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified GeographicMapCellPositionAreaBase -- same package or java.lang
import qualified GeographicMapCellPositionArea -- same package or java.lang
import qualified AllBinaryTiledLayer -- same package or java.lang
import qualified AllBinaryGameLayerManager -- same package or java.lang
import qualified RTSPlayerLayerInterface -- same package or java.lang
import qualified RTSLayerUtil -- same package or java.lang
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified SelectionHudPaintable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified MultiPlayerGameLayer -- org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified NullIndexedAnimationFactory -- org.allbinary.animation.NullIndexedAnimationFactory
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified CaptionAnimationHelperBase -- org.allbinary.animation.caption.CaptionAnimationHelperBase
import qualified DestroyedLayerProcessor -- org.allbinary.game.combat.destroy.DestroyedLayerProcessor
import qualified Health -- org.allbinary.game.health.Health
import qualified Group -- org.allbinary.game.identification.Group
import qualified GroupFactory -- org.allbinary.game.identification.GroupFactory
import qualified GameInputInterface -- org.allbinary.game.input.GameInputInterface
import qualified GameInputProcessor -- org.allbinary.game.input.GameInputProcessor
import qualified GameInputProcessorUtil -- org.allbinary.game.input.GameInputProcessorUtil
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified NullRTSFormInputFactory -- org.allbinary.game.input.form.NullRTSFormInputFactory
import qualified Waypoint2LogHelper -- org.allbinary.game.layer.waypoint.Waypoint2LogHelper
import qualified WaypointLogHelper -- org.allbinary.game.layer.waypoint.WaypointLogHelper
import qualified WaypointRunnableLogHelper -- org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified TileLayerPositionIntoViewPosition -- org.allbinary.game.view.TileLayerPositionIntoViewPosition
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ViewPositionEventHandler -- org.allbinary.view.event.ViewPositionEventHandler
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LayerDistanceUtil -- org.allbinary.math.LayerDistanceUtil
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified RTSInterface
import qualified PathFindingLayerInterface

-- implements TickableInterface
-- implements GameInputInterface
-- implements GameKeyEventSourceInterface
-- implements RTSInterface
-- implements PathFindingLayerInterface
data RTSLayer = RTSLayer
    { header_ :: JavaHeader
    , base :: MultiPlayerGameLayer.MultiPlayerGameLayer
    , debug :: IORef (Bool)
    , showMoreCaptionStates :: IORef (Bool)
    , inputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , rtsLayer2LogHelper :: IORef (RTSLayer2LogHelper.RTSLayer2LogHelper)
    , waypointLogHelperP :: IORef (WaypointLogHelper.WaypointLogHelper)
    , waypoint2LogHelperP :: IORef (Waypoint2LogHelper.Waypoint2LogHelper)
    , waypointRunnableLogHelperP :: IORef (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
    , rtsFormInput :: IORef (RTSFormInput.RTSFormInput)
    , verticleBuildAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , rangeAnimation :: IORef (Animation.Animation)
    , initRangeAnimation :: IORef (Animation.Animation)
    , sensorRangeAnimation :: IORef (Animation.Animation)
    , initSensorRangeAnimation :: IORef (Animation.Animation)
    , baseAnimationInterface :: IORef (Animation.Animation)
    , buildFrameTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , buildAnimationInterface :: IORef (Animation.Animation)
    , animationInterface :: IORef (Animation.Animation)
    , initAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , indexedButShouldBeRotationAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , emptyAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , destroyAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , fireTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , rootName :: IORef (String)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , bUILD_VALUE :: IORef (Int)
    , geographicMapCellPositionAreaBase :: IORef (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
    , healthInterface :: IORef (Health.Health)
    , level :: IORef (Int)
    , maxLevel :: IORef (Int)
    , hackVerticleBuild :: IORef (Int)
    , slightAngle :: IORef (Int)
    , percentCompleteP :: IORef (Int)
    , destroyed :: IORef (Bool)
    , selected :: IORef (Bool)
    , rtsLayerUtil :: IORef (RTSLayerUtil.RTSLayerUtil)
    , layerDistanceUtil :: IORef (LayerDistanceUtil.LayerDistanceUtil)
    }

instance JavaNull RTSLayer where
    javaNull = javaNullRecord "RTSLayer"

instance JavaEquals RTSLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayer where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

id = 0

mAIN_INDEX = 0

sECONDARY_INDEX = 1

newRecord_ :: IO RTSLayer
newRecord_ = do
    base <- MultiPlayerGameLayer.newRecord_
    let header_ = base.header_
    debug <- newIORef False
    showMoreCaptionStates <- newIORef False
    inputProcessorArray <- newIORef javaNull
    rtsLayer2LogHelper <- newIORef javaNull
    waypointLogHelperP <- newIORef javaNull
    waypoint2LogHelperP <- newIORef javaNull
    waypointRunnableLogHelperP <- newIORef javaNull
    rtsFormInput <- newIORef javaNull
    verticleBuildAnimationInterface <- newIORef javaNull
    rangeAnimation <- newIORef javaNull
    initRangeAnimation <- newIORef javaNull
    sensorRangeAnimation <- newIORef javaNull
    initSensorRangeAnimation <- newIORef javaNull
    baseAnimationInterface <- newIORef javaNull
    buildFrameTimeHelper <- newIORef javaNull
    buildAnimationInterface <- newIORef javaNull
    animationInterface <- newIORef javaNull
    initAnimationInterface <- newIORef javaNull
    indexedButShouldBeRotationAnimationInterface <- newIORef javaNull
    emptyAnimationInterface <- newIORef javaNull
    destroyAnimationInterface <- newIORef javaNull
    fireTimeHelper <- newIORef javaNull
    rootName <- newIORef ""
    hashtable <- newIORef javaNull
    bUILD_VALUE <- newIORef 0
    geographicMapCellPositionAreaBase <- newIORef javaNull
    healthInterface <- newIORef javaNull
    level <- newIORef 0
    maxLevel <- newIORef 0
    hackVerticleBuild <- newIORef 0
    slightAngle <- newIORef 0
    percentCompleteP <- newIORef 0
    destroyed <- newIORef False
    selected <- newIORef False
    rtsLayerUtil <- newIORef javaNull
    layerDistanceUtil <- newIORef javaNull
    let this = RTSLayer header_ base debug showMoreCaptionStates inputProcessorArray rtsLayer2LogHelper waypointLogHelperP waypoint2LogHelperP waypointRunnableLogHelperP rtsFormInput verticleBuildAnimationInterface rangeAnimation initRangeAnimation sensorRangeAnimation initSensorRangeAnimation baseAnimationInterface buildFrameTimeHelper buildAnimationInterface animationInterface initAnimationInterface indexedButShouldBeRotationAnimationInterface emptyAnimationInterface destroyAnimationInterface fireTimeHelper rootName hashtable bUILD_VALUE geographicMapCellPositionAreaBase healthInterface level maxLevel hackVerticleBuild slightAngle percentCompleteP destroyed selected rtsLayerUtil layerDistanceUtil
    jregisterLevel header_ this
    TickableInterface.registerInterface_ header_
    GameInputInterface.registerInterface_ header_
    GameKeyEventSourceInterface.registerInterface_ header_
    RTSInterface.registerInterface_ header_
    PathFindingLayerInterface.registerInterface_ header_
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "updateWaypointBehavior" (\() -> updateWaypointBehavior_impl this)
    jregisterMethod header_ "construct" (\() -> construct_impl this)
    jregisterMethod header_ "select" (\() -> select_impl this)
    jregisterMethod header_ "deselect" (\() -> deselect_impl this)
    jregisterMethod header_ "setSelected" (\() -> setSelected_impl this)
    jregisterMethod header_ "isSelected" (\() -> isSelected_impl this)
    jregisterMethod header_ "getPercentComplete" (\() -> getPercentComplete_impl this)
    jregisterMethod header_ "getScrollSelectionForm" (\() -> getScrollSelectionForm_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "processBuiltTick" (\() -> processBuiltTick_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "reload" (\() -> reload_impl this)
    jregisterMethod header_ "onMovement" (\() -> onMovement_impl this)
    jregisterMethod header_ "onMovementFound" (\() -> onMovementFound_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "downgrade" (\() -> downgrade_impl this)
    jregisterMethod header_ "upgrade" (\() -> upgrade_impl this)
    jregisterMethod header_ "isCompleted" (\() -> isCompleted_impl this)
    jregisterMethod header_ "build" (\() -> build_impl this)
    jregisterMethod header_ "isSelfUpgradeable" (\() -> isSelfUpgradeable_impl this)
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    jregisterMethod header_ "getDowngradeCost" (\() -> getDowngradeCost_impl this)
    jregisterMethod header_ "getUpgradeCost" (\() -> getUpgradeCost_impl this)
    jregisterMethod header_ "isUpgradeable" (\() -> isUpgradeable_impl this)
    jregisterMethod header_ "isDowngradeable" (\() -> isDowngradeable_impl this)
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    jregisterMethod header_ "setLevel" (\() -> setLevel_impl this)
    jregisterMethod header_ "getVerticleBuildAnimationInterface" (\() -> getVerticleBuildAnimationInterface_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "setAnimationInterface" (\() -> setAnimationInterface_impl this)
    jregisterMethod header_ "setTarget" (\() -> setTarget_impl this)
    jregisterMethod header_ "createHudPaintable" (\() -> createHudPaintable_impl this)
    jregisterMethod header_ "getHudPaintable" (\() -> getHudPaintable_impl this)
    jregisterMethod header_ "getMaxLevel" (\() -> getMaxLevel_impl this)
    jregisterMethod header_ "setMaxLevel" (\() -> setMaxLevel_impl this)
    jregisterMethod header_ "getHealthInterface" (\() -> getHealthInterface_impl this)
    jregisterMethod header_ "setHealthInterface" (\() -> setHealthInterface_impl this)
    jregisterMethod header_ "getRTSFormInput" (\() -> getRTSFormInput_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "getEndGeographicMapCellPositionList" (\() -> getEndGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionArea" (\() -> getGeographicMapCellPositionArea_impl this)
    jregisterMethod header_ "shouldHandleStartSameAsEnd" (\() -> shouldHandleStartSameAsEnd_impl this)
    jregisterMethod header_ "handleCost" (\() -> handleCost_impl this)
    jregisterMethod header_ "getWaypointBehavior" (\() -> getWaypointBehavior_impl this)
    jregisterMethod header_ "getParentLayer" (\() -> getParentLayer_impl this)
    jregisterMethod header_ "getRTSLayer2LogHelper" (\() -> getRTSLayer2LogHelper_impl this)
    jregisterMethod header_ "getWaypointLogHelper" (\() -> getWaypointLogHelper_impl this)
    jregisterMethod header_ "getWaypoint2LogHelper" (\() -> getWaypoint2LogHelper_impl this)
    jregisterMethod header_ "getWaypointRunnableLogHelper" (\() -> getWaypointRunnableLogHelper_impl this)
    jregisterMethod header_ "shouldAddWaypointFromBuilding" (\() -> shouldAddWaypointFromBuilding_impl this)
    jregisterMethod header_ "getCaptionAnimationHelper" (\() -> getCaptionAnimationHelper_impl this)
    jregisterMethod header_ "isShowMoreCaptionStates" (\() -> isShowMoreCaptionStates_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getCurrentGeographicMapCellPosition" (\() -> getCurrentGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getTopLeftGeographicMapCellPosition" (\() -> getTopLeftGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getMoveOutOfBuildAreaPath" (\() -> getMoveOutOfBuildAreaPath_impl this)
    jregisterMethod header_ "setClosestGeographicMapCellHistory" (\() -> setClosestGeographicMapCellHistory_impl this)
    jregisterMethod header_ "teleportTo" (\() -> teleportTo_impl this)
    jregisterMethod header_ "setLoad" (\() -> setLoad_impl this)
    jregisterMethod header_ "getSurroundingGeographicMapCellPositionList" (\() -> getSurroundingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "trackTo" (\() -> trackTo_impl this)
    jregisterMethod header_ "trackToDXY" (\() -> trackToDXY_impl this)
    jregisterMethod header_ "isWaypointListEmptyOrOnlyTargets" (\() -> isWaypointListEmptyOrOnlyTargets_impl this)
    jregisterMethod header_ "getTrackingEvent" (\() -> getTrackingEvent_impl this)
    jregisterMethod header_ "buildingChase" (\() -> buildingChase_impl this)
    jregisterMethod header_ "allStop" (\() -> allStop_impl this)
    jregisterMethod header_ "implmentsTickableInterface" (\() -> implmentsTickableInterface_impl this)
    jregisterMethod header_ "implmentsGameInputInterface" (\() -> implmentsGameInputInterface_impl this)
    jregisterMethod header_ "getRootName" (\() -> getRootName_impl this)
    jregisterMethod header_ "getRotationAnimationInterface" (\() -> getRotationAnimationInterface_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "setRotationAnimationInterface" (\() -> setRotationAnimationInterface_impl this)
    pure this

initFields_ :: RTSLayer -> IO ()
initFields_ this = do
    jset this.debug (True)
    jset this.showMoreCaptionStates ((jget (this).debug))
    jset this.inputProcessorArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.rtsLayer2LogHelper =<< (RTSLayer2LogHelper.getInstance)
    jset this.waypointLogHelperP =<< (WaypointLogHelper.getInstance)
    jset this.waypoint2LogHelperP =<< (Waypoint2LogHelper.getInstance)
    jset this.waypointRunnableLogHelperP =<< (WaypointRunnableLogHelper.getInstance)
    jset this.rtsFormInput (javaNull)
    jset this.verticleBuildAnimationInterface (javaNull)
    jset this.rangeAnimation (javaNull)
    jset this.initRangeAnimation (javaNull)
    jset this.sensorRangeAnimation (javaNull)
    jset this.initSensorRangeAnimation (javaNull)
    jset this.baseAnimationInterface (javaNull)
    jset this.buildFrameTimeHelper =<< (TimeDelayHelper.new_1 50)
    jset this.buildAnimationInterface (javaNull)
    jset this.animationInterface (javaNull)
    jset this.initAnimationInterface (javaNull)
    jset this.indexedButShouldBeRotationAnimationInterface (javaNull)
    jset this.emptyAnimationInterface (javaNull)
    jset this.destroyAnimationInterface (javaNull)
    jset this.fireTimeHelper =<< (TimeDelayHelper.new_1 700)
    jset this.rootName (javaNull)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.bUILD_VALUE (63)
    jset this.geographicMapCellPositionAreaBase (javaNull)
    jset this.healthInterface (Health.nULL_HEALTH)
    jset this.level (1)
    jset this.maxLevel (1)
    jset this.hackVerticleBuild ((jget (this).bUILD_VALUE))
    jset this.slightAngle (0)
    jset this.percentCompleteP (0)
    jset this.destroyed (False)
    jset this.selected (False)
    jset this.rtsLayerUtil =<< (RTSLayerUtil.getInstance)
    jset this.layerDistanceUtil =<< (LayerDistanceUtil.getInstance)
    pure ()


-- throws Exception
createSimulatedInstance :: RemoteInfo.RemoteInfo -> IO (RTSLayer)
createSimulatedInstance remoteInfo = do
        nullAnimationInterfaceFactoryInterface <- (fmap (\value_ -> javaCast value_ :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) (NullAnimationFactory.getFactoryInstance))
        nullIndexedAnimationInterfaceFactoryInterface <- (fmap (\value_ -> javaCast value_ :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) (NullIndexedAnimationFactory.getFactoryInstance))
        (new_16 (RemoteInfo.rEMOTE_INFO) (jget ((jio (GroupFactory.getInstance))).nULL_GROUP_ARRAY) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Health.nULL_HEALTH) (jio (NullRTSFormInputFactory.getInstance)) nullAnimationInterfaceFactoryInterface nullIndexedAnimationInterfaceFactoryInterface nullAnimationInterfaceFactoryInterface nullAnimationInterfaceFactoryInterface nullIndexedAnimationInterfaceFactoryInterface (jio (NullIndexedAnimationFactory.getFactoryInstance)) (RectangleFactory.sINGLETON) 0 0 (jio (TileLayerPositionIntoViewPosition.new_)))

new_16 :: RemoteInfo.RemoteInfo -> JavaArray (Group.Group) -> String -> String -> Health.Health -> RTSFormInput.RTSFormInput -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> ViewPositionBase.ViewPositionBase -> IO RTSLayer
new_16 remoteInfo groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y viewPosition = do
    this <- newRecord_
    init_16 this remoteInfo groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y viewPosition
    pure this

init_16 :: RTSLayer -> RemoteInfo.RemoteInfo -> JavaArray (Group.Group) -> String -> String -> Health.Health -> RTSFormInput.RTSFormInput -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> ViewPositionBase.ViewPositionBase -> IO ()
init_16 this remoteInfo groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y viewPosition = do
        MultiPlayerGameLayer.init_5 this.base (remoteInfo) (groupInterface) (name) (rectangle) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RTSLayer.initInputProcessors this)
        jset (this).rootName (rootName)
        jset (this).healthInterface (healthInterface)
        jset (this).rtsFormInput (rtsFormInput)
        Control.Monad.void (MultiPlayerGameLayer.setPosition this x y (jget (this).base.base.base.base.base.base.z))
        jset (this).verticleBuildAnimationInterface ((javaCast (jio (AnimationInterfaceFactoryInterface.getInstance verticleBuildAnimationInterfaceFactoryInterface 0)) :: IndexedAnimation.IndexedAnimation))
        assignedValue <- (AnimationInterfaceFactoryInterface.getInstance buildAnimationInterfaceFactoryInterface 0)
        jset (this).buildAnimationInterface (assignedValue)
        assignedValue <- (AnimationInterfaceFactoryInterface.getInstance baseAnimationInterfaceFactoryInterface 0)
        jset (this).baseAnimationInterface (assignedValue)
        jset (this).emptyAnimationInterface ((javaCast (jio (AnimationInterfaceFactoryInterface.getInstance emptyAnimationInterfaceFactoryInterface 0)) :: IndexedAnimation.IndexedAnimation))
        jset (this).indexedButShouldBeRotationAnimationInterface ((javaCast (jio (AnimationInterfaceFactoryInterface.getInstance animationInterfaceFactoryInterface 0)) :: IndexedAnimation.IndexedAnimation))
        jset (this).initAnimationInterface ((jget (this).indexedButShouldBeRotationAnimationInterface))
        jset (this).destroyAnimationInterface ((javaCast (jio (ProceduralAnimationInterfaceFactoryInterface.getInstanceAnimation proceduralAnimationInterfaceFactoryInterface (jget (this).indexedButShouldBeRotationAnimationInterface))) :: IndexedAnimation.IndexedAnimation))
        animation <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
        jset (this).rangeAnimation (animation)
        jset (this).initRangeAnimation (animation)
        jset (this).sensorRangeAnimation (animation)
        jset (this).initSensorRangeAnimation (animation)
        jset (this).animationInterface ((jget (this).initAnimationInterface))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase) (GeographicMapCellPositionArea.new_1 this))
        jset (this).geographicMapCellPositionAreaBase (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: RTSLayer))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: RTSLayer)) a1

setAllBinaryGameLayerManager_impl :: RTSLayer -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (MultiPlayerGameLayer.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast (jget (this).base.base.allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        let viewPosition2 = (javaCast (jio (MultiPlayerGameLayer.getViewPosition this)) :: TileLayerPositionIntoViewPosition.TileLayerPositionIntoViewPosition)
        Control.Monad.void (TileLayerPositionIntoViewPosition.setTiledLayer viewPosition2 tiledLayer)
        Control.Monad.void (RTSLayer.updateWaypointBehavior this geographicMapInterface)
        pure ()


-- throws Exception
updateWaypointBehavior :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior object_ a1 = jmethod object_ "updateWaypointBehavior" (\() -> (updateWaypointBehavior_impl (javaCast object_ :: RTSLayer))) () a1

updateWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior_super object_ a1 = (updateWaypointBehavior_impl (javaCast object_ :: RTSLayer)) a1

updateWaypointBehavior_impl :: RTSLayer -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior_impl this geographicMapInterface = do
        Control.Monad.void (GeographicMapCellPositionAreaBase.update ((jget (this).geographicMapCellPositionAreaBase)) geographicMapInterface)
        pure ()


-- throws Exception
construct :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct object_ a1 = jmethod object_ "construct" (\() -> (construct_impl (javaCast object_ :: RTSLayer))) () a1

construct_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_super object_ a1 = (construct_impl (javaCast object_ :: RTSLayer)) a1

construct_impl :: RTSLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_impl this rtsPlayerLayerInterface = do
        Control.Monad.void (ViewPositionEventHandler.addListener ((jio (ViewPositionEventHandler.getInstance))) (javaCast this :: AllBinaryLayer.AllBinaryLayer))
        jset (this).animationInterface ((jget (this).buildAnimationInterface))
        jset (this).hackVerticleBuild (0)
        pure ()


select :: (JavaObjectClass this_) => this_ -> IO (())
select object_ = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: RTSLayer))) ()

select_super :: (JavaObjectClass this_) => this_ -> IO (())
select_super object_ = (select_impl (javaCast object_ :: RTSLayer))

select_impl :: RTSLayer -> IO (())
select_impl this = do
        jset (this).rangeAnimation ((jget (this).initRangeAnimation))
        jset (this).sensorRangeAnimation ((jget (this).initSensorRangeAnimation))
        Control.Monad.void (RTSLayer.setSelected this True)
        pure ()


deselect :: (JavaObjectClass this_) => this_ -> IO (())
deselect object_ = jmethod object_ "deselect" (\() -> (deselect_impl (javaCast object_ :: RTSLayer))) ()

deselect_super :: (JavaObjectClass this_) => this_ -> IO (())
deselect_super object_ = (deselect_impl (javaCast object_ :: RTSLayer))

deselect_impl :: RTSLayer -> IO (())
deselect_impl this = do
        animation <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
        jset (this).rangeAnimation (animation)
        jset (this).sensorRangeAnimation (animation)
        Control.Monad.void (RTSLayer.setSelected this False)
        pure ()


setSelected :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSelected object_ a1 = jmethod object_ "setSelected" (\() -> (setSelected_impl (javaCast object_ :: RTSLayer))) () a1

setSelected_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSelected_super object_ a1 = (setSelected_impl (javaCast object_ :: RTSLayer)) a1

setSelected_impl :: RTSLayer -> Bool -> IO (())
setSelected_impl this selected = do
        jset (this).selected (selected)
        pure ()


isSelected :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelected object_ = jmethod object_ "isSelected" (\() -> (isSelected_impl (javaCast object_ :: RTSLayer))) ()

isSelected_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelected_super object_ = (isSelected_impl (javaCast object_ :: RTSLayer))

isSelected_impl :: RTSLayer -> IO (Bool)
isSelected_impl this = do
        pure ((jget (this).selected))


getPercentComplete :: (JavaObjectClass this_) => this_ -> IO (Int)
getPercentComplete object_ = jmethod object_ "getPercentComplete" (\() -> (getPercentComplete_impl (javaCast object_ :: RTSLayer))) ()

getPercentComplete_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPercentComplete_super object_ = (getPercentComplete_impl (javaCast object_ :: RTSLayer))

getPercentComplete_impl :: RTSLayer -> IO (Int)
getPercentComplete_impl this = do
        pure ((jget (this).percentCompleteP))


getScrollSelectionForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getScrollSelectionForm object_ = jmethod object_ "getScrollSelectionForm" (\() -> (getScrollSelectionForm_impl (javaCast object_ :: RTSLayer))) ()

getScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getScrollSelectionForm_super object_ = (getScrollSelectionForm_impl (javaCast object_ :: RTSLayer))

getScrollSelectionForm_impl :: RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getScrollSelectionForm_impl this = do
        (ScrollSelectionForm.getNullScrollSelectionForm)


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: RTSLayer))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: RTSLayer))

initInputProcessors_impl :: RTSLayer -> IO (())
initInputProcessors_impl this = do
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).inputProcessorArray))
        pure ()


-- throws Exception
processBuiltTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick object_ a1 = jmethod object_ "processBuiltTick" (\() -> (processBuiltTick_impl (javaCast object_ :: RTSLayer))) () a1

processBuiltTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick_super object_ a1 = (processBuiltTick_impl (javaCast object_ :: RTSLayer)) a1

processBuiltTick_impl :: RTSLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick_impl this allBinaryLayerManager = do
        jset (this).animationInterface ((jget (this).indexedButShouldBeRotationAnimationInterface))
        pure ()


processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: RTSLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: RTSLayer)) a1

processTick_impl :: RTSLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this "processTick" e)
            ) $ do
            if (jio (RTSLayer.isCompleted this)) then do
                Control.Monad.void (RTSLayer.processBuiltTick this allBinaryLayerManager)
            else do
                Control.Monad.void (RTSLayer.build this)
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: RTSLayer))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: RTSLayer)) a1

processInput_impl :: RTSLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        pure ()


reload :: (JavaObjectClass this_) => this_ -> IO (())
reload object_ = jmethod object_ "reload" (\() -> (reload_impl (javaCast object_ :: RTSLayer))) ()

reload_super :: (JavaObjectClass this_) => this_ -> IO (())
reload_super object_ = (reload_impl (javaCast object_ :: RTSLayer))

reload_impl :: RTSLayer -> IO (())
reload_impl this = do
        pure ()


onMovement :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement object_ a1 = jmethod object_ "onMovement" (\() -> (onMovement_impl (javaCast object_ :: RTSLayer))) () a1

onMovement_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement_super object_ a1 = (onMovement_impl (javaCast object_ :: RTSLayer)) a1

onMovement_impl :: RTSLayer -> TrackingEvent.TrackingEvent -> IO (())
onMovement_impl this trackingEvent = do
        pure ()


-- throws Exception
onMovementFound :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovementFound object_ a1 = jmethod object_ "onMovementFound" (\() -> (onMovementFound_impl (javaCast object_ :: RTSLayer))) () a1

onMovementFound_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovementFound_super object_ a1 = (onMovementFound_impl (javaCast object_ :: RTSLayer)) a1

onMovementFound_impl :: RTSLayer -> TrackingEvent.TrackingEvent -> IO (())
onMovementFound_impl this trackingEvent = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: RTSLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: RTSLayer)) a1

paint_impl :: RTSLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MultiPlayerGameLayer.paintFirst_super this.base graphics)
        viewPosition <- (MultiPlayerGameLayer.getViewPosition this)
        viewX <- (ViewPositionBase.getX viewPosition)
        viewY <- (ViewPositionBase.getY viewPosition)
        Control.Monad.void (Animation.paintXY ((jio (RTSLayer.getAnimationInterface this))) graphics viewX viewY)
        pure ()


-- throws Exception
damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: RTSLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: RTSLayer)) a1 a2

damage_impl :: RTSLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: RTSLayer))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: RTSLayer))

getSourceId_impl :: RTSLayer -> IO (Int)
getSourceId_impl this = do
        pure (RTSLayer.id)


downgrade :: (JavaObjectClass this_) => this_ -> IO (())
downgrade object_ = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: RTSLayer))) ()

downgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
downgrade_super object_ = (downgrade_impl (javaCast object_ :: RTSLayer))

downgrade_impl :: RTSLayer -> IO (())
downgrade_impl this = do
        Control.Monad.void (RTSLayerUtil.downgrade ((jget (this).rtsLayerUtil)) this)
        pure ()


upgrade :: (JavaObjectClass this_) => this_ -> IO (())
upgrade object_ = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: RTSLayer))) ()

upgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
upgrade_super object_ = (upgrade_impl (javaCast object_ :: RTSLayer))

upgrade_impl :: RTSLayer -> IO (())
upgrade_impl this = do
        Control.Monad.void (RTSLayerUtil.upgrade ((jget (this).rtsLayerUtil)) this)
        pure ()


isCompleted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCompleted object_ = jmethod object_ "isCompleted" (\() -> (isCompleted_impl (javaCast object_ :: RTSLayer))) ()

isCompleted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCompleted_super object_ = (isCompleted_impl (javaCast object_ :: RTSLayer))

isCompleted_impl :: RTSLayer -> IO (Bool)
isCompleted_impl this = do
    javaCatchReturn $ do
        if ((jget (this).hackVerticleBuild) < (jget (this).bUILD_VALUE)) then do
            javaReturn (False)
        else do
            javaReturn (True)


-- throws Exception
build :: (JavaObjectClass this_) => this_ -> IO (())
build object_ = jmethod object_ "build" (\() -> (build_impl (javaCast object_ :: RTSLayer))) ()

build_super :: (JavaObjectClass this_) => this_ -> IO (())
build_super object_ = (build_impl (javaCast object_ :: RTSLayer))

build_impl :: RTSLayer -> IO (())
build_impl this = do
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).buildFrameTimeHelper)))) $ do
            jset (this).animationInterface ((jget (this).buildAnimationInterface))
            Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).verticleBuildAnimationInterface)))
            jset (this).hackVerticleBuild ((jget (this).hackVerticleBuild) + 1)
        jset (this).percentCompleteP (((100 * (jget (this).hackVerticleBuild)) `quot` (jget (this).bUILD_VALUE)))
        Control.Monad.void (SelectionHudPaintable.updateInfo ((jio (RTSLayer.getHudPaintable this))))
        pure ()


isSelfUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable object_ = jmethod object_ "isSelfUpgradeable" (\() -> (isSelfUpgradeable_impl (javaCast object_ :: RTSLayer))) ()

isSelfUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable_super object_ = (isSelfUpgradeable_impl (javaCast object_ :: RTSLayer))

isSelfUpgradeable_impl :: RTSLayer -> IO (Bool)
isSelfUpgradeable_impl this = do
        pure (True)


getCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost object_ = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: RTSLayer))) ()

getCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost_super object_ = (getCost_impl (javaCast object_ :: RTSLayer))

getCost_impl :: RTSLayer -> IO (Int)
getCost_impl this = do
        (RTSLayerUtil.getCost ((jget (this).rtsLayerUtil)) this)


getDowngradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost object_ = jmethod object_ "getDowngradeCost" (\() -> (getDowngradeCost_impl (javaCast object_ :: RTSLayer))) ()

getDowngradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost_super object_ = (getDowngradeCost_impl (javaCast object_ :: RTSLayer))

getDowngradeCost_impl :: RTSLayer -> IO (Int)
getDowngradeCost_impl this = do
        (RTSLayerUtil.getDowngradeCost ((jget (this).rtsLayerUtil)) this)


getUpgradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost object_ = jmethod object_ "getUpgradeCost" (\() -> (getUpgradeCost_impl (javaCast object_ :: RTSLayer))) ()

getUpgradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost_super object_ = (getUpgradeCost_impl (javaCast object_ :: RTSLayer))

getUpgradeCost_impl :: RTSLayer -> IO (Int)
getUpgradeCost_impl this = do
        (RTSLayerUtil.getUpgradeCost ((jget (this).rtsLayerUtil)) this)


isUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUpgradeable object_ = jmethod object_ "isUpgradeable" (\() -> (isUpgradeable_impl (javaCast object_ :: RTSLayer))) ()

isUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUpgradeable_super object_ = (isUpgradeable_impl (javaCast object_ :: RTSLayer))

isUpgradeable_impl :: RTSLayer -> IO (Bool)
isUpgradeable_impl this = do
    javaCatchReturn $ do
        if ((jio (RTSLayer.getLevel this)) < (jio (RTSLayer.getMaxLevel this))) then do
            javaReturn (True)
        else do
            javaReturn (False)


isDowngradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDowngradeable object_ = jmethod object_ "isDowngradeable" (\() -> (isDowngradeable_impl (javaCast object_ :: RTSLayer))) ()

isDowngradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDowngradeable_super object_ = (isDowngradeable_impl (javaCast object_ :: RTSLayer))

isDowngradeable_impl :: RTSLayer -> IO (Bool)
isDowngradeable_impl this = do
    javaCatchReturn $ do
        if ((jio (RTSLayer.getLevel this)) > 1) then do
            javaReturn (True)
        else do
            javaReturn (False)


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: RTSLayer))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: RTSLayer))

getLevel_impl :: RTSLayer -> IO (Int)
getLevel_impl this = do
        pure ((jget (this).level))


setLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel object_ a1 = jmethod object_ "setLevel" (\() -> (setLevel_impl (javaCast object_ :: RTSLayer))) () a1

setLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel_super object_ a1 = (setLevel_impl (javaCast object_ :: RTSLayer)) a1

setLevel_impl :: RTSLayer -> Int -> IO (())
setLevel_impl this level = do
        jset (this).level (level)
        pure ()


getVerticleBuildAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getVerticleBuildAnimationInterface object_ = jmethod object_ "getVerticleBuildAnimationInterface" (\() -> (getVerticleBuildAnimationInterface_impl (javaCast object_ :: RTSLayer))) ()

getVerticleBuildAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getVerticleBuildAnimationInterface_super object_ = (getVerticleBuildAnimationInterface_impl (javaCast object_ :: RTSLayer))

getVerticleBuildAnimationInterface_impl :: RTSLayer -> IO (Animation.Animation)
getVerticleBuildAnimationInterface_impl this = do
        pure ((javaCast (jget (this).verticleBuildAnimationInterface) :: Animation.Animation))


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: RTSLayer))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: RTSLayer))

getAnimationInterface_impl :: RTSLayer -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


setAnimationInterface :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface object_ a1 = jmethod object_ "setAnimationInterface" (\() -> (setAnimationInterface_impl (javaCast object_ :: RTSLayer))) () a1

setAnimationInterface_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface_super object_ a1 = (setAnimationInterface_impl (javaCast object_ :: RTSLayer)) a1

setAnimationInterface_impl :: RTSLayer -> Animation.Animation -> IO (())
setAnimationInterface_impl this animationInterface = do
        jset (this).animationInterface (animationInterface)
        pure ()


-- throws Exception
setTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget object_ a1 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: RTSLayer))) () a1

setTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget_super object_ a1 = (setTarget_impl (javaCast object_ :: RTSLayer)) a1

setTarget_impl :: RTSLayer -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget_impl this targetGameLayer = do
        anotherTargetDistance <- (LayerDistanceUtil.getDistance ((jget (this).layerDistanceUtil)) (javaCast this :: AllBinaryLayer.AllBinaryLayer) (javaCast targetGameLayer :: AllBinaryLayer.AllBinaryLayer))
        waypointBehaviorBase <- (RTSLayer.getWaypointBehavior this)
        Control.Monad.void (WaypointBehaviorBase.setTargetWithDistance waypointBehaviorBase (javaCast targetGameLayer :: PathFindingLayerInterface.PathFindingLayerInterface) anotherTargetDistance)
        pure ()


createHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable object_ = jmethod object_ "createHudPaintable" (\() -> (createHudPaintable_impl (javaCast object_ :: RTSLayer))) ()

createHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_super object_ = (createHudPaintable_impl (javaCast object_ :: RTSLayer))

createHudPaintable_impl :: RTSLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable object_ = jmethod object_ "getHudPaintable" (\() -> (getHudPaintable_impl (javaCast object_ :: RTSLayer))) ()

getHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_super object_ = (getHudPaintable_impl (javaCast object_ :: RTSLayer))

getHudPaintable_impl :: RTSLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getMaxLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxLevel object_ = jmethod object_ "getMaxLevel" (\() -> (getMaxLevel_impl (javaCast object_ :: RTSLayer))) ()

getMaxLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxLevel_super object_ = (getMaxLevel_impl (javaCast object_ :: RTSLayer))

getMaxLevel_impl :: RTSLayer -> IO (Int)
getMaxLevel_impl this = do
        pure ((jget (this).maxLevel))


setMaxLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxLevel object_ a1 = jmethod object_ "setMaxLevel" (\() -> (setMaxLevel_impl (javaCast object_ :: RTSLayer))) () a1

setMaxLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxLevel_super object_ a1 = (setMaxLevel_impl (javaCast object_ :: RTSLayer)) a1

setMaxLevel_impl :: RTSLayer -> Int -> IO (())
setMaxLevel_impl this maxLevel = do
        jset (this).maxLevel (maxLevel)
        pure ()


getHealthInterface :: (JavaObjectClass this_) => this_ -> IO (Health.Health)
getHealthInterface object_ = jmethod object_ "getHealthInterface" (\() -> (getHealthInterface_impl (javaCast object_ :: RTSLayer))) ()

getHealthInterface_super :: (JavaObjectClass this_) => this_ -> IO (Health.Health)
getHealthInterface_super object_ = (getHealthInterface_impl (javaCast object_ :: RTSLayer))

getHealthInterface_impl :: RTSLayer -> IO (Health.Health)
getHealthInterface_impl this = do
        pure ((jget (this).healthInterface))


setHealthInterface :: (JavaObjectClass this_) => this_ -> Health.Health -> IO (())
setHealthInterface object_ a1 = jmethod object_ "setHealthInterface" (\() -> (setHealthInterface_impl (javaCast object_ :: RTSLayer))) () a1

setHealthInterface_super :: (JavaObjectClass this_) => this_ -> Health.Health -> IO (())
setHealthInterface_super object_ a1 = (setHealthInterface_impl (javaCast object_ :: RTSLayer)) a1

setHealthInterface_impl :: RTSLayer -> Health.Health -> IO (())
setHealthInterface_impl this healthInterface = do
        jset (this).healthInterface (healthInterface)
        pure ()


getRTSFormInput :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput object_ = jmethod object_ "getRTSFormInput" (\() -> (getRTSFormInput_impl (javaCast object_ :: RTSLayer))) ()

getRTSFormInput_super :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput_super object_ = (getRTSFormInput_impl (javaCast object_ :: RTSLayer))

getRTSFormInput_impl :: RTSLayer -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput_impl this = do
        pure ((jget (this).rtsFormInput))


-- throws Exception
isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: RTSLayer))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: RTSLayer))

isDestroyed_impl :: RTSLayer -> IO (Bool)
isDestroyed_impl this = do
        pure ((jget (this).destroyed))


-- throws Exception
setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: RTSLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: RTSLayer)) a1

setDestroyed_impl :: RTSLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        jset (this).destroyed (destroyed)
        when (jio (RTSLayer.isDestroyed this)) $ do
            Control.Monad.void (BasicLayerProcessor.add ((jio (DestroyedLayerProcessor.getInstance))) this)
            Control.Monad.void (ViewPositionEventHandler.removeListener ((jio (ViewPositionEventHandler.getInstance))) this)
        pure ()


getEndGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList object_ = jmethod object_ "getEndGeographicMapCellPositionList" (\() -> (getEndGeographicMapCellPositionList_impl (javaCast object_ :: RTSLayer))) ()

getEndGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_super object_ = (getEndGeographicMapCellPositionList_impl (javaCast object_ :: RTSLayer))

getEndGeographicMapCellPositionList_impl :: RTSLayer -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_impl this = do
        (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList ((jget (this).geographicMapCellPositionAreaBase)))


getGeographicMapCellPositionArea :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea object_ = jmethod object_ "getGeographicMapCellPositionArea" (\() -> (getGeographicMapCellPositionArea_impl (javaCast object_ :: RTSLayer))) ()

getGeographicMapCellPositionArea_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea_super object_ = (getGeographicMapCellPositionArea_impl (javaCast object_ :: RTSLayer))

getGeographicMapCellPositionArea_impl :: RTSLayer -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea_impl this = do
        pure ((jget (this).geographicMapCellPositionAreaBase))


shouldHandleStartSameAsEnd :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd object_ = jmethod object_ "shouldHandleStartSameAsEnd" (\() -> (shouldHandleStartSameAsEnd_impl (javaCast object_ :: RTSLayer))) ()

shouldHandleStartSameAsEnd_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd_super object_ = (shouldHandleStartSameAsEnd_impl (javaCast object_ :: RTSLayer))

shouldHandleStartSameAsEnd_impl :: RTSLayer -> IO (Bool)
shouldHandleStartSameAsEnd_impl this = do
        pure (True)


-- throws Exception
handleCost :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost object_ a1 = jmethod object_ "handleCost" (\() -> (handleCost_impl (javaCast object_ :: RTSLayer))) () a1

handleCost_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost_super object_ a1 = (handleCost_impl (javaCast object_ :: RTSLayer)) a1

handleCost_impl :: RTSLayer -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost_impl this ownerLayer = do
        pure ()


getWaypointBehavior :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior object_ = jmethod object_ "getWaypointBehavior" (\() -> (getWaypointBehavior_impl (javaCast object_ :: RTSLayer))) ()

getWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_super object_ = (getWaypointBehavior_impl (javaCast object_ :: RTSLayer))

getWaypointBehavior_impl :: RTSLayer -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getParentLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer object_ = jmethod object_ "getParentLayer" (\() -> (getParentLayer_impl (javaCast object_ :: RTSLayer))) ()

getParentLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer_super object_ = (getParentLayer_impl (javaCast object_ :: RTSLayer))

getParentLayer_impl :: RTSLayer -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getRTSLayer2LogHelper :: (JavaObjectClass this_) => this_ -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper object_ = jmethod object_ "getRTSLayer2LogHelper" (\() -> (getRTSLayer2LogHelper_impl (javaCast object_ :: RTSLayer))) ()

getRTSLayer2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper_super object_ = (getRTSLayer2LogHelper_impl (javaCast object_ :: RTSLayer))

getRTSLayer2LogHelper_impl :: RTSLayer -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper_impl this = do
        pure ((jget (this).rtsLayer2LogHelper))


getWaypointLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper object_ = jmethod object_ "getWaypointLogHelper" (\() -> (getWaypointLogHelper_impl (javaCast object_ :: RTSLayer))) ()

getWaypointLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_super object_ = (getWaypointLogHelper_impl (javaCast object_ :: RTSLayer))

getWaypointLogHelper_impl :: RTSLayer -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_impl this = do
        pure ((jget (this).waypointLogHelperP))


getWaypoint2LogHelper :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper object_ = jmethod object_ "getWaypoint2LogHelper" (\() -> (getWaypoint2LogHelper_impl (javaCast object_ :: RTSLayer))) ()

getWaypoint2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_super object_ = (getWaypoint2LogHelper_impl (javaCast object_ :: RTSLayer))

getWaypoint2LogHelper_impl :: RTSLayer -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_impl this = do
        pure ((jget (this).waypoint2LogHelperP))


getWaypointRunnableLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper object_ = jmethod object_ "getWaypointRunnableLogHelper" (\() -> (getWaypointRunnableLogHelper_impl (javaCast object_ :: RTSLayer))) ()

getWaypointRunnableLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_super object_ = (getWaypointRunnableLogHelper_impl (javaCast object_ :: RTSLayer))

getWaypointRunnableLogHelper_impl :: RTSLayer -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_impl this = do
        pure ((jget (this).waypointRunnableLogHelperP))


shouldAddWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding object_ = jmethod object_ "shouldAddWaypointFromBuilding" (\() -> (shouldAddWaypointFromBuilding_impl (javaCast object_ :: RTSLayer))) ()

shouldAddWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding_super object_ = (shouldAddWaypointFromBuilding_impl (javaCast object_ :: RTSLayer))

shouldAddWaypointFromBuilding_impl :: RTSLayer -> IO (Bool)
shouldAddWaypointFromBuilding_impl this = do
        pure (False)


getCaptionAnimationHelper :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper object_ = jmethod object_ "getCaptionAnimationHelper" (\() -> (getCaptionAnimationHelper_impl (javaCast object_ :: RTSLayer))) ()

getCaptionAnimationHelper_super :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_super object_ = (getCaptionAnimationHelper_impl (javaCast object_ :: RTSLayer))

getCaptionAnimationHelper_impl :: RTSLayer -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isShowMoreCaptionStates :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowMoreCaptionStates object_ = jmethod object_ "isShowMoreCaptionStates" (\() -> (isShowMoreCaptionStates_impl (javaCast object_ :: RTSLayer))) ()

isShowMoreCaptionStates_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowMoreCaptionStates_super object_ = (isShowMoreCaptionStates_impl (javaCast object_ :: RTSLayer))

isShowMoreCaptionStates_impl :: RTSLayer -> IO (Bool)
isShowMoreCaptionStates_impl this = do
        pure ((jget (this).showMoreCaptionStates))


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: RTSLayer))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: RTSLayer)) a1 a2

init_impl :: RTSLayer -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_impl this geographicMapCellHistory geographicMapCellPositionBasicArrayList = do
        pure ()


-- throws Exception
getCurrentGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition object_ = jmethod object_ "getCurrentGeographicMapCellPosition" (\() -> (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: RTSLayer))) ()

getCurrentGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_super object_ = (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: RTSLayer))

getCurrentGeographicMapCellPosition_impl :: RTSLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getTopLeftGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition object_ = jmethod object_ "getTopLeftGeographicMapCellPosition" (\() -> (getTopLeftGeographicMapCellPosition_impl (javaCast object_ :: RTSLayer))) ()

getTopLeftGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition_super object_ = (getTopLeftGeographicMapCellPosition_impl (javaCast object_ :: RTSLayer))

getTopLeftGeographicMapCellPosition_impl :: RTSLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getMoveOutOfBuildAreaPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath object_ a1 = jmethod object_ "getMoveOutOfBuildAreaPath" (\() -> (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: RTSLayer))) () a1

getMoveOutOfBuildAreaPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_super object_ a1 = (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: RTSLayer)) a1

getMoveOutOfBuildAreaPath_impl :: RTSLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
setClosestGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory object_ a1 = jmethod object_ "setClosestGeographicMapCellHistory" (\() -> (setClosestGeographicMapCellHistory_impl (javaCast object_ :: RTSLayer))) () a1

setClosestGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_super object_ a1 = (setClosestGeographicMapCellHistory_impl (javaCast object_ :: RTSLayer)) a1

setClosestGeographicMapCellHistory_impl :: RTSLayer -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_impl this pathsList = do
        pure ()


teleportTo :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo object_ a1 = jmethod object_ "teleportTo" (\() -> (teleportTo_impl (javaCast object_ :: RTSLayer))) () a1

teleportTo_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_super object_ a1 = (teleportTo_impl (javaCast object_ :: RTSLayer)) a1

teleportTo_impl :: RTSLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_impl this geographicMapCellPosition = do
        pure ()


-- throws Exception
setLoad :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad object_ a1 = jmethod object_ "setLoad" (\() -> (setLoad_impl (javaCast object_ :: RTSLayer))) () a1

setLoad_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad_super object_ a1 = (setLoad_impl (javaCast object_ :: RTSLayer)) a1

setLoad_impl :: RTSLayer -> Int -> IO (())
setLoad_impl this resource = do
        pure ()


-- throws Exception
getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: RTSLayer))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: RTSLayer))

getSurroundingGeographicMapCellPositionList_impl :: RTSLayer -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
trackTo :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo object_ a1 = jmethod object_ "trackTo" (\() -> (trackTo_impl (javaCast object_ :: RTSLayer))) () a1

trackTo_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo_super object_ a1 = (trackTo_impl (javaCast object_ :: RTSLayer)) a1

trackTo_impl :: RTSLayer -> String -> IO (())
trackTo_impl this reason = do
        pure ()


-- throws Exception
trackToDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY object_ a1 a2 = jmethod object_ "trackToDXY" (\() -> (trackToDXY_impl (javaCast object_ :: RTSLayer))) () a1 a2

trackToDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY_super object_ a1 a2 = (trackToDXY_impl (javaCast object_ :: RTSLayer)) a1 a2

trackToDXY_impl :: RTSLayer -> Int -> Int -> IO (())
trackToDXY_impl this dx dy = do
        pure ()


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: RTSLayer))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: RTSLayer))

isWaypointListEmptyOrOnlyTargets_impl :: RTSLayer -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = do
        pure (False)


getTrackingEvent :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent object_ = jmethod object_ "getTrackingEvent" (\() -> (getTrackingEvent_impl (javaCast object_ :: RTSLayer))) ()

getTrackingEvent_super :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_super object_ = (getTrackingEvent_impl (javaCast object_ :: RTSLayer))

getTrackingEvent_impl :: RTSLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
buildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase object_ a1 a2 = jmethod object_ "buildingChase" (\() -> (buildingChase_impl (javaCast object_ :: RTSLayer))) () a1 a2

buildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_super object_ a1 a2 = (buildingChase_impl (javaCast object_ :: RTSLayer)) a1 a2

buildingChase_impl :: RTSLayer -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_impl this allbinaryLayer cellPosition = do
        pure (False)


allStop :: (JavaObjectClass this_) => this_ -> IO (())
allStop object_ = jmethod object_ "allStop" (\() -> (allStop_impl (javaCast object_ :: RTSLayer))) ()

allStop_super :: (JavaObjectClass this_) => this_ -> IO (())
allStop_super object_ = (allStop_impl (javaCast object_ :: RTSLayer))

allStop_impl :: RTSLayer -> IO (())
allStop_impl this = do
        pure ()


getMinStaticType :: IO (Int)
getMinStaticType = do
        pure (1)


getMaxStaticType :: IO (Int)
getMaxStaticType = do
        pure (4)


isRTSLayer :: AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isRTSLayer layerInterface = do
    javaCatchReturn $ do
        when (((jio (AllBinaryLayer.getType layerInterface)) >= (jio (RTSLayer.getMinStaticType))) && ((jio (AllBinaryLayer.getType layerInterface)) <= (jio (RTSLayer.getMaxStaticType)))) $ do
            javaReturn (True)
        pure (False)


implmentsTickableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface object_ = jmethod object_ "implmentsTickableInterface" (\() -> (implmentsTickableInterface_impl (javaCast object_ :: RTSLayer))) ()

implmentsTickableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface_super object_ = (implmentsTickableInterface_impl (javaCast object_ :: RTSLayer))

implmentsTickableInterface_impl :: RTSLayer -> IO (Bool)
implmentsTickableInterface_impl this = do
        pure (True)


implmentsGameInputInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface object_ = jmethod object_ "implmentsGameInputInterface" (\() -> (implmentsGameInputInterface_impl (javaCast object_ :: RTSLayer))) ()

implmentsGameInputInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface_super object_ = (implmentsGameInputInterface_impl (javaCast object_ :: RTSLayer))

implmentsGameInputInterface_impl :: RTSLayer -> IO (Bool)
implmentsGameInputInterface_impl this = do
        pure (True)


getRootName :: (JavaObjectClass this_) => this_ -> IO (String)
getRootName object_ = jmethod object_ "getRootName" (\() -> (getRootName_impl (javaCast object_ :: RTSLayer))) ()

getRootName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRootName_super object_ = (getRootName_impl (javaCast object_ :: RTSLayer))

getRootName_impl :: RTSLayer -> IO (String)
getRootName_impl this = do
        pure ((jget (this).rootName))


getRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface object_ = jmethod object_ "getRotationAnimationInterface" (\() -> (getRotationAnimationInterface_impl (javaCast object_ :: RTSLayer))) ()

getRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_super object_ = (getRotationAnimationInterface_impl (javaCast object_ :: RTSLayer))

getRotationAnimationInterface_impl :: RTSLayer -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_impl this = do
        pure ((javaCast (jget (this).indexedButShouldBeRotationAnimationInterface) :: RotationAnimation.RotationAnimation))


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: RTSLayer))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: RTSLayer)) a1

setFrame_impl :: RTSLayer -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (RotationAnimation.setFrame ((jio (RTSLayer.getRotationAnimationInterface this))) index)
        pure ()


setRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface object_ a1 = jmethod object_ "setRotationAnimationInterface" (\() -> (setRotationAnimationInterface_impl (javaCast object_ :: RTSLayer))) () a1

setRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface_super object_ a1 = (setRotationAnimationInterface_impl (javaCast object_ :: RTSLayer)) a1

setRotationAnimationInterface_impl :: RTSLayer -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface_impl this rotationAnimationInterface = do
        jset (this).indexedButShouldBeRotationAnimationInterface (rotationAnimationInterface)
        pure ()


