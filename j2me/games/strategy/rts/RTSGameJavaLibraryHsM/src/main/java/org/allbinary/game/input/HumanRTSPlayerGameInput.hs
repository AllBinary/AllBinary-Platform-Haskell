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
module HumanRTSPlayerGameInput (module HumanRTSPlayerGameInput, module RTSPlayerGameInput) where

import RTSPlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, processDraggingMotionInput, processDraggingMotionInput_super, processDraggingMotionInput_impl, makeSelection, makeSelection_super, makeSelection_impl, processSelectionBoxMotionInput, processSelectionBoxMotionInput_super, processSelectionBoxMotionInput_impl, processMotionInput, processMotionInput_super, processMotionInput_impl, setSelectedRtsFormInput, setSelectedRtsFormInput_super, setSelectedRtsFormInput_impl, updateFormForLayer, updateFormForLayer_super, updateFormForLayer_impl, updateForm, updateForm_super, updateForm_impl, setSelectedRTSLayer, setSelectedRTSLayer_super, setSelectedRTSLayer_impl, updatePaintable, updatePaintable_super, updatePaintable_impl, paint, paint_super, paint_impl, onMotionGestureEvent, onMotionGestureEvent_super, onMotionGestureEvent_impl, onScrolledMotionGestureEvent, onScrolledMotionGestureEvent_super, onScrolledMotionGestureEvent_impl, getSelectedRtsLayer, getSelectedRtsLayer_super, getSelectedRtsLayer_impl, setSelectedRtsLayer, setSelectedRtsLayer_super, setSelectedRtsLayer_impl, isDragging, gameStateFactory, rectangleCollisionUtil, touchMotionGestureFactory, pRESSED, rELEASED, touchButtonsBuilderFactory, notYoursGameNotificationEvent, selectedRtsLayer, startPoint, endPoint, pOSSIBLE, aT, mETHOD, aDDING, sPACE, multiSelectPaintable)
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
import qualified LayerPositionFinderInterface -- same package or java.lang
import qualified SelectRTSLayerVisitorFactoryInterface -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified MultiSelectPaintable -- org.allbinary.game.layer.MultiSelectPaintable
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSLayerInfoPaintable -- org.allbinary.game.layer.RTSLayerInfoPaintable
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified EndLevelNoBuildingSelectedTouchButtonsBuilder -- org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder
import qualified EndLevelTouchButtonsBuilder -- org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder
import qualified NoBuildingSelectedTouchButtonsBuilder -- org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder
import qualified RTSTouchButtonsBuilder -- org.allbinary.input.motion.button.RTSTouchButtonsBuilder
import qualified SelectBuildingSound -- org.allbinary.media.audio.SelectBuildingSound
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified NullInitUpdatePaintable -- org.allbinary.graphics.paint.NullInitUpdatePaintable
import qualified TouchButtonsBuilderFactory -- org.allbinary.input.motion.button.TouchButtonsBuilderFactory
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified BaseMotionGestureEventListener -- org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified RectangleCollisionUtil -- org.allbinary.math.RectangleCollisionUtil
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified RTSPlayerGameInput

-- implements BaseMotionGestureEventListener
data HumanRTSPlayerGameInput = HumanRTSPlayerGameInput
    { header_ :: JavaHeader
    , base :: RTSPlayerGameInput.RTSPlayerGameInput
    , isDragging :: IORef (Bool)
    , gameStateFactory :: IORef (GameStateFactory.GameStateFactory)
    , rectangleCollisionUtil :: IORef (RectangleCollisionUtil.RectangleCollisionUtil)
    , touchMotionGestureFactory :: IORef (TouchMotionGestureFactory.TouchMotionGestureFactory)
    , pRESSED :: IORef (MotionGestureInput.MotionGestureInput)
    , rELEASED :: IORef (MotionGestureInput.MotionGestureInput)
    , touchButtonsBuilderFactory :: IORef (TouchButtonsBuilderFactory.TouchButtonsBuilderFactory)
    , notYoursGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    , selectedRtsLayer :: IORef (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
    , startPoint :: IORef (GPoint.GPoint)
    , endPoint :: IORef (GPoint.GPoint)
    , pOSSIBLE :: IORef (String)
    , aT :: IORef (String)
    , mETHOD :: IORef (String)
    , aDDING :: IORef (String)
    , sPACE :: IORef (String)
    , multiSelectPaintable :: IORef (MultiSelectPaintable.MultiSelectPaintable)
    }

instance JavaNull HumanRTSPlayerGameInput where
    javaNull = javaNullRecord "HumanRTSPlayerGameInput"

instance JavaEquals HumanRTSPlayerGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HumanRTSPlayerGameInput where
    (==) = jrecordEquals

instance JavaObjectClass HumanRTSPlayerGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HumanRTSPlayerGameInput
newRecord_ = do
    base <- RTSPlayerGameInput.newRecord_
    let header_ = base.header_
    isDragging <- newIORef False
    gameStateFactory <- newIORef javaNull
    rectangleCollisionUtil <- newIORef javaNull
    touchMotionGestureFactory <- newIORef javaNull
    pRESSED <- newIORef javaNull
    rELEASED <- newIORef javaNull
    touchButtonsBuilderFactory <- newIORef javaNull
    notYoursGameNotificationEvent <- newIORef javaNull
    selectedRtsLayer <- newIORef javaNull
    startPoint <- newIORef javaNull
    endPoint <- newIORef javaNull
    pOSSIBLE <- newIORef ""
    aT <- newIORef ""
    mETHOD <- newIORef ""
    aDDING <- newIORef ""
    sPACE <- newIORef ""
    multiSelectPaintable <- newIORef javaNull
    let this = HumanRTSPlayerGameInput header_ base isDragging gameStateFactory rectangleCollisionUtil touchMotionGestureFactory pRESSED rELEASED touchButtonsBuilderFactory notYoursGameNotificationEvent selectedRtsLayer startPoint endPoint pOSSIBLE aT mETHOD aDDING sPACE multiSelectPaintable
    jregisterLevel header_ this
    BaseMotionGestureEventListener.registerInterface_ header_
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processDraggingMotionInput" (\() -> processDraggingMotionInput_impl this)
    jregisterMethod header_ "makeSelection" (\() -> makeSelection_impl this)
    jregisterMethod header_ "processSelectionBoxMotionInput" (\() -> processSelectionBoxMotionInput_impl this)
    jregisterMethod header_ "processMotionInput" (\() -> processMotionInput_impl this)
    jregisterMethod header_ "setSelectedRtsFormInput" (\() -> setSelectedRtsFormInput_impl this)
    jregisterMethod header_ "updateFormForLayer" (\() -> updateFormForLayer_impl this)
    jregisterMethod header_ "updateForm" (\() -> updateForm_impl this)
    jregisterMethod header_ "setSelectedRTSLayer" (\() -> setSelectedRTSLayer_impl this)
    jregisterMethod header_ "updatePaintable" (\() -> updatePaintable_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "onMotionGestureEvent" (\() -> onMotionGestureEvent_impl this)
    jregisterMethod header_ "onScrolledMotionGestureEvent" (\() -> onScrolledMotionGestureEvent_impl this)
    jregisterMethod header_ "getSelectedRtsLayer" (\() -> getSelectedRtsLayer_impl this)
    jregisterMethod header_ "setSelectedRtsLayer" (\() -> setSelectedRtsLayer_impl this)
    pure this

initFields_ :: HumanRTSPlayerGameInput -> IO ()
initFields_ this = do
    jset this.isDragging (False)
    jset this.gameStateFactory =<< (GameStateFactory.getInstance)
    jset this.rectangleCollisionUtil =<< (RectangleCollisionUtil.getInstance)
    jset this.touchMotionGestureFactory =<< (TouchMotionGestureFactory.getInstance)
    jset this.pRESSED ((jget ((jget (this).touchMotionGestureFactory)).pRESSED))
    jset this.rELEASED ((jget ((jget (this).touchMotionGestureFactory)).rELEASED))
    jset this.touchButtonsBuilderFactory (javaNull)
    jset this.notYoursGameNotificationEvent (javaNull)
    jset this.selectedRtsLayer =<< (CollidableDestroyableDamageableLayer.getNullInstance)
    jset this.startPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    jset this.endPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    jset this.pOSSIBLE ("Possible: ")
    jset this.aT ("At: ")
    jset this.mETHOD ("makeSelection")
    jset this.aDDING ("Adding: ")
    jset this.sPACE ((jget ((jio (CommonSeps.getInstance))).sPACE))
    jset this.multiSelectPaintable =<< (MultiSelectPaintable.new_)
    pure ()

new_8 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> BasicArrayList.BasicArrayList -> Int -> RTSLayerInfoPaintable.RTSLayerInfoPaintable -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> LayerPositionFinderInterface.LayerPositionFinderInterface -> SelectRTSLayerVisitorFactoryInterface.SelectRTSLayerVisitorFactoryInterface -> TouchButtonsBuilderFactory.TouchButtonsBuilderFactory -> IO HumanRTSPlayerGameInput
new_8 gameCanvas inputList playerInputId towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectRTSLayerVisitorFactoryInterface touchButtonsBuilderFactory = do
    this <- newRecord_
    init_8 this gameCanvas inputList playerInputId towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectRTSLayerVisitorFactoryInterface touchButtonsBuilderFactory
    pure this

init_8 :: HumanRTSPlayerGameInput -> AllBinaryGameCanvas.AllBinaryGameCanvas -> BasicArrayList.BasicArrayList -> Int -> RTSLayerInfoPaintable.RTSLayerInfoPaintable -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> LayerPositionFinderInterface.LayerPositionFinderInterface -> SelectRTSLayerVisitorFactoryInterface.SelectRTSLayerVisitorFactoryInterface -> TouchButtonsBuilderFactory.TouchButtonsBuilderFactory -> IO ()
init_8 this gameCanvas inputList playerInputId towerInfoPaintable rtsPlayerLayerInterface layerPositionFinderInterface selectRTSLayerVisitorFactoryInterface touchButtonsBuilderFactory = do
        RTSPlayerGameInput.init_7 this.base (gameCanvas) (inputList) (playerInputId) (towerInfoPaintable) (rtsPlayerLayerInterface) (layerPositionFinderInterface) (selectRTSLayerVisitorFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).touchButtonsBuilderFactory (touchButtonsBuilderFactory)
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nOT_YOURS) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 2)) (jget (basicColorFactory).pINK) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).notYoursGameNotificationEvent (assignedValue)
        Control.Monad.void (BasicMotionGesturesHandler.addListenerInterface ((jio (BasicMotionGesturesHandler.getInstance))) this)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

setAllBinaryGameLayerManager_impl :: HumanRTSPlayerGameInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).notYoursGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


-- throws Exception
processDraggingMotionInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (Bool)
processDraggingMotionInput object_ a1 = jmethod object_ "processDraggingMotionInput" (\() -> (processDraggingMotionInput_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

processDraggingMotionInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (Bool)
processDraggingMotionInput_super object_ a1 = (processDraggingMotionInput_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

processDraggingMotionInput_impl :: HumanRTSPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (Bool)
processDraggingMotionInput_impl this layerManager = do
    javaCatchReturn $ do
        let motionGestureEvent = (javaCast (jio (BasicArrayList.get ((jio (RTSPlayerGameInput.getMotionGestureInputList this))) ((jio (BasicArrayList.size ((jio (RTSPlayerGameInput.getMotionGestureInputList this))))) - 1))) :: MotionGestureEvent.MotionGestureEvent)
        motionGestureInput <- (MotionGestureEvent.getMotionGesture motionGestureEvent)
        rtsFormInput <- (RTSPlayerGameInput.getSelectedRtsFormInput this)
        if (motionGestureInput == (jget (this).pRESSED)) then do
            point <- (MotionGestureEvent.getCurrentPoint motionGestureEvent)
            when (jio (RTSPlayerLayerInterface.isInForm ((jio (RTSPlayerLayerInterface.getCurrentScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)))))) point)) $ do
                assignedValue <- (RTSFormInput.processSticky rtsFormInput (jio (HumanRTSPlayerGameInput.getSelectedRtsLayer this)) (jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)) layerManager point)
                jset (this).isDragging (assignedValue)
        else when (motionGestureInput == (jget (this).rELEASED)) $ do
            point <- (MotionGestureEvent.getCurrentPoint motionGestureEvent)
            if (jio (RTSPlayerLayerInterface.isInForm ((jio (RTSPlayerLayerInterface.getCurrentScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)))))) point)) then do
                Control.Monad.void (RTSFormInput.processAtPoint rtsFormInput (jio (HumanRTSPlayerGameInput.getSelectedRtsLayer this)) (jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)) layerManager point)
            else if (jio (RTSFormInput.isStickyItemSelected rtsFormInput)) then do
                let previousRtsFormInput = rtsFormInput
                Control.Monad.void (RTSPlayerGameInput.select this motionGestureEvent)
                Control.Monad.void (SelectedRTSLayersPlayerGameInput.selectAllPreselected ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))))
                Control.Monad.void (RTSFormInput.processAtPoint previousRtsFormInput (jio (HumanRTSPlayerGameInput.getSelectedRtsLayer this)) (jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)) layerManager point)
                Control.Monad.void (SelectedRTSLayersPlayerGameInput.deselectAllPreselected ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))))
            else do
                Control.Monad.void (RTSPlayerGameInput.select this motionGestureEvent)
            Control.Monad.void (RTSFormInput.setStickyItemSelected rtsFormInput False)
            Control.Monad.void (RTSFormInput.setSelectedStickyItem rtsFormInput (jio (ABCustomItem.getNullInstance)))
            Control.Monad.void (RTSFormInput.setSelectedStickyItemIndex rtsFormInput (Prelude.negate 1))
            javaReturn (True)
        pure (False)


makeSelection :: (JavaObjectClass this_) => this_ -> IO (())
makeSelection object_ = jmethod object_ "makeSelection" (\() -> (makeSelection_impl (javaCast object_ :: HumanRTSPlayerGameInput))) ()

makeSelection_super :: (JavaObjectClass this_) => this_ -> IO (())
makeSelection_super object_ = (makeSelection_impl (javaCast object_ :: HumanRTSPlayerGameInput))

makeSelection_impl :: HumanRTSPlayerGameInput -> IO (())
makeSelection_impl this = do
        let rtsLayerList = (jget ((jio (RTSPlayerLayerInterface.getPlayerOwnedRTSLayers ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)))))).rtsLayerList)
        rectX1 <- newIORef =<< (GPoint.getX ((jget (this).startPoint)))
        rectY1 <- newIORef =<< (GPoint.getY ((jget (this).startPoint)))
        rectX2 <- newIORef =<< (GPoint.getX ((jget (this).endPoint)))
        rectY2 <- newIORef =<< (GPoint.getY ((jget (this).endPoint)))
        when ((jget rectX1) > (jget rectX2)) $ do
            jset rectX2 ((jget rectX1))
            assignedValue <- (GPoint.getX ((jget (this).endPoint)))
            jset rectX1 (assignedValue)
        when ((jget rectY1) > (jget rectY2)) $ do
            jset rectY2 ((jget rectY1))
            assignedValue <- (GPoint.getY ((jget (this).endPoint)))
            jset rectY1 (assignedValue)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).aT))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget rectX1))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPACE))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget rectY1))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPACE))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget rectX2))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPACE))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget rectY2))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD))
        rtsLayer <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size rtsLayerList)) - 1), ((jio (BasicArrayList.size rtsLayerList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset rtsLayer ((javaCast (jio (BasicArrayList.get rtsLayerList index)) :: RTSLayer.RTSLayer))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            viewPosition <- (RTSLayer.getViewPosition ((jget rtsLayer)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).pOSSIBLE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (RTSLayer.getName ((jget rtsLayer)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).aT))
            Control.Monad.void (StringMaker.appendint stringBuffer (((jio (ViewPositionBase.getX viewPosition)) + (jio (RTSLayer.getHalfWidth ((jget rtsLayer)))))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPACE))
            Control.Monad.void (StringMaker.appendint stringBuffer (((jio (ViewPositionBase.getY viewPosition)) + (jio (RTSLayer.getHalfHeight ((jget rtsLayer)))))))
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD))
            when (jio (RectangleCollisionUtil.isInside ((jget (this).rectangleCollisionUtil)) (jget rectX1) (jget rectY1) (jget rectX2) (jget rectY2) ((jio (ViewPositionBase.getX viewPosition)) + (jio (RTSLayer.getHalfWidth ((jget rtsLayer))))) ((jio (ViewPositionBase.getY viewPosition)) + (jio (RTSLayer.getHalfHeight ((jget rtsLayer))))))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).aDDING)))) (jio (RTSLayer.getName ((jget rtsLayer))))))))) this (jget (this).mETHOD))
                Control.Monad.void (RTSLayer.select ((jget rtsLayer)))
                Control.Monad.void (SelectedRTSLayersPlayerGameInput.addSelectedRTSLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) (jget rtsLayer))
        gameLayer <- (SelectedRTSLayersPlayerGameInput.getLastSelectedRtsLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))))
        when (gameLayer /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) $ do
            let lastRTSLayer = (javaCast gameLayer :: RTSLayer.RTSLayer)
            when ((jio (RTSLayer.getScrollSelectionForm lastRTSLayer)) /= (jio (ScrollSelectionForm.getNullScrollSelectionForm))) $ do
                Control.Monad.void (HumanRTSPlayerGameInput.updateForm this (jio (RTSLayer.getScrollSelectionForm lastRTSLayer)) (jio (RTSLayer.getRTSFormInput lastRTSLayer)))
                Control.Monad.void (HumanRTSPlayerGameInput.setSelectedRtsLayer this lastRTSLayer)
        Control.Monad.void (HumanRTSPlayerGameInput.updatePaintable this)
        pure ()


-- throws Exception
processSelectionBoxMotionInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processSelectionBoxMotionInput object_ a1 = jmethod object_ "processSelectionBoxMotionInput" (\() -> (processSelectionBoxMotionInput_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

processSelectionBoxMotionInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processSelectionBoxMotionInput_super object_ a1 = (processSelectionBoxMotionInput_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

processSelectionBoxMotionInput_impl :: HumanRTSPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processSelectionBoxMotionInput_impl this layerManager = do
        forM_ [((jio (BasicArrayList.size ((jio (RTSPlayerGameInput.getMotionGestureInputList this))))) - 1), ((jio (BasicArrayList.size ((jio (RTSPlayerGameInput.getMotionGestureInputList this))))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let motionGestureEvent = (javaCast (jio (BasicArrayList.get ((jio (RTSPlayerGameInput.getMotionGestureInputList this))) index)) :: MotionGestureEvent.MotionGestureEvent)
            motionGestureInput <- (MotionGestureEvent.getMotionGesture motionGestureEvent)
            point <- (MotionGestureEvent.getCurrentPoint motionGestureEvent)
            if (motionGestureInput == (jget ((jget (this).touchMotionGestureFactory)).pRESSED)) then do
                jset (this).startPoint (point)
                jset (this).endPoint (point)
            else if (motionGestureInput == (jget ((jget (this).touchMotionGestureFactory)).rELEASED)) then do
                jset (this).endPoint (point)
                Control.Monad.void (HumanRTSPlayerGameInput.makeSelection this)
                jset (this).startPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
                jset (this).endPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
            else do
                jset (this).endPoint (point)
        pure ()


-- throws Exception
processMotionInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processMotionInput object_ a1 = jmethod object_ "processMotionInput" (\() -> (processMotionInput_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

processMotionInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processMotionInput_super object_ a1 = (processMotionInput_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

processMotionInput_impl :: HumanRTSPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processMotionInput_impl this layerManager = do
        when ((jio (BasicArrayList.size ((jio (RTSPlayerGameInput.getMotionGestureInputList this))))) > 0) $ do
            endDrag <- (HumanRTSPlayerGameInput.processDraggingMotionInput this layerManager)
            when (Prelude.not (jget (this).isDragging)) $ do
                Control.Monad.void (HumanRTSPlayerGameInput.processSelectionBoxMotionInput this layerManager)
            when endDrag $ do
                jset (this).isDragging (False)
        Control.Monad.void (BasicArrayList.clear ((jio (RTSPlayerGameInput.getMotionGestureInputList this))))
        pure ()


setSelectedRtsFormInput :: (JavaObjectClass this_) => this_ -> RTSFormInput.RTSFormInput -> IO (())
setSelectedRtsFormInput object_ a1 = jmethod object_ "setSelectedRtsFormInput" (\() -> (setSelectedRtsFormInput_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

setSelectedRtsFormInput_super :: (JavaObjectClass this_) => this_ -> RTSFormInput.RTSFormInput -> IO (())
setSelectedRtsFormInput_super object_ a1 = (setSelectedRtsFormInput_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

setSelectedRtsFormInput_impl :: HumanRTSPlayerGameInput -> RTSFormInput.RTSFormInput -> IO (())
setSelectedRtsFormInput_impl this selectedRtsFormInput = do
        logUtil <- (LogUtil.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) selectedRtsFormInput))))))) this "setSelectedRtsFormInput")
        Control.Monad.void (RTSPlayerGameInput.setSelectedRtsFormInput_super this.base selectedRtsFormInput)
        Control.Monad.void (HumanRTSPlayerGameInput.setSelectedRtsLayer this (jio (CollidableDestroyableDamageableLayer.getNullInstance)))
        pure ()


updateFormForLayer :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
updateFormForLayer object_ a1 = jmethod object_ "updateFormForLayer" (\() -> (updateFormForLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

updateFormForLayer_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
updateFormForLayer_super object_ a1 = (updateFormForLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

updateFormForLayer_impl :: HumanRTSPlayerGameInput -> RTSLayer.RTSLayer -> IO (())
updateFormForLayer_impl this rtsLayer = do
        scrollSelectionForm <- (RTSLayer.getScrollSelectionForm rtsLayer)
        if ((scrollSelectionForm /= (jio (ScrollSelectionForm.getNullScrollSelectionForm))) && ((jindex ((jio (RTSPlayerLayerInterface.getGroupInterface ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)))))) (0)) == (jindex ((jio (RTSLayer.getGroupInterface rtsLayer))) (0)))) then do
            Control.Monad.void (HumanRTSPlayerGameInput.updateForm this scrollSelectionForm (jio (RTSLayer.getRTSFormInput rtsLayer)))
            Control.Monad.void (SelectedRTSLayersPlayerGameInput.setSelectedRTSLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) (jio (CollidableDestroyableDamageableLayer.getNullInstance)))
            Control.Monad.void (HumanRTSPlayerGameInput.setSelectedRtsLayer this rtsLayer)
        else do
            Control.Monad.void (RTSPlayerLayerInterface.setCurrentScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))) (jio (RTSPlayerLayerInterface.getBuildingScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))))))
            Control.Monad.void (HumanRTSPlayerGameInput.setSelectedRtsFormInput this (jio (RTSPlayerLayerInterface.getRTSFormInput ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))))))
            Control.Monad.void (SelectedRTSLayersPlayerGameInput.setSelectedRTSLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) (jio (CollidableDestroyableDamageableLayer.getNullInstance)))
        pure ()


updateForm :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> RTSFormInput.RTSFormInput -> IO (())
updateForm object_ a1 a2 = jmethod object_ "updateForm" (\() -> (updateForm_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1 a2

updateForm_super :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> RTSFormInput.RTSFormInput -> IO (())
updateForm_super object_ a1 a2 = (updateForm_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1 a2

updateForm_impl :: HumanRTSPlayerGameInput -> ScrollSelectionForm.ScrollSelectionForm -> RTSFormInput.RTSFormInput -> IO (())
updateForm_impl this scrollSelectionForm rtfFormInput = do
        Control.Monad.void (RTSPlayerLayerInterface.setCurrentScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))) scrollSelectionForm)
        Control.Monad.void (HumanRTSPlayerGameInput.setSelectedRtsFormInput this rtfFormInput)
        pure ()


-- throws Exception
setSelectedRTSLayer :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedRTSLayer object_ a1 a2 = jmethod object_ "setSelectedRTSLayer" (\() -> (setSelectedRTSLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1 a2

setSelectedRTSLayer_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedRTSLayer_super object_ a1 a2 = (setSelectedRTSLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1 a2

setSelectedRTSLayer_impl :: HumanRTSPlayerGameInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedRTSLayer_impl this rtSLayer geographicMapCellPosition = do
    javaCatchReturn $ do
        when ((rtSLayer /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) && ((jindex ((jio (RTSPlayerLayerInterface.getGroupInterface ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this)))))) (0)) /= (jindex ((jio (CollidableDestroyableDamageableLayer.getGroupInterface rtSLayer))) (0)))) $ do
            Control.Monad.void (RTSPlayerLayerInterface.add ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))) (jio (ErrorSound.getInstance)))
            Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).notYoursGameNotificationEvent))
            javaReturn (())
        gameCanvas <- (RTSPlayerGameInput.getGameCanvas this)
        if (rtSLayer /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) then do
            Control.Monad.void (RTSPlayerLayerInterface.add ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))) (jio (SelectBuildingSound.getInstance)))
            let rtsLayer = (javaCast rtSLayer :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayer.select rtsLayer)
            Control.Monad.void (HumanRTSPlayerGameInput.updateFormForLayer this rtsLayer)
            if ((jio (AllBinaryGameCanvas.getGameState gameCanvas)) == (jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE)) then do
                if (jio (RTSLayer.isSelfUpgradeable rtsLayer)) then do
                    Control.Monad.void (AllBinaryGameCanvas.updateCurrentTouchInputFactory gameCanvas (jio (RTSTouchButtonsBuilder.new_)))
                else do
                    Control.Monad.void (AllBinaryGameCanvas.updateCurrentTouchInputFactory gameCanvas (jio (NoBuildingSelectedTouchButtonsBuilder.new_)))
            else do
                endLevelTouchButtonsBuilder <- (EndLevelTouchButtonsBuilder.new_)
                when ((jget (this).touchButtonsBuilderFactory) /= javaNull) $ do
                    Control.Monad.void (EndLevelTouchButtonsBuilder.add endLevelTouchButtonsBuilder (jio (TouchButtonsBuilderFactory.getInstance ((jget (this).touchButtonsBuilderFactory)))))
                Control.Monad.void (AllBinaryGameCanvas.updateCurrentTouchInputFactory gameCanvas endLevelTouchButtonsBuilder)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) "Set Player Default Form" this "setSelectedRTSLayer")
            Control.Monad.void (RTSPlayerLayerInterface.setCurrentScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))) (jio (RTSPlayerLayerInterface.getBuildingScrollSelectionForm ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))))))
            Control.Monad.void (HumanRTSPlayerGameInput.setSelectedRtsFormInput this (jio (RTSPlayerLayerInterface.getRTSFormInput ((jio (RTSPlayerGameInput.getRtsPlayerLayerInterface this))))))
            Control.Monad.void (SelectedRTSLayersPlayerGameInput.setSelectedRTSLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) (jio (CollidableDestroyableDamageableLayer.getNullInstance)))
            if ((jio (AllBinaryGameCanvas.getGameState gameCanvas)) == (jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE)) then do
                Control.Monad.void (AllBinaryGameCanvas.updateCurrentTouchInputFactory gameCanvas (jio (NoBuildingSelectedTouchButtonsBuilder.new_)))
            else do
                endLevelNoBuildingSelectedTouchButtonsBuilder <- (EndLevelNoBuildingSelectedTouchButtonsBuilder.new_)
                when ((jget (this).touchButtonsBuilderFactory) /= javaNull) $ do
                    Control.Monad.void (EndLevelNoBuildingSelectedTouchButtonsBuilder.add endLevelNoBuildingSelectedTouchButtonsBuilder (jio (TouchButtonsBuilderFactory.getInstance ((jget (this).touchButtonsBuilderFactory)))))
                Control.Monad.void (AllBinaryGameCanvas.updateCurrentTouchInputFactory gameCanvas endLevelNoBuildingSelectedTouchButtonsBuilder)
        Control.Monad.void (RTSFormInput.setSelectedGeographicCellPosition ((jio (RTSPlayerGameInput.getSelectedRtsFormInput this))) geographicMapCellPosition)
        Control.Monad.void (SelectedRTSLayersPlayerGameInput.setSelectedRTSLayer ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))) rtSLayer)
        Control.Monad.void (HumanRTSPlayerGameInput.updatePaintable this)
    pure ()


updatePaintable :: (JavaObjectClass this_) => this_ -> IO (())
updatePaintable object_ = jmethod object_ "updatePaintable" (\() -> (updatePaintable_impl (javaCast object_ :: HumanRTSPlayerGameInput))) ()

updatePaintable_super :: (JavaObjectClass this_) => this_ -> IO (())
updatePaintable_super object_ = (updatePaintable_impl (javaCast object_ :: HumanRTSPlayerGameInput))

updatePaintable_impl :: HumanRTSPlayerGameInput -> IO (())
updatePaintable_impl this = do
        list <- (SelectedRTSLayersPlayerGameInput.getSelectedBasicArrayList ((jio (RTSPlayerGameInput.getSelectedBuildingPlayerGameInput this))))
        if ((jio (BasicArrayList.size list)) > 1) then do
            let geographicMapCompositeInterface = (javaCast (jio (RTSPlayerGameInput.getGameCanvas this)) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
            let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
            Control.Monad.void (MultiSelectPaintable.setBasicColorP ((jget (this).multiSelectPaintable)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
            Control.Monad.void (MultiSelectPaintable.update ((jget (this).multiSelectPaintable)) list)
            Control.Monad.void (RTSLayerInfoPaintable.updateRTSLayerInfoSelection ((jio (RTSPlayerGameInput.getRTSLayerInfoPaintable this))) (jget (this).multiSelectPaintable))
        else if ((jio (BasicArrayList.size list)) == 1) then do
            let rtsLayer = (javaCast (jio (BasicArrayList.get list 0)) :: RTSLayer.RTSLayer)
            Control.Monad.void (RTSLayerInfoPaintable.updateRTSLayerInfoSelection ((jio (RTSPlayerGameInput.getRTSLayerInfoPaintable this))) (jio (RTSLayer.createHudPaintable rtsLayer)))
        else do
            Control.Monad.void (RTSLayerInfoPaintable.updateRTSLayerInfoInit ((jio (RTSPlayerGameInput.getRTSLayerInfoPaintable this))) (jio (NullInitUpdatePaintable.getInstance)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

paint_impl :: HumanRTSPlayerGameInput -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (RTSPlayerGameInput.paint_super this.base graphics)
        when (((jget (this).startPoint) /= (jget ((jio (PointFactory.getInstance))).zERO_ZERO)) && ((jget (this).endPoint) /= (jget ((jio (PointFactory.getInstance))).zERO_ZERO))) $ do
            Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).rED)))))
            rectX1 <- newIORef =<< (GPoint.getX ((jget (this).startPoint)))
            rectY1 <- newIORef =<< (GPoint.getY ((jget (this).startPoint)))
            rectX2 <- newIORef =<< (GPoint.getX ((jget (this).endPoint)))
            rectY2 <- newIORef =<< (GPoint.getY ((jget (this).endPoint)))
            when ((jget rectX1) > (jget rectX2)) $ do
                jset rectX2 ((jget rectX1))
                assignedValue <- (GPoint.getX ((jget (this).endPoint)))
                jset rectX1 (assignedValue)
            when ((jget rectY1) > (jget rectY2)) $ do
                jset rectY2 ((jget rectY1))
                assignedValue <- (GPoint.getY ((jget (this).endPoint)))
                jset rectY1 (assignedValue)
            Control.Monad.void (Graphics.drawRect graphics (jget rectX1) (jget rectY1) ((jget rectX2) - (jget rectX1)) ((jget rectY2) - (jget rectY1)))
        pure ()


onMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent object_ a1 = jmethod object_ "onMotionGestureEvent" (\() -> (onMotionGestureEvent_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

onMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_super object_ a1 = (onMotionGestureEvent_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

onMotionGestureEvent_impl :: HumanRTSPlayerGameInput -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_impl this motionGestureEvent = do
        Control.Monad.void (BasicArrayList.add ((jio (RTSPlayerGameInput.getMotionGestureInputList this))) motionGestureEvent)
        pure ()


onScrolledMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent object_ a1 = jmethod object_ "onScrolledMotionGestureEvent" (\() -> (onScrolledMotionGestureEvent_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

onScrolledMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_super object_ a1 = (onScrolledMotionGestureEvent_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

onScrolledMotionGestureEvent_impl :: HumanRTSPlayerGameInput -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_impl this motionGestureEvent = do
        pure ()


getSelectedRtsLayer :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getSelectedRtsLayer object_ = jmethod object_ "getSelectedRtsLayer" (\() -> (getSelectedRtsLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput))) ()

getSelectedRtsLayer_super :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getSelectedRtsLayer_super object_ = (getSelectedRtsLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput))

getSelectedRtsLayer_impl :: HumanRTSPlayerGameInput -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getSelectedRtsLayer_impl this = do
        pure ((jget (this).selectedRtsLayer))


setSelectedRtsLayer :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setSelectedRtsLayer object_ a1 = jmethod object_ "setSelectedRtsLayer" (\() -> (setSelectedRtsLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput))) () a1

setSelectedRtsLayer_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setSelectedRtsLayer_super object_ a1 = (setSelectedRtsLayer_impl (javaCast object_ :: HumanRTSPlayerGameInput)) a1

setSelectedRtsLayer_impl :: HumanRTSPlayerGameInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
setSelectedRtsLayer_impl this selectedRtsLayer = do
        jset (this).selectedRtsLayer (selectedRtsLayer)
        pure ()


