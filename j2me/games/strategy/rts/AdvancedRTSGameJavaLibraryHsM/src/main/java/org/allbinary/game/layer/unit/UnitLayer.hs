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
module UnitLayer (module UnitLayer, module AdvancedRTSGameLayer) where

import AdvancedRTSGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, updateWaypointBehavior, updateWaypointBehavior_super, updateWaypointBehavior_impl, construct, construct_super, construct_impl, updateSensorGeographicMapCellPositionList, updateSensorGeographicMapCellPositionList_super, updateSensorGeographicMapCellPositionList_impl, getSensorGeographicMapCellPositionList, getSensorGeographicMapCellPositionList_super, getSensorGeographicMapCellPositionList_impl, select, select_super, select_impl, deselect, deselect_super, deselect_impl, setSelected, setSelected_super, setSelected_impl, setClosestGeographicMapCellHistory, setClosestGeographicMapCellHistory_super, setClosestGeographicMapCellHistory_impl, init, init_super, init_impl, onMovement, onMovement_super, onMovement_impl, onMovementFound, onMovementFound_super, onMovementFound_impl, initRangeHack, initRangeHack_super, initRangeHack_impl, processBuiltTick, processBuiltTick_super, processBuiltTick_impl, teleportTo, teleportTo_super, teleportTo_impl, getCurrentGeographicMapCellPosition, getCurrentGeographicMapCellPosition_super, getCurrentGeographicMapCellPosition_impl, fire, fire_super, fire_impl, left, left_super, left_impl, right, right_super, right_impl, down, down_super, down_impl, up, up_super, up_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, processInput, processInput_super, processInput_impl, accelerate, accelerate_super, accelerate_impl, fireAll, fireAll_super, fireAll_impl, downgrade, downgrade_super, downgrade_impl, upgrade, upgrade_super, upgrade_impl, groundFriction, groundFriction_super, groundFriction_impl, trackTo, trackTo_super, trackTo_impl, trackToDXY, trackToDXY_super, trackToDXY_impl, turnTo, turnTo_super, turnTo_impl, handleDeltalX, handleDeltalX_super, handleDeltalX_impl, handleDeltalY, handleDeltalY_super, handleDeltalY_impl, trackToDXYTargetAngle, trackToDXYTargetAngle_super, trackToDXYTargetAngle_impl, fireOrMove, fireOrMove_super, fireOrMove_impl, move, move_super, move_impl, allStop, allStop_super, allStop_impl, paint, paint_super, paint_impl, onBuildingEvent, onBuildingEvent_super, onBuildingEvent_impl, getVehicleProperties, getVehicleProperties_super, getVehicleProperties_impl, damage, damage_super, damage_impl, getDamage, getDamage_super, getDamage_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, getLoad, getLoad_super, getLoad_impl, clearResourceAnimation, clearResourceAnimation_super, clearResourceAnimation_impl, setLoad, setLoad_super, setLoad_impl, addLoad, addLoad_super, addLoad_impl, handleCost, handleCost_super, handleCost_impl, createHudPaintable, createHudPaintable_super, createHudPaintable_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, getType, getType_super, getType_impl, getStaticType, getStaticType_super, getStaticType_impl, getUnitWaypointBehavior, getUnitWaypointBehavior_super, getUnitWaypointBehavior_impl, getTrackingEvent, getTrackingEvent_super, getTrackingEvent_impl, getCaptionAnimationHelper, getCaptionAnimationHelper_super, getCaptionAnimationHelper_impl, isSelfUpgradeable, isSelfUpgradeable_super, isSelfUpgradeable_impl, getMaxResourceLoad, getMaxResourceLoad_super, getMaxResourceLoad_impl, getPartialpositionlist, getPartialpositionlist_super, getPartialpositionlist_impl, basicColorFactory, groupCommonFactory, layerPartialCellPositionsUtil, layerDistanceUtil, angleFactory, cellPositionFactory, maxResourceLoad, vehicleProperties, accelerationBasicDecimal, decelerationBasicDecimal, trackingEvent, damageFloaters, damageFloatersPaintableInterface, healthBar, moveSoundInterface, initResourceAnimation, resourceAnimation, initPathAnimation, pathAnimation, captionAnimationHelper, decalAnimation, waypointLayerInterfaceFactoryInterface, partialPositionList, resourceLoad, weaponRange, rtsLogHelper, rotationAnimationInterfaceP, movementAngle, steeringInsideGeographicMapCellPosition, sensorGeographicMapCellPositionList, sENSOR_RANGE_MULTIPLIER, mOVE, cAPITAL_EVENT)
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
import qualified CollidableUnitBehavior -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified UnitWaypointBehavior2 -- same package or java.lang
import qualified UnitWaypointBehavior -- same package or java.lang
import qualified ShakeAnimationListener -- same package or java.lang
import qualified AllBinaryVibrationME -- same package or java.lang
import qualified TimeDelayHelper -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified TickableInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified ExplosionBasicSound -- org.allbinary.ag.weapon.media.audio.ExplosionBasicSound
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified NullIndexedAnimationFactory -- org.allbinary.animation.NullIndexedAnimationFactory
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified CaptionAnimationHelper -- org.allbinary.animation.caption.CaptionAnimationHelper
import qualified CaptionAnimationHelperBase -- org.allbinary.animation.caption.CaptionAnimationHelperBase
import qualified AdjustedCircleAnimation -- org.allbinary.animation.vector.AdjustedCircleAnimation
import qualified Direction -- org.allbinary.direction.Direction
import qualified DamageFloaters -- org.allbinary.game.combat.damage.DamageFloaters
import qualified PtsDamageFloaters -- org.allbinary.game.combat.damage.PtsDamageFloaters
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified Health -- org.allbinary.game.health.Health
import qualified HealthBar -- org.allbinary.game.health.HealthBar
import qualified HealthBarTwodAnimation -- org.allbinary.game.health.HealthBarTwodAnimation
import qualified Group -- org.allbinary.game.identification.Group
import qualified GroupCommonFactory -- org.allbinary.game.identification.GroupCommonFactory
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified GameKeyEventUtil -- org.allbinary.game.input.event.GameKeyEventUtil
import qualified VisibleCellPositionsSingleton -- org.allbinary.game.input.form.VisibleCellPositionsSingleton
import qualified WaypointRTSFormInput -- org.allbinary.game.input.form.WaypointRTSFormInput
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified AdvancedRTSProperties -- org.allbinary.game.layer.AdvancedRTSProperties
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified CaptionResources -- org.allbinary.game.layer.CaptionResources
import qualified LinePathRelativeAnimation -- org.allbinary.game.layer.LinePathRelativeAnimation
import qualified PathAnimation -- org.allbinary.game.layer.PathAnimation
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified RTSLayer2LogHelper -- org.allbinary.game.layer.RTSLayer2LogHelper
import qualified RTSLayer2SelectedLogHelper -- org.allbinary.game.layer.RTSLayer2SelectedLogHelper
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified RTSLayerHudPaintable -- org.allbinary.game.layer.RTSLayerHudPaintable
import qualified RTSLayerLogHelper -- org.allbinary.game.layer.RTSLayerLogHelper
import qualified RTSLayerSelectedLogHelper -- org.allbinary.game.layer.RTSLayerSelectedLogHelper
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified SelectionHudPaintable -- org.allbinary.game.layer.SelectionHudPaintable
import qualified SensorActionFactory -- org.allbinary.game.layer.SensorActionFactory
import qualified SteeringVisitor -- org.allbinary.game.layer.SteeringVisitor
import qualified TiledLayerUtil -- org.allbinary.game.layer.TiledLayerUtil
import qualified VehicleFrictionProperties -- org.allbinary.game.layer.VehicleFrictionProperties
import qualified VehicleProperties -- org.allbinary.game.layer.VehicleProperties
import qualified WaypointBehaviorBase -- org.allbinary.game.layer.WaypointBehaviorBase
import qualified BuildingLayer -- org.allbinary.game.layer.building.BuildingLayer
import qualified BuildingEventHandler -- org.allbinary.game.layer.building.event.BuildingEventHandler
import qualified BuildingEventListenerInterface -- org.allbinary.game.layer.building.event.BuildingEventListenerInterface
import qualified CapitalEvent -- org.allbinary.game.layer.capital.event.CapitalEvent
import qualified CapitalEventHandlerFactory -- org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory
import qualified LayerPartialCellPositionsUtil -- org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil
import qualified SpecialDownGameInputProcessor -- org.allbinary.game.layer.special.SpecialDownGameInputProcessor
import qualified SpecialFireGameInputProcessor -- org.allbinary.game.layer.special.SpecialFireGameInputProcessor
import qualified SpecialLeftGameInputProcessor -- org.allbinary.game.layer.special.SpecialLeftGameInputProcessor
import qualified SpecialRightGameInputProcessor -- org.allbinary.game.layer.special.SpecialRightGameInputProcessor
import qualified SpecialUpGameInputProcessor -- org.allbinary.game.layer.special.SpecialUpGameInputProcessor
import qualified MultipassNoCacheWaypoint -- org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint
import qualified NoCacheWaypoint -- org.allbinary.game.layer.waypoint.NoCacheWaypoint
import qualified WaypointBase -- org.allbinary.game.layer.waypoint.WaypointBase
import qualified WaypointEventHandlerFactory -- org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified BasicWeaponPart -- org.allbinary.game.part.weapon.BasicWeaponPart
import qualified SalvoInterface -- org.allbinary.game.part.weapon.SalvoInterface
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified TrackingEventListenerInterface -- org.allbinary.game.tracking.TrackingEventListenerInterface
import qualified CellPositionFactory -- org.allbinary.graphics.CellPositionFactory
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified Layer -- org.allbinary.layer.Layer
import qualified LayerInterfaceFactoryInterface -- org.allbinary.layer.LayerInterfaceFactoryInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified FrameUtil -- org.allbinary.math.FrameUtil
import qualified LayerDistanceUtil -- org.allbinary.math.LayerDistanceUtil
import qualified NamedAngle -- org.allbinary.math.NamedAngle
import qualified AttackSound -- org.allbinary.media.audio.AttackSound
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified RaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase

-- implements BuildingEventListenerInterface
-- implements TrackingEventListenerInterface
data UnitLayer = UnitLayer
    { header_ :: JavaHeader
    , base :: AdvancedRTSGameLayer.AdvancedRTSGameLayer
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , groupCommonFactory :: IORef (GroupCommonFactory.GroupCommonFactory)
    , layerPartialCellPositionsUtil :: IORef (LayerPartialCellPositionsUtil.LayerPartialCellPositionsUtil)
    , layerDistanceUtil :: IORef (LayerDistanceUtil.LayerDistanceUtil)
    , angleFactory :: IORef (AngleFactory.AngleFactory)
    , cellPositionFactory :: IORef (CellPositionFactory.CellPositionFactory)
    , maxResourceLoad :: IORef (Int16)
    , vehicleProperties :: IORef (VehicleProperties.VehicleProperties)
    , accelerationBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , decelerationBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , trackingEvent :: IORef (TrackingEvent.TrackingEvent)
    , damageFloaters :: IORef (DamageFloaters.DamageFloaters)
    , damageFloatersPaintableInterface :: IORef (Paintable.Paintable)
    , healthBar :: IORef (Paintable.Paintable)
    , moveSoundInterface :: IORef (Sound.Sound)
    , initResourceAnimation :: IORef (RotationAnimation.RotationAnimation)
    , resourceAnimation :: IORef (IndexedAnimation.IndexedAnimation)
    , initPathAnimation :: IORef (PathAnimation.PathAnimation)
    , pathAnimation :: IORef (Animation.Animation)
    , captionAnimationHelper :: IORef (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
    , decalAnimation :: IORef (RotationAnimation.RotationAnimation)
    , waypointLayerInterfaceFactoryInterface :: IORef (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
    , resourceLoad :: IORef (Int)
    , weaponRange :: IORef (Int)
    , rtsLogHelper :: IORef (RTSLayerLogHelper.RTSLayerLogHelper)
    , rotationAnimationInterfaceP :: IORef (RotationAnimation.RotationAnimation)
    , movementAngle :: IORef (NamedAngle.NamedAngle)
    , steeringInsideGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , sensorGeographicMapCellPositionList :: IORef (BasicArrayList.BasicArrayList)
    , cAPITAL_EVENT :: IORef (CapitalEvent.CapitalEvent)
    }

instance JavaNull UnitLayer where
    javaNull = javaNullRecord "UnitLayer"

instance JavaEquals UnitLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitLayer where
    (==) = jrecordEquals

instance JavaObjectClass UnitLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE partialPositionList #-}
partialPositionList = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 4)))

sENSOR_RANGE_MULTIPLIER = 6

mOVE = "Moving"

newRecord_ :: IO UnitLayer
newRecord_ = do
    base <- AdvancedRTSGameLayer.newRecord_
    let header_ = base.header_
    basicColorFactory <- newIORef javaNull
    groupCommonFactory <- newIORef javaNull
    layerPartialCellPositionsUtil <- newIORef javaNull
    layerDistanceUtil <- newIORef javaNull
    angleFactory <- newIORef javaNull
    cellPositionFactory <- newIORef javaNull
    maxResourceLoad <- newIORef 0
    vehicleProperties <- newIORef javaNull
    accelerationBasicDecimal <- newIORef javaNull
    decelerationBasicDecimal <- newIORef javaNull
    trackingEvent <- newIORef javaNull
    damageFloaters <- newIORef javaNull
    damageFloatersPaintableInterface <- newIORef javaNull
    healthBar <- newIORef javaNull
    moveSoundInterface <- newIORef javaNull
    initResourceAnimation <- newIORef javaNull
    resourceAnimation <- newIORef javaNull
    initPathAnimation <- newIORef javaNull
    pathAnimation <- newIORef javaNull
    captionAnimationHelper <- newIORef javaNull
    decalAnimation <- newIORef javaNull
    waypointLayerInterfaceFactoryInterface <- newIORef javaNull
    resourceLoad <- newIORef 0
    weaponRange <- newIORef 0
    rtsLogHelper <- newIORef javaNull
    rotationAnimationInterfaceP <- newIORef javaNull
    movementAngle <- newIORef javaNull
    steeringInsideGeographicMapCellPosition <- newIORef javaNull
    sensorGeographicMapCellPositionList <- newIORef javaNull
    cAPITAL_EVENT <- newIORef javaNull
    let this = UnitLayer header_ base basicColorFactory groupCommonFactory layerPartialCellPositionsUtil layerDistanceUtil angleFactory cellPositionFactory maxResourceLoad vehicleProperties accelerationBasicDecimal decelerationBasicDecimal trackingEvent damageFloaters damageFloatersPaintableInterface healthBar moveSoundInterface initResourceAnimation resourceAnimation initPathAnimation pathAnimation captionAnimationHelper decalAnimation waypointLayerInterfaceFactoryInterface resourceLoad weaponRange rtsLogHelper rotationAnimationInterfaceP movementAngle steeringInsideGeographicMapCellPosition sensorGeographicMapCellPositionList cAPITAL_EVENT
    jregisterLevel header_ this
    BuildingEventListenerInterface.registerInterface_ header_
    TrackingEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "updateWaypointBehavior" (\() -> updateWaypointBehavior_impl this)
    jregisterMethod header_ "construct" (\() -> construct_impl this)
    jregisterMethod header_ "updateSensorGeographicMapCellPositionList" (\() -> updateSensorGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "getSensorGeographicMapCellPositionList" (\() -> getSensorGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "select" (\() -> select_impl this)
    jregisterMethod header_ "deselect" (\() -> deselect_impl this)
    jregisterMethod header_ "setSelected" (\() -> setSelected_impl this)
    jregisterMethod header_ "setClosestGeographicMapCellHistory" (\() -> setClosestGeographicMapCellHistory_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "onMovement" (\() -> onMovement_impl this)
    jregisterMethod header_ "onMovementFound" (\() -> onMovementFound_impl this)
    jregisterMethod header_ "initRangeHack" (\() -> initRangeHack_impl this)
    jregisterMethod header_ "processBuiltTick" (\() -> processBuiltTick_impl this)
    jregisterMethod header_ "teleportTo" (\() -> teleportTo_impl this)
    jregisterMethod header_ "getCurrentGeographicMapCellPosition" (\() -> getCurrentGeographicMapCellPosition_impl this)
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "down" (\() -> down_impl this)
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "accelerate" (\() -> accelerate_impl this)
    jregisterMethod header_ "fireAll" (\() -> fireAll_impl this)
    jregisterMethod header_ "downgrade" (\() -> downgrade_impl this)
    jregisterMethod header_ "upgrade" (\() -> upgrade_impl this)
    jregisterMethod header_ "groundFriction" (\() -> groundFriction_impl this)
    jregisterMethod header_ "trackTo" (\() -> trackTo_impl this)
    jregisterMethod header_ "trackToDXY" (\() -> trackToDXY_impl this)
    jregisterMethod header_ "turnTo" (\() -> turnTo_impl this)
    jregisterMethod header_ "handleDeltalX" (\() -> handleDeltalX_impl this)
    jregisterMethod header_ "handleDeltalY" (\() -> handleDeltalY_impl this)
    jregisterMethod header_ "trackToDXYTargetAngle" (\() -> trackToDXYTargetAngle_impl this)
    jregisterMethod header_ "fireOrMove" (\() -> fireOrMove_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "allStop" (\() -> allStop_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "onBuildingEvent" (\() -> onBuildingEvent_impl this)
    jregisterMethod header_ "getVehicleProperties" (\() -> getVehicleProperties_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "getLoad" (\() -> getLoad_impl this)
    jregisterMethod header_ "clearResourceAnimation" (\() -> clearResourceAnimation_impl this)
    jregisterMethod header_ "setLoad" (\() -> setLoad_impl this)
    jregisterMethod header_ "addLoad" (\() -> addLoad_impl this)
    jregisterMethod header_ "handleCost" (\() -> handleCost_impl this)
    jregisterMethod header_ "createHudPaintable" (\() -> createHudPaintable_impl this)
    jregisterMethod header_ "getHudPaintable" (\() -> getHudPaintable_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getUnitWaypointBehavior" (\() -> getUnitWaypointBehavior_impl this)
    jregisterMethod header_ "getTrackingEvent" (\() -> getTrackingEvent_impl this)
    jregisterMethod header_ "getCaptionAnimationHelper" (\() -> getCaptionAnimationHelper_impl this)
    jregisterMethod header_ "isSelfUpgradeable" (\() -> isSelfUpgradeable_impl this)
    jregisterMethod header_ "getMaxResourceLoad" (\() -> getMaxResourceLoad_impl this)
    pure this

initFields_ :: UnitLayer -> IO ()
initFields_ this = do
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.groupCommonFactory =<< (GroupCommonFactory.getInstance)
    jset this.layerPartialCellPositionsUtil =<< (LayerPartialCellPositionsUtil.getInstance)
    jset this.layerDistanceUtil =<< (LayerDistanceUtil.getInstance)
    jset this.angleFactory =<< (AngleFactory.getInstance)
    jset this.cellPositionFactory =<< (CellPositionFactory.getInstance)
    jset this.maxResourceLoad (0)
    jset this.vehicleProperties (javaNull)
    jset this.accelerationBasicDecimal =<< (BasicDecimal.new_1 1600)
    jset this.decelerationBasicDecimal =<< (BasicDecimal.new_1 (Prelude.negate 1000))
    jset this.trackingEvent (javaNull)
    jset this.damageFloaters (javaNull)
    jset this.damageFloatersPaintableInterface (javaNull)
    jset this.healthBar (javaNull)
    jset this.moveSoundInterface (javaNull)
    jset this.initResourceAnimation (javaNull)
    jset this.resourceAnimation ((javaCast (jio (NullIndexedAnimationFactory.getInstance ((jio (NullIndexedAnimationFactory.getFactoryInstance))) 0)) :: IndexedAnimation.IndexedAnimation))
    jset this.initPathAnimation (javaNull)
    jset this.pathAnimation =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    jset this.captionAnimationHelper =<< (fmap (\value_ -> javaCast value_ :: CaptionAnimationHelperBase.CaptionAnimationHelperBase) (CaptionAnimationHelper.new_5 (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (CaptionResources.getInstance))).rESOURCE)))) 0)) (Prelude.negate 23) (Prelude.negate 25) 6 0))
    jset this.decalAnimation (javaNull)
    jset this.waypointLayerInterfaceFactoryInterface (javaNull)
    jset this.resourceLoad (0)
    jset this.weaponRange (0)
    jset this.rtsLogHelper =<< (RTSLayerLogHelper.getInstance)
    jset this.rotationAnimationInterfaceP (javaNull)
    jset this.movementAngle ((jget ((jget (this).angleFactory)).nOT_ANGLE))
    jset this.steeringInsideGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.sensorGeographicMapCellPositionList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.cAPITAL_EVENT =<< (CapitalEvent.new_1 this)
    pure ()

new_25 :: RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> AdvancedRTSProperties.AdvancedRTSProperties -> JavaArray (Group.Group) -> String -> String -> VehicleProperties.VehicleProperties -> Health.Health -> Int -> Sound.Sound -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Direction.Direction -> Int -> Int -> Int -> ViewPositionBase.ViewPositionBase -> IO UnitLayer
new_25 remoteInfo parentLayer advancedRTSProperties groupInterface rootName name vehicleProperties healthInterface maxResourceLoad moveSoundInterface waypointLayerInterfaceFactoryInterface animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface decalAnimationInterfaceFactoryInterface resourceAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle direction x y z viewPosition = do
    this <- newRecord_
    init_25 this remoteInfo parentLayer advancedRTSProperties groupInterface rootName name vehicleProperties healthInterface maxResourceLoad moveSoundInterface waypointLayerInterfaceFactoryInterface animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface decalAnimationInterfaceFactoryInterface resourceAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle direction x y z viewPosition
    pure this

init_25 :: UnitLayer -> RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> AdvancedRTSProperties.AdvancedRTSProperties -> JavaArray (Group.Group) -> String -> String -> VehicleProperties.VehicleProperties -> Health.Health -> Int -> Sound.Sound -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Direction.Direction -> Int -> Int -> Int -> ViewPositionBase.ViewPositionBase -> IO ()
init_25 this remoteInfo parentLayer advancedRTSProperties groupInterface rootName name vehicleProperties healthInterface maxResourceLoad moveSoundInterface waypointLayerInterfaceFactoryInterface animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface decalAnimationInterfaceFactoryInterface resourceAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle direction x y z viewPosition = do
        AdvancedRTSGameLayer.init_18 this.base (remoteInfo) (parentLayer) (advancedRTSProperties) (groupInterface) (rootName) (name) (healthInterface) (jio (WaypointRTSFormInput.new_2 groupInterface True)) (animationInterfaceFactoryInterface) (emptyAnimationInterfaceFactoryInterface) (baseAnimationInterfaceFactoryInterface) (buildAnimationInterfaceFactoryInterface) (verticleBuildAnimationInterfaceFactoryInterface) (proceduralAnimationInterfaceFactoryInterface) (rectangle) (x) (y) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AdvancedRTSGameLayer.setCollidableInferface this (javaCast (jio (CollidableUnitBehavior.new_1 True))))
        jset (this).waypointLayerInterfaceFactoryInterface (waypointLayerInterfaceFactoryInterface)
        jset (this).maxResourceLoad ((Prelude.fromIntegral maxResourceLoad))
        jset (this).moveSoundInterface (moveSoundInterface)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).dAMAGE_FLOATERS)))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: DamageFloaters.DamageFloaters) (PtsDamageFloaters.new_1 this))
            jset (this).damageFloaters (assignedValue)
            jset (this).damageFloatersPaintableInterface ((jget (this).damageFloaters))
        else do
            assignedValue <- (NullPaintable.getInstance)
            jset (this).damageFloatersPaintableInterface (assignedValue)
            assignedValue <- (DamageFloaters.new_)
            jset (this).damageFloaters (assignedValue)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).hEALTH_BARS)))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (HealthBar.new_4 this (jio (AdvancedRTSGameLayer.getHealthInterface this)) (jio (HealthBarTwodAnimation.new_2 (javaCast this :: AllBinaryLayer.AllBinaryLayer) (jget ((jio (BasicHudFactory.getInstance))).bOTTOMLEFT))) (Prelude.negate 1)))
            jset (this).healthBar (assignedValue)
        else do
            assignedValue <- (NullPaintable.getInstance)
            jset (this).healthBar (assignedValue)
        jset (this).decalAnimation ((javaCast (jio (AnimationInterfaceFactoryInterface.getInstance decalAnimationInterfaceFactoryInterface 0)) :: RotationAnimation.RotationAnimation))
        jset (this).initResourceAnimation ((javaCast (jio (AnimationInterfaceFactoryInterface.getInstance resourceAnimationInterfaceFactoryInterface 0)) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.setFrameByDirection ((jget (this).initResourceAnimation)) direction)
        Control.Monad.void (RotationAnimation.setFrameByDirection ((jget (this).decalAnimation)) direction)
        jset (this).rotationAnimationInterfaceP ((javaCast (jget (this).base.base.indexedButShouldBeRotationAnimationInterface) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.setFrameByDirection ((jget (this).rotationAnimationInterfaceP)) direction)
        Control.Monad.void (AdvancedRTSGameLayer.setMaxLevel this 12)
        jset (this).vehicleProperties (vehicleProperties)
        assignedValue <- (TrackingEvent.new_1 this)
        jset (this).trackingEvent (assignedValue)
        assignedValue <- (PathAnimation.new_2 this (jio (LinePathRelativeAnimation.getInstance)))
        jset (this).initPathAnimation (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: UnitLayer))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: UnitLayer)) a1

setAllBinaryGameLayerManager_impl :: UnitLayer -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (AdvancedRTSGameLayer.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        Control.Monad.void (PathAnimation.setAllBinaryGameLayerManager ((jget (this).initPathAnimation)) allBinaryGameLayerManager)
        pure ()


-- throws Exception
updateWaypointBehavior :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior object_ a1 = jmethod object_ "updateWaypointBehavior" (\() -> (updateWaypointBehavior_impl (javaCast object_ :: UnitLayer))) () a1

updateWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior_super object_ a1 = (updateWaypointBehavior_impl (javaCast object_ :: UnitLayer)) a1

updateWaypointBehavior_impl :: UnitLayer -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior_impl this geographicMapInterface = do
        hashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).groupCommonFactory)).iD) (jio (AdvancedRTSGameLayer.getGroupInterface this)))
        Control.Monad.void (ABHashtable.put hashtable (Layer.iD) this)
        Control.Monad.void (ABHashtable.put hashtable (AllBinaryGameLayerManager.iD) (jget (this).base.base.base.base.allBinaryGameLayerManagerP))
        Control.Monad.void (AdvancedRTSGameLayer.setWaypointBehavior this (javaCast (jio (UnitWaypointBehavior2.new_2 this (javaCast (jio (LayerInterfaceFactoryInterface.getNextInstance ((jget (this).waypointLayerInterfaceFactoryInterface)) hashtable (jget (this).base.base.base.base.base.base.base.base.x) (jget (this).base.base.base.base.base.base.base.base.y) (jget (this).base.base.base.base.base.base.base.base.z))) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)))))
        features <- (Features.getInstance)
        let waypoint = (if (jio (J2MEUtil.isHTML)) then (jio (MultipassNoCacheWaypoint.new_2 this (jio (AttackSound.getInstance)))) else (jio (NoCacheWaypoint.new_2 this (jio (AttackSound.getInstance)))))
        Control.Monad.void (WaypointBehaviorBase.setWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this))) waypoint)
        Control.Monad.void (AdvancedRTSGameLayer.updateWaypointBehavior_super this.base geographicMapInterface)
        Control.Monad.void (UnitLayer.initRangeHack this)
        pure ()


-- throws Exception
construct :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct object_ a1 = jmethod object_ "construct" (\() -> (construct_impl (javaCast object_ :: UnitLayer))) () a1

construct_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_super object_ a1 = (construct_impl (javaCast object_ :: UnitLayer)) a1

construct_impl :: UnitLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_impl this rtsPlayerLayerInterface = do
        Control.Monad.void (AdvancedRTSGameLayer.construct_super this.base rtsPlayerLayerInterface)
        Control.Monad.void (TrackingEventHandler.addListenerInterface ((jio (TrackingEventHandler.getInstance))) (javaCast this))
        Control.Monad.void (WaypointEventHandler.addListenerInterface ((jio (WaypointEventHandlerFactory.getInstance (jindex ((jio (AdvancedRTSGameLayer.getGroupInterface this))) (0))))) (javaCast (jio (UnitLayer.getUnitWaypointBehavior this))))
        Control.Monad.void (BuildingEventHandler.addListenerInterface ((jio (BuildingEventHandler.getInstance))) (javaCast this))
        Control.Monad.void (UnitWaypointBehavior.setCurrentPathGeographicMapCellPosition ((jio (UnitLayer.getUnitWaypointBehavior this))) (jio (UnitLayer.getCurrentGeographicMapCellPosition this)))
        Control.Monad.void (UnitLayer.updateSensorGeographicMapCellPositionList this)
        Control.Monad.void (UnitWaypointBehavior.setLastPathGeographicMapCellPosition ((jio (UnitLayer.getUnitWaypointBehavior this))) (jio (UnitWaypointBehavior.getCurrentPathGeographicMapCellPosition ((jio (UnitLayer.getUnitWaypointBehavior this))))))
        pure ()


-- throws Exception
updateSensorGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (())
updateSensorGeographicMapCellPositionList object_ = jmethod object_ "updateSensorGeographicMapCellPositionList" (\() -> (updateSensorGeographicMapCellPositionList_impl (javaCast object_ :: UnitLayer))) ()

updateSensorGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSensorGeographicMapCellPositionList_super object_ = (updateSensorGeographicMapCellPositionList_impl (javaCast object_ :: UnitLayer))

updateSensorGeographicMapCellPositionList_impl :: UnitLayer -> IO (())
updateSensorGeographicMapCellPositionList_impl this = do
        when (jio (VisibleCellPositionsSingleton.shouldProcess ((jio (VisibleCellPositionsSingleton.getInstance))))) $ do
            currentGeographicMapCellPosition <- (UnitLayer.getCurrentGeographicMapCellPosition this)
            Control.Monad.void (BasicArrayList.clear ((jget (this).sensorGeographicMapCellPositionList)))
            Control.Monad.void (BasicArrayList.add ((jget (this).sensorGeographicMapCellPositionList)) currentGeographicMapCellPosition)
            let sensorRange = ((jget (this).weaponRange) * UnitLayer.sENSOR_RANGE_MULTIPLIER)
            let geographicMapCompositeInterface = (javaCast (jget (this).base.base.base.base.allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
            let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
            tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
            let totalCells = (((sensorRange `quot` (jio (AllBinaryTiledLayer.getCellHeight tiledLayer)))) `quot` 2)
            geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
            column <- (GeographicMapCellPosition.getColumn currentGeographicMapCellPosition)
            row <- (GeographicMapCellPosition.getRow currentGeographicMapCellPosition)
            lastColumn <- newIORef ((column + totalCells))
            lastRow <- newIORef ((row + totalCells))
            when ((jget lastColumn) > (jio (AllBinaryTiledLayer.getColumns tiledLayer))) $ do
                assignedValue <- (AllBinaryTiledLayer.getColumns tiledLayer)
                jset lastColumn (assignedValue)
            when ((jget lastRow) > (jio (AllBinaryTiledLayer.getRows tiledLayer))) $ do
                assignedValue <- (AllBinaryTiledLayer.getRows tiledLayer)
                jset lastRow (assignedValue)
            firstColumn <- newIORef ((column - totalCells))
            firstRow <- newIORef ((row - totalCells))
            when ((jget firstColumn) < 0) $ do
                jset firstColumn (0)
            when ((jget firstRow) < 0) $ do
                jset firstRow (0)
            forM_ [((jget lastColumn) - 1), ((jget lastColumn) - 1) + (-1) .. (jget firstColumn)] $ \index -> javaIteration (pure ()) $ do
                forM_ [((jget lastRow) - 1), ((jget lastRow) - 1) + (-1) .. (jget firstRow)] $ \index2 -> javaIteration (pure ()) $ do
                    geographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory index index2)
                    when (Prelude.not (jio (BasicArrayList.contains ((jget (this).sensorGeographicMapCellPositionList)) geographicMapCellPosition))) $ do
                        Control.Monad.void (BasicArrayList.add ((jget (this).sensorGeographicMapCellPositionList)) geographicMapCellPosition)
        pure ()


getSensorGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSensorGeographicMapCellPositionList object_ = jmethod object_ "getSensorGeographicMapCellPositionList" (\() -> (getSensorGeographicMapCellPositionList_impl (javaCast object_ :: UnitLayer))) ()

getSensorGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSensorGeographicMapCellPositionList_super object_ = (getSensorGeographicMapCellPositionList_impl (javaCast object_ :: UnitLayer))

getSensorGeographicMapCellPositionList_impl :: UnitLayer -> IO (BasicArrayList.BasicArrayList)
getSensorGeographicMapCellPositionList_impl this = do
        pure ((jget (this).sensorGeographicMapCellPositionList))


select :: (JavaObjectClass this_) => this_ -> IO (())
select object_ = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: UnitLayer))) ()

select_super :: (JavaObjectClass this_) => this_ -> IO (())
select_super object_ = (select_impl (javaCast object_ :: UnitLayer))

select_impl :: UnitLayer -> IO (())
select_impl this = do
        jset (this).pathAnimation ((jget (this).initPathAnimation))
        Control.Monad.void (AdvancedRTSGameLayer.select_super this.base)
        pure ()


deselect :: (JavaObjectClass this_) => this_ -> IO (())
deselect object_ = jmethod object_ "deselect" (\() -> (deselect_impl (javaCast object_ :: UnitLayer))) ()

deselect_super :: (JavaObjectClass this_) => this_ -> IO (())
deselect_super object_ = (deselect_impl (javaCast object_ :: UnitLayer))

deselect_impl :: UnitLayer -> IO (())
deselect_impl this = do
        assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
        jset (this).pathAnimation (assignedValue)
        Control.Monad.void (AdvancedRTSGameLayer.deselect_super this.base)
        pure ()


setSelected :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSelected object_ a1 = jmethod object_ "setSelected" (\() -> (setSelected_impl (javaCast object_ :: UnitLayer))) () a1

setSelected_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSelected_super object_ a1 = (setSelected_impl (javaCast object_ :: UnitLayer)) a1

setSelected_impl :: UnitLayer -> Bool -> IO (())
setSelected_impl this selected = do
        Control.Monad.void (AdvancedRTSGameLayer.setSelected_super this.base selected)
        if selected then do
            when (jget (this).base.base.debug) $ do
                assignedValue <- (RTSLayerSelectedLogHelper.getInstance)
                jset (this).rtsLogHelper (assignedValue)
            assignedValue <- (RTSLayer2SelectedLogHelper.getInstance)
            jset (this).base.base.rtsLayer2LogHelper (assignedValue)
        else do
            when (jget (this).base.base.debug) $ do
                assignedValue <- (RTSLayerLogHelper.getInstance)
                jset (this).rtsLogHelper (assignedValue)
            assignedValue <- (RTSLayer2LogHelper.getInstance)
            jset (this).base.base.rtsLayer2LogHelper (assignedValue)
        pure ()


-- throws Exception
setClosestGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory object_ a1 = jmethod object_ "setClosestGeographicMapCellHistory" (\() -> (setClosestGeographicMapCellHistory_impl (javaCast object_ :: UnitLayer))) () a1

setClosestGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_super object_ a1 = (setClosestGeographicMapCellHistory_impl (javaCast object_ :: UnitLayer)) a1

setClosestGeographicMapCellHistory_impl :: UnitLayer -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_impl this pathsList = do
        Control.Monad.void (RTSLayerLogHelper.setClosestGeographicMapCellHistory ((jget (this).rtsLogHelper)) (javaCast this) pathsList)
        closestIndex <- newIORef ((Prelude.negate 1))
        shortestDistance <- newIORef ((2147483647 :: Int))
        currentDistance <- newIORef ((2147483647 :: Int))
        forM_ [((jio (BasicArrayList.size pathsList)) - 1), ((jio (BasicArrayList.size pathsList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let geographicMapCellPositionBasicArrayList = (javaCast (jio (BasicArrayList.get pathsList index)) :: BasicArrayList.BasicArrayList)
            let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get geographicMapCellPositionBasicArrayList ((jio (BasicArrayList.size geographicMapCellPositionBasicArrayList)) - 1))) :: GeographicMapCellPosition.GeographicMapCellPosition)
            assignedValue <- (LayerDistanceUtil.getDistanceAt ((jget (this).layerDistanceUtil)) (javaCast this) (jio (GeographicMapCellPosition.getMidPoint geographicMapCellPosition)))
            jset currentDistance (assignedValue)
            when ((jget currentDistance) < (jget shortestDistance)) $ do
                jset shortestDistance ((jget currentDistance))
                jset closestIndex (index)
        when ((jget closestIndex) >= 0) $ do
            let geographicMapCellPositionBasicArrayList = (javaCast (jio (BasicArrayList.get pathsList (jget closestIndex))) :: BasicArrayList.BasicArrayList)
            let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get geographicMapCellPositionBasicArrayList 0)) :: GeographicMapCellPosition.GeographicMapCellPosition)
            Control.Monad.void (UnitLayer.teleportTo this geographicMapCellPosition)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: UnitLayer))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: UnitLayer)) a1 a2

init_impl :: UnitLayer -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_impl this geographicMapCellHistory geographicMapCellPositionBasicArrayList = do
        Control.Monad.void (GeographicMapCellHistory.trackAll geographicMapCellHistory geographicMapCellPositionBasicArrayList)
        pure ()


onMovement :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement object_ a1 = jmethod object_ "onMovement" (\() -> (onMovement_impl (javaCast object_ :: UnitLayer))) () a1

onMovement_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement_super object_ a1 = (onMovement_impl (javaCast object_ :: UnitLayer)) a1

onMovement_impl :: UnitLayer -> TrackingEvent.TrackingEvent -> IO (())
onMovement_impl this trackingEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).eXCEPTION) this "onMovement" e)
            ) $ do
            let layerInterface = (javaCast (jio (TrackingEvent.getLayerInterface trackingEvent)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            when ((jindex ((jio (AdvancedRTSGameLayer.getGroupInterface layerInterface))) (0)) /= (jindex ((jio (AdvancedRTSGameLayer.getGroupInterface this))) (0))) $ do
                Control.Monad.void (BasicArrayList.add ((jio (UnitWaypointBehavior.getPossibleTargetList ((jio (UnitLayer.getUnitWaypointBehavior this)))))) layerInterface)
                Control.Monad.void (AdvancedRTSGameLayer.onMovementFound layerInterface (jio (UnitLayer.getTrackingEvent this)))
        pure ()


-- throws Exception
onMovementFound :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovementFound object_ a1 = jmethod object_ "onMovementFound" (\() -> (onMovementFound_impl (javaCast object_ :: UnitLayer))) () a1

onMovementFound_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovementFound_super object_ a1 = (onMovementFound_impl (javaCast object_ :: UnitLayer)) a1

onMovementFound_impl :: UnitLayer -> TrackingEvent.TrackingEvent -> IO (())
onMovementFound_impl this trackingEvent = do
        let layerInterface = (javaCast (jio (TrackingEvent.getLayerInterface trackingEvent)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
        when ((jindex ((jio (AdvancedRTSGameLayer.getGroupInterface layerInterface))) (0)) /= (jindex ((jio (AdvancedRTSGameLayer.getGroupInterface this))) (0))) $ do
            Control.Monad.void (BasicArrayList.add ((jio (UnitWaypointBehavior.getPossibleTargetList ((jio (UnitLayer.getUnitWaypointBehavior this)))))) layerInterface)
        pure ()


initRangeHack :: (JavaObjectClass this_) => this_ -> IO (())
initRangeHack object_ = jmethod object_ "initRangeHack" (\() -> (initRangeHack_impl (javaCast object_ :: UnitLayer))) ()

initRangeHack_super :: (JavaObjectClass this_) => this_ -> IO (())
initRangeHack_super object_ = (initRangeHack_impl (javaCast object_ :: UnitLayer))

initRangeHack_impl :: UnitLayer -> IO (())
initRangeHack_impl this = do
        let basicWeaponPart = (javaCast (jindex ((jio (AdvancedRTSGameLayer.getPartInterfaceArray this))) (0)) :: BasicWeaponPart.BasicWeaponPart)
        weaponProperties <- (BasicWeaponPart.getWeaponProperties basicWeaponPart)
        assignedValue <- (WeaponProperties.getRange weaponProperties)
        jset (this).weaponRange (assignedValue)
        assignedValue <- (AdjustedCircleAnimation.createW (jget (this).weaponRange) (jget (this).weaponRange) (jio (AdvancedRTSGameLayer.getWidth this)) (jget ((jget (this).basicColorFactory)).gREEN))
        jset (this).base.base.initRangeAnimation (assignedValue)
        let sensorRange = ((jget (this).weaponRange) * UnitLayer.sENSOR_RANGE_MULTIPLIER)
        assignedValue <- (AdjustedCircleAnimation.createW sensorRange sensorRange (jio (AdvancedRTSGameLayer.getWidth this)) (jget ((jget (this).basicColorFactory)).rED))
        jset (this).base.base.initSensorRangeAnimation (assignedValue)
        Control.Monad.void (UnitWaypointBehavior.initRange ((jio (UnitLayer.getUnitWaypointBehavior this))) (jget (this).weaponRange))
        jset ((jget (this).base.base.fireTimeHelper)).delay (((Prelude.fromIntegral (jio (WeaponProperties.getReloadTime weaponProperties)))))
        pure ()


-- throws Exception
processBuiltTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick object_ a1 = jmethod object_ "processBuiltTick" (\() -> (processBuiltTick_impl (javaCast object_ :: UnitLayer))) () a1

processBuiltTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick_super object_ a1 = (processBuiltTick_impl (javaCast object_ :: UnitLayer)) a1

processBuiltTick_impl :: UnitLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick_impl this allBinaryLayerManager = do
        if (Prelude.not (jio (Health.isAlive ((jio (AdvancedRTSGameLayer.getHealthInterface this)))))) then do
            if (jio (AdvancedRTSGameLayer.isReadyForExplosion this)) then do
                currentFrame <- (IndexedAnimation.getFrame ((jget (this).base.base.destroyAnimationInterface)))
                let size = ((jio (IndexedAnimation.getSize ((jget (this).base.base.destroyAnimationInterface)))) - 1)
                if (currentFrame == size) then do
                    when (Prelude.not (jio (Health.isAlive ((jio (AdvancedRTSGameLayer.getHealthInterface this)))))) $ do
                        Control.Monad.void (UnitLayer.setDestroyed this True)
                else do
                    Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).base.base.destroyAnimationInterface)))
            else do
                Control.Monad.void (AdvancedRTSGameLayer.setAnimationInterface this (javaCast (jget (this).base.base.destroyAnimationInterface)))
                Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jio (ExplosionBasicSound.getInstance)))
                Control.Monad.void (ShakeAnimationListener.onSmallShakeEvent ((jget (this).base.shakeListener)))
                Control.Monad.void (AllBinaryVibrationME.vibrate ((jget (this).base.vibration)) (jget (this).base.duration) 0 0)
                Control.Monad.void (AdvancedRTSGameLayer.setReadyForExplosion this True)
        else do
            Control.Monad.void (AdvancedRTSGameLayer.processBuiltTick_super this.base allBinaryLayerManager)
        Control.Monad.void (CaptionAnimationHelperBase.tick ((jget (this).captionAnimationHelper)))
        Control.Monad.void (UnitWaypointBehavior.processTick ((jio (UnitLayer.getUnitWaypointBehavior this))) allBinaryLayerManager)
        pure ()


teleportTo :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo object_ a1 = jmethod object_ "teleportTo" (\() -> (teleportTo_impl (javaCast object_ :: UnitLayer))) () a1

teleportTo_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_super object_ a1 = (teleportTo_impl (javaCast object_ :: UnitLayer)) a1

teleportTo_impl :: UnitLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_impl this geographicMapCellPosition = do
        point <- (GeographicMapCellPosition.getMidPoint geographicMapCellPosition)
        Control.Monad.void (AdvancedRTSGameLayer.setPosition this ((jio (GPoint.getX point)) - (jio (AdvancedRTSGameLayer.getHalfWidth this))) ((jio (GPoint.getY point)) - (jio (AdvancedRTSGameLayer.getHalfHeight this))) (jget (this).base.base.base.base.base.base.base.base.z))
        pure ()


-- throws Exception
getCurrentGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition object_ = jmethod object_ "getCurrentGeographicMapCellPosition" (\() -> (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: UnitLayer))) ()

getCurrentGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_super object_ = (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: UnitLayer))

getCurrentGeographicMapCellPosition_impl :: UnitLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_impl this = do
        let geographicMapCompositeInterface = (javaCast (jget (this).base.base.base.base.allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        geographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXY geographicMapInterface ((jget (this).base.base.base.base.base.base.base.base.x) + (jio (AdvancedRTSGameLayer.getHalfWidth this))) ((jget (this).base.base.base.base.base.base.base.base.y) + (jio (AdvancedRTSGameLayer.getHalfHeight this))))
        let raceTrackGeographicMap = (javaCast geographicMapInterface :: RaceTrackGeographicMap.RaceTrackGeographicMap)
        when (Prelude.not (jio (RaceTrackGeographicMap.isValid raceTrackGeographicMap geographicMapCellPosition))) $ do
            javaThrow ((JavaException "Exception" ("Position is not really on the map: " ++ javaToString geographicMapCellPosition)))
        pure (geographicMapCellPosition)


-- throws Exception
fire :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire object_ a1 a2 = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: UnitLayer))) () a1 a2

fire_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_super object_ a1 a2 = (fire_impl (javaCast object_ :: UnitLayer)) a1 a2

fire_impl :: UnitLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_impl this layerManager gameKeyEvent = do
        if (jio (TimeDelayHelper.isTimeTNT ((jget (this).base.base.fireTimeHelper)))) then do
            Control.Monad.void (UnitLayer.fireAll this layerManager)
        else do
            Control.Monad.void (AdvancedRTSGameLayer.reload this)
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: UnitLayer))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: UnitLayer))

left_impl :: UnitLayer -> IO (())
left_impl this = do
        Control.Monad.void (RotationAnimation.previousRotation ((jget (this).initResourceAnimation)))
        Control.Monad.void (RotationAnimation.previousRotation ((jget (this).decalAnimation)))
        Control.Monad.void (RotationAnimation.previousRotation ((jget (this).rotationAnimationInterfaceP)))
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: UnitLayer))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: UnitLayer))

right_impl :: UnitLayer -> IO (())
right_impl this = do
        Control.Monad.void (RotationAnimation.nextRotation ((jget (this).initResourceAnimation)))
        Control.Monad.void (RotationAnimation.nextRotation ((jget (this).decalAnimation)))
        Control.Monad.void (RotationAnimation.nextRotation ((jget (this).rotationAnimationInterfaceP)))
        pure ()


down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: UnitLayer))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: UnitLayer))

down_impl :: UnitLayer -> IO (())
down_impl this = do
        velocityProperties <- (VehicleProperties.getVelocityProperties ((jio (UnitLayer.getVehicleProperties this))))
        when (Prelude.not (jio (VelocityProperties.isOverXYMaxForwardVelocity velocityProperties))) $ do
            Control.Monad.void (UnitLayer.accelerate this (jget (this).decelerationBasicDecimal))
        pure ()


up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: UnitLayer))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: UnitLayer))

up_impl :: UnitLayer -> IO (())
up_impl this = do
        velocityProperties <- (VehicleProperties.getVelocityProperties ((jio (UnitLayer.getVehicleProperties this))))
        when (Prelude.not (jio (VelocityProperties.isOverXYMaxForwardVelocity velocityProperties))) $ do
            Control.Monad.void (UnitLayer.accelerate this (jget (this).accelerationBasicDecimal))
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: UnitLayer))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: UnitLayer))

initInputProcessors_impl :: UnitLayer -> IO (())
initInputProcessors_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialRightGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).base.base.inputProcessorArray)) (Canvas.rIGHT) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialLeftGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).base.base.inputProcessorArray)) (Canvas.lEFT) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialFireGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).base.base.inputProcessorArray)) (Canvas.kEY_NUM0) (assignedValue)
        jsetIndex ((jget (this).base.base.inputProcessorArray)) (Canvas.kEY_POUND) ((jindex ((jget (this).base.base.inputProcessorArray)) (Canvas.kEY_NUM0)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialDownGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).base.base.inputProcessorArray)) (Canvas.dOWN) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialUpGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).base.base.inputProcessorArray)) (Canvas.uP) (assignedValue)
        Control.Monad.void (AdvancedRTSGameLayer.initInputProcessors_super this.base)
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: UnitLayer))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: UnitLayer)) a1

processInput_impl :: UnitLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        list <- (AdvancedRTSGameLayer.getGameKeyEventList this)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get list index)
            key <- (GameKeyEventUtil.getKey anyType)
            Control.Monad.void (processEvent ((jindex ((jget (this).base.base.inputProcessorArray)) (key))) layerManager (GameKeyEvent.nONE))
        Control.Monad.void (BasicArrayList.clear list)
        Control.Monad.void (UnitLayer.groundFriction this)
        Control.Monad.void (UnitLayer.move this)
        pure ()


accelerate :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
accelerate object_ a1 = jmethod object_ "accelerate" (\() -> (accelerate_impl (javaCast object_ :: UnitLayer))) () a1

accelerate_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
accelerate_super object_ a1 = (accelerate_impl (javaCast object_ :: UnitLayer)) a1

accelerate_impl :: UnitLayer -> BasicDecimal.BasicDecimal -> IO (())
accelerate_impl this accelerate = do
        Control.Monad.void (VelocityProperties.addVelocityi ((jio (VehicleProperties.getVelocityProperties ((jio (UnitLayer.getVehicleProperties this)))))) (jio (BasicDecimal.getUnscaled accelerate)) (Prelude.fromInteger (jnumericInteger (jio (RotationAnimation.getAngle ((jio (RotationAnimation.getAngleInfoP ((jget (this).rotationAnimationInterfaceP))))))))) 90)
        pure ()


-- throws Exception
fireAll :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
fireAll object_ a1 = jmethod object_ "fireAll" (\() -> (fireAll_impl (javaCast object_ :: UnitLayer))) () a1

fireAll_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
fireAll_super object_ a1 = (fireAll_impl (javaCast object_ :: UnitLayer)) a1

fireAll_impl :: UnitLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
fireAll_impl this layerManager = do
        angleInfo <- (RotationAnimation.getAngleInfoP ((jget (this).rotationAnimationInterfaceP)))
        let angle = (Prelude.fromInteger (jnumericInteger (((jio (AngleInfo.getAngle angleInfo)) + (jget (this).base.base.slightAngle)))))
        Control.Monad.void (ABHashtable.put ((jget (this).base.base.hashtable)) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 1)) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) (Prelude.fromIntegral (jio (Angle.getValue ((jio (AngleFactory.getAt ((jio (AngleFactory.getInstance))) angle)))))))))
        let salvoInterface = (javaCast (jindex ((jio (AdvancedRTSGameLayer.getPartInterfaceArray this))) (0)) :: SalvoInterface.SalvoInterface)
        Control.Monad.void (SalvoInterface.process salvoInterface layerManager (Prelude.fromIntegral angle) (Prelude.fromIntegral (90 :: Int)))
        pure ()


downgrade :: (JavaObjectClass this_) => this_ -> IO (())
downgrade object_ = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: UnitLayer))) ()

downgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
downgrade_super object_ = (downgrade_impl (javaCast object_ :: UnitLayer))

downgrade_impl :: UnitLayer -> IO (())
downgrade_impl this = do
        when ((jio (AdvancedRTSGameLayer.getLevel this)) > 1) $ do
            Control.Monad.void (AdvancedRTSGameLayer.downgrade_super this.base)
        pure ()


upgrade :: (JavaObjectClass this_) => this_ -> IO (())
upgrade object_ = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: UnitLayer))) ()

upgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
upgrade_super object_ = (upgrade_impl (javaCast object_ :: UnitLayer))

upgrade_impl :: UnitLayer -> IO (())
upgrade_impl this = do
        Control.Monad.void (AdvancedRTSGameLayer.upgrade_super this.base)
        Control.Monad.void (UnitLayer.initRangeHack this)
        pure ()


groundFriction :: (JavaObjectClass this_) => this_ -> IO (())
groundFriction object_ = jmethod object_ "groundFriction" (\() -> (groundFriction_impl (javaCast object_ :: UnitLayer))) ()

groundFriction_super :: (JavaObjectClass this_) => this_ -> IO (())
groundFriction_super object_ = (groundFriction_impl (javaCast object_ :: UnitLayer))

groundFriction_impl :: UnitLayer -> IO (())
groundFriction_impl this = do
        vehicleFrictionProperties <- (VehicleProperties.getVehicleFrictionProperties ((jio (UnitLayer.getVehicleProperties this))))
        Control.Monad.void (VehicleFrictionProperties.friction ((jio (VehicleProperties.getVehicleFrictionProperties ((jio (UnitLayer.getVehicleProperties this)))))) (jio (VehicleProperties.getVelocityProperties ((jio (UnitLayer.getVehicleProperties this))))) (jio (VehicleFrictionProperties.getTireFrictionNominator vehicleFrictionProperties)))
        pure ()


-- throws Exception
trackTo :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo object_ a1 = jmethod object_ "trackTo" (\() -> (trackTo_impl (javaCast object_ :: UnitLayer))) () a1

trackTo_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo_super object_ a1 = (trackTo_impl (javaCast object_ :: UnitLayer)) a1

trackTo_impl :: UnitLayer -> String -> IO (())
trackTo_impl this reason = do
        let waypointBehaviorBase = (javaCast (jget (this).base.waypointBehaviorBase) :: WaypointBehaviorBase.WaypointBehaviorBase)
        nextUnvisitedPathGeographicMapCellPosition <- (WaypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition waypointBehaviorBase)
        point <- (GeographicMapCellPosition.getMidPoint nextUnvisitedPathGeographicMapCellPosition)
        let dx = ((((jio (AdvancedRTSGameLayer.getXP this)) + (jio (AdvancedRTSGameLayer.getHalfWidth this)))) - (jio (GPoint.getX point)))
        let dy = ((((jio (AdvancedRTSGameLayer.getYP this)) + (jio (AdvancedRTSGameLayer.getHalfHeight this)))) - (jio (GPoint.getY point)))
        Control.Monad.void (RTSLayerLogHelper.trackTo ((jget (this).rtsLogHelper)) (javaCast this) nextUnvisitedPathGeographicMapCellPosition dx dy reason)
        Control.Monad.void (UnitLayer.trackToDXY this dx dy)
        pure ()


-- throws Exception
trackToDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY object_ a1 a2 = jmethod object_ "trackToDXY" (\() -> (trackToDXY_impl (javaCast object_ :: UnitLayer))) () a1 a2

trackToDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY_super object_ a1 a2 = (trackToDXY_impl (javaCast object_ :: UnitLayer)) a1 a2

trackToDXY_impl :: UnitLayer -> Int -> Int -> IO (())
trackToDXY_impl this dx dy = do
        let angleOfTarget = 0
        Control.Monad.void (UnitLayer.trackToDXYTargetAngle this dx dy angleOfTarget)
        pure ()


-- throws Exception
turnTo :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Bool)
turnTo object_ a1 a2 a3 = jmethod object_ "turnTo" (\() -> (turnTo_impl (javaCast object_ :: UnitLayer))) () a1 a2 a3

turnTo_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Bool)
turnTo_super object_ a1 a2 a3 = (turnTo_impl (javaCast object_ :: UnitLayer)) a1 a2 a3

turnTo_impl :: UnitLayer -> Int -> Int -> Int -> IO (Bool)
turnTo_impl this dx dy targetAngle = do
    targetAngle <- newIORef targetAngle
    javaCatchReturn $ do
        let waypointBehaviorBase = (javaCast (jget (this).base.waypointBehaviorBase) :: WaypointBehaviorBase.WaypointBehaviorBase)
        nextUnvisitedPathGeographicMapCellPosition <- (WaypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition waypointBehaviorBase)
        evading <- newIORef (False)
        when ((jio (UnitWaypointBehavior.getSensorAction ((jio (UnitLayer.getUnitWaypointBehavior this))))) == (jget ((jio (SensorActionFactory.getInstance))).eVADE)) $ do
            Control.Monad.void (RTSLayerLogHelper.evade ((jget (this).rtsLogHelper)) (javaCast this))
            jset evading (True)
            jset targetAngle (((jget targetAngle) + 180))
        angleInfo <- (RotationAnimation.getAngleInfoP ((jget (this).rotationAnimationInterfaceP)))
        angle <- (FrameUtil.adjustAngleToFrameAngle ((jio (FrameUtil.getInstance))) ((Prelude.fromIntegral (jio (AngleInfo.getAngle angleInfo))) - 270))
        Control.Monad.void (RTSLayerLogHelper.turnTo ((jget (this).rtsLogHelper)) (javaCast this) dx dy angleInfo angle (jget (this).movementAngle) (jget evading) (jget targetAngle))
        gameKeyEventFactory <- (GameKeyEventFactory.getInstance)
        if ((dx == 0) && (dy == 0)) then do
            Control.Monad.void (RTSLayerLogHelper.doneMoving ((jget (this).rtsLogHelper)) (javaCast this))
            javaReturn (True)
        else if (((Prelude.fromIntegral (jio (NamedAngle.getValue ((jget (this).movementAngle)))))) == angle) then do
            when ((dx > 0) && ((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).lEFT))) $ do
                Control.Monad.void (RTSLayerLogHelper.movingLeft ((jget (this).rtsLogHelper)) (javaCast this))
                javaReturn (False)
            when ((dx < 0) && ((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).rIGHT))) $ do
                Control.Monad.void (RTSLayerLogHelper.movingRight ((jget (this).rtsLogHelper)) (javaCast this))
                javaReturn (False)
            when ((dy > 0) && ((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).uP))) $ do
                Control.Monad.void (RTSLayerLogHelper.movingUp ((jget (this).rtsLogHelper)) (javaCast this))
                javaReturn (False)
            when ((dy < 0) && ((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).dOWN))) $ do
                Control.Monad.void (RTSLayerLogHelper.movingDown ((jget (this).rtsLogHelper)) (javaCast this))
                javaReturn (False)
            Control.Monad.void (RTSLayerLogHelper.currentMoveEnded ((jget (this).rtsLogHelper)) (javaCast this))
            if (((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).lEFT)) || ((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).rIGHT))) then do
                Control.Monad.void (UnitLayer.handleDeltalY this dx dy)
            else when (((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).uP)) || ((jget (this).movementAngle) == (jget ((jget (this).angleFactory)).dOWN))) $ do
                Control.Monad.void (UnitLayer.handleDeltalX this dx dy)
            javaReturn (True)
        else do
            if (nextUnvisitedPathGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
                when ((jget (this).steeringInsideGeographicMapCellPosition) /= nextUnvisitedPathGeographicMapCellPosition) $ do
                    if (((Prelude.abs dx) > (Prelude.abs dy)) && (dy /= 0)) then do
                        Control.Monad.void (UnitLayer.handleDeltalY this dx dy)
                    else if (dx /= 0) then do
                        Control.Monad.void (UnitLayer.handleDeltalX this dx dy)
                    else do
                        Control.Monad.void (UnitLayer.handleDeltalY this dx dy)
                let deltaAngle2 = ((Prelude.fromIntegral (jio (NamedAngle.getValue ((jget (this).movementAngle))))) - angle)
                if (deltaAngle2 > 0) then do
                    Control.Monad.void (RTSLayerLogHelper.rotateRight ((jget (this).rtsLogHelper)) (javaCast this))
                    Control.Monad.void (BasicArrayList.add ((jio (AdvancedRTSGameLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.rIGHT))))
                else do
                    Control.Monad.void (RTSLayerLogHelper.rotateLeft ((jget (this).rtsLogHelper)) (javaCast this))
                    Control.Monad.void (BasicArrayList.add ((jio (AdvancedRTSGameLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.lEFT))))
                javaReturn (True)
            else do
                Control.Monad.void (RTSLayerLogHelper.noRotation ((jget (this).rtsLogHelper)) (javaCast this))
            javaReturn (False)


handleDeltalX :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
handleDeltalX object_ a1 a2 = jmethod object_ "handleDeltalX" (\() -> (handleDeltalX_impl (javaCast object_ :: UnitLayer))) () a1 a2

handleDeltalX_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
handleDeltalX_super object_ a1 a2 = (handleDeltalX_impl (javaCast object_ :: UnitLayer)) a1 a2

handleDeltalX_impl :: UnitLayer -> Int -> Int -> IO (())
handleDeltalX_impl this dx dy = do
        let waypointBehaviorBase = (javaCast (jget (this).base.waypointBehaviorBase) :: WaypointBehaviorBase.WaypointBehaviorBase)
        nextUnvisitedPathGeographicMapCellPosition <- (WaypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition waypointBehaviorBase)
        if (dx > 0) then do
            jset (this).movementAngle ((jget ((jget (this).angleFactory)).lEFT))
            jset (this).steeringInsideGeographicMapCellPosition (nextUnvisitedPathGeographicMapCellPosition)
        else do
            jset (this).movementAngle ((jget ((jget (this).angleFactory)).rIGHT))
            jset (this).steeringInsideGeographicMapCellPosition (nextUnvisitedPathGeographicMapCellPosition)
        Control.Monad.void (RTSLayerLogHelper.handle ((jget (this).rtsLogHelper)) (javaCast this) (jget (this).movementAngle))
        pure ()


handleDeltalY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
handleDeltalY object_ a1 a2 = jmethod object_ "handleDeltalY" (\() -> (handleDeltalY_impl (javaCast object_ :: UnitLayer))) () a1 a2

handleDeltalY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
handleDeltalY_super object_ a1 a2 = (handleDeltalY_impl (javaCast object_ :: UnitLayer)) a1 a2

handleDeltalY_impl :: UnitLayer -> Int -> Int -> IO (())
handleDeltalY_impl this dx dy = do
        let waypointBehaviorBase = (javaCast (jget (this).base.waypointBehaviorBase) :: WaypointBehaviorBase.WaypointBehaviorBase)
        nextUnvisitedPathGeographicMapCellPosition <- (WaypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition waypointBehaviorBase)
        if (dy > 0) then do
            jset (this).movementAngle ((jget ((jget (this).angleFactory)).uP))
            jset (this).steeringInsideGeographicMapCellPosition (nextUnvisitedPathGeographicMapCellPosition)
        else do
            jset (this).movementAngle ((jget ((jget (this).angleFactory)).dOWN))
            jset (this).steeringInsideGeographicMapCellPosition (nextUnvisitedPathGeographicMapCellPosition)
        Control.Monad.void (RTSLayerLogHelper.handle ((jget (this).rtsLogHelper)) (javaCast this) (jget (this).movementAngle))
        pure ()


-- throws Exception
trackToDXYTargetAngle :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
trackToDXYTargetAngle object_ a1 a2 a3 = jmethod object_ "trackToDXYTargetAngle" (\() -> (trackToDXYTargetAngle_impl (javaCast object_ :: UnitLayer))) () a1 a2 a3

trackToDXYTargetAngle_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
trackToDXYTargetAngle_super object_ a1 a2 a3 = (trackToDXYTargetAngle_impl (javaCast object_ :: UnitLayer)) a1 a2 a3

trackToDXYTargetAngle_impl :: UnitLayer -> Int -> Int -> Int -> IO (())
trackToDXYTargetAngle_impl this dx dy targetAngle = do
        list <- (UnitWaypointBehavior.getSteeringVisitorList ((jio (UnitLayer.getUnitWaypointBehavior this))))
        if ((jio (BasicArrayList.size list)) > 0) then do
            forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                let steeringVisitor = (javaCast (jio (BasicArrayList.get list index)) :: SteeringVisitor.SteeringVisitor)
                anyType <- (SteeringVisitor.visit steeringVisitor this)
                when (anyType == javaNull) $ do
                    Control.Monad.void (BasicArrayList.removeAt list index)
            Control.Monad.void (UnitLayer.fireOrMove this)
        else when (Prelude.not (jio (UnitLayer.turnTo this dx dy targetAngle))) $ do
            Control.Monad.void (UnitLayer.fireOrMove this)
        pure ()


-- throws Exception
fireOrMove :: (JavaObjectClass this_) => this_ -> IO (())
fireOrMove object_ = jmethod object_ "fireOrMove" (\() -> (fireOrMove_impl (javaCast object_ :: UnitLayer))) ()

fireOrMove_super :: (JavaObjectClass this_) => this_ -> IO (())
fireOrMove_super object_ = (fireOrMove_impl (javaCast object_ :: UnitLayer))

fireOrMove_impl :: UnitLayer -> IO (())
fireOrMove_impl this = do
        gameKeyEventFactory <- (GameKeyEventFactory.getInstance)
        if (jio (UnitWaypointBehavior.needToMove ((jio (UnitLayer.getUnitWaypointBehavior this))))) then do
            Control.Monad.void (RTSLayer2LogHelper.steeringUp ((jget (this).base.base.rtsLayer2LogHelper)) (javaCast this))
            when ((jget (this).base.base.showMoreCaptionStates) && (Prelude.not (jio (CaptionAnimationHelperBase.isShowing ((jget (this).captionAnimationHelper)))))) $ do
                Control.Monad.void (CaptionAnimationHelperBase.update ((jget (this).captionAnimationHelper)) (UnitLayer.mOVE) (jget ((jget (this).basicColorFactory)).gREEN))
            Control.Monad.void (BasicArrayList.add ((jio (AdvancedRTSGameLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.uP))))
        else do
            Control.Monad.void (CaptionAnimationHelperBase.update ((jget (this).captionAnimationHelper)) (jget ((jio (CommonPhoneStrings.getInstance))).fIRE) (jget ((jget (this).basicColorFactory)).rED))
            Control.Monad.void (RTSLayer2LogHelper.steeringFireOrStop ((jget (this).base.base.rtsLayer2LogHelper)) (javaCast this))
            Control.Monad.void (UnitLayer.allStop this)
            Control.Monad.void (BasicArrayList.add ((jio (AdvancedRTSGameLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.kEY_NUM0))))
            Control.Monad.void (TrackingEventHandler.fireEvent ((jio (TrackingEventHandler.getInstance))) (javaCast (jio (UnitLayer.getTrackingEvent this))))
        pure ()


move :: (JavaObjectClass this_) => this_ -> IO (())
move object_ = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: UnitLayer))) ()

move_super :: (JavaObjectClass this_) => this_ -> IO (())
move_super object_ = (move_impl (javaCast object_ :: UnitLayer))

move_impl :: UnitLayer -> IO (())
move_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).eXCEPTION) this "move" e)
            ) $ do
            velocityProperties <- (VehicleProperties.getVelocityProperties ((jio (UnitLayer.getVehicleProperties this))))
            let velocityXScaled = (Prelude.fromIntegral (jio (BasicDecimal.getScaled ((jio (VelocityProperties.getVelocityXBasicDecimalP velocityProperties))))))
            let velocityYScaled = (Prelude.fromIntegral (jio (BasicDecimal.getScaled ((jio (VelocityProperties.getVelocityYBasicDecimalP velocityProperties))))))
            Control.Monad.void (UnitWaypointBehavior.move ((jio (UnitLayer.getUnitWaypointBehavior this))))
            when ((velocityXScaled /= 0) || (velocityYScaled /= 0)) $ do
                Control.Monad.void (UnitWaypointBehavior.setMoving ((jio (UnitLayer.getUnitWaypointBehavior this))) True)
                let geographicMapCompositeInterface = (javaCast (jget (this).base.base.base.base.allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
                let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
                Control.Monad.void (LayerPartialCellPositionsUtil.getAllDXY ((jget (this).layerPartialCellPositionsUtil)) geographicMapInterface (javaCast this) (Prelude.fromIntegral velocityXScaled) (Prelude.fromIntegral velocityYScaled) (jio (UnitLayer.getPartialpositionlist)))
                let cellPosition = (javaCast (jio (DropCellPositionHistory.getCellPositionWithDrop ((jio (DropCellPositionHistory.getInstance))) (jio (UnitLayer.getPartialpositionlist)))) :: GeographicMapCellPosition.GeographicMapCellPosition)
                if ((jtoObject cellPosition) == (jtoObject (jget ((jget (this).cellPositionFactory)).nONE))) then do
                    tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
                    tiledLayerUtil <- (TiledLayerUtil.getInstance)
                    x <- newIORef (((jget (this).base.base.base.base.base.base.base.base.x) + (Prelude.fromIntegral velocityXScaled)))
                    y <- newIORef (((jget (this).base.base.base.base.base.base.base.base.y) + (Prelude.fromIntegral velocityYScaled)))
                    assignedValue <- (TiledLayerUtil.keepOnMapX tiledLayerUtil tiledLayer (jget x) (jio (AdvancedRTSGameLayer.getWidth this)))
                    jset x (assignedValue)
                    assignedValue <- (TiledLayerUtil.keepOnMapY tiledLayerUtil tiledLayer (jget y) (jio (AdvancedRTSGameLayer.getHeight this)))
                    jset y (assignedValue)
                    Control.Monad.void (AdvancedRTSGameLayer.setPosition this (jget x) (jget y) (jget (this).base.base.base.base.base.base.base.base.z))
                else do
                    allbinaryLayer <- (DropCellPositionHistory.getLayerInterface ((jio (DropCellPositionHistory.getInstance))) (javaCast cellPosition))
                    Control.Monad.void (UnitWaypointBehavior.setMovingFromStopped ((jio (UnitLayer.getUnitWaypointBehavior this))) False)
                    Control.Monad.void (UnitWaypointBehavior.addBuildingChase ((jio (UnitLayer.getUnitWaypointBehavior this))) allbinaryLayer cellPosition)
            if (jio (UnitWaypointBehavior.isMoving ((jio (UnitLayer.getUnitWaypointBehavior this))))) then do
                Control.Monad.void (TrackingEventHandler.fireEvent ((jio (TrackingEventHandler.getInstance))) (javaCast (jio (UnitLayer.getTrackingEvent this))))
            else do
                Control.Monad.void (UnitWaypointBehavior.setMovingFromStopped ((jio (UnitLayer.getUnitWaypointBehavior this))) False)
            when ((jio (UnitWaypointBehavior.isMovingFromStopped ((jio (UnitLayer.getUnitWaypointBehavior this))))) && (jio (AdvancedRTSGameLayer.isVisible this))) $ do
                Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jget (this).moveSoundInterface))
        pure ()


allStop :: (JavaObjectClass this_) => this_ -> IO (())
allStop object_ = jmethod object_ "allStop" (\() -> (allStop_impl (javaCast object_ :: UnitLayer))) ()

allStop_super :: (JavaObjectClass this_) => this_ -> IO (())
allStop_super object_ = (allStop_impl (javaCast object_ :: UnitLayer))

allStop_impl :: UnitLayer -> IO (())
allStop_impl this = do
        velocityProperties <- (VehicleProperties.getVelocityProperties ((jio (UnitLayer.getVehicleProperties this))))
        Control.Monad.void (BasicDecimal.setint ((jio (VelocityProperties.getVelocityXBasicDecimalP velocityProperties))) 0)
        Control.Monad.void (BasicDecimal.setint ((jio (VelocityProperties.getVelocityYBasicDecimalP velocityProperties))) 0)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: UnitLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: UnitLayer)) a1

paint_impl :: UnitLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        when (jio (AdvancedRTSGameLayer.isVisible this)) $ do
            Control.Monad.void (AdvancedRTSGameLayer.paint_super this.base graphics)
            viewPosition <- (AdvancedRTSGameLayer.getViewPosition this)
            viewX <- (ViewPositionBase.getX viewPosition)
            viewY <- (ViewPositionBase.getY viewPosition)
            Control.Monad.void (RotationAnimation.paintXY ((jget (this).decalAnimation)) graphics viewX viewY)
            Control.Monad.void (Animation.paintXY ((jget (this).base.base.rangeAnimation)) graphics viewX viewY)
            Control.Monad.void (Animation.paintXY ((jget (this).base.base.sensorRangeAnimation)) graphics viewX viewY)
            Control.Monad.void (Paintable.paint ((jget (this).damageFloatersPaintableInterface)) graphics)
            Control.Monad.void (Paintable.paint ((jget (this).healthBar)) graphics)
            Control.Monad.void (CaptionAnimationHelperBase.paintXY ((jget (this).captionAnimationHelper)) graphics viewX viewY)
            Control.Monad.void (Animation.paintXY ((jget (this).pathAnimation)) graphics viewX viewY)
            Control.Monad.void (IndexedAnimation.paintXY ((jget (this).resourceAnimation)) graphics viewX viewY)
        pure ()


-- throws Exception
onBuildingEvent :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent object_ a1 = jmethod object_ "onBuildingEvent" (\() -> (onBuildingEvent_impl (javaCast object_ :: UnitLayer))) () a1

onBuildingEvent_super :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent_super object_ a1 = (onBuildingEvent_impl (javaCast object_ :: UnitLayer)) a1

onBuildingEvent_impl :: UnitLayer -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent_impl this event = do
        let buildingLayer = (javaCast (jio (RTSLayerEvent.getRtsLayer event)) :: BuildingLayer.BuildingLayer)
        Control.Monad.void (UnitWaypointBehavior.moveAwayFromBuilding ((jio (UnitLayer.getUnitWaypointBehavior this))) buildingLayer)
        pure ()


getVehicleProperties :: (JavaObjectClass this_) => this_ -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties object_ = jmethod object_ "getVehicleProperties" (\() -> (getVehicleProperties_impl (javaCast object_ :: UnitLayer))) ()

getVehicleProperties_super :: (JavaObjectClass this_) => this_ -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties_super object_ = (getVehicleProperties_impl (javaCast object_ :: UnitLayer))

getVehicleProperties_impl :: UnitLayer -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties_impl this = do
        pure ((jget (this).vehicleProperties))


-- throws Exception
damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: UnitLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: UnitLayer)) a1 a2

damage_impl :: UnitLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        Control.Monad.void (AdvancedRTSGameLayer.damage_super this.base damage damageType)
        Control.Monad.void (DamageFloaters.add ((jget (this).damageFloaters)) damage)
        when (damage > 0) $ do
            Control.Monad.void (Health.damage ((jio (AdvancedRTSGameLayer.getHealthInterface this))) damage)
        pure ()


-- throws Exception
getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: UnitLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: UnitLayer)) a1

getDamage_impl :: UnitLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
        pure (0)


-- throws Exception
setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: UnitLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: UnitLayer)) a1

setDestroyed_impl :: UnitLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).sTART) this "setDestroyed")
        Control.Monad.void (AdvancedRTSGameLayer.setDestroyed_super this.base destroyed)
        when (jio (AdvancedRTSGameLayer.isDestroyed this)) $ do
            Control.Monad.void (WaypointEventHandler.removeListener ((jio (WaypointEventHandlerFactory.getInstance (jindex ((jio (AdvancedRTSGameLayer.getGroupInterface this))) (0))))) (javaCast (jio (UnitLayer.getUnitWaypointBehavior this))))
            Control.Monad.void (TrackingEventHandler.removeListener ((jio (TrackingEventHandler.getInstance))) (javaCast this))
            Control.Monad.void (BuildingEventHandler.removeListener ((jio (BuildingEventHandler.getInstance))) (javaCast this))
            when (Prelude.not (jio (Health.isAlive ((jio (AdvancedRTSGameLayer.getHealthInterface this)))))) $ do
                damage <- (Health.getMaxHealth ((jio (AdvancedRTSGameLayer.getHealthInterface this))))
                when (damage > 10) $ do
                    Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jio (ExplosionBasicSound.getInstance)))
                    if (damage < 100) then do
                        Control.Monad.void (ShakeAnimationListener.onSmallShakeEvent ((jget (this).base.shakeListener)))
                        Control.Monad.void (AllBinaryVibrationME.vibrate ((jget (this).base.vibration)) (jget (this).base.duration) 0 0)
                    else if (damage < 1000) then do
                        Control.Monad.void (ShakeAnimationListener.onMediumShakeEvent ((jget (this).base.shakeListener)))
                        Control.Monad.void (AllBinaryVibrationME.vibrate ((jget (this).base.vibration)) ((jget (this).base.duration) * 2) 0 0)
                    else when (damage < 3000) $ do
                        Control.Monad.void (ShakeAnimationListener.onLargeShakeEvent ((jget (this).base.shakeListener)))
                        Control.Monad.void (AllBinaryVibrationME.vibrate ((jget (this).base.vibration)) ((jget (this).base.duration) * 4) 0 0)
        pure ()


getLoad :: (JavaObjectClass this_) => this_ -> IO (Int)
getLoad object_ = jmethod object_ "getLoad" (\() -> (getLoad_impl (javaCast object_ :: UnitLayer))) ()

getLoad_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLoad_super object_ = (getLoad_impl (javaCast object_ :: UnitLayer))

getLoad_impl :: UnitLayer -> IO (Int)
getLoad_impl this = do
        pure ((jget (this).resourceLoad))


-- throws Exception
clearResourceAnimation :: (JavaObjectClass this_) => this_ -> IO (())
clearResourceAnimation object_ = jmethod object_ "clearResourceAnimation" (\() -> (clearResourceAnimation_impl (javaCast object_ :: UnitLayer))) ()

clearResourceAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
clearResourceAnimation_super object_ = (clearResourceAnimation_impl (javaCast object_ :: UnitLayer))

clearResourceAnimation_impl :: UnitLayer -> IO (())
clearResourceAnimation_impl this = do
        jset (this).resourceAnimation ((javaCast (jio (NullIndexedAnimationFactory.getInstance ((jio (NullIndexedAnimationFactory.getFactoryInstance))) 0)) :: IndexedAnimation.IndexedAnimation))
        pure ()


-- throws Exception
setLoad :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad object_ a1 = jmethod object_ "setLoad" (\() -> (setLoad_impl (javaCast object_ :: UnitLayer))) () a1

setLoad_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad_super object_ a1 = (setLoad_impl (javaCast object_ :: UnitLayer)) a1

setLoad_impl :: UnitLayer -> Int -> IO (())
setLoad_impl this resource = do
        if (resource > 0) then do
            jset (this).resourceAnimation ((jget (this).initResourceAnimation))
        else do
            Control.Monad.void (UnitLayer.clearResourceAnimation this)
        jset (this).resourceLoad (resource)
        pure ()


addLoad :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addLoad object_ a1 = jmethod object_ "addLoad" (\() -> (addLoad_impl (javaCast object_ :: UnitLayer))) () a1

addLoad_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addLoad_super object_ a1 = (addLoad_impl (javaCast object_ :: UnitLayer)) a1

addLoad_impl :: UnitLayer -> Int -> IO (())
addLoad_impl this resource = do
        jset (this).resourceLoad (((jget (this).resourceLoad) + resource))
        pure ()


-- throws Exception
handleCost :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost object_ a1 = jmethod object_ "handleCost" (\() -> (handleCost_impl (javaCast object_ :: UnitLayer))) () a1

handleCost_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost_super object_ a1 = (handleCost_impl (javaCast object_ :: UnitLayer)) a1

handleCost_impl :: UnitLayer -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost_impl this ownerLayer = do
        when ((jio (UnitLayer.getLoad this)) > 0) $ do
            Control.Monad.void (CapitalEvent.setValue ((jget (this).cAPITAL_EVENT)) (jio (UnitLayer.getLoad this)))
            Control.Monad.void (CapitalEventHandler.fireEvent ((jio (CapitalEventHandlerFactory.getInstance (jindex ((jio (PathFindingLayerInterface.getGroupInterface ownerLayer))) (0))))) (javaCast (jget (this).cAPITAL_EVENT)))
            Control.Monad.void (UnitLayer.setLoad this 0)
        pure ()


createHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable object_ = jmethod object_ "createHudPaintable" (\() -> (createHudPaintable_impl (javaCast object_ :: UnitLayer))) ()

createHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_super object_ = (createHudPaintable_impl (javaCast object_ :: UnitLayer))

createHudPaintable_impl :: UnitLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_impl this = do
        rtsLayerHudPaintable <- (RTSLayerHudPaintable.getInstance)
        Control.Monad.void (RTSLayerHudPaintable.setBasicColorP rtsLayerHudPaintable (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).base.base.base.base.allBinaryGameLayerManagerP)))))
        Control.Monad.void (RTSLayerHudPaintable.setRtsLayer rtsLayerHudPaintable (javaCast this))
        pure ((javaCast rtsLayerHudPaintable :: SelectionHudPaintable.SelectionHudPaintable))


getHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable object_ = jmethod object_ "getHudPaintable" (\() -> (getHudPaintable_impl (javaCast object_ :: UnitLayer))) ()

getHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_super object_ = (getHudPaintable_impl (javaCast object_ :: UnitLayer))

getHudPaintable_impl :: UnitLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_impl this = do
        rtsLayerHudPaintable <- (RTSLayerHudPaintable.getInstance)
        pure ((javaCast rtsLayerHudPaintable :: SelectionHudPaintable.SelectionHudPaintable))


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: UnitLayer))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: UnitLayer))

getType_impl :: UnitLayer -> IO (Int)
getType_impl this = do
        (UnitLayer.getStaticType)


getStaticType :: IO (Int)
getStaticType = do
        pure (1)


getUnitWaypointBehavior :: (JavaObjectClass this_) => this_ -> IO (UnitWaypointBehavior.UnitWaypointBehavior)
getUnitWaypointBehavior object_ = jmethod object_ "getUnitWaypointBehavior" (\() -> (getUnitWaypointBehavior_impl (javaCast object_ :: UnitLayer))) ()

getUnitWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> IO (UnitWaypointBehavior.UnitWaypointBehavior)
getUnitWaypointBehavior_super object_ = (getUnitWaypointBehavior_impl (javaCast object_ :: UnitLayer))

getUnitWaypointBehavior_impl :: UnitLayer -> IO (UnitWaypointBehavior.UnitWaypointBehavior)
getUnitWaypointBehavior_impl this = do
        pure ((javaCast (jio (AdvancedRTSGameLayer.getWaypointBehavior this)) :: UnitWaypointBehavior.UnitWaypointBehavior))


getTrackingEvent :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent object_ = jmethod object_ "getTrackingEvent" (\() -> (getTrackingEvent_impl (javaCast object_ :: UnitLayer))) ()

getTrackingEvent_super :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_super object_ = (getTrackingEvent_impl (javaCast object_ :: UnitLayer))

getTrackingEvent_impl :: UnitLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_impl this = do
        pure ((jget (this).trackingEvent))


getCaptionAnimationHelper :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper object_ = jmethod object_ "getCaptionAnimationHelper" (\() -> (getCaptionAnimationHelper_impl (javaCast object_ :: UnitLayer))) ()

getCaptionAnimationHelper_super :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_super object_ = (getCaptionAnimationHelper_impl (javaCast object_ :: UnitLayer))

getCaptionAnimationHelper_impl :: UnitLayer -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_impl this = do
        pure ((jget (this).captionAnimationHelper))


isSelfUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable object_ = jmethod object_ "isSelfUpgradeable" (\() -> (isSelfUpgradeable_impl (javaCast object_ :: UnitLayer))) ()

isSelfUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable_super object_ = (isSelfUpgradeable_impl (javaCast object_ :: UnitLayer))

isSelfUpgradeable_impl :: UnitLayer -> IO (Bool)
isSelfUpgradeable_impl this = do
        pure (False)


getMaxResourceLoad :: (JavaObjectClass this_) => this_ -> IO (Int16)
getMaxResourceLoad object_ = jmethod object_ "getMaxResourceLoad" (\() -> (getMaxResourceLoad_impl (javaCast object_ :: UnitLayer))) ()

getMaxResourceLoad_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getMaxResourceLoad_super object_ = (getMaxResourceLoad_impl (javaCast object_ :: UnitLayer))

getMaxResourceLoad_impl :: UnitLayer -> IO (Int16)
getMaxResourceLoad_impl this = do
        pure ((jget (this).maxResourceLoad))


getPartialpositionlist :: IO (BasicArrayList.BasicArrayList)
getPartialpositionlist = do
        pure (UnitLayer.partialPositionList)


