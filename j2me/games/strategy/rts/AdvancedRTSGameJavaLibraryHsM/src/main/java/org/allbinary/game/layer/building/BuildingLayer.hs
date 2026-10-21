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
-- package org.allbinary.game.layer.building
module BuildingLayer (module BuildingLayer, module AdvancedRTSGameLayer) where

import AdvancedRTSGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createSimulated, createSimulated_super, createSimulated_impl, initVisibility, initVisibility_super, initVisibility_impl, construct, construct_super, construct_impl, onMovement, onMovement_super, onMovement_impl, processBuiltTick, processBuiltTick_super, processBuiltTick_impl, calculateEfficiency, calculateEfficiency_super, calculateEfficiency_impl, getCost, getCost_super, getCost_impl, getDowngradeCost, getDowngradeCost_super, getDowngradeCost_impl, getUpgradeCost, getUpgradeCost_super, getUpgradeCost_impl, downgrade, downgrade_super, downgrade_impl, upgrade, upgrade_super, upgrade_impl, getBuildingLevelCost, getBuildingLevelCost_super, getBuildingLevelCost_impl, setBuildingLevelCost, setBuildingLevelCost_super, setBuildingLevelCost_impl, getProductivity, getProductivity_super, getProductivity_impl, setProductivity, setProductivity_super, setProductivity_impl, getEfficiency, getEfficiency_super, getEfficiency_impl, setEfficiency, setEfficiency_super, setEfficiency_impl, generateMoveOutOfBuildAreaPaths, generateMoveOutOfBuildAreaPaths_super, generateMoveOutOfBuildAreaPaths_impl, getMoveOutOfBuildAreaPath, getMoveOutOfBuildAreaPath_super, getMoveOutOfBuildAreaPath_impl, getEndGeographicMapCellPositionList, getEndGeographicMapCellPositionList_super, getEndGeographicMapCellPositionList_impl, shouldHandleStartSameAsEnd, shouldHandleStartSameAsEnd_super, shouldHandleStartSameAsEnd_impl, paint, paint_super, paint_impl, damage, damage_super, damage_impl, getDamage, getDamage_super, getDamage_impl, addVisibility, addVisibility_super, addVisibility_impl, removeVisibility, removeVisibility_super, removeVisibility_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, createHudPaintable, createHudPaintable_super, createHudPaintable_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, getType, getType_super, getType_impl, getStaticType, getStaticType_super, getStaticType_impl, buildingLevelCost, productivity, efficiency, efficiencyPerLevel, trackingEvent, damageFloaters, damageFloatersPaintableInterface, healthBar, pathsHashtable, local, timeDelayHelper)
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
import qualified SimulatedBuildingPropertiesFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BuildingPropertiesFactory -- same package or java.lang
import qualified BuildingInfoHudPaintable -- same package or java.lang
import qualified ShakeAnimationListener -- same package or java.lang
import qualified AllBinaryVibrationME -- same package or java.lang
import qualified IndexedAnimation -- same package or java.lang
import qualified AllBinaryGameLayerManager -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ExplosionBasicSound -- org.allbinary.ag.weapon.media.audio.ExplosionBasicSound
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified NullIndexedAnimationFactory -- org.allbinary.animation.NullIndexedAnimationFactory
import qualified GroupFactory -- org.allbinary.game.identification.GroupFactory
import qualified NullRTSFormInputFactory -- org.allbinary.game.input.form.NullRTSFormInputFactory
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified VisibleCellPositionsSingleton -- org.allbinary.game.input.form.VisibleCellPositionsSingleton
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified AdvancedRTSPlayerLayerInterface -- org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface
import qualified AdvancedRTSProperties -- org.allbinary.game.layer.AdvancedRTSProperties
import qualified CollidableRTSBehavior -- org.allbinary.game.layer.CollidableRTSBehavior
import qualified RTSLayerUtil -- org.allbinary.game.layer.RTSLayerUtil
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified SelectionHudPaintable -- org.allbinary.game.layer.SelectionHudPaintable
import qualified Waypoint -- org.allbinary.game.layer.waypoint.Waypoint
import qualified TileLayerPositionIntoViewPosition -- org.allbinary.game.view.TileLayerPositionIntoViewPosition
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified RotationAnimationInterfaceCompositeInterface -- org.allbinary.animation.RotationAnimationInterfaceCompositeInterface
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified DamageFloaters -- org.allbinary.game.combat.damage.DamageFloaters
import qualified Health -- org.allbinary.game.health.Health
import qualified Group -- org.allbinary.game.identification.Group
import qualified GeographicMapCellPositionAreaBase -- org.allbinary.game.layer.GeographicMapCellPositionAreaBase
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified TrackingEventListenerInterface -- org.allbinary.game.tracking.TrackingEventListenerInterface
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified SelectSound -- org.allbinary.media.audio.SelectSound
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapDirectionUtil -- org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements RotationAnimationInterfaceCompositeInterface
-- implements TrackingEventListenerInterface
data BuildingLayer = BuildingLayer
    { header_ :: JavaHeader
    , base :: AdvancedRTSGameLayer.AdvancedRTSGameLayer
    , buildingLevelCost :: IORef (Int)
    , productivity :: IORef (Int)
    , efficiency :: IORef (Int)
    , efficiencyPerLevel :: IORef (Int)
    , trackingEvent :: IORef (TrackingEvent.TrackingEvent)
    , damageFloaters :: IORef (DamageFloaters.DamageFloaters)
    , damageFloatersPaintableInterface :: IORef (Paintable.Paintable)
    , healthBar :: IORef (Paintable.Paintable)
    , pathsHashtable :: IORef (ABHashtable.ABHashtable)
    , local :: IORef (Bool)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull BuildingLayer where
    javaNull = javaNullRecord "BuildingLayer"

instance JavaEquals BuildingLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildingLayer where
    (==) = jrecordEquals

instance JavaObjectClass BuildingLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BuildingLayer
newRecord_ = do
    base <- AdvancedRTSGameLayer.newRecord_
    let header_ = base.header_
    buildingLevelCost <- newIORef 0
    productivity <- newIORef 0
    efficiency <- newIORef 0
    efficiencyPerLevel <- newIORef 0
    trackingEvent <- newIORef javaNull
    damageFloaters <- newIORef javaNull
    damageFloatersPaintableInterface <- newIORef javaNull
    healthBar <- newIORef javaNull
    pathsHashtable <- newIORef javaNull
    local <- newIORef False
    timeDelayHelper <- newIORef javaNull
    let this = BuildingLayer header_ base buildingLevelCost productivity efficiency efficiencyPerLevel trackingEvent damageFloaters damageFloatersPaintableInterface healthBar pathsHashtable local timeDelayHelper
    jregisterLevel header_ this
    RotationAnimationInterfaceCompositeInterface.registerInterface_ header_
    TrackingEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "initVisibility" (\() -> initVisibility_impl this)
    jregisterMethod header_ "construct" (\() -> construct_impl this)
    jregisterMethod header_ "onMovement" (\() -> onMovement_impl this)
    jregisterMethod header_ "processBuiltTick" (\() -> processBuiltTick_impl this)
    jregisterMethod header_ "calculateEfficiency" (\() -> calculateEfficiency_impl this)
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    jregisterMethod header_ "getDowngradeCost" (\() -> getDowngradeCost_impl this)
    jregisterMethod header_ "getUpgradeCost" (\() -> getUpgradeCost_impl this)
    jregisterMethod header_ "downgrade" (\() -> downgrade_impl this)
    jregisterMethod header_ "upgrade" (\() -> upgrade_impl this)
    jregisterMethod header_ "getBuildingLevelCost" (\() -> getBuildingLevelCost_impl this)
    jregisterMethod header_ "setBuildingLevelCost" (\() -> setBuildingLevelCost_impl this)
    jregisterMethod header_ "getProductivity" (\() -> getProductivity_impl this)
    jregisterMethod header_ "setProductivity" (\() -> setProductivity_impl this)
    jregisterMethod header_ "getEfficiency" (\() -> getEfficiency_impl this)
    jregisterMethod header_ "setEfficiency" (\() -> setEfficiency_impl this)
    jregisterMethod header_ "generateMoveOutOfBuildAreaPaths" (\() -> generateMoveOutOfBuildAreaPaths_impl this)
    jregisterMethod header_ "getMoveOutOfBuildAreaPath" (\() -> getMoveOutOfBuildAreaPath_impl this)
    jregisterMethod header_ "getEndGeographicMapCellPositionList" (\() -> getEndGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "shouldHandleStartSameAsEnd" (\() -> shouldHandleStartSameAsEnd_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "addVisibility" (\() -> addVisibility_impl this)
    jregisterMethod header_ "removeVisibility" (\() -> removeVisibility_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "createHudPaintable" (\() -> createHudPaintable_impl this)
    jregisterMethod header_ "getHudPaintable" (\() -> getHudPaintable_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: BuildingLayer -> IO ()
initFields_ this = do
    jset this.buildingLevelCost (0)
    jset this.productivity (0)
    jset this.efficiency (0)
    jset this.efficiencyPerLevel (0)
    jset this.trackingEvent (javaNull)
    jset this.damageFloaters (javaNull)
    jset this.damageFloatersPaintableInterface (javaNull)
    jset this.healthBar (javaNull)
    jset this.pathsHashtable (javaNull)
    jset this.local (False)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 3000)
    pure ()


-- throws Exception
createSimulated :: IO (BuildingLayer)
createSimulated = do
        nullAnimationInterfaceFactoryInterface <- (fmap (\value_ -> javaCast value_ :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) (NullAnimationFactory.getFactoryInstance))
        nullIndexedAnimationInterfaceFactoryInterface <- (fmap (\value_ -> javaCast value_ :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) (NullIndexedAnimationFactory.getFactoryInstance))
        (new_17 (RemoteInfo.rEMOTE_INFO) (jio (SimulatedBuildingPropertiesFactory.getInstance)) (jio (AdvancedRTSProperties.createPropertiesSimulated)) (jget ((jio (GroupFactory.getInstance))).nULL_GROUP_ARRAY) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Health.nULL_HEALTH) (jio (NullRTSFormInputFactory.getInstance)) nullAnimationInterfaceFactoryInterface nullIndexedAnimationInterfaceFactoryInterface nullAnimationInterfaceFactoryInterface nullAnimationInterfaceFactoryInterface nullIndexedAnimationInterfaceFactoryInterface (jio (NullIndexedAnimationFactory.getFactoryInstance)) (RectangleFactory.sINGLETON) 0 0)

new_17 :: RemoteInfo.RemoteInfo -> BuildingPropertiesFactory.BuildingPropertiesFactory -> AdvancedRTSProperties.AdvancedRTSProperties -> JavaArray (Group.Group) -> String -> String -> Health.Health -> RTSFormInput.RTSFormInput -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> IO BuildingLayer
new_17 remoteInfo buildingPropertiesFactory advancedRTSProperties groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y = do
    this <- newRecord_
    init_17 this remoteInfo buildingPropertiesFactory advancedRTSProperties groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y
    pure this

init_17 :: BuildingLayer -> RemoteInfo.RemoteInfo -> BuildingPropertiesFactory.BuildingPropertiesFactory -> AdvancedRTSProperties.AdvancedRTSProperties -> JavaArray (Group.Group) -> String -> String -> Health.Health -> RTSFormInput.RTSFormInput -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> IO ()
init_17 this remoteInfo buildingPropertiesFactory advancedRTSProperties groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y = do
        AdvancedRTSGameLayer.init_18 this.base (remoteInfo) (NullPathFindingLayer.nULL_PATH_FINDING_LAYER) (advancedRTSProperties) (groupInterface) (rootName) (name) (healthInterface) (rtsFormInput) (animationInterfaceFactoryInterface) (emptyAnimationInterfaceFactoryInterface) (baseAnimationInterfaceFactoryInterface) (buildAnimationInterfaceFactoryInterface) (verticleBuildAnimationInterfaceFactoryInterface) (proceduralAnimationInterfaceFactoryInterface) (rectangle) (x) (y) (jio (TileLayerPositionIntoViewPosition.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AdvancedRTSGameLayer.setCollidableInferface this (jio (CollidableRTSBehavior.new_1 True)))
        Control.Monad.void (WaypointBehaviorBase.setWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this))) (jio (Waypoint.new_2 this (jio (SelectSound.getInstance)))))
        assignedValue <- (BuildingPropertiesFactory.getDamageFloaters buildingPropertiesFactory this)
        jset (this).damageFloaters (assignedValue)
        jset (this).damageFloatersPaintableInterface ((jget (buildingPropertiesFactory).damageFloatersPaintableInterface))
        assignedValue <- (BuildingPropertiesFactory.getHealthBar buildingPropertiesFactory this)
        jset (this).healthBar (assignedValue)
        assignedValue <- (BuildingPropertiesFactory.getHashtable buildingPropertiesFactory)
        jset (this).pathsHashtable (assignedValue)
        Control.Monad.void (AdvancedRTSGameLayer.setMaxLevel this 30)
        Control.Monad.void (BuildingLayer.setProductivity this 1)
        Control.Monad.void (BuildingLayer.setEfficiency this (jio (BuildingLayer.calculateEfficiency this)))
        assignedValue <- (BuildingPropertiesFactory.getEfficiencyPerLevel buildingPropertiesFactory this)
        jset (this).efficiencyPerLevel (assignedValue)
        jset (this).efficiency ((jget (this).efficiencyPerLevel))
        Control.Monad.void (BuildingLayer.generateMoveOutOfBuildAreaPaths this)
        assignedValue <- (BuildingPropertiesFactory.getTrackingEvent buildingPropertiesFactory this)
        jset (this).trackingEvent (assignedValue)
        pure ()


initVisibility :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
initVisibility object_ a1 = jmethod object_ "initVisibility" (\() -> (initVisibility_impl (javaCast object_ :: BuildingLayer))) () a1

initVisibility_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
initVisibility_super object_ a1 = (initVisibility_impl (javaCast object_ :: BuildingLayer)) a1

initVisibility_impl :: BuildingLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
initVisibility_impl this rtsPlayerLayerInterface = do
        let advancedRTSPlayerLayerInterface = (javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface)
        if (jio (AdvancedRTSPlayerLayerInterface.isLocalPlayer advancedRTSPlayerLayerInterface)) then do
            jset (this).local (True)
            Control.Monad.void (BuildingLayer.addVisibility this)
        else do
            jset (this).local (False)
        Control.Monad.void (AdvancedRTSGameLayer.initVisibility_super this.base rtsPlayerLayerInterface)
        pure ()


-- throws Exception
construct :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct object_ a1 = jmethod object_ "construct" (\() -> (construct_impl (javaCast object_ :: BuildingLayer))) () a1

construct_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_super object_ a1 = (construct_impl (javaCast object_ :: BuildingLayer)) a1

construct_impl :: BuildingLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_impl this rtsPlayerLayerInterface = do
        Control.Monad.void (AdvancedRTSGameLayer.construct_super this.base rtsPlayerLayerInterface)
        Control.Monad.void (TrackingEventHandler.addListenerInterface ((jio (TrackingEventHandler.getInstance))) this)
        pure ()


onMovement :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement object_ a1 = jmethod object_ "onMovement" (\() -> (onMovement_impl (javaCast object_ :: BuildingLayer))) () a1

onMovement_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement_super object_ a1 = (onMovement_impl (javaCast object_ :: BuildingLayer)) a1

onMovement_impl :: BuildingLayer -> TrackingEvent.TrackingEvent -> IO (())
onMovement_impl this trackingEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).eXCEPTION) this "onMovement" e)
            ) $ do
            let layerInterface = (javaCast (jio (TrackingEvent.getLayerInterface trackingEvent)) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            when ((jindex ((jio (AdvancedRTSGameLayer.getGroupInterface layerInterface))) (0)) /= (jindex ((jio (AdvancedRTSGameLayer.getGroupInterface this))) (0))) $ do
                Control.Monad.void (AdvancedRTSGameLayer.onMovementFound layerInterface (jget (this).trackingEvent))
        pure ()


-- throws Exception
processBuiltTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick object_ a1 = jmethod object_ "processBuiltTick" (\() -> (processBuiltTick_impl (javaCast object_ :: BuildingLayer))) () a1

processBuiltTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick_super object_ a1 = (processBuiltTick_impl (javaCast object_ :: BuildingLayer)) a1

processBuiltTick_impl :: BuildingLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processBuiltTick_impl this allBinaryLayerManager = do
        when (jio (Health.isDamaged ((jio (AdvancedRTSGameLayer.getHealthInterface this))))) $ do
            Control.Monad.void (AdvancedRTSGameLayer.setAnimationInterface this (jget (this).base.base.destroyAnimationInterface))
        if (Prelude.not (jio (Health.isAlive ((jio (AdvancedRTSGameLayer.getHealthInterface this)))))) then do
            if (jio (AdvancedRTSGameLayer.isReadyForExplosion this)) then do
                currentFrame <- (IndexedAnimation.getFrame ((jget (this).base.base.destroyAnimationInterface)))
                let size = ((jio (IndexedAnimation.getSize ((jget (this).base.base.destroyAnimationInterface)))) - 1)
                if ((currentFrame == size) && (Prelude.not (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeDelayHelper)))))) then do
                    when (Prelude.not (jio (Health.isAlive ((jio (AdvancedRTSGameLayer.getHealthInterface this)))))) $ do
                        Control.Monad.void (BuildingLayer.setDestroyed this True)
                else do
                    Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).base.base.destroyAnimationInterface)))
            else do
                Control.Monad.void (AdvancedRTSGameLayer.setAnimationInterface this (jget (this).base.base.destroyAnimationInterface))
                Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jio (ExplosionBasicSound.getInstance)))
                Control.Monad.void (ShakeAnimationListener.onSmallShakeEvent ((jget (this).base.shakeListener)))
                Control.Monad.void (AllBinaryVibrationME.vibrate ((jget (this).base.vibration)) (jget (this).base.duration) 0 0)
                Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).timeDelayHelper)))
                Control.Monad.void (AdvancedRTSGameLayer.setReadyForExplosion this True)
        else do
            Control.Monad.void (AdvancedRTSGameLayer.processBuiltTick_super this.base allBinaryLayerManager)
        Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).base.base.indexedButShouldBeRotationAnimationInterface)))
        pure ()


calculateEfficiency :: (JavaObjectClass this_) => this_ -> IO (Int)
calculateEfficiency object_ = jmethod object_ "calculateEfficiency" (\() -> (calculateEfficiency_impl (javaCast object_ :: BuildingLayer))) ()

calculateEfficiency_super :: (JavaObjectClass this_) => this_ -> IO (Int)
calculateEfficiency_super object_ = (calculateEfficiency_impl (javaCast object_ :: BuildingLayer))

calculateEfficiency_impl :: BuildingLayer -> IO (Int)
calculateEfficiency_impl this = do
        pure ((jget (this).efficiencyPerLevel))


getCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost object_ = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: BuildingLayer))) ()

getCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost_super object_ = (getCost_impl (javaCast object_ :: BuildingLayer))

getCost_impl :: BuildingLayer -> IO (Int)
getCost_impl this = do
        total <- (RTSLayerUtil.getCostExponential ((jio (RTSLayerUtil.getInstance))) (Prelude.fromInteger (jnumericInteger (((jio (AdvancedRTSGameLayer.getLevel this)) * (jio (BuildingLayer.getBuildingLevelCost this)))))))
        pure ((Prelude.fromIntegral total))


getDowngradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost object_ = jmethod object_ "getDowngradeCost" (\() -> (getDowngradeCost_impl (javaCast object_ :: BuildingLayer))) ()

getDowngradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost_super object_ = (getDowngradeCost_impl (javaCast object_ :: BuildingLayer))

getDowngradeCost_impl :: BuildingLayer -> IO (Int)
getDowngradeCost_impl this = do
        downgradeCost <- (RTSLayerUtil.getCostExponential ((jio (RTSLayerUtil.getInstance))) (Prelude.fromInteger (jnumericInteger (((((jio (AdvancedRTSGameLayer.getLevel this)) - 1)) * (jio (BuildingLayer.getBuildingLevelCost this)))))))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.base.base.base.base.base.logUtil)) ("Cost: " ++ javaToString downgradeCost) this "getDowngradeCost")
        pure ((((Prelude.fromIntegral downgradeCost) * 9) `quot` 10))


getUpgradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost object_ = jmethod object_ "getUpgradeCost" (\() -> (getUpgradeCost_impl (javaCast object_ :: BuildingLayer))) ()

getUpgradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost_super object_ = (getUpgradeCost_impl (javaCast object_ :: BuildingLayer))

getUpgradeCost_impl :: BuildingLayer -> IO (Int)
getUpgradeCost_impl this = do
        upgradeCost <- (RTSLayerUtil.getCostExponential ((jio (RTSLayerUtil.getInstance))) (Prelude.fromInteger (jnumericInteger (((((jio (AdvancedRTSGameLayer.getLevel this)) + 1)) * (jio (BuildingLayer.getBuildingLevelCost this)))))))
        pure ((Prelude.fromIntegral upgradeCost))


downgrade :: (JavaObjectClass this_) => this_ -> IO (())
downgrade object_ = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: BuildingLayer))) ()

downgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
downgrade_super object_ = (downgrade_impl (javaCast object_ :: BuildingLayer))

downgrade_impl :: BuildingLayer -> IO (())
downgrade_impl this = do
        Control.Monad.void (AdvancedRTSGameLayer.downgrade_super this.base)
        Control.Monad.void (BuildingLayer.setProductivity this ((jio (BuildingLayer.getProductivity this)) - 1))
        Control.Monad.void (BuildingLayer.setEfficiency this ((jio (BuildingLayer.getEfficiency this)) - (jio (BuildingLayer.calculateEfficiency this))))
        Control.Monad.void (Health.setMaxHealth ((jio (AdvancedRTSGameLayer.getHealthInterface this))) ((jio (Health.getMaxHealth ((jio (AdvancedRTSGameLayer.getHealthInterface this))))) - (((((jio (AdvancedRTSGameLayer.getLevel this)) + 1)) * 100))))
        pure ()


upgrade :: (JavaObjectClass this_) => this_ -> IO (())
upgrade object_ = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: BuildingLayer))) ()

upgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
upgrade_super object_ = (upgrade_impl (javaCast object_ :: BuildingLayer))

upgrade_impl :: BuildingLayer -> IO (())
upgrade_impl this = do
        Control.Monad.void (AdvancedRTSGameLayer.upgrade_super this.base)
        Control.Monad.void (BuildingLayer.setProductivity this ((jio (BuildingLayer.getProductivity this)) + 1))
        Control.Monad.void (BuildingLayer.setEfficiency this ((jio (BuildingLayer.getEfficiency this)) + (jio (BuildingLayer.calculateEfficiency this))))
        Control.Monad.void (Health.setMaxHealth ((jio (AdvancedRTSGameLayer.getHealthInterface this))) ((jio (Health.getMaxHealth ((jio (AdvancedRTSGameLayer.getHealthInterface this))))) + (((jio (AdvancedRTSGameLayer.getLevel this)) * 100))))
        pure ()


getBuildingLevelCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getBuildingLevelCost object_ = jmethod object_ "getBuildingLevelCost" (\() -> (getBuildingLevelCost_impl (javaCast object_ :: BuildingLayer))) ()

getBuildingLevelCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getBuildingLevelCost_super object_ = (getBuildingLevelCost_impl (javaCast object_ :: BuildingLayer))

getBuildingLevelCost_impl :: BuildingLayer -> IO (Int)
getBuildingLevelCost_impl this = do
        pure ((jget (this).buildingLevelCost))


setBuildingLevelCost :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setBuildingLevelCost object_ a1 = jmethod object_ "setBuildingLevelCost" (\() -> (setBuildingLevelCost_impl (javaCast object_ :: BuildingLayer))) () a1

setBuildingLevelCost_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setBuildingLevelCost_super object_ a1 = (setBuildingLevelCost_impl (javaCast object_ :: BuildingLayer)) a1

setBuildingLevelCost_impl :: BuildingLayer -> Int -> IO (())
setBuildingLevelCost_impl this buildingLevelCost = do
        jset (this).buildingLevelCost (buildingLevelCost)
        pure ()


getProductivity :: (JavaObjectClass this_) => this_ -> IO (Int)
getProductivity object_ = jmethod object_ "getProductivity" (\() -> (getProductivity_impl (javaCast object_ :: BuildingLayer))) ()

getProductivity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getProductivity_super object_ = (getProductivity_impl (javaCast object_ :: BuildingLayer))

getProductivity_impl :: BuildingLayer -> IO (Int)
getProductivity_impl this = do
        pure ((jget (this).productivity))


setProductivity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setProductivity object_ a1 = jmethod object_ "setProductivity" (\() -> (setProductivity_impl (javaCast object_ :: BuildingLayer))) () a1

setProductivity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setProductivity_super object_ a1 = (setProductivity_impl (javaCast object_ :: BuildingLayer)) a1

setProductivity_impl :: BuildingLayer -> Int -> IO (())
setProductivity_impl this productivity = do
        jset (this).productivity (productivity)
        pure ()


getEfficiency :: (JavaObjectClass this_) => this_ -> IO (Int)
getEfficiency object_ = jmethod object_ "getEfficiency" (\() -> (getEfficiency_impl (javaCast object_ :: BuildingLayer))) ()

getEfficiency_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEfficiency_super object_ = (getEfficiency_impl (javaCast object_ :: BuildingLayer))

getEfficiency_impl :: BuildingLayer -> IO (Int)
getEfficiency_impl this = do
        pure ((jget (this).efficiency))


setEfficiency :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setEfficiency object_ a1 = jmethod object_ "setEfficiency" (\() -> (setEfficiency_impl (javaCast object_ :: BuildingLayer))) () a1

setEfficiency_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setEfficiency_super object_ a1 = (setEfficiency_impl (javaCast object_ :: BuildingLayer)) a1

setEfficiency_impl :: BuildingLayer -> Int -> IO (())
setEfficiency_impl this efficiency = do
        jset (this).efficiency (efficiency)
        pure ()


-- throws Exception
generateMoveOutOfBuildAreaPaths :: (JavaObjectClass this_) => this_ -> IO (())
generateMoveOutOfBuildAreaPaths object_ = jmethod object_ "generateMoveOutOfBuildAreaPaths" (\() -> (generateMoveOutOfBuildAreaPaths_impl (javaCast object_ :: BuildingLayer))) ()

generateMoveOutOfBuildAreaPaths_super :: (JavaObjectClass this_) => this_ -> IO (())
generateMoveOutOfBuildAreaPaths_super object_ = (generateMoveOutOfBuildAreaPaths_impl (javaCast object_ :: BuildingLayer))

generateMoveOutOfBuildAreaPaths_impl :: BuildingLayer -> IO (())
generateMoveOutOfBuildAreaPaths_impl this = do
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList ((jget (this).base.base.geographicMapCellPositionAreaBase)))
        surroundList <- (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList ((jget (this).base.base.geographicMapCellPositionAreaBase)))
        let nO_DIRECTION = (jget ((jio (DirectionFactory.getInstance))).nO_DIRECTION)
        geographicMapDirectionUtil <- (GeographicMapDirectionUtil.getInstance)
        pathsList <- newIORef (javaNull)
        occupyGeographicMapCellPosition <- newIORef (javaNull)
        surroundGeographicMapCellPosition <- newIORef (javaNull)
        list <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size occupyList)) - 1), ((jio (BasicArrayList.size occupyList)) - 1) + (-1) .. 0] $ \index2 -> javaIteration (pure ()) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset pathsList (assignedValue)
            jset occupyGeographicMapCellPosition ((javaCast (jio (BasicArrayList.get occupyList index2)) :: GeographicMapCellPosition.GeographicMapCellPosition))
            forM_ [((jio (BasicArrayList.size surroundList)) - 1), ((jio (BasicArrayList.size surroundList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                jset surroundGeographicMapCellPosition ((javaCast (jio (BasicArrayList.get surroundList index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
                when ((jio (GeographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition geographicMapDirectionUtil (jget surroundGeographicMapCellPosition) (jget occupyGeographicMapCellPosition))) /= nO_DIRECTION) $ do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 1))
                    jset list (assignedValue)
                    Control.Monad.void (BasicArrayList.add ((jget list)) (jget surroundGeographicMapCellPosition))
                    Control.Monad.void (BasicArrayList.add ((jget pathsList)) (jget list))
            Control.Monad.void (ABHashtable.put ((jget (this).pathsHashtable)) (jget occupyGeographicMapCellPosition) (jget pathsList))
        pure ()


getMoveOutOfBuildAreaPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath object_ a1 = jmethod object_ "getMoveOutOfBuildAreaPath" (\() -> (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: BuildingLayer))) () a1

getMoveOutOfBuildAreaPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_super object_ a1 = (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: BuildingLayer)) a1

getMoveOutOfBuildAreaPath_impl :: BuildingLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_impl this geographicMapCellPosition = do
        let pathsList = (javaCast (jio (ABHashtable.get ((jget (this).pathsHashtable)) geographicMapCellPosition)) :: BasicArrayList.BasicArrayList)
        pure (pathsList)


getEndGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList object_ = jmethod object_ "getEndGeographicMapCellPositionList" (\() -> (getEndGeographicMapCellPositionList_impl (javaCast object_ :: BuildingLayer))) ()

getEndGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_super object_ = (getEndGeographicMapCellPositionList_impl (javaCast object_ :: BuildingLayer))

getEndGeographicMapCellPositionList_impl :: BuildingLayer -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_impl this = do
        (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList ((jget (this).base.base.geographicMapCellPositionAreaBase)))


shouldHandleStartSameAsEnd :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd object_ = jmethod object_ "shouldHandleStartSameAsEnd" (\() -> (shouldHandleStartSameAsEnd_impl (javaCast object_ :: BuildingLayer))) ()

shouldHandleStartSameAsEnd_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd_super object_ = (shouldHandleStartSameAsEnd_impl (javaCast object_ :: BuildingLayer))

shouldHandleStartSameAsEnd_impl :: BuildingLayer -> IO (Bool)
shouldHandleStartSameAsEnd_impl this = do
        pure (False)


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BuildingLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BuildingLayer)) a1

paint_impl :: BuildingLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        when (jio (AdvancedRTSGameLayer.isVisible this)) $ do
            Control.Monad.void (AdvancedRTSGameLayer.paint_super this.base graphics)
            Control.Monad.void (Paintable.paint ((jget (this).damageFloatersPaintableInterface)) graphics)
            Control.Monad.void (Paintable.paint ((jget (this).healthBar)) graphics)
        pure ()


-- throws Exception
damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: BuildingLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: BuildingLayer)) a1 a2

damage_impl :: BuildingLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        Control.Monad.void (AdvancedRTSGameLayer.damage_super this.base damage damageType)
        Control.Monad.void (DamageFloaters.add ((jget (this).damageFloaters)) damage)
        when (damage > 0) $ do
            Control.Monad.void (jio (Health.damage ((jio (AdvancedRTSGameLayer.getHealthInterface this))) damage))
        pure ()


-- throws Exception
getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: BuildingLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: BuildingLayer)) a1

getDamage_impl :: BuildingLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
        pure (0)


addVisibility :: (JavaObjectClass this_) => this_ -> IO (())
addVisibility object_ = jmethod object_ "addVisibility" (\() -> (addVisibility_impl (javaCast object_ :: BuildingLayer))) ()

addVisibility_super :: (JavaObjectClass this_) => this_ -> IO (())
addVisibility_super object_ = (addVisibility_impl (javaCast object_ :: BuildingLayer))

addVisibility_impl :: BuildingLayer -> IO (())
addVisibility_impl this = do
        let geographicMapCellPositionArea = (jget (this).base.base.geographicMapCellPositionAreaBase)
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList geographicMapCellPositionArea)
        Control.Monad.void (VisibleCellPositionsSingleton.addStationaryCellPositions ((jio (VisibleCellPositionsSingleton.getInstance))) occupyList)
        surroundList <- (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList geographicMapCellPositionArea)
        Control.Monad.void (VisibleCellPositionsSingleton.addStationaryCellPositions ((jio (VisibleCellPositionsSingleton.getInstance))) surroundList)
        pure ()


removeVisibility :: (JavaObjectClass this_) => this_ -> IO (())
removeVisibility object_ = jmethod object_ "removeVisibility" (\() -> (removeVisibility_impl (javaCast object_ :: BuildingLayer))) ()

removeVisibility_super :: (JavaObjectClass this_) => this_ -> IO (())
removeVisibility_super object_ = (removeVisibility_impl (javaCast object_ :: BuildingLayer))

removeVisibility_impl :: BuildingLayer -> IO (())
removeVisibility_impl this = do
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList ((jget (this).base.base.geographicMapCellPositionAreaBase)))
        Control.Monad.void (VisibleCellPositionsSingleton.removeStationaryCellPositions ((jio (VisibleCellPositionsSingleton.getInstance))) occupyList)
        surroundList <- (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList ((jget (this).base.base.geographicMapCellPositionAreaBase)))
        Control.Monad.void (VisibleCellPositionsSingleton.removeStationaryCellPositions ((jio (VisibleCellPositionsSingleton.getInstance))) surroundList)
        pure ()


-- throws Exception
setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: BuildingLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: BuildingLayer)) a1

setDestroyed_impl :: BuildingLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        Control.Monad.void (AdvancedRTSGameLayer.setDestroyed_super this.base destroyed)
        when (jio (AdvancedRTSGameLayer.isDestroyed this)) $ do
            Control.Monad.void (DropCellPositionHistory.removeAll ((jio (DropCellPositionHistory.getInstance))) this)
            Control.Monad.void (TrackingEventHandler.removeListener ((jio (TrackingEventHandler.getInstance))) this)
            when (jget (this).local) $ do
                Control.Monad.void (BuildingLayer.removeVisibility this)
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


createHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable object_ = jmethod object_ "createHudPaintable" (\() -> (createHudPaintable_impl (javaCast object_ :: BuildingLayer))) ()

createHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_super object_ = (createHudPaintable_impl (javaCast object_ :: BuildingLayer))

createHudPaintable_impl :: BuildingLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_impl this = do
        buildingInfoHudPaintable <- (BuildingInfoHudPaintable.getInstance)
        Control.Monad.void (BuildingInfoHudPaintable.setBasicColorP buildingInfoHudPaintable (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).base.base.base.base.allBinaryGameLayerManagerP)))))
        Control.Monad.void (BuildingInfoHudPaintable.setRtsLayer buildingInfoHudPaintable this)
        pure ((javaCast buildingInfoHudPaintable :: SelectionHudPaintable.SelectionHudPaintable))


getHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable object_ = jmethod object_ "getHudPaintable" (\() -> (getHudPaintable_impl (javaCast object_ :: BuildingLayer))) ()

getHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_super object_ = (getHudPaintable_impl (javaCast object_ :: BuildingLayer))

getHudPaintable_impl :: BuildingLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_impl this = do
        buildingInfoHudPaintable <- (BuildingInfoHudPaintable.getInstance)
        pure ((javaCast buildingInfoHudPaintable :: SelectionHudPaintable.SelectionHudPaintable))


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: BuildingLayer))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: BuildingLayer))

getType_impl :: BuildingLayer -> IO (Int)
getType_impl this = do
        (BuildingLayer.getStaticType)


getStaticType :: IO (Int)
getStaticType = do
        pure (2)


