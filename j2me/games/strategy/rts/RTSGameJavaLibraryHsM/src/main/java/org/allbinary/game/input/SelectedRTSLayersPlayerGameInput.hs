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
-- package org.allbinary.game.input
module SelectedRTSLayersPlayerGameInput (module SelectedRTSLayersPlayerGameInput, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, isSelected, isSelected_super, isSelected_impl, upgrade, upgrade_super, upgrade_impl, downgrade, downgrade_super, downgrade_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, processInputKey, processInputKey_super, processInputKey_impl, processInput, processInput_super, processInput_impl, getSelectedBasicArrayList, getSelectedBasicArrayList_super, getSelectedBasicArrayList_impl, addSelectedRTSLayer, addSelectedRTSLayer_super, addSelectedRTSLayer_impl, setSelectedRTSLayer, setSelectedRTSLayer_super, setSelectedRTSLayer_impl, getLastSelectedRtsLayer, getLastSelectedRtsLayer_super, getLastSelectedRtsLayer_impl, selectAllPreselected, selectAllPreselected_super, selectAllPreselected_impl, deselectAllPreselected, deselectAllPreselected_super, deselectAllPreselected_impl, deselectAll, deselectAll_super, deselectAll_impl, isAnyRTSLayerSelected, isAnyRTSLayerSelected_super, isAnyRTSLayerSelected_impl, getPaintSelectedRTSLayersList, getPaintSelectedRTSLayersList_super, getPaintSelectedRTSLayersList_impl, getPreSelectedRTSLayersList, getPreSelectedRTSLayersList_super, getPreSelectedRTSLayersList_impl, inputProcessorArray, list, isSingleKeyProcessing, selectedRTSLayersList, preSelectedRTSLayersList, paintSelectedRTSLayersList, rtsPlayerLayerInterface, selectRTSLayerVisitorInterface, upgradeGameNotificationEvent, noMoneyGameNotificationEvent, downgradeGameNotificationEvent)
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
import qualified GameInputProcessor -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified SelectRTSLayerVisitorFactoryInterface -- same package or java.lang
import qualified RTSPlayerGameInput -- same package or java.lang
import qualified SelectedRTSLayersPlayerUpgradeGameInputProcessor -- same package or java.lang
import qualified SelectedRTSLayersPlayerDowngradeGameInputProcessor -- same package or java.lang
import qualified GameInputProcessorUtil -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSLayerInfoPaintable -- org.allbinary.game.layer.RTSLayerInfoPaintable
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified DowngradeSound -- org.allbinary.media.audio.DowngradeSound
import qualified UpgradeSound -- org.allbinary.media.audio.UpgradeSound
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified PlayerGameInput

data SelectedRTSLayersPlayerGameInput = SelectedRTSLayersPlayerGameInput
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , inputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , list :: IORef (BasicArrayList.BasicArrayList)
    , isSingleKeyProcessing :: IORef (Bool)
    , selectedRTSLayersList :: IORef (BasicArrayList.BasicArrayList)
    , preSelectedRTSLayersList :: IORef (BasicArrayList.BasicArrayList)
    , paintSelectedRTSLayersList :: IORef (BasicArrayList.BasicArrayList)
    , rtsPlayerLayerInterface :: IORef (RTSPlayerLayerInterface.RTSPlayerLayerInterface)
    , selectRTSLayerVisitorInterface :: IORef (Visitor.Visitor)
    , upgradeGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , noMoneyGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , downgradeGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    }

instance JavaNull SelectedRTSLayersPlayerGameInput where
    javaNull = javaNullRecord "SelectedRTSLayersPlayerGameInput"

instance JavaEquals SelectedRTSLayersPlayerGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectedRTSLayersPlayerGameInput where
    (==) = jrecordEquals

instance JavaObjectClass SelectedRTSLayersPlayerGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SelectedRTSLayersPlayerGameInput
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    inputProcessorArray <- newIORef javaNull
    list <- newIORef javaNull
    isSingleKeyProcessing <- newIORef False
    selectedRTSLayersList <- newIORef javaNull
    preSelectedRTSLayersList <- newIORef javaNull
    paintSelectedRTSLayersList <- newIORef javaNull
    rtsPlayerLayerInterface <- newIORef javaNull
    selectRTSLayerVisitorInterface <- newIORef javaNull
    upgradeGameNotificationEvent <- newIORef javaNull
    noMoneyGameNotificationEvent <- newIORef javaNull
    downgradeGameNotificationEvent <- newIORef javaNull
    let this = SelectedRTSLayersPlayerGameInput header_ base inputProcessorArray list isSingleKeyProcessing selectedRTSLayersList preSelectedRTSLayersList paintSelectedRTSLayersList rtsPlayerLayerInterface selectRTSLayerVisitorInterface upgradeGameNotificationEvent noMoneyGameNotificationEvent downgradeGameNotificationEvent
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "isSelected" (\() -> isSelected_impl this)
    jregisterMethod header_ "upgrade" (\() -> upgrade_impl this)
    jregisterMethod header_ "downgrade" (\() -> downgrade_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "processInputKey" (\() -> processInputKey_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "getSelectedBasicArrayList" (\() -> getSelectedBasicArrayList_impl this)
    jregisterMethod header_ "addSelectedRTSLayer" (\() -> addSelectedRTSLayer_impl this)
    jregisterMethod header_ "setSelectedRTSLayer" (\() -> setSelectedRTSLayer_impl this)
    jregisterMethod header_ "getLastSelectedRtsLayer" (\() -> getLastSelectedRtsLayer_impl this)
    jregisterMethod header_ "selectAllPreselected" (\() -> selectAllPreselected_impl this)
    jregisterMethod header_ "deselectAllPreselected" (\() -> deselectAllPreselected_impl this)
    jregisterMethod header_ "deselectAll" (\() -> deselectAll_impl this)
    jregisterMethod header_ "isAnyRTSLayerSelected" (\() -> isAnyRTSLayerSelected_impl this)
    jregisterMethod header_ "getPaintSelectedRTSLayersList" (\() -> getPaintSelectedRTSLayersList_impl this)
    jregisterMethod header_ "getPreSelectedRTSLayersList" (\() -> getPreSelectedRTSLayersList_impl this)
    pure this

initFields_ :: SelectedRTSLayersPlayerGameInput -> IO ()
initFields_ this = do
    jset this.inputProcessorArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.list (javaNull)
    jset this.isSingleKeyProcessing (((jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_REPEAT_PRESS))) || (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_PRESS)))))
    jset this.selectedRTSLayersList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.preSelectedRTSLayersList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.paintSelectedRTSLayersList =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.rtsPlayerLayerInterface (javaNull)
    jset this.selectRTSLayerVisitorInterface (javaNull)
    jset this.upgradeGameNotificationEvent (javaNull)
    jset this.noMoneyGameNotificationEvent (javaNull)
    jset this.downgradeGameNotificationEvent (javaNull)
    pure ()

new_5 :: RTSLayerInfoPaintable.RTSLayerInfoPaintable -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> BasicArrayList.BasicArrayList -> Int -> SelectRTSLayerVisitorFactoryInterface.SelectRTSLayerVisitorFactoryInterface -> IO SelectedRTSLayersPlayerGameInput
new_5 towerInfoPaintable rtsPlayerLayerInterface list playerInputId selectRTSLayerVisitorFactoryInterface = do
    this <- newRecord_
    init_5 this towerInfoPaintable rtsPlayerLayerInterface list playerInputId selectRTSLayerVisitorFactoryInterface
    pure this

init_5 :: SelectedRTSLayersPlayerGameInput -> RTSLayerInfoPaintable.RTSLayerInfoPaintable -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> BasicArrayList.BasicArrayList -> Int -> SelectRTSLayerVisitorFactoryInterface.SelectRTSLayerVisitorFactoryInterface -> IO ()
init_5 this towerInfoPaintable rtsPlayerLayerInterface list playerInputId selectRTSLayerVisitorFactoryInterface = do
        PlayerGameInput.init_3 this.base (list) (jio (BasicArrayListD.new_)) (playerInputId)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (SelectedRTSLayersPlayerGameInput.initInputProcessors this)
        jset (this).rtsPlayerLayerInterface (rtsPlayerLayerInterface)
        jset (this).list (list)
        assignedValue <- (SelectRTSLayerVisitorFactoryInterface.create selectRTSLayerVisitorFactoryInterface this)
        jset (this).selectRTSLayerVisitorInterface (assignedValue)
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).uPGRADE) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).upgradeGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nO_MONEY) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).noMoneyGameNotificationEvent (assignedValue)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).dOWNGRADE) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).downgradeGameNotificationEvent (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput)) a1

setAllBinaryGameLayerManager_impl :: SelectedRTSLayersPlayerGameInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).upgradeGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).noMoneyGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).downgradeGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


isSelected :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Bool)
isSelected object_ a1 = jmethod object_ "isSelected" (\() -> (isSelected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) () a1

isSelected_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Bool)
isSelected_super object_ a1 = (isSelected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput)) a1

isSelected_impl :: SelectedRTSLayersPlayerGameInput -> RTSLayer.RTSLayer -> IO (Bool)
isSelected_impl this rtsLayer = do
    javaCatchReturn $ do
        if (jio (BasicArrayList.contains ((jget (this).selectedRTSLayersList)) rtsLayer)) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
upgrade :: (JavaObjectClass this_) => this_ -> IO (())
upgrade object_ = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

upgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
upgrade_super object_ = (upgrade_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

upgrade_impl :: SelectedRTSLayersPlayerGameInput -> IO (())
upgrade_impl this = do
        anyChanged <- newIORef (False)
        forM_ [((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) - 1), ((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let rtsLayer = (javaCast (jio (BasicArrayList.get ((jget (this).selectedRTSLayersList)) index)) :: RTSLayer.RTSLayer)
            when (jio (RTSLayer.isUpgradeable rtsLayer)) $ do
                capital <- (RTSPlayerLayerInterface.getCapital ((jget (this).rtsPlayerLayerInterface)))
                upgradeCost <- (RTSLayer.getUpgradeCost rtsLayer)
                if (upgradeCost <= (jio (Capital.getTotalMoney capital))) then do
                    jset anyChanged (True)
                    Control.Monad.void (RTSPlayerLayerInterface.add ((jget (this).rtsPlayerLayerInterface)) (jio (UpgradeSound.getInstance)))
                    Control.Monad.void (RTSLayer.upgrade rtsLayer)
                    Control.Monad.void (Capital.removeMoney capital upgradeCost)
                    when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface ((jget (this).rtsPlayerLayerInterface))))) $ do
                        Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).upgradeGameNotificationEvent))
                else do
                    Control.Monad.void (RTSPlayerLayerInterface.add ((jget (this).rtsPlayerLayerInterface)) (jio (ErrorSound.getInstance)))
                    when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface ((jget (this).rtsPlayerLayerInterface))))) $ do
                        Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).noMoneyGameNotificationEvent))
        when (jget anyChanged) $ do
            let rtsPlayerGameInput = ((javaCast (jio (RTSPlayerLayerInterface.getPlayerGameInput ((jget (this).rtsPlayerLayerInterface)))) :: RTSPlayerGameInput.RTSPlayerGameInput))
            Control.Monad.void (RTSPlayerGameInput.updatePaintable rtsPlayerGameInput)
        pure ()


-- throws Exception
downgrade :: (JavaObjectClass this_) => this_ -> IO (())
downgrade object_ = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

downgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
downgrade_super object_ = (downgrade_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

downgrade_impl :: SelectedRTSLayersPlayerGameInput -> IO (())
downgrade_impl this = do
        anyChanged <- newIORef (False)
        index <- newIORef =<< (BasicArrayList.size ((jget (this).selectedRTSLayersList)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let rtsLayer = (javaCast (jio (BasicArrayList.get ((jget (this).selectedRTSLayersList)) (jget index))) :: RTSLayer.RTSLayer)
            when (jio (RTSLayer.isDowngradeable rtsLayer)) $ do
                jset anyChanged (True)
                Control.Monad.void (RTSPlayerLayerInterface.add ((jget (this).rtsPlayerLayerInterface)) (jio (DowngradeSound.getInstance)))
                downgradeCost <- (RTSLayer.getDowngradeCost rtsLayer)
                Control.Monad.void (RTSLayer.downgrade rtsLayer)
                capital <- (RTSPlayerLayerInterface.getCapital ((jget (this).rtsPlayerLayerInterface)))
                Control.Monad.void (Capital.addMoney capital downgradeCost)
                when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface ((jget (this).rtsPlayerLayerInterface))))) $ do
                    Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).downgradeGameNotificationEvent))
        when (jget anyChanged) $ do
            let rtsPlayerGameInput = ((javaCast (jio (RTSPlayerLayerInterface.getPlayerGameInput ((jget (this).rtsPlayerLayerInterface)))) :: RTSPlayerGameInput.RTSPlayerGameInput))
            Control.Monad.void (RTSPlayerGameInput.updatePaintable rtsPlayerGameInput)
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

initInputProcessors_impl :: SelectedRTSLayersPlayerGameInput -> IO (())
initInputProcessors_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SelectedRTSLayersPlayerUpgradeGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM1) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SelectedRTSLayersPlayerDowngradeGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM3) (assignedValue)
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).inputProcessorArray))
        pure ()


-- throws Exception
processInputKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processInputKey object_ a1 = jmethod object_ "processInputKey" (\() -> (processInputKey_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) () a1

processInputKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processInputKey_super object_ a1 = (processInputKey_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput)) a1

processInputKey_impl :: SelectedRTSLayersPlayerGameInput -> Int -> IO (())
processInputKey_impl this key = do
        when ((jget (this).selectedRTSLayersList) /= javaNull) $ do
            Control.Monad.void (processEvent ((jindex ((jget (this).inputProcessorArray)) (key))) (jio (AllBinaryGameLayerManager.getNullInstance)) (GameKeyEvent.nONE))
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput)) a1

processInput_impl :: SelectedRTSLayersPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.gameInputStrings)).pROCESS_INPUT) e)
            ) $ do
            size <- (BasicArrayList.size ((jget (this).list)))
            key <- newIORef (0)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let gameKeyEvent = (javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: GameKeyEvent.GameKeyEvent)
                assignedValue <- (GameKeyEvent.getKey gameKeyEvent)
                jset key (assignedValue)
                Control.Monad.void (SelectedRTSLayersPlayerGameInput.processInputKey this (jget key))
            if (jget (this).isSingleKeyProcessing) then do
                Control.Monad.void (PlayerGameInput.clear this)
            else do
                Control.Monad.void (PlayerGameInput.update this)
        pure ()


getSelectedBasicArrayList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSelectedBasicArrayList object_ = jmethod object_ "getSelectedBasicArrayList" (\() -> (getSelectedBasicArrayList_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

getSelectedBasicArrayList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSelectedBasicArrayList_super object_ = (getSelectedBasicArrayList_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

getSelectedBasicArrayList_impl :: SelectedRTSLayersPlayerGameInput -> IO (BasicArrayList.BasicArrayList)
getSelectedBasicArrayList_impl this = do
        pure ((jget (this).selectedRTSLayersList))


addSelectedRTSLayer :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addSelectedRTSLayer object_ a1 = jmethod object_ "addSelectedRTSLayer" (\() -> (addSelectedRTSLayer_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) () a1

addSelectedRTSLayer_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addSelectedRTSLayer_super object_ a1 = (addSelectedRTSLayer_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput)) a1

addSelectedRTSLayer_impl :: SelectedRTSLayersPlayerGameInput -> RTSLayer.RTSLayer -> IO (())
addSelectedRTSLayer_impl this selectedLayer = do
        assignedValue <- (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
        jset (this).paintSelectedRTSLayersList (assignedValue)
        if ((jtoObject selectedLayer) == (jtoObject (jio (CollidableDestroyableDamageableLayer.getNullInstance)))) then do
            Control.Monad.void (SelectedRTSLayersPlayerGameInput.deselectAll this)
            Control.Monad.void (BasicArrayList.clear ((jget (this).selectedRTSLayersList)))
        else do
            when (Prelude.not (jio (BasicArrayList.contains ((jget (this).selectedRTSLayersList)) selectedLayer))) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).selectedRTSLayersList)) selectedLayer)
        jset (this).paintSelectedRTSLayersList ((jget (this).selectedRTSLayersList))
        pure ()


setSelectedRTSLayer :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setSelectedRTSLayer object_ a1 = jmethod object_ "setSelectedRTSLayer" (\() -> (setSelectedRTSLayer_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) () a1

setSelectedRTSLayer_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setSelectedRTSLayer_super object_ a1 = (setSelectedRTSLayer_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput)) a1

setSelectedRTSLayer_impl :: SelectedRTSLayersPlayerGameInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setSelectedRTSLayer_impl this selectedLayer = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Selected Layer: ")
        when (selectedLayer /= javaNull) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableDestroyableDamageableLayer.getName selectedLayer)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "setSelectedRTSLayer")
        assignedValue <- (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
        jset (this).paintSelectedRTSLayersList (assignedValue)
        Control.Monad.void (Visitor.visit ((jget (this).selectRTSLayerVisitorInterface)) selectedLayer)
        Control.Monad.void (SelectedRTSLayersPlayerGameInput.deselectAll this)
        when ((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) > 0) $ do
            Control.Monad.void (BasicArrayList.clear ((jio (SelectedRTSLayersPlayerGameInput.getPreSelectedRTSLayersList this))))
            tempList <- (SelectedRTSLayersPlayerGameInput.getPreSelectedRTSLayersList this)
            jset (this).preSelectedRTSLayersList ((jget (this).selectedRTSLayersList))
            jset (this).selectedRTSLayersList (tempList)
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Preselected: "))) (jio (BasicArrayList.toString ((jget (this).preSelectedRTSLayersList))))))))) this "setSelectedRTSLayer")
        when (selectedLayer /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).selectedRTSLayersList)) selectedLayer)
        jset (this).paintSelectedRTSLayersList ((jget (this).selectedRTSLayersList))
        pure ()


getLastSelectedRtsLayer :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getLastSelectedRtsLayer object_ = jmethod object_ "getLastSelectedRtsLayer" (\() -> (getLastSelectedRtsLayer_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

getLastSelectedRtsLayer_super :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getLastSelectedRtsLayer_super object_ = (getLastSelectedRtsLayer_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

getLastSelectedRtsLayer_impl :: SelectedRTSLayersPlayerGameInput -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getLastSelectedRtsLayer_impl this = do
    javaCatchReturn $ do
        if (jio (SelectedRTSLayersPlayerGameInput.isAnyRTSLayerSelected this)) then do
            javaReturn ((javaCast (jio (BasicArrayList.get ((jget (this).selectedRTSLayersList)) ((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) - 1))) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer))
        else do
            javaReturn =<< (CollidableDestroyableDamageableLayer.getNullInstance)


selectAllPreselected :: (JavaObjectClass this_) => this_ -> IO (())
selectAllPreselected object_ = jmethod object_ "selectAllPreselected" (\() -> (selectAllPreselected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

selectAllPreselected_super :: (JavaObjectClass this_) => this_ -> IO (())
selectAllPreselected_super object_ = (selectAllPreselected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

selectAllPreselected_impl :: SelectedRTSLayersPlayerGameInput -> IO (())
selectAllPreselected_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Select all Preselected: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicArrayList.toString ((jget (this).preSelectedRTSLayersList)))))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "selectAllPreselected")
        forM_ [((jio (BasicArrayList.size ((jget (this).preSelectedRTSLayersList)))) - 1), ((jio (BasicArrayList.size ((jget (this).preSelectedRTSLayersList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let rtsLayer = (javaCast (jio (BasicArrayList.get ((jget (this).preSelectedRTSLayersList)) index)) :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayer.select rtsLayer)
        pure ()


deselectAllPreselected :: (JavaObjectClass this_) => this_ -> IO (())
deselectAllPreselected object_ = jmethod object_ "deselectAllPreselected" (\() -> (deselectAllPreselected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

deselectAllPreselected_super :: (JavaObjectClass this_) => this_ -> IO (())
deselectAllPreselected_super object_ = (deselectAllPreselected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

deselectAllPreselected_impl :: SelectedRTSLayersPlayerGameInput -> IO (())
deselectAllPreselected_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Deselect all Preselected: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicArrayList.toString ((jget (this).preSelectedRTSLayersList)))))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "deselectAllPreselected")
        forM_ [((jio (BasicArrayList.size ((jget (this).preSelectedRTSLayersList)))) - 1), ((jio (BasicArrayList.size ((jget (this).preSelectedRTSLayersList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let rtsLayer = (javaCast (jio (BasicArrayList.get ((jget (this).preSelectedRTSLayersList)) index)) :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayer.deselect rtsLayer)
        Control.Monad.void (BasicArrayList.clear ((jget (this).preSelectedRTSLayersList)))
        pure ()


deselectAll :: (JavaObjectClass this_) => this_ -> IO (())
deselectAll object_ = jmethod object_ "deselectAll" (\() -> (deselectAll_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

deselectAll_super :: (JavaObjectClass this_) => this_ -> IO (())
deselectAll_super object_ = (deselectAll_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

deselectAll_impl :: SelectedRTSLayersPlayerGameInput -> IO (())
deselectAll_impl this = do
        forM_ [((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) - 1), ((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let rtsLayer = (javaCast (jio (BasicArrayList.get ((jget (this).selectedRTSLayersList)) index)) :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayer.deselect rtsLayer)
        pure ()


isAnyRTSLayerSelected :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyRTSLayerSelected object_ = jmethod object_ "isAnyRTSLayerSelected" (\() -> (isAnyRTSLayerSelected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

isAnyRTSLayerSelected_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyRTSLayerSelected_super object_ = (isAnyRTSLayerSelected_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

isAnyRTSLayerSelected_impl :: SelectedRTSLayersPlayerGameInput -> IO (Bool)
isAnyRTSLayerSelected_impl this = do
    javaCatchReturn $ do
        when ((jio (BasicArrayList.size ((jget (this).selectedRTSLayersList)))) == 0) $ do
            javaReturn (False)
        pure (True)


getPaintSelectedRTSLayersList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPaintSelectedRTSLayersList object_ = jmethod object_ "getPaintSelectedRTSLayersList" (\() -> (getPaintSelectedRTSLayersList_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

getPaintSelectedRTSLayersList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPaintSelectedRTSLayersList_super object_ = (getPaintSelectedRTSLayersList_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

getPaintSelectedRTSLayersList_impl :: SelectedRTSLayersPlayerGameInput -> IO (BasicArrayList.BasicArrayList)
getPaintSelectedRTSLayersList_impl this = do
        pure ((jget (this).paintSelectedRTSLayersList))


getPreSelectedRTSLayersList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPreSelectedRTSLayersList object_ = jmethod object_ "getPreSelectedRTSLayersList" (\() -> (getPreSelectedRTSLayersList_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))) ()

getPreSelectedRTSLayersList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPreSelectedRTSLayersList_super object_ = (getPreSelectedRTSLayersList_impl (javaCast object_ :: SelectedRTSLayersPlayerGameInput))

getPreSelectedRTSLayersList_impl :: SelectedRTSLayersPlayerGameInput -> IO (BasicArrayList.BasicArrayList)
getPreSelectedRTSLayersList_impl this = do
        pure ((jget (this).preSelectedRTSLayersList))


