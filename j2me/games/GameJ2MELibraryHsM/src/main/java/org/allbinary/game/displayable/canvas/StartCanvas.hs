{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
-- package org.allbinary.game.displayable.canvas
module StartCanvas (module StartCanvas, module RunnableCanvas) where

import RunnableCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onEvent, onEvent_super, onEvent_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, getCustomCommands, getCustomCommands_super, getCustomCommands_impl, initCommands, initCommands_super, initCommands_impl, initPostPaint, initPostPaint_super, initPostPaint_impl, mediaInit, mediaInit_super, mediaInit_impl, itemStateChanged, itemStateChanged_super, itemStateChanged_impl, initMenu, initMenu_super, initMenu_impl, open, open_super, open_impl, close, close_super, close_impl, getSourceId, getSourceId_super, getSourceId_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyRepeated, keyRepeated_super, keyRepeated_impl, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, keyRepeatedByDevice, keyRepeatedByDevice_super, keyRepeatedByDevice_impl, addGameKeyEvent, addGameKeyEvent_super, addGameKeyEvent_impl, removeGameKeyEvent, removeGameKeyEvent_super, removeGameKeyEvent_impl, pause, pause_super, pause_impl, unPause, unPause_super, unPause_impl, isPausable, isPausable_super, isPausable_impl, isGameOver, isGameOver_super, isGameOver_impl, setLoadStateHashtable, setLoadStateHashtable_super, setLoadStateHashtable_impl, getLoadStateHashtable, getLoadStateHashtable_super, getLoadStateHashtable_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, setHighScoreSubmitted, setHighScoreSubmitted_super, setHighScoreSubmitted_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, processGameOver, processGameOver_super, processGameOver_impl, demoStateChange, demoStateChange_super, demoStateChange_impl, updateDemoState, updateDemoState_super, updateDemoState_impl, getNextRandom, getNextRandom_super, getNextRandom_impl, createGameLayerManager, createGameLayerManager_super, createGameLayerManager_impl, createRunnable, createRunnable_super, createRunnable_impl, createCanvas, createCanvas_super, createCanvas_impl, start, start_super, start_impl, preDemoProcess, preDemoProcess_super, preDemoProcess_impl, process, process_super, process_impl, startDemoGame, startDemoGame_super, startDemoGame_impl, processGame, processGame_super, processGame_impl, run, run_super, run_impl, setRunning, setRunning_super, setRunning_impl, end, end_super, end_impl, setGameState, setGameState_super, setGameState_impl, getGameState, getGameState_super, getGameState_impl, getState, getState_super, getState_impl, setState, setState_super, setState_impl, isHighScoreSubmitted, isHighScoreSubmitted_super, isHighScoreSubmitted_impl, getRealHighScoresPaintable, getRealHighScoresPaintable_super, getRealHighScoresPaintable_impl, setSpecialAnimationInterface, setSpecialAnimationInterface_super, setSpecialAnimationInterface_impl, getSpecialAnimationInterface, getSpecialAnimationInterface_super, getSpecialAnimationInterface_impl, setPaintableInterface, setPaintableInterface_super, setPaintableInterface_impl, getPaintableInterface, getPaintableInterface_super, getPaintableInterface_impl, setDefaultPaintableInterface, setDefaultPaintableInterface_super, setDefaultPaintableInterface_impl, getDefaultPaintableInterface, getDefaultPaintableInterface_super, getDefaultPaintableInterface_impl, getHighScoresFactoryInterface, getHighScoresFactoryInterface_super, getHighScoresFactoryInterface_impl, setMenuInputProcessor, setMenuInputProcessor_super, setMenuInputProcessor_impl, getMenuInputProcessor, getMenuInputProcessor_super, getMenuInputProcessor_impl, getMenuForm, getMenuForm_super, getMenuForm_impl, setMenuForm, setMenuForm_super, setMenuForm_impl, isInitialized, isInitialized_super, isInitialized_impl, getOverlayPaintable, getOverlayPaintable_super, getOverlayPaintable_impl, setBasicGameDemoPaintable, setBasicGameDemoPaintable_super, setBasicGameDemoPaintable_impl, getBasicGameDemoPaintable, getBasicGameDemoPaintable_super, getBasicGameDemoPaintable_impl, setTempWait, setTempWait_super, setTempWait_impl, getTempWait, getTempWait_super, getTempWait_impl, isSingleThread, isSingleThread_super, isSingleThread_impl, isRunningInAnotherThread, isRunningInAnotherThread_super, isRunningInAnotherThread_impl, getGameInitializationInterfaceFactoryInterface, getGameInitializationInterfaceFactoryInterface_super, getGameInitializationInterfaceFactoryInterface_impl, basicColorFactory, features, openGLFeatureFactory, myCommandsFactory, gameAdStateFactory, gameStateFactory, gameInputStrings, formUtil, basicGameDemoPaintable, specialAnimationInterface, paintedSpecialAnimationInterface, fullScreenUtil, highScoresHelper, realHighScoresPaintable, highScoresPaintable, state, timeDelayHelper, highScoresFactoryInterface, menuInputProcessor, menuForm, gameInitializationInterfaceFactoryInterface, initialized, defaultPaintableInterface, paintableInterface, overlayPaintable, tempWait, inputToGameKeyMapping, gameRunnable, progressPaintable, id, isSingleKeyRepeatableProcessing, nONE, gameKeyEventFactory, sET_STATE, bOT_GAME_STATS, baseGameStatistics)
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
import qualified FormUtil -- same package or java.lang
import qualified NoMenuInputProcessor -- same package or java.lang
import qualified BasicMenuInputProcessor -- same package or java.lang
import qualified NullWaitGameRunnable -- same package or java.lang
import qualified GameRunnable -- same package or java.lang
import qualified GameInputMappingCanvas -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified StdUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CanvasStrings -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Item -- javax.microedition.lcdui.Item
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified IndexedAnimationBehavior -- org.allbinary.animation.IndexedAnimationBehavior
import qualified SpecialAnimation -- org.allbinary.animation.special.SpecialAnimation
import qualified GameAdStateFactory -- org.allbinary.business.advertisement.GameAdStateFactory
import qualified BaseGameStatistics -- org.allbinary.canvas.BaseGameStatistics
import qualified CustomGameMenuUtil -- org.allbinary.canvas.CustomGameMenuUtil
import qualified FullScreenUtil -- org.allbinary.canvas.FullScreenUtil
import qualified GameStatisticsFactory -- org.allbinary.canvas.GameStatisticsFactory
import qualified RunnableCanvas -- org.allbinary.canvas.RunnableCanvas
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified BasicBuildGameInitializerFactory -- org.allbinary.game.init.BasicBuildGameInitializerFactory
import qualified GameInitializationUtil -- org.allbinary.game.init.GameInitializationUtil
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified DownGameKeyEventHandler -- org.allbinary.game.input.event.DownGameKeyEventHandler
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified GameKeyEventHandler -- org.allbinary.game.input.event.GameKeyEventHandler
import qualified UpGameKeyEventHandler -- org.allbinary.game.input.event.UpGameKeyEventHandler
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified SWTUtil -- org.allbinary.game.layer.SWTUtil
import qualified DemoGameMidlet -- org.allbinary.game.midlet.DemoGameMidlet
import qualified HighScoreCommands -- org.allbinary.game.score.HighScoreCommands
import qualified HighScores -- org.allbinary.game.score.HighScores
import qualified HighScoresFactoryInterface -- org.allbinary.game.score.HighScoresFactoryInterface
import qualified HighScoresHelper -- org.allbinary.game.score.HighScoresHelper
import qualified HighScoresPaintable -- org.allbinary.game.score.HighScoresPaintable
import qualified NullHighScoresSingletonFactory -- org.allbinary.game.score.NullHighScoresSingletonFactory
import qualified GameState -- org.allbinary.game.state.GameState
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified ResizableListenerHandler -- org.allbinary.graphics.ResizableListenerHandler
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified DisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
import qualified DisplayChangeEventListener -- org.allbinary.graphics.displayable.event.DisplayChangeEventListener
import qualified FormType -- org.allbinary.graphics.form.FormType
import qualified FormTypeFactory -- org.allbinary.graphics.form.FormTypeFactory
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified CurrentDisplayableFactory -- org.allbinary.graphics.opengles.CurrentDisplayableFactory
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified OpenGLThreadUtil -- org.allbinary.graphics.opengles.OpenGLThreadUtil
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified StatePaintable -- org.allbinary.graphics.paint.StatePaintable
import qualified StatePaintableFactory -- org.allbinary.graphics.paint.StatePaintableFactory
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified InApplicationPurchaseFactory -- org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory
import qualified LockableFeature -- org.allbinary.logic.system.security.licensing.LockableFeature
import qualified LockableFeatureFactory -- org.allbinary.logic.system.security.licensing.LockableFeatureFactory
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified AllBinaryMediaManager -- org.allbinary.media.audio.AllBinaryMediaManager
import qualified EarlySoundsFactory -- org.allbinary.media.audio.EarlySoundsFactory
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified GameCanvasRunnableInterface
import qualified MenuListener

-- implements GameCanvasRunnableInterface
-- implements MenuListener
-- implements DisplayChangeEventListener
data StartCanvas = StartCanvas
    { header_ :: JavaHeader
    , base :: RunnableCanvas.RunnableCanvas
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , features :: IORef (Features.Features)
    , openGLFeatureFactory :: IORef (OpenGLFeatureFactory.OpenGLFeatureFactory)
    , myCommandsFactory :: IORef (MyCommandsFactory.MyCommandsFactory)
    , gameAdStateFactory :: IORef (GameAdStateFactory.GameAdStateFactory)
    , gameStateFactory :: IORef (GameStateFactory.GameStateFactory)
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    , formUtil :: IORef (FormUtil.FormUtil)
    , basicGameDemoPaintable :: IORef (StatePaintable.StatePaintable)
    , specialAnimationInterface :: IORef (SpecialAnimation.SpecialAnimation)
    , paintedSpecialAnimationInterface :: IORef (Animation.Animation)
    , fullScreenUtil :: IORef (FullScreenUtil.FullScreenUtil)
    , highScoresHelper :: IORef (HighScoresHelper.HighScoresHelper)
    , realHighScoresPaintable :: IORef (HighScoresPaintable.HighScoresPaintable)
    , highScoresPaintable :: IORef (Paintable.Paintable)
    , state :: IORef (Int)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , highScoresFactoryInterface :: IORef (HighScoresFactoryInterface.HighScoresFactoryInterface)
    , menuInputProcessor :: IORef (BasicMenuInputProcessor.BasicMenuInputProcessor)
    , menuForm :: IORef (ScrollSelectionForm.ScrollSelectionForm)
    , gameInitializationInterfaceFactoryInterface :: IORef (BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory)
    , initialized :: IORef (Bool)
    , defaultPaintableInterface :: IORef (Paintable.Paintable)
    , paintableInterface :: IORef (PaintableInterface.PaintableInterface)
    , overlayPaintable :: IORef (InitUpdatePaintable.InitUpdatePaintable)
    , tempWait :: IORef (Int)
    , inputToGameKeyMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    , gameRunnable :: IORef (GameRunnable.GameRunnable)
    , progressPaintable :: IORef (PaintableInterface.PaintableInterface)
    , isSingleKeyRepeatableProcessing :: IORef (Bool)
    , nONE :: IORef (GameKey.GameKey)
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    , sET_STATE :: IORef (String)
    , baseGameStatistics :: IORef (BaseGameStatistics.BaseGameStatistics)
    }

instance JavaNull StartCanvas where
    javaNull = javaNullRecord "StartCanvas"

instance JavaEquals StartCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StartCanvas where
    (==) = jrecordEquals

instance JavaObjectClass StartCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

id = 0

bOT_GAME_STATS = "Bot Game Statistics: "

newRecord_ :: IO StartCanvas
newRecord_ = do
    base <- RunnableCanvas.newRecord_
    let header_ = base.header_
    basicColorFactory <- newIORef javaNull
    features <- newIORef javaNull
    openGLFeatureFactory <- newIORef javaNull
    myCommandsFactory <- newIORef javaNull
    gameAdStateFactory <- newIORef javaNull
    gameStateFactory <- newIORef javaNull
    gameInputStrings <- newIORef javaNull
    formUtil <- newIORef javaNull
    basicGameDemoPaintable <- newIORef javaNull
    specialAnimationInterface <- newIORef javaNull
    paintedSpecialAnimationInterface <- newIORef javaNull
    fullScreenUtil <- newIORef javaNull
    highScoresHelper <- newIORef javaNull
    realHighScoresPaintable <- newIORef javaNull
    highScoresPaintable <- newIORef javaNull
    state <- newIORef 0
    timeDelayHelper <- newIORef javaNull
    highScoresFactoryInterface <- newIORef javaNull
    menuInputProcessor <- newIORef javaNull
    menuForm <- newIORef javaNull
    gameInitializationInterfaceFactoryInterface <- newIORef javaNull
    initialized <- newIORef False
    defaultPaintableInterface <- newIORef javaNull
    paintableInterface <- newIORef javaNull
    overlayPaintable <- newIORef javaNull
    tempWait <- newIORef 0
    inputToGameKeyMapping <- newIORef javaNull
    gameRunnable <- newIORef javaNull
    progressPaintable <- newIORef javaNull
    isSingleKeyRepeatableProcessing <- newIORef False
    nONE <- newIORef javaNull
    gameKeyEventFactory <- newIORef javaNull
    sET_STATE <- newIORef ""
    baseGameStatistics <- newIORef javaNull
    let this = StartCanvas header_ base basicColorFactory features openGLFeatureFactory myCommandsFactory gameAdStateFactory gameStateFactory gameInputStrings formUtil basicGameDemoPaintable specialAnimationInterface paintedSpecialAnimationInterface fullScreenUtil highScoresHelper realHighScoresPaintable highScoresPaintable state timeDelayHelper highScoresFactoryInterface menuInputProcessor menuForm gameInitializationInterfaceFactoryInterface initialized defaultPaintableInterface paintableInterface overlayPaintable tempWait inputToGameKeyMapping gameRunnable progressPaintable isSingleKeyRepeatableProcessing nONE gameKeyEventFactory sET_STATE baseGameStatistics
    jregisterLevel header_ this
    GameCanvasRunnableInterface.registerInterface_ header_
    MenuListener.registerInterface_ header_
    DisplayChangeEventListener.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "getCustomCommands" (\() -> getCustomCommands_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "initPostPaint" (\() -> initPostPaint_impl this)
    jregisterMethod header_ "mediaInit" (\() -> mediaInit_impl this)
    jregisterMethod header_ "itemStateChanged" (\() -> itemStateChanged_impl this)
    jregisterMethod header_ "initMenu" (\() -> initMenu_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyRepeated" (\() -> keyRepeated_impl this)
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    jregisterMethod header_ "keyRepeatedByDevice" (\() -> keyRepeatedByDevice_impl this)
    jregisterMethod header_ "addGameKeyEvent" (\() -> addGameKeyEvent_impl this)
    jregisterMethod header_ "removeGameKeyEvent" (\() -> removeGameKeyEvent_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "unPause" (\() -> unPause_impl this)
    jregisterMethod header_ "isPausable" (\() -> isPausable_impl this)
    jregisterMethod header_ "isGameOver" (\() -> isGameOver_impl this)
    jregisterMethod header_ "setLoadStateHashtable" (\() -> setLoadStateHashtable_impl this)
    jregisterMethod header_ "getLoadStateHashtable" (\() -> getLoadStateHashtable_impl this)
    jregisterMethod header_ "getCurrentStateHashtable" (\() -> getCurrentStateHashtable_impl this)
    jregisterMethod header_ "setHighScoreSubmitted" (\() -> setHighScoreSubmitted_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "processGameOver" (\() -> processGameOver_impl this)
    jregisterMethod header_ "demoStateChange" (\() -> demoStateChange_impl this)
    jregisterMethod header_ "updateDemoState" (\() -> updateDemoState_impl this)
    jregisterMethod header_ "getNextRandom" (\() -> getNextRandom_impl this)
    jregisterMethod header_ "createGameLayerManager" (\() -> createGameLayerManager_impl this)
    jregisterMethod header_ "createRunnable" (\() -> createRunnable_impl this)
    jregisterMethod header_ "createCanvas" (\() -> createCanvas_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "preDemoProcess" (\() -> preDemoProcess_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "startDemoGame" (\() -> startDemoGame_impl this)
    jregisterMethod header_ "processGame" (\() -> processGame_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    jregisterMethod header_ "setGameState" (\() -> setGameState_impl this)
    jregisterMethod header_ "getGameState" (\() -> getGameState_impl this)
    jregisterMethod header_ "getState" (\() -> getState_impl this)
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    jregisterMethod header_ "isHighScoreSubmitted" (\() -> isHighScoreSubmitted_impl this)
    jregisterMethod header_ "getRealHighScoresPaintable" (\() -> getRealHighScoresPaintable_impl this)
    jregisterMethod header_ "setSpecialAnimationInterface" (\() -> setSpecialAnimationInterface_impl this)
    jregisterMethod header_ "getSpecialAnimationInterface" (\() -> getSpecialAnimationInterface_impl this)
    jregisterMethod header_ "setPaintableInterface" (\() -> setPaintableInterface_impl this)
    jregisterMethod header_ "getPaintableInterface" (\() -> getPaintableInterface_impl this)
    jregisterMethod header_ "setDefaultPaintableInterface" (\() -> setDefaultPaintableInterface_impl this)
    jregisterMethod header_ "getDefaultPaintableInterface" (\() -> getDefaultPaintableInterface_impl this)
    jregisterMethod header_ "getHighScoresFactoryInterface" (\() -> getHighScoresFactoryInterface_impl this)
    jregisterMethod header_ "setMenuInputProcessor" (\() -> setMenuInputProcessor_impl this)
    jregisterMethod header_ "getMenuInputProcessor" (\() -> getMenuInputProcessor_impl this)
    jregisterMethod header_ "getMenuForm" (\() -> getMenuForm_impl this)
    jregisterMethod header_ "setMenuForm" (\() -> setMenuForm_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "getOverlayPaintable" (\() -> getOverlayPaintable_impl this)
    jregisterMethod header_ "setBasicGameDemoPaintable" (\() -> setBasicGameDemoPaintable_impl this)
    jregisterMethod header_ "getBasicGameDemoPaintable" (\() -> getBasicGameDemoPaintable_impl this)
    jregisterMethod header_ "setTempWait" (\() -> setTempWait_impl this)
    jregisterMethod header_ "getTempWait" (\() -> getTempWait_impl this)
    jregisterMethod header_ "isSingleThread" (\() -> isSingleThread_impl this)
    jregisterMethod header_ "isRunningInAnotherThread" (\() -> isRunningInAnotherThread_impl this)
    jregisterMethod header_ "getGameInitializationInterfaceFactoryInterface" (\() -> getGameInitializationInterfaceFactoryInterface_impl this)
    pure this

initFields_ :: StartCanvas -> IO ()
initFields_ this = do
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.features =<< (Features.getInstance)
    jset this.openGLFeatureFactory =<< (OpenGLFeatureFactory.getInstance)
    jset this.myCommandsFactory =<< (MyCommandsFactory.getInstance)
    jset this.gameAdStateFactory =<< (GameAdStateFactory.getInstance)
    jset this.gameStateFactory =<< (GameStateFactory.getInstance)
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    jset this.formUtil =<< (FormUtil.getInstance)
    jset this.basicGameDemoPaintable =<< (StatePaintableFactory.getInstance)
    jset this.specialAnimationInterface =<< (SpecialAnimation.getInstance)
    jset this.paintedSpecialAnimationInterface =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SpecialAnimation.getInstance))
    jset this.fullScreenUtil =<< (FullScreenUtil.getInstance)
    jset this.highScoresHelper =<< (HighScoresHelper.new_)
    jset this.realHighScoresPaintable =<< (HighScoresPaintable.new_)
    jset this.highScoresPaintable =<< (NullPaintable.getInstance)
    jset this.state (0)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 6000)
    jset this.highScoresFactoryInterface (javaNull)
    jset this.menuInputProcessor =<< (fmap (\value_ -> javaCast value_ :: BasicMenuInputProcessor.BasicMenuInputProcessor) (NoMenuInputProcessor.getInstance))
    jset this.menuForm =<< (ScrollSelectionForm.getNullScrollSelectionForm)
    jset this.gameInitializationInterfaceFactoryInterface (javaNull)
    jset this.initialized (False)
    jset this.defaultPaintableInterface =<< (NullPaintable.getInstance)
    jset this.paintableInterface =<< (fmap (\value_ -> javaCast value_ :: PaintableInterface.PaintableInterface) (NullPaintable.getInstance))
    jset this.overlayPaintable (javaNull)
    jset this.tempWait ((jget ((jio (NullWaitGameRunnable.getInstance))).wAIT))
    jset this.inputToGameKeyMapping =<< (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance)))))))
    jset this.gameRunnable =<< (NullWaitGameRunnable.getInstance)
    jset this.progressPaintable =<< (ProgressCanvasFactory.getLazyInstance)
    jset this.isSingleKeyRepeatableProcessing =<< (Features.isFeature ((jget (this).features)) (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_REPEAT_PRESS))
    jset this.nONE ((jget ((jio (GameKeyFactory.getInstance))).nONE))
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    jset this.sET_STATE ("setState")
    jset this.baseGameStatistics =<< (fmap (\value_ -> javaCast value_ :: BaseGameStatistics.BaseGameStatistics) (GameStatisticsFactory.getInstance))
    pure ()

new_7 :: AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> HighScoresFactoryInterface.HighScoresFactoryInterface -> Paintable.Paintable -> InitUpdatePaintable.InitUpdatePaintable -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> Bool -> IO StartCanvas
new_7 abeClientInformation commandListener highScoresFactoryInterface paintable overlayPaintable gameInitializationInterfaceFactoryInterface isContinue = do
    this <- newRecord_
    init_7 this abeClientInformation commandListener highScoresFactoryInterface paintable overlayPaintable gameInitializationInterfaceFactoryInterface isContinue
    pure this

init_7 :: StartCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> HighScoresFactoryInterface.HighScoresFactoryInterface -> Paintable.Paintable -> InitUpdatePaintable.InitUpdatePaintable -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> Bool -> IO ()
init_7 this abeClientInformation commandListener highScoresFactoryInterface paintable overlayPaintable gameInitializationInterfaceFactoryInterface isContinue = do
        RunnableCanvas.init_3 this.base (commandListener) (jget ((jio (CurrentDisplayableFactory.getInstance))).dEFAULT_CHILD_NAME_LIST) (True)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RunnableCanvas.setWait this (jget ((jio (NullWaitGameRunnable.getInstance))).wAIT))
        jset (this).gameInitializationInterfaceFactoryInterface (gameInitializationInterfaceFactoryInterface)
        Control.Monad.void (GameInitializationUtil.initDemo ((jio (GameInitializationUtil.getInstance))) abeClientInformation (javaCast this) gameInitializationInterfaceFactoryInterface)
        Control.Monad.void (ResizableListenerHandler.fireEvent ((jio (ResizableListenerHandler.getInstance))) False)
        jset (this).overlayPaintable (overlayPaintable)
        jset (this).highScoresFactoryInterface (highScoresFactoryInterface)
        Control.Monad.void (StartCanvas.setDefaultPaintableInterface this paintable)
        Control.Monad.void (StartCanvas.setPaintableInterface this (javaCast (jio (StartCanvas.getDefaultPaintableInterface this))))
        when isContinue $ do
            Control.Monad.void (RunnableCanvas.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).cONTINUE_COMMAND))
        when (jio (ChangedGameFeatureListener.isChangedFeature ((jio (ChangedGameFeatureListener.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).sOUND)))) $ do
            Control.Monad.void (StartCanvas.mediaInit this)
        Control.Monad.void (DisplayChangeEventHandler.addListenerInterface ((jio (DisplayChangeEventHandler.getInstance))) (javaCast this))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: StartCanvas))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: StartCanvas)) a1

onEvent_impl :: StartCanvas -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: StartCanvas))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: StartCanvas)) a1

onDisplayChangeEvent_impl :: StartCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.canvasStrings)).oN_DISPLAY_CHANGE_EVENT) e)
            ) $ do
            scrollSelectionForm <- (StartCanvas.getMenuForm this)
            when (scrollSelectionForm /= javaNull) $ do
                formType <- (FormTypeFactory.getFormType ((jio (FormTypeFactory.getInstance))))
                rectangle <- (FormUtil.createFormRectangle ((jget (this).formUtil)))
                Control.Monad.void (ScrollSelectionForm.init scrollSelectionForm rectangle formType)
            Control.Monad.void (InitUpdatePaintable.init ((jget (this).overlayPaintable)))
        pure ()


getCustomCommands :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
getCustomCommands object_ = jmethod object_ "getCustomCommands" (\() -> (getCustomCommands_impl (javaCast object_ :: StartCanvas))) ()

getCustomCommands_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
getCustomCommands_super object_ = (getCustomCommands_impl (javaCast object_ :: StartCanvas))

getCustomCommands_impl :: StartCanvas -> IO (JavaArray (Any.Any))
getCustomCommands_impl this = do
    javaCatchReturn $ do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        if (jio (J2MEUtil.isHTML)) then do
            let commandArray = (jarrayFromList [(jget (gameCommandsFactory).sTART_COMMAND), (jget ((jio (HighScoreCommands.getInstance))).dISPLAY), GameInputMappingCanvas.dISPLAY, (jget (gameCommandsFactory).dISPLAY_ABOUT)])
            javaReturn (commandArray)
        else do
            commandList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add commandList (jget (gameCommandsFactory).sTART_COMMAND))
            inApplicationPurchaseFactory <- (InApplicationPurchaseFactory.getInstance)
            when (jio (InApplicationPurchaseFactory.isEnabled inApplicationPurchaseFactory)) $ do
                list <- (LockableFeatureFactory.getList ((jio (LockableFeatureFactory.getInstance))))
                when (((jio (BasicArrayList.size list)) > 0) && (Prelude.not (jio (InApplicationPurchaseFactory.isPurchased inApplicationPurchaseFactory (javaCast (jio (BasicArrayList.get list 0)) :: LockableFeature.LockableFeature))))) $ do
                    Control.Monad.void (BasicArrayList.add commandList (jget (gameCommandsFactory).bUY_COMMAND))
            Control.Monad.void (BasicArrayList.add commandList (jget ((jio (HighScoreCommands.getInstance))).dISPLAY))
            handle (\(e :: JavaException) -> do
                pure ()
                ) $ do
                isOverScan <- (GenericOperatingSystem.isOverScan ((jio (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance)))))))
                if (jget SWTUtil.isSWT) then do
                    Control.Monad.void (BasicArrayList.add commandList (GameInputMappingCanvas.dISPLAY))
                else when (Prelude.not isOverScan) $ do
                    Control.Monad.void (BasicArrayList.add commandList (jget (gameCommandsFactory).dISPLAY_OPTIONS))
                    Control.Monad.void (BasicArrayList.add commandList (jget (gameCommandsFactory).dISPLAY_LOAD_FORM))
                    Control.Monad.void (BasicArrayList.add commandList (GameInputMappingCanvas.dISPLAY))
            Control.Monad.void (BasicArrayList.add commandList (jget (gameCommandsFactory).dISPLAY_ABOUT))
            commandArray <- (BasicArrayList.toArray commandList)
            javaReturn (commandArray)


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: StartCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: StartCanvas)) a1

initCommands_impl :: StartCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (RunnableCanvas.removeAllCommands this)
        commandArray <- (StartCanvas.getCustomCommands this)
        let size = (jlength commandArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (RunnableCanvas.addCommand this (javaCast (jindex commandArray (index)) :: Command.Command))
        Control.Monad.void (CustomGameMenuUtil.add (javaCast this))
        Control.Monad.void (RunnableCanvas.setCommandListener this cmdListener)
        pure ()


-- throws Exception
initPostPaint :: (JavaObjectClass this_) => this_ -> IO (())
initPostPaint object_ = jmethod object_ "initPostPaint" (\() -> (initPostPaint_impl (javaCast object_ :: StartCanvas))) ()

initPostPaint_super :: (JavaObjectClass this_) => this_ -> IO (())
initPostPaint_super object_ = (initPostPaint_impl (javaCast object_ :: StartCanvas))

initPostPaint_impl :: StartCanvas -> IO (())
initPostPaint_impl this = do
        pure ()


-- throws Exception
mediaInit :: (JavaObjectClass this_) => this_ -> IO (())
mediaInit object_ = jmethod object_ "mediaInit" (\() -> (mediaInit_impl (javaCast object_ :: StartCanvas))) ()

mediaInit_super :: (JavaObjectClass this_) => this_ -> IO (())
mediaInit_super object_ = (mediaInit_impl (javaCast object_ :: StartCanvas))

mediaInit_impl :: StartCanvas -> IO (())
mediaInit_impl this = do
        Control.Monad.void (AllBinaryMediaManager.init (javaCast (jio (EarlySoundsFactory.getInstance))))
        pure ()


itemStateChanged :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged object_ a1 = jmethod object_ "itemStateChanged" (\() -> (itemStateChanged_impl (javaCast object_ :: StartCanvas))) () a1

itemStateChanged_super :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged_super object_ a1 = (itemStateChanged_impl (javaCast object_ :: StartCanvas)) a1

itemStateChanged_impl :: StartCanvas -> Item.Item -> IO (())
itemStateChanged_impl this item = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED) this)
        pure ()


-- throws Exception
initMenu :: (JavaObjectClass this_) => this_ -> IO (())
initMenu object_ = jmethod object_ "initMenu" (\() -> (initMenu_impl (javaCast object_ :: StartCanvas))) ()

initMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
initMenu_super object_ = (initMenu_impl (javaCast object_ :: StartCanvas))

initMenu_impl :: StartCanvas -> IO (())
initMenu_impl this = do
        Control.Monad.void (StartCanvas.close this)
        Control.Monad.void (StartCanvas.open this)
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: StartCanvas))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: StartCanvas))

open_impl :: StartCanvas -> IO (())
open_impl this = do
        Control.Monad.void (BasicMotionGesturesHandler.addListenerInterface ((jio (BasicMotionGesturesHandler.getInstance))) (javaCast (jio (StartCanvas.getMenuInputProcessor this))))
        Control.Monad.void (GameKeyEventHandler.addListener ((jio (GameKeyEventHandler.getInstance))) (javaCast (jio (StartCanvas.getMenuInputProcessor this))))
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: StartCanvas))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: StartCanvas))

close_impl :: StartCanvas -> IO (())
close_impl this = do
        Control.Monad.void (BasicMotionGesturesHandler.removeListener ((jio (BasicMotionGesturesHandler.getInstance))) (javaCast (jio (StartCanvas.getMenuInputProcessor this))))
        Control.Monad.void (GameKeyEventHandler.removeListener ((jio (GameKeyEventHandler.getInstance))) (javaCast (jio (StartCanvas.getMenuInputProcessor this))))
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: StartCanvas))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: StartCanvas))

getSourceId_impl :: StartCanvas -> IO (Int)
getSourceId_impl this = do
        pure (StartCanvas.id)


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: StartCanvas))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: StartCanvas)) a1

keyPressed_impl :: StartCanvas -> Int -> IO (())
keyPressed_impl this keyCode = do
        Control.Monad.void (StartCanvas.keyPressedByDevice this keyCode 0)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: StartCanvas))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: StartCanvas)) a1

keyReleased_impl :: StartCanvas -> Int -> IO (())
keyReleased_impl this keyCode = do
        Control.Monad.void (StartCanvas.keyReleasedByDevice this keyCode 0)
        pure ()


keyRepeated :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated object_ a1 = jmethod object_ "keyRepeated" (\() -> (keyRepeated_impl (javaCast object_ :: StartCanvas))) () a1

keyRepeated_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated_super object_ a1 = (keyRepeated_impl (javaCast object_ :: StartCanvas)) a1

keyRepeated_impl :: StartCanvas -> Int -> IO (())
keyRepeated_impl this keyCode = do
        Control.Monad.void (StartCanvas.keyRepeatedByDevice this keyCode 0)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: StartCanvas))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: StartCanvas)) a1 a2

keyPressedByDevice_impl :: StartCanvas -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (StartCanvas.addGameKeyEvent this keyCode False)
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: StartCanvas))) () a1 a2

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 = (keyReleasedByDevice_impl (javaCast object_ :: StartCanvas)) a1 a2

keyReleasedByDevice_impl :: StartCanvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (StartCanvas.removeGameKeyEvent this keyCode False)
        pure ()


keyRepeatedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice object_ a1 a2 = jmethod object_ "keyRepeatedByDevice" (\() -> (keyRepeatedByDevice_impl (javaCast object_ :: StartCanvas))) () a1 a2

keyRepeatedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice_super object_ a1 a2 = (keyRepeatedByDevice_impl (javaCast object_ :: StartCanvas)) a1 a2

keyRepeatedByDevice_impl :: StartCanvas -> Int -> Int -> IO (())
keyRepeatedByDevice_impl this keyCode deviceId = do
        when (jget (this).isSingleKeyRepeatableProcessing) $ do
            Control.Monad.void (StartCanvas.addGameKeyEvent this keyCode True)
        pure ()


addGameKeyEvent :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
addGameKeyEvent object_ a1 a2 = jmethod object_ "addGameKeyEvent" (\() -> (addGameKeyEvent_impl (javaCast object_ :: StartCanvas))) () a1 a2

addGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
addGameKeyEvent_super object_ a1 a2 = (addGameKeyEvent_impl (javaCast object_ :: StartCanvas)) a1 a2

addGameKeyEvent_impl :: StartCanvas -> Int -> Bool -> IO (())
addGameKeyEvent_impl this keyCode repeated = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) "Key Event Error" this (jget ((jget (this).gameInputStrings)).aDD_KEY_EVENT) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).inputToGameKeyMapping)) this keyCode)
            if (gameKey /= (jget (this).nONE)) then do
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) (javaCast this) (javaCast gameKey))
                Control.Monad.void (DownGameKeyEventHandler.fireEvent ((jio (DownGameKeyEventHandler.getInstance))) (javaCast gameKeyEvent))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameInputStrings)).nO_KEY)))) keyCode))))) this (jget ((jget (this).gameInputStrings)).aDD_KEY_EVENT))
        pure ()


removeGameKeyEvent :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
removeGameKeyEvent object_ a1 a2 = jmethod object_ "removeGameKeyEvent" (\() -> (removeGameKeyEvent_impl (javaCast object_ :: StartCanvas))) () a1 a2

removeGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
removeGameKeyEvent_super object_ a1 a2 = (removeGameKeyEvent_impl (javaCast object_ :: StartCanvas)) a1 a2

removeGameKeyEvent_impl :: StartCanvas -> Int -> Bool -> IO (())
removeGameKeyEvent_impl this keyCode repeated = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) "Key Event Error" this (jget ((jget (this).gameInputStrings)).rEMOVE_KEY_EVENT) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).inputToGameKeyMapping)) this keyCode)
            if (gameKey /= (jget (this).nONE)) then do
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) (javaCast this) (javaCast gameKey))
                Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jio (UpGameKeyEventHandler.getInstance))) (javaCast gameKeyEvent))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameInputStrings)).nO_KEY)))) keyCode))))) this (jget ((jget (this).gameInputStrings)).rEMOVE_KEY_EVENT))
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: StartCanvas))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: StartCanvas))

pause_impl :: StartCanvas -> IO (())
pause_impl this = do
        Control.Monad.void (StartCanvas.close this)
        Control.Monad.void (RunnableCanvas.setPaused this True)
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: StartCanvas))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: StartCanvas))

unPause_impl :: StartCanvas -> IO (())
unPause_impl this = do
        Control.Monad.void (StartCanvas.open this)
        Control.Monad.void (RunnableCanvas.setPaused this False)
        pure ()


isPausable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPausable object_ = jmethod object_ "isPausable" (\() -> (isPausable_impl (javaCast object_ :: StartCanvas))) ()

isPausable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPausable_super object_ = (isPausable_impl (javaCast object_ :: StartCanvas))

isPausable_impl :: StartCanvas -> IO (Bool)
isPausable_impl this = do
    javaCatchReturn $ do
        if ((jio (CurrentDisplayableFactory.getUsedRunnable ((jio (CurrentDisplayableFactory.getInstance))))) == (jio (NullWaitGameRunnable.getInstance))) then do
            javaReturn (True)
        else do
            javaReturn (False)


isGameOver :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver object_ = jmethod object_ "isGameOver" (\() -> (isGameOver_impl (javaCast object_ :: StartCanvas))) ()

isGameOver_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver_super object_ = (isGameOver_impl (javaCast object_ :: StartCanvas))

isGameOver_impl :: StartCanvas -> IO (Bool)
isGameOver_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))) " since not a game"))))) this "isGameOver")
        pure (False)


-- throws Exception
setLoadStateHashtable :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable object_ a1 = jmethod object_ "setLoadStateHashtable" (\() -> (setLoadStateHashtable_impl (javaCast object_ :: StartCanvas))) () a1

setLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_super object_ a1 = (setLoadStateHashtable_impl (javaCast object_ :: StartCanvas)) a1

setLoadStateHashtable_impl :: StartCanvas -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_impl this hashtable = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Trying to continue a demo lol - only continue a game canvas not the demo" this "setLoadStateHashtable")
        pure ()


-- throws Exception
getLoadStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable object_ = jmethod object_ "getLoadStateHashtable" (\() -> (getLoadStateHashtable_impl (javaCast object_ :: StartCanvas))) ()

getLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_super object_ = (getLoadStateHashtable_impl (javaCast object_ :: StartCanvas))

getLoadStateHashtable_impl :: StartCanvas -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Trying to continue a demo lol - only continue a game canvas not the demo" this "getLoadStateHashtable")
        pure ((jget ((jget (this).base.stdUtil)).nULL_TABLE))


-- throws Exception
getCurrentStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable object_ = jmethod object_ "getCurrentStateHashtable" (\() -> (getCurrentStateHashtable_impl (javaCast object_ :: StartCanvas))) ()

getCurrentStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_super object_ = (getCurrentStateHashtable_impl (javaCast object_ :: StartCanvas))

getCurrentStateHashtable_impl :: StartCanvas -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Trying to save the AI lol" this "getCurrentStateHashtable")
        pure ((jget ((jget (this).base.stdUtil)).nULL_TABLE))


setHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted object_ a1 = jmethod object_ "setHighScoreSubmitted" (\() -> (setHighScoreSubmitted_impl (javaCast object_ :: StartCanvas))) () a1

setHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted_super object_ a1 = (setHighScoreSubmitted_impl (javaCast object_ :: StartCanvas)) a1

setHighScoreSubmitted_impl :: StartCanvas -> Bool -> IO (())
setHighScoreSubmitted_impl this isNotUsed = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: StartCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: StartCanvas)) a1

paint_impl :: StartCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (PaintableInterface.paint ((jget (this).paintableInterface)) graphics)
        Control.Monad.void (Animation.paintXY ((jget (this).paintedSpecialAnimationInterface)) graphics 0 0)
        Control.Monad.void (Paintable.paint ((jget (this).highScoresPaintable)) graphics)
        Control.Monad.void (StatePaintable.paint ((jio (StartCanvas.getBasicGameDemoPaintable this))) graphics)
        Control.Monad.void (InitUpdatePaintable.paint ((jget (this).overlayPaintable)) graphics)
        Control.Monad.void (PaintableInterface.paint ((jget (this).progressPaintable)) graphics)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: StartCanvas))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: StartCanvas)) a1

paintThreed_impl :: StartCanvas -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        Control.Monad.void (PaintableInterface.paintThreed ((jget (this).paintableInterface)) graphics)
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).paintedSpecialAnimationInterface)) graphics 0 0 0)
        pure ()


processGameOver :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver object_ = jmethod object_ "processGameOver" (\() -> (processGameOver_impl (javaCast object_ :: StartCanvas))) ()

processGameOver_super :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver_super object_ = (processGameOver_impl (javaCast object_ :: StartCanvas))

processGameOver_impl :: StartCanvas -> IO (())
processGameOver_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Not Implemented since not a game" this "setGameOver")
        pure ()


demoStateChange :: (JavaObjectClass this_) => this_ -> IO (())
demoStateChange object_ = jmethod object_ "demoStateChange" (\() -> (demoStateChange_impl (javaCast object_ :: StartCanvas))) ()

demoStateChange_super :: (JavaObjectClass this_) => this_ -> IO (())
demoStateChange_super object_ = (demoStateChange_impl (javaCast object_ :: StartCanvas))

demoStateChange_impl :: StartCanvas -> IO (())
demoStateChange_impl this = do
        newState <- newIORef (((jget (this).state) + 1))
        if ((jget newState) > 2) then do
            jset newState (0)
        else when ((jget newState) == 2) $ do
            if (Prelude.not (jio (HighScoresHelper.isAnyHighScores ((jget (this).highScoresHelper))))) then do
                jset newState (0)
            else do
                highScores <- (HighScoresHelper.getNextHighScores ((jget (this).highScoresHelper)))
                if (highScores == (jio (NullHighScoresSingletonFactory.getInstance))) then do
                    jset newState (0)
                else do
                    Control.Monad.void (HighScoresPaintable.setHighScores ((jio (StartCanvas.getRealHighScoresPaintable this))) highScores)
        Control.Monad.void (StartCanvas.setState this (jget newState))
        Control.Monad.void (StartCanvas.updateDemoState this)
        pure ()


updateDemoState :: (JavaObjectClass this_) => this_ -> IO (())
updateDemoState object_ = jmethod object_ "updateDemoState" (\() -> (updateDemoState_impl (javaCast object_ :: StartCanvas))) ()

updateDemoState_super :: (JavaObjectClass this_) => this_ -> IO (())
updateDemoState_super object_ = (updateDemoState_impl (javaCast object_ :: StartCanvas))

updateDemoState_impl :: StartCanvas -> IO (())
updateDemoState_impl this = do
        Control.Monad.void (PreLogUtil.put (javaToString (jio (SmallIntegerSingletonFactory.createInstance ((jio (SmallIntegerSingletonFactory.getInstance))) (jget (this).state)))) this (jget (this).sET_STATE))
        Control.Monad.void (StatePaintable.setState ((jio (StartCanvas.getBasicGameDemoPaintable this))) (jget (this).state))
        if ((jget (this).state) == 0) then do
            assignedValue <- (NullPaintable.getInstance)
            jset (this).highScoresPaintable (assignedValue)
            assignedValue <- (StartCanvas.getSpecialAnimationInterface this)
            jset (this).paintedSpecialAnimationInterface (assignedValue)
            Control.Monad.void (SpecialAnimation.reset ((jio (StartCanvas.getSpecialAnimationInterface this))))
        else if ((jget (this).state) == 1) then do
            assignedValue <- (SpecialAnimation.getInstance)
            jset (this).paintedSpecialAnimationInterface (assignedValue)
        else when ((jget (this).state) == 2) $ do
            assignedValue <- (StartCanvas.getRealHighScoresPaintable this)
            jset (this).highScoresPaintable (assignedValue)
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
        Control.Monad.void (GameAdState.processPageAdState gameAdState)
        pure ()


-- throws Exception
getNextRandom :: (JavaObjectClass this_) => this_ -> IO (Int)
getNextRandom object_ = jmethod object_ "getNextRandom" (\() -> (getNextRandom_impl (javaCast object_ :: StartCanvas))) ()

getNextRandom_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNextRandom_super object_ = (getNextRandom_impl (javaCast object_ :: StartCanvas))

getNextRandom_impl :: StartCanvas -> IO (Int)
getNextRandom_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
createGameLayerManager :: (JavaObjectClass this_) => this_ -> Int -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
createGameLayerManager object_ a1 = jmethod object_ "createGameLayerManager" (\() -> (createGameLayerManager_impl (javaCast object_ :: StartCanvas))) () a1

createGameLayerManager_super :: (JavaObjectClass this_) => this_ -> Int -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
createGameLayerManager_super object_ a1 = (createGameLayerManager_impl (javaCast object_ :: StartCanvas)) a1

createGameLayerManager_impl :: StartCanvas -> Int -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
createGameLayerManager_impl this randomValue = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
createRunnable :: (JavaObjectClass this_) => this_ -> Int -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createRunnable object_ a1 = jmethod object_ "createRunnable" (\() -> (createRunnable_impl (javaCast object_ :: StartCanvas))) () a1

createRunnable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createRunnable_super object_ a1 = (createRunnable_impl (javaCast object_ :: StartCanvas)) a1

createRunnable_impl :: StartCanvas -> Int -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createRunnable_impl this randomLevel = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
createCanvas :: (JavaObjectClass this_) => this_ -> IO (())
createCanvas object_ = jmethod object_ "createCanvas" (\() -> (createCanvas_impl (javaCast object_ :: StartCanvas))) ()

createCanvas_super :: (JavaObjectClass this_) => this_ -> IO (())
createCanvas_super object_ = (createCanvas_impl (javaCast object_ :: StartCanvas))

createCanvas_impl :: StartCanvas -> IO (())
createCanvas_impl this = do
        assignedValue <- (NullPaintable.getInstance)
        jset (this).highScoresPaintable (assignedValue)
        randomLevel <- (StartCanvas.getNextRandom this)
        pure ()


-- throws Exception
start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: StartCanvas))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: StartCanvas))

start_impl :: StartCanvas -> IO (())
start_impl this = do
        pure ()


preDemoProcess :: (JavaObjectClass this_) => this_ -> IO (())
preDemoProcess object_ = jmethod object_ "preDemoProcess" (\() -> (preDemoProcess_impl (javaCast object_ :: StartCanvas))) ()

preDemoProcess_super :: (JavaObjectClass this_) => this_ -> IO (())
preDemoProcess_super object_ = (preDemoProcess_impl (javaCast object_ :: StartCanvas))

preDemoProcess_impl :: StartCanvas -> IO (())
preDemoProcess_impl this = do
        Control.Monad.void (InitUpdatePaintable.update ((jget (this).overlayPaintable)))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: StartCanvas))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: StartCanvas))

process_impl :: StartCanvas -> IO (())
process_impl this = do
        Control.Monad.void (BasicMenuInputProcessor.processInputList ((jio (StartCanvas.getMenuInputProcessor this))))
        Control.Monad.void (StartCanvas.preDemoProcess this)
        when ((jget (this).state) == 0) $ do
            let indexedAnimationBehavior = (javaCast (jio (SpecialAnimation.getAnimationBehavior ((jio (StartCanvas.getSpecialAnimationInterface this))))) :: IndexedAnimationBehavior.IndexedAnimationBehavior)
            when ((jget (indexedAnimationBehavior).loopIndex) < 1) $ do
                Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).timeDelayHelper)))
            let demoGameMidlet = (javaCast (jio (RunnableCanvas.getCustomCommandListener this)) :: DemoGameMidlet.DemoGameMidlet)
        pure ()


-- throws Exception
startDemoGame :: (JavaObjectClass this_) => this_ -> IO (())
startDemoGame object_ = jmethod object_ "startDemoGame" (\() -> (startDemoGame_impl (javaCast object_ :: StartCanvas))) ()

startDemoGame_super :: (JavaObjectClass this_) => this_ -> IO (())
startDemoGame_super object_ = (startDemoGame_impl (javaCast object_ :: StartCanvas))

startDemoGame_impl :: StartCanvas -> IO (())
startDemoGame_impl this = do
        pure ()


-- throws Exception
processGame :: (JavaObjectClass this_) => this_ -> IO (())
processGame object_ = jmethod object_ "processGame" (\() -> (processGame_impl (javaCast object_ :: StartCanvas))) ()

processGame_super :: (JavaObjectClass this_) => this_ -> IO (())
processGame_super object_ = (processGame_impl (javaCast object_ :: StartCanvas))

processGame_impl :: StartCanvas -> IO (())
processGame_impl this = do
        Control.Monad.void (GameRunnable.run ((jget (this).gameRunnable)))
        Control.Monad.void (SpecialAnimation.nextFrame ((jget (this).specialAnimationInterface)))
        Control.Monad.void (StartCanvas.process this)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: StartCanvas))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: StartCanvas))

run_impl :: StartCanvas -> IO (())
run_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART_RUNNABLE) this (jget ((jget (this).base.base.commonStrings)).rUN))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).rUN) e)
            ) $ do
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Demo Thread")
            Control.Monad.void (RunnableCanvas.setCurrentThread this)
            Control.Monad.void (StartCanvas.setRunning this True)
            if (jio (Features.isFeature ((jget (this).features)) (jget ((jio (MainFeatureFactory.getInstance))).lOAD_ONDEMAND))) then do
                Control.Monad.void (ProgressCanvas.end progressCanvas)
            else do
                Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Demo Thread Running")
            Control.Monad.void (FullScreenUtil.initOnRun ((jget (this).fullScreenUtil)) (javaCast this) (jio (RunnableCanvas.getCustomCommandListener this)))
            Control.Monad.void (StartCanvas.initMenu this)
            Control.Monad.void (StartCanvas.initPostPaint this)
            Control.Monad.void (StartCanvas.updateDemoState this)
            when (jio (Features.isDefault ((jget (this).features)) (jget ((jget (this).openGLFeatureFactory)).oPENGL_AS_GAME_THREAD))) $ do
                Control.Monad.void (OpenGLThreadUtil.onResume ((jio (OpenGLThreadUtil.getInstance))))
            if ((jio (Features.isDefault ((jget (this).features)) (jget ((jget (this).openGLFeatureFactory)).oPENGL_AS_GAME_THREAD))) || (jio (J2MEUtil.isHTML))) then do
                pure ()
            else do
                fix $ \loop -> when (jio (RunnableCanvas.isRunning this)) $ javaIteration (loop) $ do
                    Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).base.loopTimeHelper)))
                    Control.Monad.void (StartCanvas.processGame this)
                    Control.Monad.void (RunnableCanvas.processLoopSleep this)
                Control.Monad.void (StartCanvas.end this)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eND_RUNNABLE) this (jget ((jget (this).base.base.commonStrings)).rUN))
        pure ()


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: StartCanvas))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: StartCanvas)) a1

setRunning_impl :: StartCanvas -> Bool -> IO (())
setRunning_impl this running = do
        Control.Monad.void (RunnableCanvas.setRunning_super this.base running)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget (this).base.sET_RUNNING) e)
            ) $ do
            when ((((jio (Features.isDefault ((jget (this).features)) (jget ((jget (this).openGLFeatureFactory)).oPENGL))) || (jio (J2MEUtil.isHTML)))) && (Prelude.not running)) $ do
                currentDisplayableFactory <- (CurrentDisplayableFactory.getInstance)
                Control.Monad.void (CurrentDisplayableFactory.clearRunnable currentDisplayableFactory)
                Control.Monad.void (StartCanvas.end this)
        pure ()


-- throws Exception
end :: (JavaObjectClass this_) => this_ -> IO (())
end object_ = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: StartCanvas))) ()

end_super :: (JavaObjectClass this_) => this_ -> IO (())
end_super object_ = (end_impl (javaCast object_ :: StartCanvas))

end_impl :: StartCanvas -> IO (())
end_impl this = do
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (BaseGameStatistics.add ((jget (this).baseGameStatistics)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (StartCanvas.bOT_GAME_STATS)))) (jio (BaseGameStatistics.toString ((jget (this).baseGameStatistics))))))) (jget ((jio (CommonSeps.getInstance))).nEW_LINE)))))))
        Control.Monad.void (BaseGameStatistics.init ((jget (this).baseGameStatistics)))
        when (jio (Features.isFeature ((jget (this).features)) (jget ((jio (MainFeatureFactory.getInstance))).lOAD_ONDEMAND))) $ do
            Control.Monad.void (ProgressCanvas.start progressCanvas)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Demo End" this (jget ((jget (this).base.base.commonStrings)).rUN))
        Control.Monad.void (StartCanvas.close this)
        Control.Monad.void (DisplayChangeEventHandler.removeListener ((jio (DisplayChangeEventHandler.getInstance))) (javaCast this))
        pure ()


setGameState :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState object_ a1 = jmethod object_ "setGameState" (\() -> (setGameState_impl (javaCast object_ :: StartCanvas))) () a1

setGameState_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState_super object_ a1 = (setGameState_impl (javaCast object_ :: StartCanvas)) a1

setGameState_impl :: StartCanvas -> GameState.GameState -> IO (())
setGameState_impl this gameState = do
        pure ()


getGameState :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState object_ = jmethod object_ "getGameState" (\() -> (getGameState_impl (javaCast object_ :: StartCanvas))) ()

getGameState_super :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState_super object_ = (getGameState_impl (javaCast object_ :: StartCanvas))

getGameState_impl :: StartCanvas -> IO (GameState.GameState)
getGameState_impl this = do
        pure ((jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE))


getState :: (JavaObjectClass this_) => this_ -> IO (Int)
getState object_ = jmethod object_ "getState" (\() -> (getState_impl (javaCast object_ :: StartCanvas))) ()

getState_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getState_super object_ = (getState_impl (javaCast object_ :: StartCanvas))

getState_impl :: StartCanvas -> IO (Int)
getState_impl this = do
        pure ((jget (this).state))


setState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: StartCanvas))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: StartCanvas)) a1

setState_impl :: StartCanvas -> Int -> IO (())
setState_impl this state = do
        jset (this).state (state)
        pure ()


isHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted object_ = jmethod object_ "isHighScoreSubmitted" (\() -> (isHighScoreSubmitted_impl (javaCast object_ :: StartCanvas))) ()

isHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted_super object_ = (isHighScoreSubmitted_impl (javaCast object_ :: StartCanvas))

isHighScoreSubmitted_impl :: StartCanvas -> IO (Bool)
isHighScoreSubmitted_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Wow the AI got a high score!" this "isHighScoreSubmitted")
        pure (False)


getRealHighScoresPaintable :: (JavaObjectClass this_) => this_ -> IO (HighScoresPaintable.HighScoresPaintable)
getRealHighScoresPaintable object_ = jmethod object_ "getRealHighScoresPaintable" (\() -> (getRealHighScoresPaintable_impl (javaCast object_ :: StartCanvas))) ()

getRealHighScoresPaintable_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresPaintable.HighScoresPaintable)
getRealHighScoresPaintable_super object_ = (getRealHighScoresPaintable_impl (javaCast object_ :: StartCanvas))

getRealHighScoresPaintable_impl :: StartCanvas -> IO (HighScoresPaintable.HighScoresPaintable)
getRealHighScoresPaintable_impl this = do
        pure ((jget (this).realHighScoresPaintable))


setSpecialAnimationInterface :: (JavaObjectClass this_) => this_ -> SpecialAnimation.SpecialAnimation -> IO (())
setSpecialAnimationInterface object_ a1 = jmethod object_ "setSpecialAnimationInterface" (\() -> (setSpecialAnimationInterface_impl (javaCast object_ :: StartCanvas))) () a1

setSpecialAnimationInterface_super :: (JavaObjectClass this_) => this_ -> SpecialAnimation.SpecialAnimation -> IO (())
setSpecialAnimationInterface_super object_ a1 = (setSpecialAnimationInterface_impl (javaCast object_ :: StartCanvas)) a1

setSpecialAnimationInterface_impl :: StartCanvas -> SpecialAnimation.SpecialAnimation -> IO (())
setSpecialAnimationInterface_impl this specialAnimationInterface = do
        Control.Monad.void (SpecialAnimation.setFrame specialAnimationInterface 0)
        jset (this).specialAnimationInterface (specialAnimationInterface)
        pure ()


getSpecialAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (SpecialAnimation.SpecialAnimation)
getSpecialAnimationInterface object_ = jmethod object_ "getSpecialAnimationInterface" (\() -> (getSpecialAnimationInterface_impl (javaCast object_ :: StartCanvas))) ()

getSpecialAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (SpecialAnimation.SpecialAnimation)
getSpecialAnimationInterface_super object_ = (getSpecialAnimationInterface_impl (javaCast object_ :: StartCanvas))

getSpecialAnimationInterface_impl :: StartCanvas -> IO (SpecialAnimation.SpecialAnimation)
getSpecialAnimationInterface_impl this = do
        pure ((jget (this).specialAnimationInterface))


setPaintableInterface :: (JavaObjectClass this_) => this_ -> PaintableInterface.PaintableInterface -> IO (())
setPaintableInterface object_ a1 = jmethod object_ "setPaintableInterface" (\() -> (setPaintableInterface_impl (javaCast object_ :: StartCanvas))) () a1

setPaintableInterface_super :: (JavaObjectClass this_) => this_ -> PaintableInterface.PaintableInterface -> IO (())
setPaintableInterface_super object_ a1 = (setPaintableInterface_impl (javaCast object_ :: StartCanvas)) a1

setPaintableInterface_impl :: StartCanvas -> PaintableInterface.PaintableInterface -> IO (())
setPaintableInterface_impl this paintableInterface = do
        jset (this).paintableInterface (paintableInterface)
        pure ()


getPaintableInterface :: (JavaObjectClass this_) => this_ -> IO (PaintableInterface.PaintableInterface)
getPaintableInterface object_ = jmethod object_ "getPaintableInterface" (\() -> (getPaintableInterface_impl (javaCast object_ :: StartCanvas))) ()

getPaintableInterface_super :: (JavaObjectClass this_) => this_ -> IO (PaintableInterface.PaintableInterface)
getPaintableInterface_super object_ = (getPaintableInterface_impl (javaCast object_ :: StartCanvas))

getPaintableInterface_impl :: StartCanvas -> IO (PaintableInterface.PaintableInterface)
getPaintableInterface_impl this = do
        pure ((jget (this).paintableInterface))


setDefaultPaintableInterface :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setDefaultPaintableInterface object_ a1 = jmethod object_ "setDefaultPaintableInterface" (\() -> (setDefaultPaintableInterface_impl (javaCast object_ :: StartCanvas))) () a1

setDefaultPaintableInterface_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setDefaultPaintableInterface_super object_ a1 = (setDefaultPaintableInterface_impl (javaCast object_ :: StartCanvas)) a1

setDefaultPaintableInterface_impl :: StartCanvas -> Paintable.Paintable -> IO (())
setDefaultPaintableInterface_impl this defaultPaintableInterface = do
        jset (this).defaultPaintableInterface (defaultPaintableInterface)
        pure ()


getDefaultPaintableInterface :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getDefaultPaintableInterface object_ = jmethod object_ "getDefaultPaintableInterface" (\() -> (getDefaultPaintableInterface_impl (javaCast object_ :: StartCanvas))) ()

getDefaultPaintableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getDefaultPaintableInterface_super object_ = (getDefaultPaintableInterface_impl (javaCast object_ :: StartCanvas))

getDefaultPaintableInterface_impl :: StartCanvas -> IO (Paintable.Paintable)
getDefaultPaintableInterface_impl this = do
        pure ((jget (this).defaultPaintableInterface))


getHighScoresFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (HighScoresFactoryInterface.HighScoresFactoryInterface)
getHighScoresFactoryInterface object_ = jmethod object_ "getHighScoresFactoryInterface" (\() -> (getHighScoresFactoryInterface_impl (javaCast object_ :: StartCanvas))) ()

getHighScoresFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresFactoryInterface.HighScoresFactoryInterface)
getHighScoresFactoryInterface_super object_ = (getHighScoresFactoryInterface_impl (javaCast object_ :: StartCanvas))

getHighScoresFactoryInterface_impl :: StartCanvas -> IO (HighScoresFactoryInterface.HighScoresFactoryInterface)
getHighScoresFactoryInterface_impl this = do
        pure ((jget (this).highScoresFactoryInterface))


setMenuInputProcessor :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor object_ a1 = jmethod object_ "setMenuInputProcessor" (\() -> (setMenuInputProcessor_impl (javaCast object_ :: StartCanvas))) () a1

setMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor_super object_ a1 = (setMenuInputProcessor_impl (javaCast object_ :: StartCanvas)) a1

setMenuInputProcessor_impl :: StartCanvas -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor_impl this menuInputProcessor = do
        jset (this).menuInputProcessor (menuInputProcessor)
        pure ()


getMenuInputProcessor :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor object_ = jmethod object_ "getMenuInputProcessor" (\() -> (getMenuInputProcessor_impl (javaCast object_ :: StartCanvas))) ()

getMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor_super object_ = (getMenuInputProcessor_impl (javaCast object_ :: StartCanvas))

getMenuInputProcessor_impl :: StartCanvas -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor_impl this = do
        pure ((jget (this).menuInputProcessor))


getMenuForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getMenuForm object_ = jmethod object_ "getMenuForm" (\() -> (getMenuForm_impl (javaCast object_ :: StartCanvas))) ()

getMenuForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getMenuForm_super object_ = (getMenuForm_impl (javaCast object_ :: StartCanvas))

getMenuForm_impl :: StartCanvas -> IO (ScrollSelectionForm.ScrollSelectionForm)
getMenuForm_impl this = do
        pure ((jget (this).menuForm))


setMenuForm :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setMenuForm object_ a1 = jmethod object_ "setMenuForm" (\() -> (setMenuForm_impl (javaCast object_ :: StartCanvas))) () a1

setMenuForm_super :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setMenuForm_super object_ a1 = (setMenuForm_impl (javaCast object_ :: StartCanvas)) a1

setMenuForm_impl :: StartCanvas -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setMenuForm_impl this menuForm = do
        jset (this).menuForm (menuForm)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: StartCanvas))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: StartCanvas))

isInitialized_impl :: StartCanvas -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


getOverlayPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getOverlayPaintable object_ = jmethod object_ "getOverlayPaintable" (\() -> (getOverlayPaintable_impl (javaCast object_ :: StartCanvas))) ()

getOverlayPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getOverlayPaintable_super object_ = (getOverlayPaintable_impl (javaCast object_ :: StartCanvas))

getOverlayPaintable_impl :: StartCanvas -> IO (Paintable.Paintable)
getOverlayPaintable_impl this = do
        pure ((javaCast (jget (this).overlayPaintable) :: Paintable.Paintable))


setBasicGameDemoPaintable :: (JavaObjectClass this_) => this_ -> StatePaintable.StatePaintable -> IO (())
setBasicGameDemoPaintable object_ a1 = jmethod object_ "setBasicGameDemoPaintable" (\() -> (setBasicGameDemoPaintable_impl (javaCast object_ :: StartCanvas))) () a1

setBasicGameDemoPaintable_super :: (JavaObjectClass this_) => this_ -> StatePaintable.StatePaintable -> IO (())
setBasicGameDemoPaintable_super object_ a1 = (setBasicGameDemoPaintable_impl (javaCast object_ :: StartCanvas)) a1

setBasicGameDemoPaintable_impl :: StartCanvas -> StatePaintable.StatePaintable -> IO (())
setBasicGameDemoPaintable_impl this basicGameDemoPaintable = do
        jset (this).basicGameDemoPaintable (basicGameDemoPaintable)
        pure ()


getBasicGameDemoPaintable :: (JavaObjectClass this_) => this_ -> IO (StatePaintable.StatePaintable)
getBasicGameDemoPaintable object_ = jmethod object_ "getBasicGameDemoPaintable" (\() -> (getBasicGameDemoPaintable_impl (javaCast object_ :: StartCanvas))) ()

getBasicGameDemoPaintable_super :: (JavaObjectClass this_) => this_ -> IO (StatePaintable.StatePaintable)
getBasicGameDemoPaintable_super object_ = (getBasicGameDemoPaintable_impl (javaCast object_ :: StartCanvas))

getBasicGameDemoPaintable_impl :: StartCanvas -> IO (StatePaintable.StatePaintable)
getBasicGameDemoPaintable_impl this = do
        pure ((jget (this).basicGameDemoPaintable))


setTempWait :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTempWait object_ a1 = jmethod object_ "setTempWait" (\() -> (setTempWait_impl (javaCast object_ :: StartCanvas))) () a1

setTempWait_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTempWait_super object_ a1 = (setTempWait_impl (javaCast object_ :: StartCanvas)) a1

setTempWait_impl :: StartCanvas -> Int -> IO (())
setTempWait_impl this tempWait = do
        jset (this).tempWait (tempWait)
        pure ()


getTempWait :: (JavaObjectClass this_) => this_ -> IO (Int)
getTempWait object_ = jmethod object_ "getTempWait" (\() -> (getTempWait_impl (javaCast object_ :: StartCanvas))) ()

getTempWait_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTempWait_super object_ = (getTempWait_impl (javaCast object_ :: StartCanvas))

getTempWait_impl :: StartCanvas -> IO (Int)
getTempWait_impl this = do
        pure ((jget (this).tempWait))


isSingleThread :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleThread object_ = jmethod object_ "isSingleThread" (\() -> (isSingleThread_impl (javaCast object_ :: StartCanvas))) ()

isSingleThread_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleThread_super object_ = (isSingleThread_impl (javaCast object_ :: StartCanvas))

isSingleThread_impl :: StartCanvas -> IO (Bool)
isSingleThread_impl this = do
        pure (((jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) || (jget SWTUtil.isSWT)))


isRunningInAnotherThread :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunningInAnotherThread object_ = jmethod object_ "isRunningInAnotherThread" (\() -> (isRunningInAnotherThread_impl (javaCast object_ :: StartCanvas))) ()

isRunningInAnotherThread_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunningInAnotherThread_super object_ = (isRunningInAnotherThread_impl (javaCast object_ :: StartCanvas))

isRunningInAnotherThread_impl :: StartCanvas -> IO (Bool)
isRunningInAnotherThread_impl this = do
    javaCatchReturn $ do
        features <- (Features.getInstance)
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        if (jio (Features.isDefault features (jget (openGLFeatureFactory).oPENGL_AS_GAME_THREAD))) then do
            javaReturn (True)
        else do
            javaReturn =<< (RunnableCanvas.isRunning this)


getGameInitializationInterfaceFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory)
getGameInitializationInterfaceFactoryInterface object_ = jmethod object_ "getGameInitializationInterfaceFactoryInterface" (\() -> (getGameInitializationInterfaceFactoryInterface_impl (javaCast object_ :: StartCanvas))) ()

getGameInitializationInterfaceFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory)
getGameInitializationInterfaceFactoryInterface_super object_ = (getGameInitializationInterfaceFactoryInterface_impl (javaCast object_ :: StartCanvas))

getGameInitializationInterfaceFactoryInterface_impl :: StartCanvas -> IO (BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory)
getGameInitializationInterfaceFactoryInterface_impl this = do
        pure ((jget (this).gameInitializationInterfaceFactoryInterface))


