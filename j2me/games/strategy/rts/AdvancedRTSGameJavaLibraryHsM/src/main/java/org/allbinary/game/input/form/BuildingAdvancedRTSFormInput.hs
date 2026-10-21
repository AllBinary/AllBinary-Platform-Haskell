{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.input.form
module BuildingAdvancedRTSFormInput (module BuildingAdvancedRTSFormInput, module BuildingRTSFormInput) where

import BuildingRTSFormInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, isPositionBlocked, isPositionBlocked_super, isPositionBlocked_impl, isBuildAttemptValid, isBuildAttemptValid_super, isBuildAttemptValid_impl, add, add_super, add_impl, atLeastOneHouseGameNotificationEvent, bUILD_BUILDING_RTS_LAYER_EVENT)
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
import qualified AdvancedPlayerOwnedRTSLayers -- org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers
import qualified AdvancedRTSPlayerLayerInterface -- org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified BuildingEventHandler -- org.allbinary.game.layer.building.event.BuildingEventHandler
import qualified LocalPlayerBuildingEventHandler -- org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler
import qualified WaypointCellPositionHistory -- org.allbinary.game.layer.waypoint.WaypointCellPositionHistory
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified BuildingRTSFormInput

data BuildingAdvancedRTSFormInput = BuildingAdvancedRTSFormInput
    { header_ :: JavaHeader
    , base :: BuildingRTSFormInput.BuildingRTSFormInput
    , atLeastOneHouseGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , bUILD_BUILDING_RTS_LAYER_EVENT :: IORef (RTSLayerEvent.RTSLayerEvent)
    }

instance JavaNull BuildingAdvancedRTSFormInput where
    javaNull = javaNullRecord "BuildingAdvancedRTSFormInput"

instance JavaEquals BuildingAdvancedRTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildingAdvancedRTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass BuildingAdvancedRTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BuildingAdvancedRTSFormInput
newRecord_ = do
    base <- BuildingRTSFormInput.newRecord_
    let header_ = base.header_
    atLeastOneHouseGameNotificationEvent <- newIORef javaNull
    bUILD_BUILDING_RTS_LAYER_EVENT <- newIORef javaNull
    let this = BuildingAdvancedRTSFormInput header_ base atLeastOneHouseGameNotificationEvent bUILD_BUILDING_RTS_LAYER_EVENT
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "isPositionBlocked" (\() -> isPositionBlocked_impl this)
    jregisterMethod header_ "isBuildAttemptValid" (\() -> isBuildAttemptValid_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: BuildingAdvancedRTSFormInput -> IO ()
initFields_ this = do
    jset this.atLeastOneHouseGameNotificationEvent (javaNull)
    jset this.bUILD_BUILDING_RTS_LAYER_EVENT =<< (RTSLayerEvent.new_1 (NullPathFindingLayer.nULL_PATH_FINDING_LAYER))
    pure ()

new_2 :: JavaArray (Group.Group) -> Bool -> IO BuildingAdvancedRTSFormInput
new_2 groupInterface isUnitProducer = do
    this <- newRecord_
    init_2 this groupInterface isUnitProducer
    pure this

init_2 :: BuildingAdvancedRTSFormInput -> JavaArray (Group.Group) -> Bool -> IO ()
init_2 this groupInterface isUnitProducer = do
        BuildingRTSFormInput.init_2 this.base (groupInterface) (isUnitProducer)
        initFields_ this
        pure () -- super(...) is in the record above
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this "Build At Least One House First" (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).atLeastOneHouseGameNotificationEvent (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: BuildingAdvancedRTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: BuildingAdvancedRTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: BuildingAdvancedRTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (BuildingRTSFormInput.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).atLeastOneHouseGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


isPositionBlocked :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPositionBlocked object_ = jmethod object_ "isPositionBlocked" (\() -> (isPositionBlocked_impl (javaCast object_ :: BuildingAdvancedRTSFormInput))) ()

isPositionBlocked_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPositionBlocked_super object_ = (isPositionBlocked_impl (javaCast object_ :: BuildingAdvancedRTSFormInput))

isPositionBlocked_impl :: BuildingAdvancedRTSFormInput -> IO (Bool)
isPositionBlocked_impl this = do
    javaCatchReturn $ do
        if ((jio (DropCellPositionHistory.isCellPositionWithDrop ((jio (DropCellPositionHistory.getInstance))) (jio (BuildingRTSFormInput.getSelectedGeographicCellPosition this)))) || (jio (WaypointCellPositionHistory.isCellPositionWithDrop ((jio (WaypointCellPositionHistory.getInstance))) (jio (BuildingRTSFormInput.getSelectedGeographicCellPosition this))))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
isBuildAttemptValid :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> RTSLayer.RTSLayer -> IO (Bool)
isBuildAttemptValid object_ a1 a2 = jmethod object_ "isBuildAttemptValid" (\() -> (isBuildAttemptValid_impl (javaCast object_ :: BuildingAdvancedRTSFormInput))) () a1 a2

isBuildAttemptValid_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> RTSLayer.RTSLayer -> IO (Bool)
isBuildAttemptValid_super object_ a1 a2 = (isBuildAttemptValid_impl (javaCast object_ :: BuildingAdvancedRTSFormInput)) a1 a2

isBuildAttemptValid_impl :: BuildingAdvancedRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> RTSLayer.RTSLayer -> IO (Bool)
isBuildAttemptValid_impl this rtsPlayerLayerInterface layerInterface = do
    javaCatchReturn $ do
        let advancedRTSPlayerLayerInterface = (javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface)
        advancedPlayerOwnedRTSLayers <- (AdvancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers advancedRTSPlayerLayerInterface)
        totalHouses <- (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getHouseList advancedPlayerOwnedRTSLayers))))
        when ((totalHouses < 1) && ((jstringIndexOf (jio (RTSLayer.getName layerInterface)) " House" 0) < 0)) $ do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).atLeastOneHouseGameNotificationEvent))
            javaReturn (False)
        (BuildingRTSFormInput.isBuildAttemptValid_super this.base rtsPlayerLayerInterface layerInterface)


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BuildingAdvancedRTSFormInput))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: BuildingAdvancedRTSFormInput)) a1 a2 a3

add_impl :: BuildingAdvancedRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> IO (())
add_impl this rtsPlayerLayerInterface layerManager layerInterface = do
        Control.Monad.void (RTSLayerEvent.setRtsLayer ((jget (this).bUILD_BUILDING_RTS_LAYER_EVENT)) layerInterface)
        Control.Monad.void (BuildingEventHandler.fireEvent ((jio (BuildingEventHandler.getInstance))) (jget (this).bUILD_BUILDING_RTS_LAYER_EVENT))
        when (jio (isLocalPlayer (((javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface))))) $ do
            Control.Monad.void (LocalPlayerBuildingEventHandler.fireEvent ((jio (LocalPlayerBuildingEventHandler.getInstance))) (jget (this).bUILD_BUILDING_RTS_LAYER_EVENT))
        Control.Monad.void (BuildingRTSFormInput.add_super this.base rtsPlayerLayerInterface layerManager layerInterface)
        pure ()


