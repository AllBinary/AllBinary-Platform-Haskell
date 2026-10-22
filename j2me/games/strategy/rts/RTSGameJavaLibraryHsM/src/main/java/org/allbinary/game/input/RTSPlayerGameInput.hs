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
module RTSPlayerGameInput (module RTSPlayerGameInput, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, left, left_super, left_impl, right, right_super, right_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, processInput, processInput_super, processInput_impl, processMotionInput, processMotionInput_super, processMotionInput_impl, select, select_super, select_impl, setSelectedRTSLayer, setSelectedRTSLayer_super, setSelectedRTSLayer_impl, paint, paint_super, paint_impl, updatePaintable, updatePaintable_super, updatePaintable_impl, getSelectedBuildingPlayerGameInput, getSelectedBuildingPlayerGameInput_super, getSelectedBuildingPlayerGameInput_impl, getSelectedRtsFormInput, getSelectedRtsFormInput_super, getSelectedRtsFormInput_impl, setSelectedRtsFormInput, setSelectedRtsFormInput_super, setSelectedRtsFormInput_impl, getRtsPlayerLayerInterface, getRtsPlayerLayerInterface_super, getRtsPlayerLayerInterface_impl, getRTSLayerInfoPaintable, getRTSLayerInfoPaintable_super, getRTSLayerInfoPaintable_impl, getMotionGestureInputList, getMotionGestureInputList_super, getMotionGestureInputList_impl, getGameCanvas, getGameCanvas_super, getGameCanvas_impl, isIsSingleKeyProcessing, isIsSingleKeyProcessing_super, isIsSingleKeyProcessing_impl, getScrollPlayerGameInput, getScrollPlayerGameInput_super, getScrollPlayerGameInput_impl, inputProcessorArray, removeInputProcessorArray, inputList, isSingleKeyProcessing, gameCanvas, motionGestureInputList, scrollPlayerGameInput, selectedRTSLayerPlayerGameInput, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectedRtsFormInput)
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
import qualified ScrollMapPlayerGameInput -- same package or java.lang
import qualified SelectedRTSLayersPlayerGameInput -- same package or java.lang
import qualified LayerPositionFinderInterface -- same package or java.lang
import qualified SelectRTSLayerVisitorFactoryInterface -- same package or java.lang
import qualified RTSPlayerLeftGameInputProcessor -- same package or java.lang
import qualified RTSPlayerRightGameInputProcessor -- same package or java.lang
import qualified RTSPlayerFireGameInputProcessor -- same package or java.lang
import qualified GameInputProcessorUtil -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSLayerInfoPaintable -- org.allbinary.game.layer.RTSLayerInfoPaintable
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified NullRTSFormInputFactory -- org.allbinary.game.input.form.NullRTSFormInputFactory
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified NullRTSLayer -- org.allbinary.game.layer.NullRTSLayer
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified SelectSound -- org.allbinary.media.audio.SelectSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified PlayerGameInput

data RTSPlayerGameInput = RTSPlayerGameInput
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , inputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , removeInputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , inputList :: IORef (BasicArrayList.BasicArrayList)
    , isSingleKeyProcessing :: IORef (Bool)
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , motionGestureInputList :: IORef (BasicArrayList.BasicArrayList)
    , scrollPlayerGameInput :: IORef (ScrollMapPlayerGameInput.ScrollMapPlayerGameInput)
    , selectedRTSLayerPlayerGameInput :: IORef (SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput)
    , towerInfoPaintable :: IORef (RTSLayerInfoPaintable.RTSLayerInfoPaintable)
    , rtsPlayerLayerInterface :: IORef (RTSPlayerLayerInterface.RTSPlayerLayerInterface)
    , layerPositionFinderInterface :: IORef (LayerPositionFinderInterface.LayerPositionFinderInterface)
    , selectedRtsFormInput :: IORef (RTSFormInput.RTSFormInput)
    }

instance JavaNull RTSPlayerGameInput where
    javaNull = javaNullRecord "RTSPlayerGameInput"

instance JavaEquals RTSPlayerGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSPlayerGameInput where
    (==) = jrecordEquals

instance JavaObjectClass RTSPlayerGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSPlayerGameInput
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    inputProcessorArray <- newIORef javaNull
    removeInputProcessorArray <- newIORef javaNull
    inputList <- newIORef javaNull
    isSingleKeyProcessing <- newIORef False
    gameCanvas <- newIORef javaNull
    motionGestureInputList <- newIORef javaNull
    scrollPlayerGameInput <- newIORef javaNull
    selectedRTSLayerPlayerGameInput <- newIORef javaNull
    towerInfoPaintable <- newIORef javaNull
    rtsPlayerLayerInterface <- newIORef javaNull
    layerPositionFinderInterface <- newIORef javaNull
    selectedRtsFormInput <- newIORef javaNull
    let this = RTSPlayerGameInput header_ base inputProcessorArray removeInputProcessorArray inputList isSingleKeyProcessing gameCanvas motionGestureInputList scrollPlayerGameInput selectedRTSLayerPlayerGameInput towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectedRtsFormInput
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "processMotionInput" (\() -> processMotionInput_impl this)
    jregisterMethod header_ "select" (\() -> select_impl this)
    jregisterMethod header_ "setSelectedRTSLayer" (\() -> setSelectedRTSLayer_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "updatePaintable" (\() -> updatePaintable_impl this)
    jregisterMethod header_ "getSelectedBuildingPlayerGameInput" (\() -> getSelectedBuildingPlayerGameInput_impl this)
    jregisterMethod header_ "getSelectedRtsFormInput" (\() -> getSelectedRtsFormInput_impl this)
    jregisterMethod header_ "setSelectedRtsFormInput" (\() -> setSelectedRtsFormInput_impl this)
    jregisterMethod header_ "getRtsPlayerLayerInterface" (\() -> getRtsPlayerLayerInterface_impl this)
    jregisterMethod header_ "getRTSLayerInfoPaintable" (\() -> getRTSLayerInfoPaintable_impl this)
    jregisterMethod header_ "getMotionGestureInputList" (\() -> getMotionGestureInputList_impl this)
    jregisterMethod header_ "getGameCanvas" (\() -> getGameCanvas_impl this)
    jregisterMethod header_ "isIsSingleKeyProcessing" (\() -> isIsSingleKeyProcessing_impl this)
    jregisterMethod header_ "getScrollPlayerGameInput" (\() -> getScrollPlayerGameInput_impl this)
    pure this

initFields_ :: RTSPlayerGameInput -> IO ()
initFields_ this = do
    jset this.inputProcessorArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.removeInputProcessorArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.inputList (javaNull)
    jset this.isSingleKeyProcessing (((jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_REPEAT_PRESS)))) || (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_PRESS))))))
    jset this.gameCanvas (javaNull)
    jset this.motionGestureInputList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.scrollPlayerGameInput (javaNull)
    jset this.selectedRTSLayerPlayerGameInput (javaNull)
    jset this.towerInfoPaintable (javaNull)
    jset this.rtsPlayerLayerInterface (javaNull)
    jset this.layerPositionFinderInterface (javaNull)
    jset this.selectedRtsFormInput =<< (NullRTSFormInputFactory.getInstance)
    pure ()

new_7 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> BasicArrayList.BasicArrayList -> Int -> RTSLayerInfoPaintable.RTSLayerInfoPaintable -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> LayerPositionFinderInterface.LayerPositionFinderInterface -> SelectRTSLayerVisitorFactoryInterface.SelectRTSLayerVisitorFactoryInterface -> IO RTSPlayerGameInput
new_7 gameCanvas inputList playerInputId towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectRTSLayerVisitorFactoryInterface = do
    this <- newRecord_
    init_7 this gameCanvas inputList playerInputId towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectRTSLayerVisitorFactoryInterface
    pure this

init_7 :: RTSPlayerGameInput -> AllBinaryGameCanvas.AllBinaryGameCanvas -> BasicArrayList.BasicArrayList -> Int -> RTSLayerInfoPaintable.RTSLayerInfoPaintable -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> LayerPositionFinderInterface.LayerPositionFinderInterface -> SelectRTSLayerVisitorFactoryInterface.SelectRTSLayerVisitorFactoryInterface -> IO ()
init_7 this gameCanvas inputList playerInputId towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectRTSLayerVisitorFactoryInterface = do
        PlayerGameInput.init_3 this.base (inputList) (jio (BasicArrayListD.new_)) (playerInputId)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RTSPlayerGameInput.initInputProcessors this)
        jset (this).gameCanvas (gameCanvas)
        jset (this).inputList (inputList)
        jset (this).towerInfoPaintable (towerInfoPaintable)
        jset (this).rtsPlayerLayerInterface (rtsPlayerLayerInterface)
        assignedValue <- (SelectedRTSLayersPlayerGameInput.new_5 (jio (RTSPlayerGameInput.getRTSLayerInfoPaintable this)) (jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)) (jget (this).inputList) playerInputId selectRTSLayerVisitorFactoryInterface)
        jset (this).selectedRTSLayerPlayerGameInput (assignedValue)
        when ((jtoObject (jget (this).rtsPlayerLayerInterface)) /= (jtoObject NullRTSLayer.nULL_RTS_LAYER)) $ do
            Control.Monad.void (RTSPlayerGameInput.setSelectedRtsFormInput this (jio (RTSPlayerLayerInterface.getRTSFormInput ((jget (this).rtsPlayerLayerInterface)))))
        let geographicMapCompositeInterface = (javaCast (jio (AllBinaryGameCanvas.getLayerManager ((jget (this).gameCanvas)))) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        assignedValue <- (ScrollMapPlayerGameInput.new_3 geographicMapInterface (jget (this).inputList) playerInputId)
        jset (this).scrollPlayerGameInput (assignedValue)
        jset (this).layerPositionFinderInterface (layerPositionFinderInterface)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: RTSPlayerGameInput)) a1

setAllBinaryGameLayerManager_impl :: RTSPlayerGameInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (SelectedRTSLayersPlayerGameInput.setAllBinaryGameLayerManager ((jget (this).selectedRTSLayerPlayerGameInput)) allBinaryGameLayerManager)
        when ((jget (this).selectedRtsFormInput) /= (jio (NullRTSFormInputFactory.getInstance))) $ do
            Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager ((jget (this).selectedRtsFormInput)) allBinaryGameLayerManager)
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: RTSPlayerGameInput)) a1

onDisplayChangeEvent_impl :: RTSPlayerGameInput -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "onDisplayChangeEvent" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this "onDisplayChangeEvent")
            Control.Monad.void (RTSLayerInfoPaintable.update ((jio (RTSPlayerGameInput.getRTSLayerInfoPaintable this))))
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: RTSPlayerGameInput))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: RTSPlayerGameInput))

left_impl :: RTSPlayerGameInput -> IO (())
left_impl this = do
        Control.Monad.void (RTSPlayerLayerInterface.processInputKey ((jio (RTSPlayerLayerInterface.getCurrentScrollSelectionForm ((jget (this).rtsPlayerLayerInterface))))) (Canvas.lEFT))
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: RTSPlayerGameInput))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: RTSPlayerGameInput))

right_impl :: RTSPlayerGameInput -> IO (())
right_impl this = do
        Control.Monad.void (RTSPlayerLayerInterface.processInputKey ((jio (RTSPlayerLayerInterface.getCurrentScrollSelectionForm ((jget (this).rtsPlayerLayerInterface))))) (Canvas.rIGHT))
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: RTSPlayerGameInput))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: RTSPlayerGameInput))

initInputProcessors_impl :: RTSPlayerGameInput -> IO (())
initInputProcessors_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (RTSPlayerLeftGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.lEFT) (assignedValue)
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM0) ((jindex ((jget (this).inputProcessorArray)) (Canvas.lEFT)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (RTSPlayerRightGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.rIGHT) (assignedValue)
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_POUND) ((jindex ((jget (this).inputProcessorArray)) (Canvas.rIGHT)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (RTSPlayerFireGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1) (assignedValue)
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM3) ((jindex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1)))
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM3) ((jindex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1)))
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.lEFT) ((jindex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1)))
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.rIGHT) ((jindex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1)))
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM0) ((jindex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1)))
        jsetIndex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_POUND) ((jindex ((jget (this).removeInputProcessorArray)) (Canvas.kEY_NUM1)))
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).inputProcessorArray))
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).removeInputProcessorArray))
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: RTSPlayerGameInput)) a1

processInput_impl :: RTSPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.gameInputStrings)).pROCESS_INPUT) e)
            ) $ do
            Control.Monad.void (RTSPlayerGameInput.processMotionInput this layerManager)
            size <- (BasicArrayList.size ((jget (this).inputList)))
            key <- newIORef (0)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let gameKeyEvent = (javaCast (jio (BasicArrayList.get ((jget (this).inputList)) index)) :: GameKeyEvent.GameKeyEvent)
                assignedValue <- (GameKeyEvent.getKey gameKeyEvent)
                jset key (assignedValue)
                Control.Monad.void (ScrollMapPlayerGameInput.processInputKey ((jio (RTSPlayerGameInput.getScrollPlayerGameInput this))) (jget key))
                Control.Monad.void (SelectedRTSLayersPlayerGameInput.processInputKey ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) (jget key))
                Control.Monad.void (processEvent ((jindex ((jget (this).inputProcessorArray)) ((jget key)))) layerManager gameKeyEvent)
                Control.Monad.void (processEvent ((jindex ((jget (this).removeInputProcessorArray)) ((jget key)))) layerManager gameKeyEvent)
            if (jio (RTSPlayerGameInput.isIsSingleKeyProcessing this)) then do
                Control.Monad.void (PlayerGameInput.clear this)
            else do
                Control.Monad.void (PlayerGameInput.update this)
        pure ()


-- throws Exception
processMotionInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processMotionInput object_ a1 = jmethod object_ "processMotionInput" (\() -> (processMotionInput_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

processMotionInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processMotionInput_super object_ a1 = (processMotionInput_impl (javaCast object_ :: RTSPlayerGameInput)) a1

processMotionInput_impl :: RTSPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processMotionInput_impl this layerManager = do
        pure ()


-- throws Exception
select :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
select object_ a1 = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

select_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
select_super object_ a1 = (select_impl (javaCast object_ :: RTSPlayerGameInput)) a1

select_impl :: RTSPlayerGameInput -> MotionGestureEvent.MotionGestureEvent -> IO (())
select_impl this motionGestureEvent = do
        point <- (MotionGestureEvent.getCurrentPoint motionGestureEvent)
        let geographicMapCompositeInterface = (javaCast (jio (AllBinaryGameCanvas.getLayerManager ((jget (this).gameCanvas)))) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        let x = ((jio (GPoint.getX point)) + (jio (AllBinaryTiledLayer.getXP allBinaryTiledLayer)))
        let y = ((jio (GPoint.getY point)) + (jio (AllBinaryTiledLayer.getYP allBinaryTiledLayer)))
        geographicMapCellPosition <- newIORef =<< (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface x y)
        if ((jget geographicMapCellPosition) /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
            Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
            layer <- newIORef =<< (LayerPositionFinderInterface.getLayerInterface ((jget (this).layerPositionFinderInterface)) (jget geographicMapCellPosition))
            if ((jget layer) == AllBinaryLayer.nULL_ALLBINARY_LAYER) then do
                assignedValue <- (CollidableDestroyableDamageableLayer.getNullInstance)
                jset layer (assignedValue)
            else do
                assignedValue <- (BasicGeographicMap.getCellPositionAtXY geographicMapInterface (jio (AllBinaryLayer.getXP ((jget layer)))) (jio (AllBinaryLayer.getYP ((jget layer)))))
                jset geographicMapCellPosition (assignedValue)
            let foundRTSLayer = (javaCast (jget layer) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
            Control.Monad.void (RTSPlayerGameInput.setSelectedRTSLayer this foundRTSLayer (jget geographicMapCellPosition))
        else do
            commonLabels <- (CommonLabels.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Off Of Map -"))) (jget (commonLabels).wIDTH_LABEL)))) (jio (AllBinaryTiledLayer.getWidth allBinaryTiledLayer))))) (jget (commonLabels).hEIGHT_LABEL)))) (jio (AllBinaryTiledLayer.getHeight allBinaryTiledLayer))))))) this "select")
        pure ()


-- throws Exception
setSelectedRTSLayer :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedRTSLayer object_ a1 a2 = jmethod object_ "setSelectedRTSLayer" (\() -> (setSelectedRTSLayer_impl (javaCast object_ :: RTSPlayerGameInput))) () a1 a2

setSelectedRTSLayer_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedRTSLayer_super object_ a1 a2 = (setSelectedRTSLayer_impl (javaCast object_ :: RTSPlayerGameInput)) a1 a2

setSelectedRTSLayer_impl :: RTSPlayerGameInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedRTSLayer_impl this rtsLayer geographicMapCellPosition = do
        Control.Monad.void (SelectedRTSLayersPlayerGameInput.setSelectedRTSLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) rtsLayer)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: RTSPlayerGameInput)) a1

paint_impl :: RTSPlayerGameInput -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        geographicMapCellPosition <- (RTSFormInput.getSelectedGeographicCellPosition ((jio (RTSPlayerGameInput.getSelectedRtsFormInput this))))
        let geographicMapCompositeInterface = (javaCast (jio (AllBinaryGameCanvas.getLayerManager ((jget (this).gameCanvas)))) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).gREEN)))))
        list <- (SelectedRTSLayersPlayerGameInput.getPaintSelectedRTSLayersList ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))))
        width <- newIORef (0)
        height <- newIORef (0)
        if ((jio (BasicArrayList.size list)) > 0) then do
            forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                let rtsLayer = (javaCast (jio (BasicArrayList.get list index)) :: RTSLayer.RTSLayer)
                assignedValue <- (RTSLayer.getWidth rtsLayer)
                jset width (assignedValue)
                assignedValue <- (RTSLayer.getHeight rtsLayer)
                jset height (assignedValue)
                Control.Monad.void (Graphics.drawRect graphics ((jio (RTSLayer.getXP rtsLayer)) - (jio (AllBinaryTiledLayer.getXP allBinaryTiledLayer))) ((jio (RTSLayer.getYP rtsLayer)) - (jio (AllBinaryTiledLayer.getYP allBinaryTiledLayer))) (jget width) (jget height))
        else when (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            point <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
            assignedValue <- (AllBinaryTiledLayer.getCellWidth allBinaryTiledLayer)
            jset width (assignedValue)
            assignedValue <- (AllBinaryTiledLayer.getCellHeight allBinaryTiledLayer)
            jset height (assignedValue)
            Control.Monad.void (Graphics.drawRect graphics ((jio (GPoint.getX point)) - (jio (AllBinaryTiledLayer.getXP allBinaryTiledLayer))) ((jio (GPoint.getY point)) - (jio (AllBinaryTiledLayer.getYP allBinaryTiledLayer))) (jget width) (jget height))
        pure ()


updatePaintable :: (JavaObjectClass this_) => this_ -> IO (())
updatePaintable object_ = jmethod object_ "updatePaintable" (\() -> (updatePaintable_impl (javaCast object_ :: RTSPlayerGameInput))) ()

updatePaintable_super :: (JavaObjectClass this_) => this_ -> IO (())
updatePaintable_super object_ = (updatePaintable_impl (javaCast object_ :: RTSPlayerGameInput))

updatePaintable_impl :: RTSPlayerGameInput -> IO (())
updatePaintable_impl this = do
        pure ()


getSelectedBuildingPlayerGameInput :: (JavaObjectClass this_) => this_ -> IO (SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput)
getSelectedBuildingPlayerGameInput object_ = jmethod object_ "getSelectedBuildingPlayerGameInput" (\() -> (getSelectedBuildingPlayerGameInput_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getSelectedBuildingPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> IO (SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput)
getSelectedBuildingPlayerGameInput_super object_ = (getSelectedBuildingPlayerGameInput_impl (javaCast object_ :: RTSPlayerGameInput))

getSelectedBuildingPlayerGameInput_impl :: RTSPlayerGameInput -> IO (SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput)
getSelectedBuildingPlayerGameInput_impl this = do
        pure ((jget (this).selectedRTSLayerPlayerGameInput))


getSelectedRtsFormInput :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getSelectedRtsFormInput object_ = jmethod object_ "getSelectedRtsFormInput" (\() -> (getSelectedRtsFormInput_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getSelectedRtsFormInput_super :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getSelectedRtsFormInput_super object_ = (getSelectedRtsFormInput_impl (javaCast object_ :: RTSPlayerGameInput))

getSelectedRtsFormInput_impl :: RTSPlayerGameInput -> IO (RTSFormInput.RTSFormInput)
getSelectedRtsFormInput_impl this = do
        pure ((jget (this).selectedRtsFormInput))


setSelectedRtsFormInput :: (JavaObjectClass this_) => this_ -> RTSFormInput.RTSFormInput -> IO (())
setSelectedRtsFormInput object_ a1 = jmethod object_ "setSelectedRtsFormInput" (\() -> (setSelectedRtsFormInput_impl (javaCast object_ :: RTSPlayerGameInput))) () a1

setSelectedRtsFormInput_super :: (JavaObjectClass this_) => this_ -> RTSFormInput.RTSFormInput -> IO (())
setSelectedRtsFormInput_super object_ a1 = (setSelectedRtsFormInput_impl (javaCast object_ :: RTSPlayerGameInput)) a1

setSelectedRtsFormInput_impl :: RTSPlayerGameInput -> RTSFormInput.RTSFormInput -> IO (())
setSelectedRtsFormInput_impl this selectedRtsFormInput = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "RTSFormInput: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) selectedRtsFormInput))))))) this "setSelectedRtsFormInput")
        jset (this).selectedRtsFormInput (selectedRtsFormInput)
        pure ()


getRtsPlayerLayerInterface :: (JavaObjectClass this_) => this_ -> IO (RTSPlayerLayerInterface.RTSPlayerLayerInterface)
getRtsPlayerLayerInterface object_ = jmethod object_ "getRtsPlayerLayerInterface" (\() -> (getRtsPlayerLayerInterface_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getRtsPlayerLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (RTSPlayerLayerInterface.RTSPlayerLayerInterface)
getRtsPlayerLayerInterface_super object_ = (getRtsPlayerLayerInterface_impl (javaCast object_ :: RTSPlayerGameInput))

getRtsPlayerLayerInterface_impl :: RTSPlayerGameInput -> IO (RTSPlayerLayerInterface.RTSPlayerLayerInterface)
getRtsPlayerLayerInterface_impl this = do
        pure ((jget (this).rtsPlayerLayerInterface))


getRTSLayerInfoPaintable :: (JavaObjectClass this_) => this_ -> IO (RTSLayerInfoPaintable.RTSLayerInfoPaintable)
getRTSLayerInfoPaintable object_ = jmethod object_ "getRTSLayerInfoPaintable" (\() -> (getRTSLayerInfoPaintable_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getRTSLayerInfoPaintable_super :: (JavaObjectClass this_) => this_ -> IO (RTSLayerInfoPaintable.RTSLayerInfoPaintable)
getRTSLayerInfoPaintable_super object_ = (getRTSLayerInfoPaintable_impl (javaCast object_ :: RTSPlayerGameInput))

getRTSLayerInfoPaintable_impl :: RTSPlayerGameInput -> IO (RTSLayerInfoPaintable.RTSLayerInfoPaintable)
getRTSLayerInfoPaintable_impl this = do
        pure ((jget (this).towerInfoPaintable))


getMotionGestureInputList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMotionGestureInputList object_ = jmethod object_ "getMotionGestureInputList" (\() -> (getMotionGestureInputList_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getMotionGestureInputList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMotionGestureInputList_super object_ = (getMotionGestureInputList_impl (javaCast object_ :: RTSPlayerGameInput))

getMotionGestureInputList_impl :: RTSPlayerGameInput -> IO (BasicArrayList.BasicArrayList)
getMotionGestureInputList_impl this = do
        pure ((jget (this).motionGestureInputList))


getGameCanvas :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameCanvas.AllBinaryGameCanvas)
getGameCanvas object_ = jmethod object_ "getGameCanvas" (\() -> (getGameCanvas_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getGameCanvas_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameCanvas.AllBinaryGameCanvas)
getGameCanvas_super object_ = (getGameCanvas_impl (javaCast object_ :: RTSPlayerGameInput))

getGameCanvas_impl :: RTSPlayerGameInput -> IO (AllBinaryGameCanvas.AllBinaryGameCanvas)
getGameCanvas_impl this = do
        pure ((jget (this).gameCanvas))


isIsSingleKeyProcessing :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsSingleKeyProcessing object_ = jmethod object_ "isIsSingleKeyProcessing" (\() -> (isIsSingleKeyProcessing_impl (javaCast object_ :: RTSPlayerGameInput))) ()

isIsSingleKeyProcessing_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsSingleKeyProcessing_super object_ = (isIsSingleKeyProcessing_impl (javaCast object_ :: RTSPlayerGameInput))

isIsSingleKeyProcessing_impl :: RTSPlayerGameInput -> IO (Bool)
isIsSingleKeyProcessing_impl this = do
        pure ((jget (this).isSingleKeyProcessing))


getScrollPlayerGameInput :: (JavaObjectClass this_) => this_ -> IO (ScrollMapPlayerGameInput.ScrollMapPlayerGameInput)
getScrollPlayerGameInput object_ = jmethod object_ "getScrollPlayerGameInput" (\() -> (getScrollPlayerGameInput_impl (javaCast object_ :: RTSPlayerGameInput))) ()

getScrollPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> IO (ScrollMapPlayerGameInput.ScrollMapPlayerGameInput)
getScrollPlayerGameInput_super object_ = (getScrollPlayerGameInput_impl (javaCast object_ :: RTSPlayerGameInput))

getScrollPlayerGameInput_impl :: RTSPlayerGameInput -> IO (ScrollMapPlayerGameInput.ScrollMapPlayerGameInput)
getScrollPlayerGameInput_impl this = do
        pure ((jget (this).scrollPlayerGameInput))


