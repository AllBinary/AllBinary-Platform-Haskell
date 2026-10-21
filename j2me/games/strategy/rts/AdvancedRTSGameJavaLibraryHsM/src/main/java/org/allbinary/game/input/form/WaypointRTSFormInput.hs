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
-- package org.allbinary.game.input.form
module WaypointRTSFormInput (module WaypointRTSFormInput, module RTSFormInput) where

import RTSFormInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, processAtPoint, processAtPoint_super, processAtPoint_impl, processCellPosition, processCellPosition_super, processCellPosition_impl, processStickyGameSpecific, processStickyGameSpecific_super, processStickyGameSpecific_impl, attemptBuild, attemptBuild_super, attemptBuild_impl, addWayPoint, addWayPoint_super, addWayPoint_impl, wAYPOINT_EVENT, dragToSpotGameNotificationEvent, spotTakenGameNotificationEvent, buildingCollisionGameNotificationEvent, roadCollisionGameNotificationEvent, newWaypointGameNotificationEvent, noMoneyGameNotificationEvent, isPrimaryWaypointCreator, stickyAssociatedRtsLayer)
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
import qualified PrimaryWaypointHelper -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified RTSPlayerGameInput -- org.allbinary.game.input.RTSPlayerGameInput
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified AdvancedRTSPlayerLayerInterface -- org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified RTSLayerUtil -- org.allbinary.game.layer.RTSLayerUtil
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified WaypointCellPositionHistory -- org.allbinary.game.layer.waypoint.WaypointCellPositionHistory
import qualified WaypointLayer -- org.allbinary.game.layer.waypoint.WaypointLayer
import qualified WaypointEventHandlerFactory -- org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified GeographicMapCellPositionAreaBase -- org.allbinary.game.layer.GeographicMapCellPositionAreaBase
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified NullRTSLayer -- org.allbinary.game.layer.NullRTSLayer
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified Layer -- org.allbinary.layer.Layer
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified RaceTrackGeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory
import qualified RTSFormInput

data WaypointRTSFormInput = WaypointRTSFormInput
    { header_ :: JavaHeader
    , base :: RTSFormInput.RTSFormInput
    , wAYPOINT_EVENT :: IORef (RTSLayerEvent.RTSLayerEvent)
    , dragToSpotGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , spotTakenGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , buildingCollisionGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , roadCollisionGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , newWaypointGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , noMoneyGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , isPrimaryWaypointCreator :: IORef (Bool)
    , stickyAssociatedRtsLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    }

instance JavaNull WaypointRTSFormInput where
    javaNull = javaNullRecord "WaypointRTSFormInput"

instance JavaEquals WaypointRTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointRTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass WaypointRTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WaypointRTSFormInput
newRecord_ = do
    base <- RTSFormInput.newRecord_
    let header_ = base.header_
    wAYPOINT_EVENT <- newIORef javaNull
    dragToSpotGameNotificationEvent <- newIORef javaNull
    spotTakenGameNotificationEvent <- newIORef javaNull
    buildingCollisionGameNotificationEvent <- newIORef javaNull
    roadCollisionGameNotificationEvent <- newIORef javaNull
    newWaypointGameNotificationEvent <- newIORef javaNull
    noMoneyGameNotificationEvent <- newIORef javaNull
    isPrimaryWaypointCreator <- newIORef False
    stickyAssociatedRtsLayer <- newIORef javaNull
    let this = WaypointRTSFormInput header_ base wAYPOINT_EVENT dragToSpotGameNotificationEvent spotTakenGameNotificationEvent buildingCollisionGameNotificationEvent roadCollisionGameNotificationEvent newWaypointGameNotificationEvent noMoneyGameNotificationEvent isPrimaryWaypointCreator stickyAssociatedRtsLayer
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processAtPoint" (\() -> processAtPoint_impl this)
    jregisterMethod header_ "processCellPosition" (\() -> processCellPosition_impl this)
    jregisterMethod header_ "processStickyGameSpecific" (\() -> processStickyGameSpecific_impl this)
    jregisterMethod header_ "attemptBuild" (\() -> attemptBuild_impl this)
    jregisterMethod header_ "addWayPoint" (\() -> addWayPoint_impl this)
    pure this

initFields_ :: WaypointRTSFormInput -> IO ()
initFields_ this = do
    jset this.wAYPOINT_EVENT =<< (RTSLayerEvent.new_1 (NullRTSLayer.nULL_RTS_LAYER))
    jset this.dragToSpotGameNotificationEvent (javaNull)
    jset this.spotTakenGameNotificationEvent (javaNull)
    jset this.buildingCollisionGameNotificationEvent (javaNull)
    jset this.roadCollisionGameNotificationEvent (javaNull)
    jset this.newWaypointGameNotificationEvent (javaNull)
    jset this.noMoneyGameNotificationEvent (javaNull)
    jset this.isPrimaryWaypointCreator (False)
    jset this.stickyAssociatedRtsLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    pure ()

new_2 :: JavaArray (Group.Group) -> Bool -> IO WaypointRTSFormInput
new_2 groupInterface isPrimaryWaypointCreator = do
    this <- newRecord_
    init_2 this groupInterface isPrimaryWaypointCreator
    pure this

init_2 :: WaypointRTSFormInput -> JavaArray (Group.Group) -> Bool -> IO ()
init_2 this groupInterface isPrimaryWaypointCreator = do
        RTSFormInput.init_1 this.base (groupInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).isPrimaryWaypointCreator (isPrimaryWaypointCreator)
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).dRAG_TO_SPOT) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).dragToSpotGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).sPOT_TAKEN) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).spotTakenGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).bUILDING_COLLISION) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).buildingCollisionGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).rOAD_COLLISION) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).roadCollisionGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nEW_WAYPOINT) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).newWaypointGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nO_MONEY) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).noMoneyGameNotificationEvent (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: WaypointRTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: WaypointRTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: WaypointRTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).dragToSpotGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).spotTakenGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).buildingCollisionGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).roadCollisionGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).newWaypointGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).noMoneyGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


-- throws Exception
processAtPoint :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint object_ a1 a2 a3 a4 = jmethod object_ "processAtPoint" (\() -> (processAtPoint_impl (javaCast object_ :: WaypointRTSFormInput))) () a1 a2 a3 a4

processAtPoint_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint_super object_ a1 a2 a3 a4 = (processAtPoint_impl (javaCast object_ :: WaypointRTSFormInput)) a1 a2 a3 a4

processAtPoint_impl :: WaypointRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager point = do
        Control.Monad.void (RTSFormInput.process_super this.base layerManager)
        if ((jio (RTSFormInput.isStickyItemSelected this)) || (associatedRtsLayer == (jio (CollidableDestroyableDamageableLayer.getNullInstance)))) then do
            if ((jio (RTSFormInput.isStickyItemSelected this)) && (associatedRtsLayer == (jio (CollidableDestroyableDamageableLayer.getNullInstance)))) then do
                let geographicMapCompositeInterface = (javaCast layerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
                let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
                allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
                let x = ((jio (GPoint.getX point)) + (jio (AllBinaryTiledLayer.getXP allBinaryTiledLayer)))
                let y = ((jio (GPoint.getY point)) + (jio (AllBinaryTiledLayer.getYP allBinaryTiledLayer)))
                geographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXY geographicMapInterface x y)
                Control.Monad.void (WaypointRTSFormInput.processCellPosition this rtsPlayerLayerInterface layerManager geographicMapCellPosition)
            else do
                when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                    Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).dragToSpotGameNotificationEvent))
        else do
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).spotTakenGameNotificationEvent))
        pure ()


-- throws Exception
processCellPosition :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processCellPosition object_ a1 a2 a3 = jmethod object_ "processCellPosition" (\() -> (processCellPosition_impl (javaCast object_ :: WaypointRTSFormInput))) () a1 a2 a3

processCellPosition_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processCellPosition_super object_ a1 a2 a3 = (processCellPosition_impl (javaCast object_ :: WaypointRTSFormInput)) a1 a2 a3

processCellPosition_impl :: WaypointRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processCellPosition_impl this rtsPlayerLayerInterface layerManager geographicMapCellPosition = do
        itemIndex <- (RTSFormInput.getSelectedStickyItemIndex this)
        if ((jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) == (jio (CollidableDestroyableDamageableLayer.getNullInstance))) then do
            assignedValue <- (RTSFormInput.getInstance this layerManager (jio (RTSFormInput.getSelectedStickyItem this)) geographicMapCellPosition)
            jsetIndex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex) (assignedValue)
        else do
            cellPoint <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
            let rtsLayer = (javaCast (jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayer.setPosition rtsLayer (jio (GPoint.getX cellPoint)) (jio (GPoint.getY cellPoint)) (jio (RTSLayer.getZP rtsLayer)))
            let geographicMapCompositeInterface = (javaCast (jget (rtsLayer).allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
            let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
            Control.Monad.void (GeographicMapCellPositionAreaBase.update ((jget (rtsLayer).geographicMapCellPositionAreaBase)) geographicMapInterface)
        Control.Monad.void (WaypointRTSFormInput.attemptBuild this rtsPlayerLayerInterface layerManager (javaCast (jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) :: RTSLayer.RTSLayer) itemIndex)
        pure ()


-- throws Exception
processStickyGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processStickyGameSpecific" (\() -> (processStickyGameSpecific_impl (javaCast object_ :: WaypointRTSFormInput))) () a1 a2 a3 a4 a5

processStickyGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific_super object_ a1 a2 a3 a4 a5 = (processStickyGameSpecific_impl (javaCast object_ :: WaypointRTSFormInput)) a1 a2 a3 a4 a5

processStickyGameSpecific_impl :: WaypointRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item index = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) ("Set Sticking Item: " ++ javaToString item) this "processSticky")
        Control.Monad.void (RTSFormInput.setSelectedStickyItem this item)
        Control.Monad.void (RTSFormInput.setSelectedStickyItemIndex this index)
        Control.Monad.void (RTSFormInput.setStickyItemSelected this True)
        jset (this).stickyAssociatedRtsLayer ((javaCast associatedRtsLayer :: RTSLayer.RTSLayer))
        Control.Monad.void (ABHashtable.put ((jio (RTSFormInput.getHashtable this))) (Layer.iD) associatedRtsLayer)
        pure ()


-- throws Exception
attemptBuild :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (Bool)
attemptBuild object_ a1 a2 a3 a4 = jmethod object_ "attemptBuild" (\() -> (attemptBuild_impl (javaCast object_ :: WaypointRTSFormInput))) () a1 a2 a3 a4

attemptBuild_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (Bool)
attemptBuild_super object_ a1 a2 a3 a4 = (attemptBuild_impl (javaCast object_ :: WaypointRTSFormInput)) a1 a2 a3 a4

attemptBuild_impl :: WaypointRTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (Bool)
attemptBuild_impl this rtsPlayerLayerInterface layerManager layerInterface itemIndex = do
    javaCatchReturn $ do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) ("Layer: " ++ javaToString layerInterface) this "attemptBuild")
        when (layerInterface == javaNull) $ do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) "Layer was null" this "attemptBuild" (JavaException "Exception" ""))
            javaReturn (False)
        let geographicMapCellPositionArea = (jget (layerInterface).geographicMapCellPositionAreaBase)
        list <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList geographicMapCellPositionArea)
        when ((jio (DropCellPositionHistory.anyCellPositionWithDrop ((jio (DropCellPositionHistory.getInstance))) list)) || (jio (WaypointCellPositionHistory.anyCellPositionWithDrop ((jio (WaypointCellPositionHistory.getInstance))) list))) $ do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).buildingCollisionGameNotificationEvent))
            javaReturn (False)
        let geographicMapCompositeInterface = (javaCast layerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        let raceTrackGeographicMapCellTypeFactory = (javaCast (jio (BasicGeographicMap.getGeographicMapCellTypeFactory geographicMapInterface)) :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory)
        geographicMapCellType <- newIORef (javaNull)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (BasicGeographicMap.getCellTypeAt geographicMapInterface (javaCast (jio (BasicArrayList.get list (jget index))) :: GeographicMapCellPosition.GeographicMapCellPosition))
            jset geographicMapCellType (assignedValue)
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
            Control.Monad.void (WaypointCellPositionHistory.addList ((jio (WaypointCellPositionHistory.getInstance))) list layerInterface)
            geographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXY geographicMapInterface (jio (RTSLayer.getXP layerInterface)) (jio (RTSLayer.getYP layerInterface)))
            let waypointLayer = (javaCast layerInterface :: WaypointLayer.WaypointLayer)
            Control.Monad.void (WaypointRTSFormInput.addWayPoint this waypointLayer)
            let rtsPlayerGameInput = (javaCast (jio (RTSPlayerLayerInterface.getPlayerGameInput rtsPlayerLayerInterface)) :: RTSPlayerGameInput.RTSPlayerGameInput)
            Control.Monad.void (RTSPlayerGameInput.setSelectedRTSLayer rtsPlayerGameInput layerInterface geographicMapCellPosition)
            let advancedRTSPlayerLayerInterface = (javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface)
            Control.Monad.void (AdvancedRTSPlayerLayerInterface.addWaypoint ((jio (AdvancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers advancedRTSPlayerLayerInterface))) layerInterface)
            Control.Monad.void (AllBinaryLayerManager.append layerManager layerInterface)
            let waypointAvancedRTSGameLayer = (javaCast waypointLayer :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (WaypointBase.getSound ((jio (WaypointBehaviorBase.getWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior waypointAvancedRTSGameLayer)))))))))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).newWaypointGameNotificationEvent))
            javaReturn (True)
        else do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).noMoneyGameNotificationEvent))
            javaReturn (False)


-- throws Exception
addWayPoint :: (JavaObjectClass this_) => this_ -> WaypointLayer.WaypointLayer -> IO (())
addWayPoint object_ a1 = jmethod object_ "addWayPoint" (\() -> (addWayPoint_impl (javaCast object_ :: WaypointRTSFormInput))) () a1

addWayPoint_super :: (JavaObjectClass this_) => this_ -> WaypointLayer.WaypointLayer -> IO (())
addWayPoint_super object_ a1 = (addWayPoint_impl (javaCast object_ :: WaypointRTSFormInput)) a1

addWayPoint_impl :: WaypointRTSFormInput -> WaypointLayer.WaypointLayer -> IO (())
addWayPoint_impl this layerInterface = do
        let stickyAssociatedAdvandedRtsLayer = (javaCast (jget (this).stickyAssociatedRtsLayer) :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
        list <- (WaypointBehaviorBase.getOwnedWaypointList ((jio (AdvancedRTSGameLayer.getWaypointBehavior stickyAssociatedAdvandedRtsLayer))))
        Control.Monad.void (RTSLayerUtil.destroyAndClear ((jio (RTSLayerUtil.getInstance))) list)
        Control.Monad.void (BasicArrayList.add list layerInterface)
        when (jget (this).isPrimaryWaypointCreator) $ do
            Control.Monad.void (PrimaryWaypointHelper.setWaypointLayer ((jio (PrimaryWaypointHelper.getInstance))) layerInterface)
        Control.Monad.void (RTSLayerEvent.setRtsLayer ((jget (this).wAYPOINT_EVENT)) layerInterface)
        Control.Monad.void (WaypointEventHandler.fireEvent ((jio (WaypointEventHandlerFactory.getInstance (jindex ((jio (WaypointLayer.getGroupInterface layerInterface))) (0))))) (jget (this).wAYPOINT_EVENT))
        pure ()


