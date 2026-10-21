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
-- package org.allbinary.game.input.form
module BuildingRTSFormInput (module BuildingRTSFormInput, module RTSFormInput) where

import RTSFormInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, processGameSpecific, processGameSpecific_super, processGameSpecific_impl, isPositionBlocked, isPositionBlocked_super, isPositionBlocked_impl, isDemoLocked, isDemoLocked_super, isDemoLocked_impl, buildFromMotionInput, buildFromMotionInput_super, buildFromMotionInput_impl, attemptBuild, attemptBuild_super, attemptBuild_impl, isBuildAttemptValid, isBuildAttemptValid_super, isBuildAttemptValid_impl, add, add_super, add_impl, isSurroundingCellsOffMap, isSurroundingCellsOffMap_super, isSurroundingCellsOffMap_impl, isUnitProducer, buildOnPathGameNotificationEvent, spotTakenGameNotificationEvent, selectBuildSpotGameNotificationEvent, roadCollisionGameNotificationEvent, noMoneyGameNotificationEvent, buildingCollisionGameNotificationEvent, structureToCloseCollisionGameNotificationEvent, buildingGameNotificationEvent, mapEdgeGameNotificationEvent, dropCellPositionHistory)
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
import qualified LogUtil -- same package or java.lang
import qualified RTSPlayerGameInput -- org.allbinary.game.input.RTSPlayerGameInput
import qualified DemoLockedWithCostLayerInterfaceFactoryInterface -- org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface
import qualified GeographicMapCellPositionAreaBase -- org.allbinary.game.layer.GeographicMapCellPositionAreaBase
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified LayerInterfaceFactoryImageItem -- org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified BuildingSound -- org.allbinary.media.audio.BuildingSound
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified LockedFeatureNotificationUtil -- org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil
import qualified LockedUtil -- org.allbinary.logic.system.security.licensing.LockedUtil
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified RaceTrackGeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory
import qualified RTSFormInput

data BuildingRTSFormInput = BuildingRTSFormInput
    { header_ :: JavaHeader
    , base :: RTSFormInput.RTSFormInput
    , isUnitProducer :: IORef (Bool)
    , buildOnPathGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , spotTakenGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , selectBuildSpotGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , roadCollisionGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , noMoneyGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , buildingCollisionGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , structureToCloseCollisionGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , buildingGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , mapEdgeGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , dropCellPositionHistory :: IORef (DropCellPositionHistory.DropCellPositionHistory)
    }

instance JavaNull BuildingRTSFormInput where
    javaNull = javaNullRecord "BuildingRTSFormInput"

instance JavaEquals BuildingRTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildingRTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass BuildingRTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BuildingRTSFormInput
newRecord_ = do
    base <- RTSFormInput.newRecord_
    let header_ = base.header_
    isUnitProducer <- newIORef False
    buildOnPathGameNotificationEvent <- newIORef javaNull
    spotTakenGameNotificationEvent <- newIORef javaNull
    selectBuildSpotGameNotificationEvent <- newIORef javaNull
    roadCollisionGameNotificationEvent <- newIORef javaNull
    noMoneyGameNotificationEvent <- newIORef javaNull
    buildingCollisionGameNotificationEvent <- newIORef javaNull
    structureToCloseCollisionGameNotificationEvent <- newIORef javaNull
    buildingGameNotificationEvent <- newIORef javaNull
    mapEdgeGameNotificationEvent <- newIORef javaNull
    dropCellPositionHistory <- newIORef javaNull
    let this = BuildingRTSFormInput header_ base isUnitProducer buildOnPathGameNotificationEvent spotTakenGameNotificationEvent selectBuildSpotGameNotificationEvent roadCollisionGameNotificationEvent noMoneyGameNotificationEvent buildingCollisionGameNotificationEvent structureToCloseCollisionGameNotificationEvent buildingGameNotificationEvent mapEdgeGameNotificationEvent dropCellPositionHistory
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processGameSpecific" (\() -> processGameSpecific_impl this)
    jregisterMethod header_ "isPositionBlocked" (\() -> isPositionBlocked_impl this)
    jregisterMethod header_ "isDemoLocked" (\() -> isDemoLocked_impl this)
    jregisterMethod header_ "buildFromMotionInput" (\() -> buildFromMotionInput_impl this)
    jregisterMethod header_ "attemptBuild" (\() -> attemptBuild_impl this)
    jregisterMethod header_ "isBuildAttemptValid" (\() -> isBuildAttemptValid_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "isSurroundingCellsOffMap" (\() -> isSurroundingCellsOffMap_impl this)
    pure this

initFields_ :: BuildingRTSFormInput -> IO ()
initFields_ this = do
    jset this.isUnitProducer (False)
    jset this.buildOnPathGameNotificationEvent (javaNull)
    jset this.spotTakenGameNotificationEvent (javaNull)
    jset this.selectBuildSpotGameNotificationEvent (javaNull)
    jset this.roadCollisionGameNotificationEvent (javaNull)
    jset this.noMoneyGameNotificationEvent (javaNull)
    jset this.buildingCollisionGameNotificationEvent (javaNull)
    jset this.structureToCloseCollisionGameNotificationEvent (javaNull)
    jset this.buildingGameNotificationEvent (javaNull)
    jset this.mapEdgeGameNotificationEvent (javaNull)
    jset this.dropCellPositionHistory =<< (DropCellPositionHistory.getInstance)
    pure ()

new_2 :: JavaArray (Group.Group) -> Bool -> IO BuildingRTSFormInput
new_2 groupInterface isUnitProducer = do
    this <- newRecord_
    init_2 this groupInterface isUnitProducer
    pure this

init_2 :: BuildingRTSFormInput -> JavaArray (Group.Group) -> Bool -> IO ()
init_2 this groupInterface isUnitProducer = do
        RTSFormInput.init_1 this.base (groupInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).isUnitProducer (isUnitProducer)
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).bUILD_ON_PATH) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).buildOnPathGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).sPOT_TAKEN) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).spotTakenGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).sELECT_BUILD_SPOT) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).selectBuildSpotGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).rOAD_COLLISION) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).roadCollisionGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nO_MONEY) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).noMoneyGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).bUILDING_COLLISION) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).buildingCollisionGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).sTRUCTURE_TO_CLOSE) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).structureToCloseCollisionGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).bUILDING) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).buildingGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).mAP_EDGE) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).mapEdgeGameNotificationEvent (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: BuildingRTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: BuildingRTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: BuildingRTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).buildOnPathGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).spotTakenGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).selectBuildSpotGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).roadCollisionGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).noMoneyGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).buildingCollisionGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).structureToCloseCollisionGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).buildingGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).mapEdgeGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


-- throws Exception
processGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processGameSpecific" (\() -> (processGameSpecific_impl (javaCast object_ :: BuildingRTSFormInput))) () a1 a2 a3 a4 a5

processGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_super object_ a1 a2 a3 a4 a5 = (processGameSpecific_impl (javaCast object_ :: BuildingRTSFormInput)) a1 a2 a3 a4 a5

processGameSpecific_impl :: BuildingRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item itemIndex = do
        Control.Monad.void (RTSFormInput.process_super this.base layerManager)
        Control.Monad.void (BuildingRTSFormInput.buildFromMotionInput this rtsPlayerLayerInterface layerManager item itemIndex)
        pure ()


isPositionBlocked :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPositionBlocked object_ = jmethod object_ "isPositionBlocked" (\() -> (isPositionBlocked_impl (javaCast object_ :: BuildingRTSFormInput))) ()

isPositionBlocked_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPositionBlocked_super object_ = (isPositionBlocked_impl (javaCast object_ :: BuildingRTSFormInput))

isPositionBlocked_impl :: BuildingRTSFormInput -> IO (Bool)
isPositionBlocked_impl this = do
        (DropCellPositionHistory.isCellPositionWithDrop ((jget (this).dropCellPositionHistory)) (jio (RTSFormInput.getSelectedGeographicCellPosition this)))


isDemoLocked :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Bool)
isDemoLocked object_ a1 = jmethod object_ "isDemoLocked" (\() -> (isDemoLocked_impl (javaCast object_ :: BuildingRTSFormInput))) () a1

isDemoLocked_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Bool)
isDemoLocked_super object_ a1 = (isDemoLocked_impl (javaCast object_ :: BuildingRTSFormInput)) a1

isDemoLocked_impl :: BuildingRTSFormInput -> ABCustomItem.ABCustomItem -> IO (Bool)
isDemoLocked_impl this item = do
    javaCatchReturn $ do
        let factoryItem = (javaCast item :: LayerInterfaceFactoryImageItem.LayerInterfaceFactoryImageItem)
        let layerInterfaceFactoryInterface = (javaCast (jio (LayerInterfaceFactoryImageItem.getLayerInterfaceFactoryInterface factoryItem)) :: DemoLockedWithCostLayerInterfaceFactoryInterface.DemoLockedWithCostLayerInterfaceFactoryInterface)
        if ((jio (LockedUtil.isLocked ((jio (LockedUtil.getInstance))))) && (jio (DemoLockedWithCostLayerInterfaceFactoryInterface.isDemoLocked layerInterfaceFactoryInterface))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
buildFromMotionInput :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
buildFromMotionInput object_ a1 a2 a3 a4 = jmethod object_ "buildFromMotionInput" (\() -> (buildFromMotionInput_impl (javaCast object_ :: BuildingRTSFormInput))) () a1 a2 a3 a4

buildFromMotionInput_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
buildFromMotionInput_super object_ a1 a2 a3 a4 = (buildFromMotionInput_impl (javaCast object_ :: BuildingRTSFormInput)) a1 a2 a3 a4

buildFromMotionInput_impl :: BuildingRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
buildFromMotionInput_impl this rtsPlayerLayerInterface layerManager item itemIndex = do
    javaCatchReturn $ do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget (commonStrings).sTART) this "buildFromMotionInput")
        when (layerManager == javaNull) $ do
            javaThrow ((JavaException "RuntimeException" ""))
        let geographicMapCompositeInterface = (javaCast layerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        when (jio (BuildingRTSFormInput.isDemoLocked this item)) $ do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            Control.Monad.void (LockedFeatureNotificationUtil.fireWithColor ((jio (LockedFeatureNotificationUtil.getInstance))) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
            javaReturn (())
        geographicMapCellPosition <- (RTSFormInput.getSelectedGeographicCellPosition this)
        if (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
            if (Prelude.not (jio (BuildingRTSFormInput.isPositionBlocked this))) then do
                geographicMapCellType <- (BasicGeographicMap.getCellTypeAt geographicMapInterface geographicMapCellPosition)
                let raceTrackGeographicMapCellTypeFactory = (javaCast (jio (BasicGeographicMap.getGeographicMapCellTypeFactory geographicMapInterface)) :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory)
                if (Prelude.not (jio (RaceTrackGeographicMapCellTypeFactory.isPath raceTrackGeographicMapCellTypeFactory geographicMapCellType))) then do
                    if ((jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) == (jio (CollidableDestroyableDamageableLayer.getNullInstance))) then do
                        assignedValue <- (RTSFormInput.getInstance this layerManager item geographicMapCellPosition)
                        jsetIndex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex) (assignedValue)
                    else do
                        let rtsLayer = (javaCast (jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) :: RTSLayer.RTSLayer)
                        cellPoint <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
                        Control.Monad.void (RTSLayer.setPosition rtsLayer (jio (GPoint.getX cellPoint)) (jio (GPoint.getY cellPoint)) (jio (GPoint.getZ cellPoint)))
                        Control.Monad.void (GeographicMapCellPositionAreaBase.update ((jget (rtsLayer).geographicMapCellPositionAreaBase)) geographicMapInterface)
                    let rtsLayer = (javaCast (jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) :: RTSLayer.RTSLayer)
                    Control.Monad.void (BuildingRTSFormInput.attemptBuild this rtsPlayerLayerInterface layerManager rtsLayer itemIndex)
                else do
                    Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
                    when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                        Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).buildOnPathGameNotificationEvent))
            else do
                Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
                when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                    Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).spotTakenGameNotificationEvent))
        else do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).selectBuildSpotGameNotificationEvent))
    pure ()


-- throws Exception
attemptBuild :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (Bool)
attemptBuild object_ a1 a2 a3 a4 = jmethod object_ "attemptBuild" (\() -> (attemptBuild_impl (javaCast object_ :: BuildingRTSFormInput))) () a1 a2 a3 a4

attemptBuild_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (Bool)
attemptBuild_super object_ a1 a2 a3 a4 = (attemptBuild_impl (javaCast object_ :: BuildingRTSFormInput)) a1 a2 a3 a4

attemptBuild_impl :: BuildingRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (Bool)
attemptBuild_impl this rtsPlayerLayerInterface layerManager layerInterface itemIndex = do
    javaCatchReturn $ do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Layer: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) layerInterface))))))) this "attemptBuild")
        let geographicMapCellPositionArea = (jget (layerInterface).geographicMapCellPositionAreaBase)
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList geographicMapCellPositionArea)
        when (Prelude.not (jio (BuildingRTSFormInput.isBuildAttemptValid this rtsPlayerLayerInterface layerInterface))) $ do
            javaReturn (False)
        geographicMapCellType <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size occupyList)) - 1), ((jio (BasicArrayList.size occupyList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let geographicMapCompositeInterface = (javaCast layerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
            let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
            assignedValue <- (BasicGeographicMap.getCellTypeAt geographicMapInterface (javaCast (jio (BasicArrayList.get occupyList index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
            jset geographicMapCellType (assignedValue)
            let raceTrackGeographicMapCellTypeFactory = (javaCast (jio (BasicGeographicMap.getGeographicMapCellTypeFactory geographicMapInterface)) :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory)
            when (jio (RaceTrackGeographicMapCellTypeFactory.isPath raceTrackGeographicMapCellTypeFactory (jget geographicMapCellType))) $ do
                Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
                when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                    Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).roadCollisionGameNotificationEvent))
                javaReturn (False)
        cost <- (RTSLayer.getCost layerInterface)
        capital <- (RTSPlayerLayerInterface.getCapital rtsPlayerLayerInterface)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Trying to Build: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (RTSLayer.getName layerInterface)))
        Control.Monad.void (StringMaker.append stringBuffer " for: $")
        Control.Monad.void (StringMaker.appendint stringBuffer cost)
        Control.Monad.void (StringMaker.append stringBuffer " with ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (Capital.getTotalMoney capital)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "attemptBuild")
        if (cost <= (jio (Capital.getTotalMoney capital))) then do
            Control.Monad.void (RTSLayer.construct layerInterface rtsPlayerLayerInterface)
            assignedValue <- (CollidableDestroyableDamageableLayer.getNullInstance)
            jsetIndex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex) (assignedValue)
            Control.Monad.void (Capital.removeMoney capital cost)
            Control.Monad.void (BuildingRTSFormInput.add this rtsPlayerLayerInterface layerManager layerInterface)
            javaReturn (True)
        else do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).noMoneyGameNotificationEvent))
            javaReturn (False)


-- throws Exception
isBuildAttemptValid :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> RTSLayer.RTSLayer -> IO (Bool)
isBuildAttemptValid object_ a1 a2 = jmethod object_ "isBuildAttemptValid" (\() -> (isBuildAttemptValid_impl (javaCast object_ :: BuildingRTSFormInput))) () a1 a2

isBuildAttemptValid_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> RTSLayer.RTSLayer -> IO (Bool)
isBuildAttemptValid_super object_ a1 a2 = (isBuildAttemptValid_impl (javaCast object_ :: BuildingRTSFormInput)) a1 a2

isBuildAttemptValid_impl :: BuildingRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> RTSLayer.RTSLayer -> IO (Bool)
isBuildAttemptValid_impl this rtsPlayerLayerInterface layerInterface = do
    javaCatchReturn $ do
        let geographicMapCellPositionArea = (jget (layerInterface).geographicMapCellPositionAreaBase)
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList geographicMapCellPositionArea)
        when (jio (DropCellPositionHistory.anyCellPositionWithDrop ((jget (this).dropCellPositionHistory)) occupyList)) $ do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).buildingCollisionGameNotificationEvent))
            javaReturn (False)
        if ((jget (this).isUnitProducer) && (jio (DropCellPositionHistory.anyCellPositionWithDrop ((jget (this).dropCellPositionHistory)) (jio (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList geographicMapCellPositionArea))))) then do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).structureToCloseCollisionGameNotificationEvent))
            javaReturn (False)
        else do
            when (jio (BuildingRTSFormInput.isSurroundingCellsOffMap this layerInterface)) $ do
                Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
                when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                    Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).mapEdgeGameNotificationEvent))
                javaReturn (False)
        pure (True)


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BuildingRTSFormInput))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: BuildingRTSFormInput)) a1 a2 a3

add_impl :: BuildingRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> IO (())
add_impl this rtsPlayerLayerInterface layerManager layerInterface = do
        let geographicMapCellPositionArea = (jget (layerInterface).geographicMapCellPositionAreaBase)
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList geographicMapCellPositionArea)
        Control.Monad.void (DropCellPositionHistory.addAll ((jget (this).dropCellPositionHistory)) occupyList layerInterface)
        let rtsPlayerGameInput = (javaCast (jio (RTSPlayerLayerInterface.getPlayerGameInput rtsPlayerLayerInterface)) :: RTSPlayerGameInput.RTSPlayerGameInput)
        Control.Monad.void (RTSPlayerGameInput.setSelectedRTSLayer rtsPlayerGameInput layerInterface (jio (RTSFormInput.getSelectedGeographicCellPosition this)))
        Control.Monad.void (AllBinaryLayerManager.append layerManager layerInterface)
        Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (BuildingSound.getInstance)))
        when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
            Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).buildingGameNotificationEvent))
        pure ()


isSurroundingCellsOffMap :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Bool)
isSurroundingCellsOffMap object_ a1 = jmethod object_ "isSurroundingCellsOffMap" (\() -> (isSurroundingCellsOffMap_impl (javaCast object_ :: BuildingRTSFormInput))) () a1

isSurroundingCellsOffMap_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Bool)
isSurroundingCellsOffMap_super object_ a1 = (isSurroundingCellsOffMap_impl (javaCast object_ :: BuildingRTSFormInput)) a1

isSurroundingCellsOffMap_impl :: BuildingRTSFormInput -> RTSLayer.RTSLayer -> IO (Bool)
isSurroundingCellsOffMap_impl this layerInterface = do
    javaCatchReturn $ do
        let geographicMapCellPositionArea = (jget (layerInterface).geographicMapCellPositionAreaBase)
        occupyList <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList geographicMapCellPositionArea)
        surroundList <- (GeographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList geographicMapCellPositionArea)
        occupySize <- (BasicArrayList.size occupyList)
        surroundSize <- (BasicArrayList.size surroundList)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "occupySize: ")
        Control.Monad.void (StringMaker.appendint stringBuffer occupySize)
        Control.Monad.void (StringMaker.append stringBuffer " surroundSize: ")
        Control.Monad.void (StringMaker.appendint stringBuffer surroundSize)
        Control.Monad.void (StringMaker.append stringBuffer " surroundList: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) surroundList)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "isSurroundingCellsOffMap")
        isSurroundOffMap <- newIORef (False)
        if ((occupySize == 1) && (surroundSize /= 8)) then do
            jset isSurroundOffMap (True)
        else when ((occupySize == 4) && (surroundSize /= 12)) $ do
            jset isSurroundOffMap (True)
        if ((occupySize == 0) || (jget isSurroundOffMap)) then do
            javaReturn (True)
        else do
            javaReturn (False)


