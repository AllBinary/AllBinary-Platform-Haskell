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
module UnitRTSFormInput (module UnitRTSFormInput, module RTSFormInput) where

import RTSFormInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, processGameSpecific, processGameSpecific_super, processGameSpecific_impl, attemptBuild, attemptBuild_super, attemptBuild_impl, dECAL_ID, noMoneyGameNotificationEvent, newUnitGameNotificationEvent)
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
import qualified AssignWaypointsUtil -- same package or java.lang
import qualified PlayersSingletonFactory -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AdvancedPlayerOwnedRTSLayers -- org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified AdvancedRTSPlayerLayerInterface -- org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified UnitLayer -- org.allbinary.game.layer.unit.UnitLayer
import qualified WorkWaypoint -- org.allbinary.game.layer.waypoint.WorkWaypoint
import qualified BuildingSound -- org.allbinary.media.audio.BuildingSound
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified GeographicMapCellPositionAreaBase -- org.allbinary.game.layer.GeographicMapCellPositionAreaBase
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
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified RTSFormInput

data UnitRTSFormInput = UnitRTSFormInput
    { header_ :: JavaHeader
    , base :: RTSFormInput.RTSFormInput
    , noMoneyGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , newUnitGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    }

instance JavaNull UnitRTSFormInput where
    javaNull = javaNullRecord "UnitRTSFormInput"

instance JavaEquals UnitRTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitRTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass UnitRTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dECAL_ID #-}
dECAL_ID = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 23))

newRecord_ :: IO UnitRTSFormInput
newRecord_ = do
    base <- RTSFormInput.newRecord_
    let header_ = base.header_
    noMoneyGameNotificationEvent <- newIORef javaNull
    newUnitGameNotificationEvent <- newIORef javaNull
    let this = UnitRTSFormInput header_ base noMoneyGameNotificationEvent newUnitGameNotificationEvent
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processGameSpecific" (\() -> processGameSpecific_impl this)
    jregisterMethod header_ "attemptBuild" (\() -> attemptBuild_impl this)
    pure this

initFields_ :: UnitRTSFormInput -> IO ()
initFields_ this = do
    jset this.noMoneyGameNotificationEvent (javaNull)
    jset this.newUnitGameNotificationEvent (javaNull)
    pure ()

new_1 :: JavaArray (Group.Group) -> IO UnitRTSFormInput
new_1 groupInterface = do
    this <- newRecord_
    init_1 this groupInterface
    pure this

init_1 :: UnitRTSFormInput -> JavaArray (Group.Group) -> IO ()
init_1 this groupInterface = do
        RTSFormInput.init_1 this.base (groupInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nO_MONEY) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).noMoneyGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nEW_UNIT) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).newUnitGameNotificationEvent (assignedValue)
        Control.Monad.void (ABHashtable.put ((jio (RTSFormInput.getHashtable this))) (WorkWaypoint.iD) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 50)))
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: UnitRTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: UnitRTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: UnitRTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).noMoneyGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).newUnitGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


-- throws Exception
processGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processGameSpecific" (\() -> (processGameSpecific_impl (javaCast object_ :: UnitRTSFormInput))) () a1 a2 a3 a4 a5

processGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_super object_ a1 a2 a3 a4 a5 = (processGameSpecific_impl (javaCast object_ :: UnitRTSFormInput)) a1 a2 a3 a4 a5

processGameSpecific_impl :: UnitRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item itemIndex = do
        Control.Monad.void (RTSFormInput.process_super this.base layerManager)
        let associatedRtsLayer2 = (javaCast associatedRtsLayer :: RTSLayer.RTSLayer)
        let geographicMapCellPositionArea = (jget (associatedRtsLayer2).geographicMapCellPositionAreaBase)
        geographicMapCellPosition <- (GeographicMapCellPositionAreaBase.getNextSurroundingGeographicMapCellPosition geographicMapCellPositionArea)
        Control.Monad.void (ABHashtable.put ((jio (RTSFormInput.getHashtable this))) (Layer.iD) associatedRtsLayer)
        Control.Monad.void (ABHashtable.put ((jio (RTSFormInput.getHashtable this))) (UnitRTSFormInput.dECAL_ID) (jio (getDecalBasicColor (((javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface))))))
        if ((jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) == (jio (CollidableDestroyableDamageableLayer.getNullInstance))) then do
            assignedValue <- (RTSFormInput.getInstance this layerManager item geographicMapCellPosition)
            jsetIndex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex) (assignedValue)
        else do
            cellPoint <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
            let rtsLayer = (javaCast (jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayer.setPosition rtsLayer (jio (GPoint.getX cellPoint)) (jio (GPoint.getY cellPoint)) (jio (RTSLayer.getZP rtsLayer)))
            let geographicMapCompositeInterface = (javaCast (jget (rtsLayer).allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
            let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
            Control.Monad.void (GeographicMapCellPositionAreaBase.update ((jget (rtsLayer).geographicMapCellPositionAreaBase)) geographicMapInterface)
        cellPoint <- (GeographicMapCellPosition.getMidPoint geographicMapCellPosition)
        let rtsLayer = (javaCast (jindex ((jget (this).base.newUnconstructedRTSLayerInterfaceArray)) (itemIndex)) :: RTSLayer.RTSLayer)
        Control.Monad.void (RTSLayer.setPosition rtsLayer ((jio (GPoint.getX cellPoint)) - (jio (RTSLayer.getHalfWidth rtsLayer))) ((jio (GPoint.getY cellPoint)) - (jio (RTSLayer.getHalfHeight rtsLayer))) (jio (RTSLayer.getZP rtsLayer)))
        Control.Monad.void (UnitRTSFormInput.attemptBuild this associatedRtsLayer2 rtsPlayerLayerInterface layerManager (javaCast rtsLayer :: RTSLayer.RTSLayer) itemIndex)
        pure ()


-- throws Exception
attemptBuild :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (())
attemptBuild object_ a1 a2 a3 a4 a5 = jmethod object_ "attemptBuild" (\() -> (attemptBuild_impl (javaCast object_ :: UnitRTSFormInput))) () a1 a2 a3 a4 a5

attemptBuild_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (())
attemptBuild_super object_ a1 a2 a3 a4 a5 = (attemptBuild_impl (javaCast object_ :: UnitRTSFormInput)) a1 a2 a3 a4 a5

attemptBuild_impl :: UnitRTSFormInput -> RTSLayer.RTSLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> RTSLayer.RTSLayer -> Int -> IO (())
attemptBuild_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager layerInterface itemIndex = do
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
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (BuildingSound.getInstance)))
            Control.Monad.void (Capital.removeMoney capital cost)
            Control.Monad.void (AssignWaypointsUtil.set ((jio (AssignWaypointsUtil.getInstance))) (javaCast layerInterface :: UnitLayer.UnitLayer) (javaCast associatedRtsLayer :: AdvancedRTSGameLayer.AdvancedRTSGameLayer))
            Control.Monad.void (AllBinaryLayerManager.appendAt layerManager layerInterface (jget PlayersSingletonFactory.total))
            let advancedRTSPlayerLayerInterface = (javaCast rtsPlayerLayerInterface :: AdvancedRTSPlayerLayerInterface.AdvancedRTSPlayerLayerInterface)
            advancedPlayerOwnedRTSLayers <- (AdvancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers advancedRTSPlayerLayerInterface)
            Control.Monad.void (AdvancedPlayerOwnedRTSLayers.addUnit advancedPlayerOwnedRTSLayers layerInterface)
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).newUnitGameNotificationEvent))
        else do
            Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
            when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).noMoneyGameNotificationEvent))
        pure ()


