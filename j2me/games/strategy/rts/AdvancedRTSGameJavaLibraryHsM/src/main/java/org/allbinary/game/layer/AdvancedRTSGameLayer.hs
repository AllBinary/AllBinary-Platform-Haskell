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
-- package org.allbinary.game.layer
module AdvancedRTSGameLayer (module AdvancedRTSGameLayer, module RTSLayer) where

import RTSLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createSimulated, createSimulated_super, createSimulated_impl, updateWaypointBehavior, updateWaypointBehavior_super, updateWaypointBehavior_impl, initVisibility, initVisibility_super, initVisibility_impl, construct, construct_super, construct_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, getParentLayer, getParentLayer_super, getParentLayer_impl, setParentLayer, setParentLayer_super, setParentLayer_impl, getWaypointBehavior, getWaypointBehavior_super, getWaypointBehavior_impl, setWaypointBehavior, setWaypointBehavior_super, setWaypointBehavior_impl, getWaypointLogHelper, getWaypointLogHelper_super, getWaypointLogHelper_impl, getWaypoint2LogHelper, getWaypoint2LogHelper_super, getWaypoint2LogHelper_impl, getWaypointRunnableLogHelper, getWaypointRunnableLogHelper_super, getWaypointRunnableLogHelper_impl, shouldAddWaypointFromBuilding, shouldAddWaypointFromBuilding_super, shouldAddWaypointFromBuilding_impl, isWaypointListEmptyOrOnlyTargets, isWaypointListEmptyOrOnlyTargets_super, isWaypointListEmptyOrOnlyTargets_impl, buildingChase, buildingChase_super, buildingChase_impl, getSurroundingGeographicMapCellPositionList, getSurroundingGeographicMapCellPositionList_super, getSurroundingGeographicMapCellPositionList_impl, setSelected, setSelected_super, setSelected_impl, onDestroyed, onDestroyed_super, onDestroyed_impl, shakeListener, vibration, duration, parentLayer, waypointBehaviorBase)
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
import qualified NullPathFindingLayer -- same package or java.lang
import qualified AdvancedRTSProperties -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified AdvancedRTSPlayerLayerInterface -- same package or java.lang
import qualified RTSPlayerLayerInterface -- same package or java.lang
import qualified RTSLayerUtil -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified RTSLayer2LogHelper -- same package or java.lang
import qualified GeographicMapCellPositionAreaBase -- same package or java.lang
import qualified AllBinaryGameLayerManager -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified NullIndexedAnimationFactory -- org.allbinary.animation.NullIndexedAnimationFactory
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified ShakeAnimationListener -- org.allbinary.animation.transition.shake.ShakeAnimationListener
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified GameTypeFactory -- org.allbinary.game.GameTypeFactory
import qualified DestroyedEvent -- org.allbinary.game.combat.destroy.event.DestroyedEvent
import qualified DestroyedEventHandler -- org.allbinary.game.combat.destroy.event.DestroyedEventHandler
import qualified DestroyedEventListenerInterface -- org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface
import qualified Health -- org.allbinary.game.health.Health
import qualified Group -- org.allbinary.game.identification.Group
import qualified GroupFactory -- org.allbinary.game.identification.GroupFactory
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified NullRTSFormInputFactory -- org.allbinary.game.input.form.NullRTSFormInputFactory
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified BuildingEventHandler -- org.allbinary.game.layer.building.event.BuildingEventHandler
import qualified UnitLayer -- org.allbinary.game.layer.unit.UnitLayer
import qualified Waypoint2LogHelper -- org.allbinary.game.layer.waypoint.Waypoint2LogHelper
import qualified Waypoint2SelectedLogHelper -- org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper
import qualified WaypointBase -- org.allbinary.game.layer.waypoint.WaypointBase
import qualified WaypointLogHelper -- org.allbinary.game.layer.waypoint.WaypointLogHelper
import qualified WaypointRunnableLogHelper -- org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper
import qualified WaypointRunnableSelectedLogHelper -- org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper
import qualified WaypointSelectedLogHelper -- org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified NullTickable -- org.allbinary.game.tick.NullTickable
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified TileLayerPositionIntoViewPosition -- org.allbinary.game.view.TileLayerPositionIntoViewPosition
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified FrameUtil -- org.allbinary.math.FrameUtil
import qualified AllBinaryVibrationME -- org.allbinary.media.AllBinaryVibrationME
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified GeographicMapDirectionUtil -- org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified RTSLayer

-- implements DestroyedEventListenerInterface
data AdvancedRTSGameLayer = AdvancedRTSGameLayer
    { header_ :: JavaHeader
    , base :: RTSLayer.RTSLayer
    , shakeListener :: IORef (ShakeAnimationListener.ShakeAnimationListener)
    , vibration :: IORef (AllBinaryVibrationME.AllBinaryVibrationME)
    , duration :: IORef (Int)
    , parentLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    , waypointBehaviorBase :: IORef (TickableInterface.TickableInterface)
    }

instance JavaNull AdvancedRTSGameLayer where
    javaNull = javaNullRecord "AdvancedRTSGameLayer"

instance JavaEquals AdvancedRTSGameLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvancedRTSGameLayer where
    (==) = jrecordEquals

instance JavaObjectClass AdvancedRTSGameLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdvancedRTSGameLayer
newRecord_ = do
    base <- RTSLayer.newRecord_
    let header_ = base.header_
    shakeListener <- newIORef javaNull
    vibration <- newIORef javaNull
    duration <- newIORef 0
    parentLayer <- newIORef javaNull
    waypointBehaviorBase <- newIORef javaNull
    let this = AdvancedRTSGameLayer header_ base shakeListener vibration duration parentLayer waypointBehaviorBase
    jregisterLevel header_ this
    DestroyedEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "updateWaypointBehavior" (\() -> updateWaypointBehavior_impl this)
    jregisterMethod header_ "initVisibility" (\() -> initVisibility_impl this)
    jregisterMethod header_ "construct" (\() -> construct_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "getParentLayer" (\() -> getParentLayer_impl this)
    jregisterMethod header_ "setParentLayer" (\() -> setParentLayer_impl this)
    jregisterMethod header_ "getWaypointBehavior" (\() -> getWaypointBehavior_impl this)
    jregisterMethod header_ "setWaypointBehavior" (\() -> setWaypointBehavior_impl this)
    jregisterMethod header_ "getWaypointLogHelper" (\() -> getWaypointLogHelper_impl this)
    jregisterMethod header_ "getWaypoint2LogHelper" (\() -> getWaypoint2LogHelper_impl this)
    jregisterMethod header_ "getWaypointRunnableLogHelper" (\() -> getWaypointRunnableLogHelper_impl this)
    jregisterMethod header_ "shouldAddWaypointFromBuilding" (\() -> shouldAddWaypointFromBuilding_impl this)
    jregisterMethod header_ "isWaypointListEmptyOrOnlyTargets" (\() -> isWaypointListEmptyOrOnlyTargets_impl this)
    jregisterMethod header_ "buildingChase" (\() -> buildingChase_impl this)
    jregisterMethod header_ "getSurroundingGeographicMapCellPositionList" (\() -> getSurroundingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "setSelected" (\() -> setSelected_impl this)
    jregisterMethod header_ "onDestroyed" (\() -> onDestroyed_impl this)
    pure this

initFields_ :: AdvancedRTSGameLayer -> IO ()
initFields_ this = do
    jset this.shakeListener (javaNull)
    jset this.vibration (javaNull)
    jset this.duration (0)
    jset this.parentLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    jset this.waypointBehaviorBase =<< (fmap (\value_ -> javaCast value_ :: TickableInterface.TickableInterface) (NullTickable.getInstance))
    pure ()


-- throws Exception
createSimulated :: IO (AdvancedRTSGameLayer)
createSimulated = do
        nullAnimationInterfaceFactoryInterface <- (fmap (\value_ -> javaCast value_ :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) (NullAnimationFactory.getFactoryInstance))
        nullIndexedAnimationInterfaceFactoryInterface <- (fmap (\value_ -> javaCast value_ :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) (NullIndexedAnimationFactory.getFactoryInstance))
        (new_18 (RemoteInfo.rEMOTE_INFO) (NullPathFindingLayer.nULL_PATH_FINDING_LAYER) (jio (AdvancedRTSProperties.createPropertiesSimulated)) (jget ((jio (GroupFactory.getInstance))).nULL_GROUP_ARRAY) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Health.nULL_HEALTH) (jio (NullRTSFormInputFactory.getInstance)) nullAnimationInterfaceFactoryInterface nullIndexedAnimationInterfaceFactoryInterface nullAnimationInterfaceFactoryInterface nullAnimationInterfaceFactoryInterface nullIndexedAnimationInterfaceFactoryInterface (jio (NullIndexedAnimationFactory.getFactoryInstance)) (RectangleFactory.sINGLETON) 0 0 (jio (TileLayerPositionIntoViewPosition.new_)))

new_18 :: RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> AdvancedRTSProperties.AdvancedRTSProperties -> JavaArray (Group.Group) -> String -> String -> Health.Health -> RTSFormInput.RTSFormInput -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> ViewPositionBase.ViewPositionBase -> IO AdvancedRTSGameLayer
new_18 remoteInfo parentLayer advancedRTSProperties groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y viewPosition = do
    this <- newRecord_
    init_18 this remoteInfo parentLayer advancedRTSProperties groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y viewPosition
    pure this

init_18 :: AdvancedRTSGameLayer -> RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> AdvancedRTSProperties.AdvancedRTSProperties -> JavaArray (Group.Group) -> String -> String -> Health.Health -> RTSFormInput.RTSFormInput -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> ViewPositionBase.ViewPositionBase -> IO ()
init_18 this remoteInfo parentLayer advancedRTSProperties groupInterface rootName name healthInterface rtsFormInput animationInterfaceFactoryInterface emptyAnimationInterfaceFactoryInterface baseAnimationInterfaceFactoryInterface buildAnimationInterfaceFactoryInterface verticleBuildAnimationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y viewPosition = do
        RTSLayer.init_16 this.base (remoteInfo) (groupInterface) (rootName) (name) (healthInterface) (rtsFormInput) (animationInterfaceFactoryInterface) (emptyAnimationInterfaceFactoryInterface) (baseAnimationInterfaceFactoryInterface) (buildAnimationInterfaceFactoryInterface) (verticleBuildAnimationInterfaceFactoryInterface) (proceduralAnimationInterfaceFactoryInterface) (rectangle) (x) (y) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RTSLayer.setVisible this False)
        Control.Monad.void (AdvancedRTSGameLayer.setWaypointBehavior this (jio (WaypointBehaviorBase.new_)))
        jset (this).shakeListener ((jget (advancedRTSProperties).shakeListener))
        jset (this).vibration ((jget (advancedRTSProperties).vibration))
        jset (this).duration ((jget (advancedRTSProperties).duration))
        Control.Monad.void (AdvancedRTSGameLayer.setParentLayer this parentLayer)
        pure ()


-- throws Exception
updateWaypointBehavior :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior object_ a1 = jmethod object_ "updateWaypointBehavior" (\() -> (updateWaypointBehavior_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

updateWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior_super object_ a1 = (updateWaypointBehavior_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

updateWaypointBehavior_impl :: AdvancedRTSGameLayer -> BasicGeographicMap.BasicGeographicMap -> IO (())
updateWaypointBehavior_impl this geographicMapInterface = do
        Control.Monad.void (RTSLayer.updateWaypointBehavior_super this.base geographicMapInterface)
        Control.Monad.void (WaypointBase.setAllBinaryGameLayerManager ((jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this)))))) (jget (this).base.base.base.allBinaryGameLayerManagerP))
        pure ()


initVisibility :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
initVisibility object_ a1 = jmethod object_ "initVisibility" (\() -> (initVisibility_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

initVisibility_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
initVisibility_super object_ a1 = (initVisibility_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

initVisibility_impl :: AdvancedRTSGameLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
initVisibility_impl this rtsPlayerLayerInterface = do
        let advancedRTSPlayerLayerInterface = (javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface)
        if ((jio (AdvancedRTSPlayerLayerInterface.isLocalPlayer advancedRTSPlayerLayerInterface)) || ((jio (AdvancedRTSPlayerLayerInterface.getGameType advancedRTSPlayerLayerInterface)) == (jget ((jio (GameTypeFactory.getInstance))).bOT))) then do
            Control.Monad.void (RTSLayer.setVisible this True)
        else do
            Control.Monad.void (RTSLayer.setVisible this False)
        pure ()


-- throws Exception
construct :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct object_ a1 = jmethod object_ "construct" (\() -> (construct_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

construct_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_super object_ a1 = (construct_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

construct_impl :: AdvancedRTSGameLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_impl this rtsPlayerLayerInterface = do
        Control.Monad.void (RTSLayer.construct_super this.base rtsPlayerLayerInterface)
        Control.Monad.void (AdvancedRTSGameLayer.initVisibility this rtsPlayerLayerInterface)
        Control.Monad.void (BuildingEventHandler.addListenerInterface ((jio (BuildingEventHandler.getInstance))) (javaCast (jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this)))))))
        pure ()


-- throws Exception
setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

setDestroyed_impl :: AdvancedRTSGameLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        Control.Monad.void (RTSLayer.setDestroyed_super this.base destroyed)
        when (jio (RTSLayer.isDestroyed this)) $ do
            Control.Monad.void (BuildingEventHandler.removeListener ((jio (BuildingEventHandler.getInstance))) (javaCast (jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this)))))))
            Control.Monad.void (BuildingEventHandler.removeListener ((jio (BuildingEventHandler.getInstance))) (javaCast this))
            Control.Monad.void (DestroyedEventHandler.addListener ((jio (DestroyedEventHandler.getInstance))) (javaCast this))
            Control.Monad.void (RTSLayerUtil.destroyAndClear ((jio (RTSLayerUtil.getInstance))) (jio (WaypointBehaviorBase.getOwnedWaypointList ((jio (AdvancedRTSGameLayer.getWaypointBehavior this))))))
        pure ()


getParentLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer object_ = jmethod object_ "getParentLayer" (\() -> (getParentLayer_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

getParentLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer_super object_ = (getParentLayer_impl (javaCast object_ :: AdvancedRTSGameLayer))

getParentLayer_impl :: AdvancedRTSGameLayer -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer_impl this = do
        pure ((jget (this).parentLayer))


setParentLayer :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setParentLayer object_ a1 = jmethod object_ "setParentLayer" (\() -> (setParentLayer_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

setParentLayer_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setParentLayer_super object_ a1 = (setParentLayer_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

setParentLayer_impl :: AdvancedRTSGameLayer -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setParentLayer_impl this parentLayer = do
        jset (this).parentLayer (parentLayer)
        pure ()


getWaypointBehavior :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior object_ = jmethod object_ "getWaypointBehavior" (\() -> (getWaypointBehavior_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

getWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_super object_ = (getWaypointBehavior_impl (javaCast object_ :: AdvancedRTSGameLayer))

getWaypointBehavior_impl :: AdvancedRTSGameLayer -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_impl this = do
        pure ((javaCast (jget (this).waypointBehaviorBase) :: WaypointBehaviorBase.WaypointBehaviorBase))


setWaypointBehavior :: (JavaObjectClass this_) => this_ -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setWaypointBehavior object_ a1 = jmethod object_ "setWaypointBehavior" (\() -> (setWaypointBehavior_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

setWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setWaypointBehavior_super object_ a1 = (setWaypointBehavior_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

setWaypointBehavior_impl :: AdvancedRTSGameLayer -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setWaypointBehavior_impl this unitWaypointHelper = do
        jset (this).waypointBehaviorBase (unitWaypointHelper)
        pure ()


getWaypointLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper object_ = jmethod object_ "getWaypointLogHelper" (\() -> (getWaypointLogHelper_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

getWaypointLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_super object_ = (getWaypointLogHelper_impl (javaCast object_ :: AdvancedRTSGameLayer))

getWaypointLogHelper_impl :: AdvancedRTSGameLayer -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_impl this = do
        pure ((jget (this).base.waypointLogHelperP))


getWaypoint2LogHelper :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper object_ = jmethod object_ "getWaypoint2LogHelper" (\() -> (getWaypoint2LogHelper_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

getWaypoint2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_super object_ = (getWaypoint2LogHelper_impl (javaCast object_ :: AdvancedRTSGameLayer))

getWaypoint2LogHelper_impl :: AdvancedRTSGameLayer -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_impl this = do
        pure ((jget (this).base.waypoint2LogHelperP))


getWaypointRunnableLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper object_ = jmethod object_ "getWaypointRunnableLogHelper" (\() -> (getWaypointRunnableLogHelper_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

getWaypointRunnableLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_super object_ = (getWaypointRunnableLogHelper_impl (javaCast object_ :: AdvancedRTSGameLayer))

getWaypointRunnableLogHelper_impl :: AdvancedRTSGameLayer -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_impl this = do
        pure ((jget (this).base.waypointRunnableLogHelperP))


shouldAddWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding object_ = jmethod object_ "shouldAddWaypointFromBuilding" (\() -> (shouldAddWaypointFromBuilding_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

shouldAddWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding_super object_ = (shouldAddWaypointFromBuilding_impl (javaCast object_ :: AdvancedRTSGameLayer))

shouldAddWaypointFromBuilding_impl :: AdvancedRTSGameLayer -> IO (Bool)
shouldAddWaypointFromBuilding_impl this = do
    javaCatchReturn $ do
        when ((jtoObject (jget (this).parentLayer)) /= (jtoObject NullPathFindingLayer.nULL_PATH_FINDING_LAYER)) $ do
            let parentAdvancedRTSGameLayer = (javaCast (jget (this).parentLayer) :: AdvancedRTSGameLayer)
            when ((jio (AdvancedRTSGameLayer.getType parentAdvancedRTSGameLayer)) /= (jio (UnitLayer.getStaticType))) $ do
                javaReturn (True)
        pure (False)


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: AdvancedRTSGameLayer))

isWaypointListEmptyOrOnlyTargets_impl :: AdvancedRTSGameLayer -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = do
    javaCatchReturn $ do
        when ((jio (RTSLayer.getType this)) /= (jio (UnitLayer.getStaticType))) $ do
            javaReturn (True)
        pure (False)


-- throws Exception
buildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase object_ a1 a2 = jmethod object_ "buildingChase" (\() -> (buildingChase_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1 a2

buildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_super object_ a1 a2 = (buildingChase_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1 a2

buildingChase_impl :: AdvancedRTSGameLayer -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_impl this allbinaryLayer cellPosition = do
    javaCatchReturn $ do
        geographicMapCellPosition <- (RTSLayer.getCurrentGeographicMapCellPosition this)
        buildingDirection <- (GeographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition ((jio (GeographicMapDirectionUtil.getInstance))) geographicMapCellPosition cellPosition)
        angleInfo <- (RotationAnimation.getAngleInfoP ((jio (RTSLayer.getRotationAnimationInterface this))))
        angle <- (FrameUtil.adjustAngleToFrameAngle ((jio (FrameUtil.getInstance))) ((Prelude.fromIntegral (jio (AngleInfo.getAngle angleInfo))) + 90))
        gameKeyEventFactory <- (GameKeyEventFactory.getInstance)
        if (buildingDirection == (jget ((jio (DirectionFactory.getInstance))).uP)) then do
            Control.Monad.void (RTSLayer2LogHelper.buildingAbove ((jget (this).base.rtsLayer2LogHelper)) (javaCast this))
            if ((angle > 180) && (angle < 360)) then do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseLeft ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.lEFT))))
                when (angle <= 190) $ do
                    javaReturn (True)
            else do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseRight ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.rIGHT))))
                when (angle >= 170) $ do
                    javaReturn (True)
        else if (buildingDirection == (jget ((jio (DirectionFactory.getInstance))).dOWN)) then do
            Control.Monad.void (RTSLayer2LogHelper.buildingDown ((jget (this).base.rtsLayer2LogHelper)) (javaCast this))
            if ((angle > 180) && (angle < 360)) then do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseLeft ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.rIGHT))))
                when (angle > 315) $ do
                    javaReturn (True)
            else do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseRight ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.lEFT))))
                when (angle < 45) $ do
                    javaReturn (True)
        else if (buildingDirection == (jget ((jio (DirectionFactory.getInstance))).lEFT)) then do
            Control.Monad.void (RTSLayer2LogHelper.buildingLeft ((jget (this).base.rtsLayer2LogHelper)))
            if ((angle > 90) && (angle < 270)) then do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseDown ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.lEFT))))
                when (angle < 135) $ do
                    javaReturn (True)
            else do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseUp ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.rIGHT))))
                when (angle > 45) $ do
                    javaReturn (True)
        else if (buildingDirection == (jget ((jio (DirectionFactory.getInstance))).rIGHT)) then do
            Control.Monad.void (RTSLayer2LogHelper.buildingRight ((jget (this).base.rtsLayer2LogHelper)))
            if ((angle > 90) && (angle < 270)) then do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseDown ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.rIGHT))))
                when (angle > 225) $ do
                    javaReturn (True)
            else do
                Control.Monad.void (RTSLayer2LogHelper.buildingChaseUp ((jget (this).base.rtsLayer2LogHelper)) (javaCast this) angle)
                Control.Monad.void (BasicArrayList.add ((jio (RTSLayer.getGameKeyEventList this))) (jio (GameKeyEventFactory.getInstanceForKey gameKeyEventFactory (javaCast this) (Canvas.lEFT))))
                when ((angle < 315) && (angle > 180)) $ do
                    javaReturn (True)
        else do
            javaReturn (True)
        pure (False)


-- throws Exception
getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: AdvancedRTSGameLayer))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: AdvancedRTSGameLayer))

getSurroundingGeographicMapCellPositionList_impl :: AdvancedRTSGameLayer -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = do
        let geographicMapCompositeInterface = (javaCast (jget (this).base.base.base.allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GeographicMapCellPositionAreaBase.update ((jget (this).base.geographicMapCellPositionAreaBase)) geographicMapInterface)
        (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList ((jget (this).base.geographicMapCellPositionAreaBase)))


setSelected :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSelected object_ a1 = jmethod object_ "setSelected" (\() -> (setSelected_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

setSelected_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSelected_super object_ a1 = (setSelected_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

setSelected_impl :: AdvancedRTSGameLayer -> Bool -> IO (())
setSelected_impl this selected = do
        Control.Monad.void (RTSLayer.setSelected_super this.base selected)
        when (jget (this).base.debug) $ do
            if selected then do
                assignedValue <- (WaypointSelectedLogHelper.getInstance)
                jset (this).base.waypointLogHelperP (assignedValue)
                assignedValue <- (Waypoint2SelectedLogHelper.getInstance)
                jset (this).base.waypoint2LogHelperP (assignedValue)
                assignedValue <- (WaypointRunnableSelectedLogHelper.getInstance)
                jset (this).base.waypointRunnableLogHelperP (assignedValue)
            else do
                assignedValue <- (WaypointLogHelper.getInstance)
                jset (this).base.waypointLogHelperP (assignedValue)
                assignedValue <- (Waypoint2LogHelper.getInstance)
                jset (this).base.waypoint2LogHelperP (assignedValue)
                assignedValue <- (WaypointRunnableLogHelper.getInstance)
                jset (this).base.waypointRunnableLogHelperP (assignedValue)
        pure ()


onDestroyed :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed object_ a1 = jmethod object_ "onDestroyed" (\() -> (onDestroyed_impl (javaCast object_ :: AdvancedRTSGameLayer))) () a1

onDestroyed_super :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_super object_ a1 = (onDestroyed_impl (javaCast object_ :: AdvancedRTSGameLayer)) a1

onDestroyed_impl :: AdvancedRTSGameLayer -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_impl this destroyedEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).eXCEPTION) this "onDestroyed" e)
            ) $ do
            layerInterface <- (DestroyedEvent.getLayerInterface destroyedEvent)
            when ((jtoObject layerInterface) == (jtoObject this)) $ do
                Control.Monad.void (DestroyedEventHandler.removeListener ((jio (DestroyedEventHandler.getInstance))) (javaCast this))
                let waypoint = (javaCast (jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this))))) :: WaypointBase.WaypointBase)
                Control.Monad.void (WaypointBase.reset waypoint)
        pure ()


