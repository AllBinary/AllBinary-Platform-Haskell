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
module AllBinaryGameCanvas (module AllBinaryGameCanvas, module RunnableCanvas) where

import RunnableCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, getInGameMenuBehavior, getInGameMenuBehavior_super, getInGameMenuBehavior_impl, setCurrentThread, setCurrentThread_super, setCurrentThread_impl, onEvent, onEvent_super, onEvent_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, updateMenuFromEvent, updateMenuFromEvent_super, updateMenuFromEvent_impl, processSleep, processSleep_super, processSleep_impl, initPopupMenu, initPopupMenu_super, initPopupMenu_impl, initMenu, initMenu_super, initMenu_impl, initMenu2, initMenu2_super, initMenu2_impl, updateMenu, updateMenu_super, updateMenu_impl, updateMenu2, updateMenu2_super, updateMenu2_impl, pause, pause_super, pause_impl, unPause, unPause_super, unPause_impl, isPausable, isPausable_super, isPausable_impl, popupMenu, popupMenu_super, popupMenu_impl, popupMenu2, popupMenu2_super, popupMenu2_impl, toggleMenu, toggleMenu_super, toggleMenu_impl, closeMenu, closeMenu_super, closeMenu_impl, closeMenu2, closeMenu2_super, closeMenu2_impl, open, open_super, open_impl, close, close_super, close_impl, processorInit, processorInit_super, processorInit_impl, setProcessGameProcessorInit, setProcessGameProcessorInit_super, setProcessGameProcessorInit_impl, initSpecialPaint, initSpecialPaint_super, initSpecialPaint_impl, init, init_super, init_impl, notifyIntermission, notifyIntermission_super, notifyIntermission_impl, mediaInit, mediaInit_super, mediaInit_impl, initConfigurable, initConfigurable_super, initConfigurable_impl, initApp, initApp_super, initApp_impl, initTouch, initTouch_super, initTouch_impl, updateCurrentTouchInputFactory, updateCurrentTouchInputFactory_super, updateCurrentTouchInputFactory_impl, updateTouch, updateTouch_super, updateTouch_impl, updateTouch2, updateTouch2_super, updateTouch2_impl, postInitTouch, postInitTouch_super, postInitTouch_impl, initCommands, initCommands_super, initCommands_impl, addCommands, addCommands_super, addCommands_impl, itemStateChanged, itemStateChanged_super, itemStateChanged_impl, updateScreenButtonPaintable, updateScreenButtonPaintable_super, updateScreenButtonPaintable_impl, updateScreenButtonPaintable2, updateScreenButtonPaintable2_super, updateScreenButtonPaintable2_impl, getLayerManager, getLayerManager_super, getLayerManager_impl, setLayerManager, setLayerManager_super, setLayerManager_impl, isGameOver, isGameOver_super, isGameOver_impl, setGameOver, setGameOver_super, setGameOver_impl, processGameOver, processGameOver_super, processGameOver_impl, isHighScoreSubmitted, isHighScoreSubmitted_super, isHighScoreSubmitted_impl, setHighScoreSubmitted, setHighScoreSubmitted_super, setHighScoreSubmitted_impl, getGameState, getGameState_super, getGameState_impl, setGameState, setGameState_super, setGameState_impl, updateGameState, updateGameState_super, updateGameState_impl, updateGameKeyEventProcessor, updateGameKeyEventProcessor_super, updateGameKeyEventProcessor_impl, removeAllGameKeyInputListenersOnBuild, removeAllGameKeyInputListenersOnBuild_super, removeAllGameKeyInputListenersOnBuild_impl, removeAllGameKeyInputListeners, removeAllGameKeyInputListeners_super, removeAllGameKeyInputListeners_impl, removeAllGameKeyInputListeners2, removeAllGameKeyInputListeners2_super, removeAllGameKeyInputListeners2_impl, removeKeyInputListener, removeKeyInputListener_super, removeKeyInputListener_impl, updateEndGameProcessor, updateEndGameProcessor_super, updateEndGameProcessor_impl, updateEndGameProcessor2, updateEndGameProcessor2_super, updateEndGameProcessor2_impl, buildGameInit, buildGameInit_super, buildGameInit_impl, cleanupGame, cleanupGame_super, cleanupGame_impl, loadResourceLoadingLevel, loadResourceLoadingLevel_super, loadResourceLoadingLevel_impl, loadResources, loadResources_super, loadResources_impl, updateColor, updateColor_super, updateColor_impl, buildGame, buildGame_super, buildGame_impl, buildGame2, buildGame2_super, buildGame2_impl, addKeyInputListener, addKeyInputListener_super, addKeyInputListener_impl, setGameCanvasStartListener, setGameCanvasStartListener_super, setGameCanvasStartListener_impl, loadState, loadState_super, loadState_impl, getLoadStateHashtable, getLoadStateHashtable_super, getLoadStateHashtable_impl, setLoadStateHashtable, setLoadStateHashtable_super, setLoadStateHashtable_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, paintGameOver, paintGameOver_super, paintGameOver_impl, draw, draw_super, draw_impl, clear, clear_super, clear_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, processEndLevelIntermissionGameState, processEndLevelIntermissionGameState_super, processEndLevelIntermissionGameState_impl, nonBotPaint, nonBotPaint_super, nonBotPaint_impl, paintIntermission, paintIntermission_super, paintIntermission_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyRepeated, keyRepeated_super, keyRepeated_impl, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyRepeatedByDevice, keyRepeatedByDevice_super, keyRepeatedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, handleRawKey, handleRawKey_super, handleRawKey_impl, endProgress, endProgress_super, endProgress_impl, processPlayingGame, processPlayingGame_super, processPlayingGame_impl, threadInit, threadInit_super, threadInit_impl, processGame, processGame_super, processGame_impl, notifyDonePainting, notifyDonePainting_super, notifyDonePainting_impl, shouldWait, shouldWait_super, shouldWait_impl, run, run_super, run_impl, run2, run2_super, run2_impl, run3, run3_super, run3_impl, setRunning, setRunning_super, setRunning_impl, end, end_super, end_impl, endGameThread, endGameThread_super, endGameThread_impl, createHighScore, createHighScore_super, createHighScore_impl, setHighScore, setHighScore_super, setHighScore_impl, setHighScore2, setHighScore2_super, setHighScore2_impl, getGameStateTimeHelper, getGameStateTimeHelper_super, getGameStateTimeHelper_impl, setInitialized, setInitialized_super, setInitialized_impl, isInitialized, isInitialized_super, isInitialized_impl, getSourceId, getSourceId_super, getSourceId_impl, setProgressPaintable, setProgressPaintable_super, setProgressPaintable_impl, getStartIntermissionInterface, getStartIntermissionInterface_super, getStartIntermissionInterface_impl, getEndLevelIntermissionInterface, getEndLevelIntermissionInterface_super, getEndLevelIntermissionInterface_impl, setTouchPaintableP, setTouchPaintableP_super, setTouchPaintableP_impl, getTouchPaintableP, getTouchPaintableP_super, getTouchPaintableP_impl, setEndGamePaintable, setEndGamePaintable_super, setEndGamePaintable_impl, getEndGamePaintable, getEndGamePaintable_super, getEndGamePaintable_impl, setIntermissionPaintable, setIntermissionPaintable_super, setIntermissionPaintable_impl, getIntermissionPaintable, getIntermissionPaintable_super, getIntermissionPaintable_impl, getEndGameInfoP, getEndGameInfoP_super, getEndGameInfoP_impl, setHighScoresPaintable, setHighScoresPaintable_super, setHighScoresPaintable_impl, getHighScoresPaintable, getHighScoresPaintable_super, getHighScoresPaintable_impl, getRealHighScoresPaintable, getRealHighScoresPaintable_super, getRealHighScoresPaintable_impl, clearPlayerGameInputList, clearPlayerGameInputList_super, clearPlayerGameInputList_impl, addPlayerGameInput, addPlayerGameInput_super, addPlayerGameInput_impl, setMenuInputProcessor, setMenuInputProcessor_super, setMenuInputProcessor_impl, getMenuInputProcessor, getMenuInputProcessor_super, getMenuInputProcessor_impl, getMenuForm, getMenuForm_super, getMenuForm_impl, setMenuForm, setMenuForm_super, setMenuForm_impl, getStartLevel, getStartLevel_super, getStartLevel_impl, setStartLevel, setStartLevel_super, setStartLevel_impl, setTouchButtonsPaintable, setTouchButtonsPaintable_super, setTouchButtonsPaintable_impl, getTouchButtonsPaintable, getTouchButtonsPaintable_super, getTouchButtonsPaintable_impl, setGameInputProcessor, setGameInputProcessor_super, setGameInputProcessor_impl, getGameInputProcessor, getGameInputProcessor_super, getGameInputProcessor_impl, setEndGameProcessor, setEndGameProcessor_super, setEndGameProcessor_impl, getEndGameProcessor, getEndGameProcessor_super, getEndGameProcessor_impl, setEndGameStatePaintable, setEndGameStatePaintable_super, setEndGameStatePaintable_impl, getEndGameStatePaintable, getEndGameStatePaintable_super, getEndGameStatePaintable_impl, setNonBotPaintableP, setNonBotPaintableP_super, setNonBotPaintableP_impl, getNonBotPaintableP, getNonBotPaintableP_super, getNonBotPaintableP_impl, setStartIntermissionPaintable, setStartIntermissionPaintable_super, setStartIntermissionPaintable_impl, getStartIntermissionPaintable, getStartIntermissionPaintable_super, getStartIntermissionPaintable_impl, setMainStateProcessor, setMainStateProcessor_super, setMainStateProcessor_impl, getMainStateProcessor, getMainStateProcessor_super, getMainStateProcessor_impl, setProcessGameProcessor, setProcessGameProcessor_super, setProcessGameProcessor_impl, getProcessGameProcessor, getProcessGameProcessor_super, getProcessGameProcessor_impl, setOpenMenuPaintable, setOpenMenuPaintable_super, setOpenMenuPaintable_impl, getOpenMenuPaintable, getOpenMenuPaintable_super, getOpenMenuPaintable_impl, setPopupMenuInputProcessor, setPopupMenuInputProcessor_super, setPopupMenuInputProcessor_impl, getPopupMenuInputProcessor, getPopupMenuInputProcessor_super, getPopupMenuInputProcessor_impl, getSensorGameUpdateProcessor, getSensorGameUpdateProcessor_super, getSensorGameUpdateProcessor_impl, getRawGameInputProcessor, getRawGameInputProcessor_super, getRawGameInputProcessor_impl, getRawInputProcessor, getRawInputProcessor_super, getRawInputProcessor_impl, setInputProcessor, setInputProcessor_super, setInputProcessor_impl, getInputProcessor, getInputProcessor_super, getInputProcessor_impl, setMenuPaintable, setMenuPaintable_super, setMenuPaintable_impl, getMenuPaintable, getMenuPaintable_super, getMenuPaintable_impl, setFormPaintable, setFormPaintable_super, setFormPaintable_impl, getFormPaintable, getFormPaintable_super, getFormPaintable_impl, setGameSpecificPaintableP, setGameSpecificPaintableP_super, setGameSpecificPaintableP_impl, getGameSpecificPaintableP, getGameSpecificPaintableP_super, getGameSpecificPaintableP_impl, isSingleThread, isSingleThread_super, isSingleThread_impl, isRunningInAnotherThread, isRunningInAnotherThread_super, isRunningInAnotherThread_impl, getType, getType_super, getType_impl, basicColorFactory, basicSetColorUtil, touchFeatureFactory, openGLFeatureFactory, touchButtonFactory, gameAdStateFactory, gameStrings, gameInputStrings, gameStateFactory, gameTickTimeDelayHelper, gameTickDisplayInfoSingleton, gameRunnable, gamePauseRunnable, formUtil, myFormUtil, updateMyFontProcessor, myFontProcessor, gameSpecificPaintable, sensorGameUpdateProcessor, endGameInfo, startIntermissionInterface, endLevelIntermissionInterface, id, gameLayerManager, gameState, gameOver, initialized, gameStateTimeHelper, highScoresHelper, highScoreSubmitted, realHighScoresPaintable, highScoresPaintable, localPlayerGameInputList, isCheating, hashtable, isSingleKeyRepeatableProcessing, gameInitializationInterfaceFactoryInterface, touchButtonsPaintable, touchPaintable, cheatProcessor, gameInputProcessor, endGameProcessor, realEndGameProcessor, startIntermissionProcessor, realStartIntermissionProcessor, endGamePaintable, endGameStatePaintable, nonBotPaintable, intermissionPaintable, startIntermissionPaintable, mainStateProcessor, processGameProcessor, highScoresFactoryInterface, startLevel, mainMenuInputProcessor, popupMenuInputProcessor, menuInputProcessor, menuForm, formPaintable, openMenuPaintable, menuPaintable, currentTouchInputFactory, colorFillPaintable, baseGameStatistics, primaryPlayerQueue, secondaryPlayerQueue, bUILD_GAME, gameTypeFactory, screenCapture, basicMotionGesturesHandler, gameKeyEventHandler, gameBehavior, menuBehavior, progressPaintable, fontHeightP, gameCanvasStartListener, rawGameInputProcessor, rawInputProcessor, inputProcessor, yIELD_SLEEP, tYPE)
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
import qualified GameCanvasRunnable -- same package or java.lang
import qualified GameCanvasPauseRunnable -- same package or java.lang
import qualified FormUtil -- same package or java.lang
import qualified MyFormUtil -- same package or java.lang
import qualified EndGameInfo -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified NoMenuInputProcessor -- same package or java.lang
import qualified BasicMenuInputProcessor -- same package or java.lang
import qualified DemoGameBehavior -- same package or java.lang
import qualified BaseMenuBehavior -- same package or java.lang
import qualified BaseGameBehavior -- same package or java.lang
import qualified BasicPopupMenuPaintable -- same package or java.lang
import qualified PopupMenuInputProcessor -- same package or java.lang
import qualified InGameMenuBehavior -- same package or java.lang
import qualified GameLimitedCommandTextItemArrayFactory -- same package or java.lang
import qualified PopupCommandFormInputProcessor -- same package or java.lang
import qualified NullWaitGameRunnable -- same package or java.lang
import qualified GameProcessor -- same package or java.lang
import qualified CheatGameInputProcessor -- same package or java.lang
import qualified EndGameProcessor -- same package or java.lang
import qualified StartIntermissionProcessor -- same package or java.lang
import qualified EndGamePaintable -- same package or java.lang
import qualified NullDemoPaintable -- same package or java.lang
import qualified DemoPaintableInterface -- same package or java.lang
import qualified GameCanvasInputProcessor -- same package or java.lang
import qualified FormInputProcessor -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified SpecialGameInputInterface -- same package or java.lang
import qualified OpenGLFeature -- same package or java.lang
import qualified StdUtil -- same package or java.lang
import qualified TsUtil -- same package or java.lang
import qualified ThreadObjectUtil -- same package or java.lang
import qualified CommonLabels -- same package or java.lang
import qualified ChoiceGroup -- javax.microedition.lcdui.ChoiceGroup
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Item -- javax.microedition.lcdui.Item
import qualified NullCommandListener -- javax.microedition.lcdui.NullCommandListener
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified GameAdStateFactory -- org.allbinary.business.advertisement.GameAdStateFactory
import qualified BaseGameStatistics -- org.allbinary.canvas.BaseGameStatistics
import qualified GameStatisticsFactory -- org.allbinary.canvas.GameStatisticsFactory
import qualified Processor -- org.allbinary.canvas.Processor
import qualified RunnableCanvas -- org.allbinary.canvas.RunnableCanvas
import qualified DebugFactory -- org.allbinary.debug.DebugFactory
import qualified NoDebug -- org.allbinary.debug.NoDebug
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified GameStrings -- org.allbinary.game.GameStrings
import qualified GameTypeFactory -- org.allbinary.game.GameTypeFactory
import qualified Intermission -- org.allbinary.game.Intermission
import qualified IntermissionCompositeInterface -- org.allbinary.game.IntermissionCompositeInterface
import qualified IntermissionEnableListenerInterface -- org.allbinary.game.IntermissionEnableListenerInterface
import qualified IntermissionInterface -- org.allbinary.game.IntermissionInterface
import qualified PlayerTypesFactory -- org.allbinary.game.PlayerTypesFactory
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified InGameFeatures -- org.allbinary.game.configuration.InGameFeatures
import qualified InGameOptionsForm -- org.allbinary.game.configuration.InGameOptionsForm
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified GameInitializedEvent -- org.allbinary.game.configuration.event.GameInitializedEvent
import qualified GameInitializedEventHandler -- org.allbinary.game.configuration.event.GameInitializedEventHandler
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified GameFeatureUtil -- org.allbinary.game.configuration.feature.GameFeatureUtil
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified SensorFeatureFactory -- org.allbinary.game.configuration.feature.SensorFeatureFactory
import qualified TouchFeatureFactory -- org.allbinary.game.configuration.feature.TouchFeatureFactory
import qualified GameLevelDisplayChangeEventListenersFactory -- org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory
import qualified BasicBuildGameInitializerFactory -- org.allbinary.game.init.BasicBuildGameInitializerFactory
import qualified GameInitializationUtil -- org.allbinary.game.init.GameInitializationUtil
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified InputProcessor -- org.allbinary.game.input.InputProcessor
import qualified NoPlayerGameInput -- org.allbinary.game.input.NoPlayerGameInput
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified GameKeyEventHandler -- org.allbinary.game.input.event.GameKeyEventHandler
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified SWTUtil -- org.allbinary.game.layer.SWTUtil
import qualified ColorFillBasePaintable -- org.allbinary.game.paint.ColorFillBasePaintable
import qualified ColorFillPaintableFactory -- org.allbinary.game.paint.ColorFillPaintableFactory
import qualified ResourceLoadingLevel -- org.allbinary.game.resource.ResourceLoadingLevel
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified HighScore -- org.allbinary.game.score.HighScore
import qualified HighScoresHelperBaseInterface -- org.allbinary.game.score.HighScoresHelperBaseInterface
import qualified HighScoresFactoryInterface -- org.allbinary.game.score.HighScoresFactoryInterface
import qualified HighScoresPaintable -- org.allbinary.game.score.HighScoresPaintable
import qualified NullHighScoresSingletonFactory -- org.allbinary.game.score.NullHighScoresSingletonFactory
import qualified HighScoreTextBox -- org.allbinary.game.score.displayable.HighScoreTextBox
import qualified GameState -- org.allbinary.game.state.GameState
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified GraphicsStrings -- org.allbinary.graphics.GraphicsStrings
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified ScreenCapture -- org.allbinary.graphics.ScreenCapture
import qualified ScreenCaptureFactory -- org.allbinary.graphics.ScreenCaptureFactory
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified GameTickDisplayInfoSingleton -- org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified DisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
import qualified DisplayChangeEventListener -- org.allbinary.graphics.displayable.event.DisplayChangeEventListener
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified CommandCurrentSelectionFormFactory -- org.allbinary.graphics.form.CommandCurrentSelectionFormFactory
import qualified FormPaintable -- org.allbinary.graphics.form.FormPaintable
import qualified FormType -- org.allbinary.graphics.form.FormType
import qualified FormTypeFactory -- org.allbinary.graphics.form.FormTypeFactory
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified ScrollSelectionFormNoneFactory -- org.allbinary.graphics.form.ScrollSelectionFormNoneFactory
import qualified CommandTextItemArrayFactory -- org.allbinary.graphics.form.item.CommandTextItemArrayFactory
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified CurrentDisplayableFactory -- org.allbinary.graphics.opengles.CurrentDisplayableFactory
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified OpenGLThreadUtil -- org.allbinary.graphics.opengles.OpenGLThreadUtil
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable
import qualified NullInitUpdatePaintable -- org.allbinary.graphics.paint.NullInitUpdatePaintable
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified OpenGLImageSpecificFactory -- org.allbinary.image.opengles.OpenGLImageSpecificFactory
import qualified SensorGameUpdateProcessor -- org.allbinary.input.gyro.SensorGameUpdateProcessor
import qualified SingleSensorGameUpdateProcessor -- org.allbinary.input.gyro.SingleSensorGameUpdateProcessor
import qualified BaseTouchInput -- org.allbinary.input.motion.button.BaseTouchInput
import qualified NoButtonsTouchInputFactory -- org.allbinary.input.motion.button.NoButtonsTouchInputFactory
import qualified TouchButtonFactory -- org.allbinary.input.motion.button.TouchButtonFactory
import qualified TouchButtonsPaintableFactory -- org.allbinary.input.motion.button.TouchButtonsPaintableFactory
import qualified TouchScreenFactory -- org.allbinary.input.motion.button.TouchScreenFactory
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified AllBinaryMediaManager -- org.allbinary.media.audio.AllBinaryMediaManager
import qualified PlayerQueue -- org.allbinary.media.audio.PlayerQueue
import qualified PrimaryPlayerQueueFactory -- org.allbinary.media.audio.PrimaryPlayerQueueFactory
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified SelectSound -- org.allbinary.media.audio.SelectSound
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SecondaryThreadPool -- org.allbinary.thread.SecondaryThreadPool
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified AllBinaryGameCanvasInterface
import qualified GameCanvasRunnableInterface
import qualified MenuListener
import qualified PopupMenuInterface

-- implements AllBinaryGameCanvasInterface
-- implements GameCanvasRunnableInterface
-- implements MenuListener
-- implements IntermissionCompositeInterface
-- implements IntermissionEnableListenerInterface
-- implements PopupMenuInterface
-- implements DisplayChangeEventListener
-- implements UpdateMyFontInterface
data AllBinaryGameCanvas = AllBinaryGameCanvas
    { header_ :: JavaHeader
    , base :: RunnableCanvas.RunnableCanvas
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , touchFeatureFactory :: IORef (TouchFeatureFactory.TouchFeatureFactory)
    , openGLFeatureFactory :: IORef (OpenGLFeatureFactory.OpenGLFeatureFactory)
    , touchButtonFactory :: IORef (TouchButtonFactory.TouchButtonFactory)
    , gameAdStateFactory :: IORef (GameAdStateFactory.GameAdStateFactory)
    , gameStrings :: IORef (GameStrings.GameStrings)
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    , gameStateFactory :: IORef (GameStateFactory.GameStateFactory)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , gameTickDisplayInfoSingleton :: IORef (GameTickDisplayInfoSingleton.GameTickDisplayInfoSingleton)
    , gameRunnable :: IORef (GameCanvasRunnable.GameCanvasRunnable)
    , gamePauseRunnable :: IORef (GameCanvasPauseRunnable.GameCanvasPauseRunnable)
    , formUtil :: IORef (FormUtil.FormUtil)
    , myFormUtil :: IORef (MyFormUtil.MyFormUtil)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , gameSpecificPaintable :: IORef (Paintable.Paintable)
    , sensorGameUpdateProcessor :: IORef (SensorGameUpdateProcessor.SensorGameUpdateProcessor)
    , endGameInfo :: IORef (EndGameInfo.EndGameInfo)
    , startIntermissionInterface :: IORef (IntermissionInterface.IntermissionInterface)
    , endLevelIntermissionInterface :: IORef (IntermissionInterface.IntermissionInterface)
    , gameLayerManager :: IORef (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
    , gameState :: IORef (GameState.GameState)
    , gameOver :: IORef (Bool)
    , initialized :: IORef (Bool)
    , gameStateTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , highScoresHelper :: IORef (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
    , highScoreSubmitted :: IORef (Bool)
    , realHighScoresPaintable :: IORef (HighScoresPaintable.HighScoresPaintable)
    , highScoresPaintable :: IORef (Paintable.Paintable)
    , localPlayerGameInputList :: IORef (BasicArrayList.BasicArrayList)
    , isCheating :: IORef (Bool)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , isSingleKeyRepeatableProcessing :: IORef (Bool)
    , gameInitializationInterfaceFactoryInterface :: IORef (BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory)
    , touchButtonsPaintable :: IORef (Paintable.Paintable)
    , touchPaintable :: IORef (Paintable.Paintable)
    , cheatProcessor :: IORef (PlayerGameInput.PlayerGameInput)
    , gameInputProcessor :: IORef (Processor.Processor)
    , endGameProcessor :: IORef (Processor.Processor)
    , realEndGameProcessor :: IORef (Processor.Processor)
    , startIntermissionProcessor :: IORef (Processor.Processor)
    , realStartIntermissionProcessor :: IORef (Processor.Processor)
    , endGamePaintable :: IORef (Paintable.Paintable)
    , endGameStatePaintable :: IORef (Paintable.Paintable)
    , nonBotPaintable :: IORef (Paintable.Paintable)
    , intermissionPaintable :: IORef (Paintable.Paintable)
    , startIntermissionPaintable :: IORef (InitUpdatePaintable.InitUpdatePaintable)
    , mainStateProcessor :: IORef (Processor.Processor)
    , processGameProcessor :: IORef (Processor.Processor)
    , highScoresFactoryInterface :: IORef (HighScoresFactoryInterface.HighScoresFactoryInterface)
    , startLevel :: IORef (Int)
    , mainMenuInputProcessor :: IORef (BasicMenuInputProcessor.BasicMenuInputProcessor)
    , popupMenuInputProcessor :: IORef (BasicMenuInputProcessor.BasicMenuInputProcessor)
    , menuInputProcessor :: IORef (BasicMenuInputProcessor.BasicMenuInputProcessor)
    , menuForm :: IORef (ScrollSelectionForm.ScrollSelectionForm)
    , formPaintable :: IORef (Paintable.Paintable)
    , openMenuPaintable :: IORef (Paintable.Paintable)
    , menuPaintable :: IORef (Paintable.Paintable)
    , currentTouchInputFactory :: IORef (BaseTouchInput.BaseTouchInput)
    , colorFillPaintable :: IORef (ColorFillBasePaintable.ColorFillBasePaintable)
    , baseGameStatistics :: IORef (BaseGameStatistics.BaseGameStatistics)
    , primaryPlayerQueue :: IORef (PlayerQueue.PlayerQueue)
    , secondaryPlayerQueue :: IORef (PlayerQueue.PlayerQueue)
    , bUILD_GAME :: IORef (String)
    , gameTypeFactory :: IORef (GameTypeFactory.GameTypeFactory)
    , screenCapture :: IORef (ScreenCapture.ScreenCapture)
    , basicMotionGesturesHandler :: IORef (BasicMotionGesturesHandler.BasicMotionGesturesHandler)
    , gameKeyEventHandler :: IORef (GameKeyEventHandler.GameKeyEventHandler)
    , gameBehavior :: IORef (DemoGameBehavior.DemoGameBehavior)
    , menuBehavior :: IORef (BaseMenuBehavior.BaseMenuBehavior)
    , progressPaintable :: IORef (PaintableInterface.PaintableInterface)
    , fontHeightP :: IORef (Int)
    , gameCanvasStartListener :: IORef (DemoPaintableInterface.DemoPaintableInterface)
    , rawGameInputProcessor :: IORef (InputProcessor.InputProcessor)
    , rawInputProcessor :: IORef (InputProcessor.InputProcessor)
    , inputProcessor :: IORef (InputProcessor.InputProcessor)
    , yIELD_SLEEP :: IORef (Int64)
    }

instance JavaNull AllBinaryGameCanvas where
    javaNull = javaNullRecord "AllBinaryGameCanvas"

instance JavaEquals AllBinaryGameCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryGameCanvas where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryGameCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

id = 0

tYPE = 2

newRecord_ :: IO AllBinaryGameCanvas
newRecord_ = do
    base <- RunnableCanvas.newRecord_
    let header_ = base.header_
    basicColorFactory <- newIORef javaNull
    basicSetColorUtil <- newIORef javaNull
    touchFeatureFactory <- newIORef javaNull
    openGLFeatureFactory <- newIORef javaNull
    touchButtonFactory <- newIORef javaNull
    gameAdStateFactory <- newIORef javaNull
    gameStrings <- newIORef javaNull
    gameInputStrings <- newIORef javaNull
    gameStateFactory <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    gameTickDisplayInfoSingleton <- newIORef javaNull
    gameRunnable <- newIORef javaNull
    gamePauseRunnable <- newIORef javaNull
    formUtil <- newIORef javaNull
    myFormUtil <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    gameSpecificPaintable <- newIORef javaNull
    sensorGameUpdateProcessor <- newIORef javaNull
    endGameInfo <- newIORef javaNull
    startIntermissionInterface <- newIORef javaNull
    endLevelIntermissionInterface <- newIORef javaNull
    gameLayerManager <- newIORef javaNull
    gameState <- newIORef javaNull
    gameOver <- newIORef False
    initialized <- newIORef False
    gameStateTimeHelper <- newIORef javaNull
    highScoresHelper <- newIORef javaNull
    highScoreSubmitted <- newIORef False
    realHighScoresPaintable <- newIORef javaNull
    highScoresPaintable <- newIORef javaNull
    localPlayerGameInputList <- newIORef javaNull
    isCheating <- newIORef False
    hashtable <- newIORef javaNull
    isSingleKeyRepeatableProcessing <- newIORef False
    gameInitializationInterfaceFactoryInterface <- newIORef javaNull
    touchButtonsPaintable <- newIORef javaNull
    touchPaintable <- newIORef javaNull
    cheatProcessor <- newIORef javaNull
    gameInputProcessor <- newIORef javaNull
    endGameProcessor <- newIORef javaNull
    realEndGameProcessor <- newIORef javaNull
    startIntermissionProcessor <- newIORef javaNull
    realStartIntermissionProcessor <- newIORef javaNull
    endGamePaintable <- newIORef javaNull
    endGameStatePaintable <- newIORef javaNull
    nonBotPaintable <- newIORef javaNull
    intermissionPaintable <- newIORef javaNull
    startIntermissionPaintable <- newIORef javaNull
    mainStateProcessor <- newIORef javaNull
    processGameProcessor <- newIORef javaNull
    highScoresFactoryInterface <- newIORef javaNull
    startLevel <- newIORef 0
    mainMenuInputProcessor <- newIORef javaNull
    popupMenuInputProcessor <- newIORef javaNull
    menuInputProcessor <- newIORef javaNull
    menuForm <- newIORef javaNull
    formPaintable <- newIORef javaNull
    openMenuPaintable <- newIORef javaNull
    menuPaintable <- newIORef javaNull
    currentTouchInputFactory <- newIORef javaNull
    colorFillPaintable <- newIORef javaNull
    baseGameStatistics <- newIORef javaNull
    primaryPlayerQueue <- newIORef javaNull
    secondaryPlayerQueue <- newIORef javaNull
    bUILD_GAME <- newIORef ""
    gameTypeFactory <- newIORef javaNull
    screenCapture <- newIORef javaNull
    basicMotionGesturesHandler <- newIORef javaNull
    gameKeyEventHandler <- newIORef javaNull
    gameBehavior <- newIORef javaNull
    menuBehavior <- newIORef javaNull
    progressPaintable <- newIORef javaNull
    fontHeightP <- newIORef 0
    gameCanvasStartListener <- newIORef javaNull
    rawGameInputProcessor <- newIORef javaNull
    rawInputProcessor <- newIORef javaNull
    inputProcessor <- newIORef javaNull
    yIELD_SLEEP <- newIORef 0
    let this = AllBinaryGameCanvas header_ base basicColorFactory basicSetColorUtil touchFeatureFactory openGLFeatureFactory touchButtonFactory gameAdStateFactory gameStrings gameInputStrings gameStateFactory gameTickTimeDelayHelper gameTickDisplayInfoSingleton gameRunnable gamePauseRunnable formUtil myFormUtil updateMyFontProcessor myFontProcessor gameSpecificPaintable sensorGameUpdateProcessor endGameInfo startIntermissionInterface endLevelIntermissionInterface gameLayerManager gameState gameOver initialized gameStateTimeHelper highScoresHelper highScoreSubmitted realHighScoresPaintable highScoresPaintable localPlayerGameInputList isCheating hashtable isSingleKeyRepeatableProcessing gameInitializationInterfaceFactoryInterface touchButtonsPaintable touchPaintable cheatProcessor gameInputProcessor endGameProcessor realEndGameProcessor startIntermissionProcessor realStartIntermissionProcessor endGamePaintable endGameStatePaintable nonBotPaintable intermissionPaintable startIntermissionPaintable mainStateProcessor processGameProcessor highScoresFactoryInterface startLevel mainMenuInputProcessor popupMenuInputProcessor menuInputProcessor menuForm formPaintable openMenuPaintable menuPaintable currentTouchInputFactory colorFillPaintable baseGameStatistics primaryPlayerQueue secondaryPlayerQueue bUILD_GAME gameTypeFactory screenCapture basicMotionGesturesHandler gameKeyEventHandler gameBehavior menuBehavior progressPaintable fontHeightP gameCanvasStartListener rawGameInputProcessor rawInputProcessor inputProcessor yIELD_SLEEP
    jregisterLevel header_ this
    AllBinaryGameCanvasInterface.registerInterface_ header_
    GameCanvasRunnableInterface.registerInterface_ header_
    MenuListener.registerInterface_ header_
    IntermissionCompositeInterface.registerInterface_ header_
    IntermissionEnableListenerInterface.registerInterface_ header_
    PopupMenuInterface.registerInterface_ header_
    DisplayChangeEventListener.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getInGameMenuBehavior" (\() -> getInGameMenuBehavior_impl this)
    jregisterMethod header_ "setCurrentThread" (\() -> setCurrentThread_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "updateMenuFromEvent" (\() -> updateMenuFromEvent_impl this)
    jregisterMethod header_ "processSleep" (\() -> processSleep_impl this)
    jregisterMethod header_ "initPopupMenu" (\() -> initPopupMenu_impl this)
    jregisterMethod header_ "initMenu" (\() -> initMenu_impl this)
    jregisterMethod header_ "initMenu2" (\() -> initMenu2_impl this)
    jregisterMethod header_ "updateMenu" (\() -> updateMenu_impl this)
    jregisterMethod header_ "updateMenu2" (\() -> updateMenu2_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "unPause" (\() -> unPause_impl this)
    jregisterMethod header_ "isPausable" (\() -> isPausable_impl this)
    jregisterMethod header_ "popupMenu" (\() -> popupMenu_impl this)
    jregisterMethod header_ "popupMenu2" (\() -> popupMenu2_impl this)
    jregisterMethod header_ "toggleMenu" (\() -> toggleMenu_impl this)
    jregisterMethod header_ "closeMenu" (\() -> closeMenu_impl this)
    jregisterMethod header_ "closeMenu2" (\() -> closeMenu2_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "processorInit" (\() -> processorInit_impl this)
    jregisterMethod header_ "setProcessGameProcessorInit" (\() -> setProcessGameProcessorInit_impl this)
    jregisterMethod header_ "initSpecialPaint" (\() -> initSpecialPaint_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "notifyIntermission" (\() -> notifyIntermission_impl this)
    jregisterMethod header_ "mediaInit" (\() -> mediaInit_impl this)
    jregisterMethod header_ "initConfigurable" (\() -> initConfigurable_impl this)
    jregisterMethod header_ "initApp" (\() -> initApp_impl this)
    jregisterMethod header_ "initTouch" (\() -> initTouch_impl this)
    jregisterMethod header_ "updateCurrentTouchInputFactory" (\() -> updateCurrentTouchInputFactory_impl this)
    jregisterMethod header_ "updateTouch" (\() -> updateTouch_impl this)
    jregisterMethod header_ "updateTouch2" (\() -> updateTouch2_impl this)
    jregisterMethod header_ "postInitTouch" (\() -> postInitTouch_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "addCommands" (\() -> addCommands_impl this)
    jregisterMethod header_ "itemStateChanged" (\() -> itemStateChanged_impl this)
    jregisterMethod header_ "updateScreenButtonPaintable" (\() -> updateScreenButtonPaintable_impl this)
    jregisterMethod header_ "updateScreenButtonPaintable2" (\() -> updateScreenButtonPaintable2_impl this)
    jregisterMethod header_ "getLayerManager" (\() -> getLayerManager_impl this)
    jregisterMethod header_ "setLayerManager" (\() -> setLayerManager_impl this)
    jregisterMethod header_ "isGameOver" (\() -> isGameOver_impl this)
    jregisterMethod header_ "setGameOver" (\() -> setGameOver_impl this)
    jregisterMethod header_ "processGameOver" (\() -> processGameOver_impl this)
    jregisterMethod header_ "isHighScoreSubmitted" (\() -> isHighScoreSubmitted_impl this)
    jregisterMethod header_ "setHighScoreSubmitted" (\() -> setHighScoreSubmitted_impl this)
    jregisterMethod header_ "getGameState" (\() -> getGameState_impl this)
    jregisterMethod header_ "setGameState" (\() -> setGameState_impl this)
    jregisterMethod header_ "updateGameState" (\() -> updateGameState_impl this)
    jregisterMethod header_ "updateGameKeyEventProcessor" (\() -> updateGameKeyEventProcessor_impl this)
    jregisterMethod header_ "removeAllGameKeyInputListenersOnBuild" (\() -> removeAllGameKeyInputListenersOnBuild_impl this)
    jregisterMethod header_ "removeAllGameKeyInputListeners" (\() -> removeAllGameKeyInputListeners_impl this)
    jregisterMethod header_ "removeAllGameKeyInputListeners2" (\() -> removeAllGameKeyInputListeners2_impl this)
    jregisterMethod header_ "removeKeyInputListener" (\() -> removeKeyInputListener_impl this)
    jregisterMethod header_ "updateEndGameProcessor" (\() -> updateEndGameProcessor_impl this)
    jregisterMethod header_ "updateEndGameProcessor2" (\() -> updateEndGameProcessor2_impl this)
    jregisterMethod header_ "buildGameInit" (\() -> buildGameInit_impl this)
    jregisterMethod header_ "cleanupGame" (\() -> cleanupGame_impl this)
    jregisterMethod header_ "loadResourceLoadingLevel" (\() -> loadResourceLoadingLevel_impl this)
    jregisterMethod header_ "loadResources" (\() -> loadResources_impl this)
    jregisterMethod header_ "updateColor" (\() -> updateColor_impl this)
    jregisterMethod header_ "buildGame" (\() -> buildGame_impl this)
    jregisterMethod header_ "buildGame2" (\() -> buildGame2_impl this)
    jregisterMethod header_ "addKeyInputListener" (\() -> addKeyInputListener_impl this)
    jregisterMethod header_ "setGameCanvasStartListener" (\() -> setGameCanvasStartListener_impl this)
    jregisterMethod header_ "loadState" (\() -> loadState_impl this)
    jregisterMethod header_ "getLoadStateHashtable" (\() -> getLoadStateHashtable_impl this)
    jregisterMethod header_ "setLoadStateHashtable" (\() -> setLoadStateHashtable_impl this)
    jregisterMethod header_ "getCurrentStateHashtable" (\() -> getCurrentStateHashtable_impl this)
    jregisterMethod header_ "paintGameOver" (\() -> paintGameOver_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "processEndLevelIntermissionGameState" (\() -> processEndLevelIntermissionGameState_impl this)
    jregisterMethod header_ "nonBotPaint" (\() -> nonBotPaint_impl this)
    jregisterMethod header_ "paintIntermission" (\() -> paintIntermission_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyRepeated" (\() -> keyRepeated_impl this)
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyRepeatedByDevice" (\() -> keyRepeatedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    jregisterMethod header_ "handleRawKey" (\() -> handleRawKey_impl this)
    jregisterMethod header_ "endProgress" (\() -> endProgress_impl this)
    jregisterMethod header_ "processPlayingGame" (\() -> processPlayingGame_impl this)
    jregisterMethod header_ "threadInit" (\() -> threadInit_impl this)
    jregisterMethod header_ "processGame" (\() -> processGame_impl this)
    jregisterMethod header_ "notifyDonePainting" (\() -> notifyDonePainting_impl this)
    jregisterMethod header_ "shouldWait" (\() -> shouldWait_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "run2" (\() -> run2_impl this)
    jregisterMethod header_ "run3" (\() -> run3_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    jregisterMethod header_ "endGameThread" (\() -> endGameThread_impl this)
    jregisterMethod header_ "createHighScore" (\() -> createHighScore_impl this)
    jregisterMethod header_ "setHighScore" (\() -> setHighScore_impl this)
    jregisterMethod header_ "setHighScore2" (\() -> setHighScore2_impl this)
    jregisterMethod header_ "getGameStateTimeHelper" (\() -> getGameStateTimeHelper_impl this)
    jregisterMethod header_ "setInitialized" (\() -> setInitialized_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "setProgressPaintable" (\() -> setProgressPaintable_impl this)
    jregisterMethod header_ "getStartIntermissionInterface" (\() -> getStartIntermissionInterface_impl this)
    jregisterMethod header_ "getEndLevelIntermissionInterface" (\() -> getEndLevelIntermissionInterface_impl this)
    jregisterMethod header_ "setTouchPaintableP" (\() -> setTouchPaintableP_impl this)
    jregisterMethod header_ "getTouchPaintableP" (\() -> getTouchPaintableP_impl this)
    jregisterMethod header_ "setEndGamePaintable" (\() -> setEndGamePaintable_impl this)
    jregisterMethod header_ "getEndGamePaintable" (\() -> getEndGamePaintable_impl this)
    jregisterMethod header_ "setIntermissionPaintable" (\() -> setIntermissionPaintable_impl this)
    jregisterMethod header_ "getIntermissionPaintable" (\() -> getIntermissionPaintable_impl this)
    jregisterMethod header_ "getEndGameInfoP" (\() -> getEndGameInfoP_impl this)
    jregisterMethod header_ "setHighScoresPaintable" (\() -> setHighScoresPaintable_impl this)
    jregisterMethod header_ "getHighScoresPaintable" (\() -> getHighScoresPaintable_impl this)
    jregisterMethod header_ "getRealHighScoresPaintable" (\() -> getRealHighScoresPaintable_impl this)
    jregisterMethod header_ "clearPlayerGameInputList" (\() -> clearPlayerGameInputList_impl this)
    jregisterMethod header_ "addPlayerGameInput" (\() -> addPlayerGameInput_impl this)
    jregisterMethod header_ "setMenuInputProcessor" (\() -> setMenuInputProcessor_impl this)
    jregisterMethod header_ "getMenuInputProcessor" (\() -> getMenuInputProcessor_impl this)
    jregisterMethod header_ "getMenuForm" (\() -> getMenuForm_impl this)
    jregisterMethod header_ "setMenuForm" (\() -> setMenuForm_impl this)
    jregisterMethod header_ "getStartLevel" (\() -> getStartLevel_impl this)
    jregisterMethod header_ "setStartLevel" (\() -> setStartLevel_impl this)
    jregisterMethod header_ "setTouchButtonsPaintable" (\() -> setTouchButtonsPaintable_impl this)
    jregisterMethod header_ "getTouchButtonsPaintable" (\() -> getTouchButtonsPaintable_impl this)
    jregisterMethod header_ "setGameInputProcessor" (\() -> setGameInputProcessor_impl this)
    jregisterMethod header_ "getGameInputProcessor" (\() -> getGameInputProcessor_impl this)
    jregisterMethod header_ "setEndGameProcessor" (\() -> setEndGameProcessor_impl this)
    jregisterMethod header_ "getEndGameProcessor" (\() -> getEndGameProcessor_impl this)
    jregisterMethod header_ "setEndGameStatePaintable" (\() -> setEndGameStatePaintable_impl this)
    jregisterMethod header_ "getEndGameStatePaintable" (\() -> getEndGameStatePaintable_impl this)
    jregisterMethod header_ "setNonBotPaintableP" (\() -> setNonBotPaintableP_impl this)
    jregisterMethod header_ "getNonBotPaintableP" (\() -> getNonBotPaintableP_impl this)
    jregisterMethod header_ "setStartIntermissionPaintable" (\() -> setStartIntermissionPaintable_impl this)
    jregisterMethod header_ "getStartIntermissionPaintable" (\() -> getStartIntermissionPaintable_impl this)
    jregisterMethod header_ "setMainStateProcessor" (\() -> setMainStateProcessor_impl this)
    jregisterMethod header_ "getMainStateProcessor" (\() -> getMainStateProcessor_impl this)
    jregisterMethod header_ "setProcessGameProcessor" (\() -> setProcessGameProcessor_impl this)
    jregisterMethod header_ "getProcessGameProcessor" (\() -> getProcessGameProcessor_impl this)
    jregisterMethod header_ "setOpenMenuPaintable" (\() -> setOpenMenuPaintable_impl this)
    jregisterMethod header_ "getOpenMenuPaintable" (\() -> getOpenMenuPaintable_impl this)
    jregisterMethod header_ "setPopupMenuInputProcessor" (\() -> setPopupMenuInputProcessor_impl this)
    jregisterMethod header_ "getPopupMenuInputProcessor" (\() -> getPopupMenuInputProcessor_impl this)
    jregisterMethod header_ "getSensorGameUpdateProcessor" (\() -> getSensorGameUpdateProcessor_impl this)
    jregisterMethod header_ "getRawGameInputProcessor" (\() -> getRawGameInputProcessor_impl this)
    jregisterMethod header_ "getRawInputProcessor" (\() -> getRawInputProcessor_impl this)
    jregisterMethod header_ "setInputProcessor" (\() -> setInputProcessor_impl this)
    jregisterMethod header_ "getInputProcessor" (\() -> getInputProcessor_impl this)
    jregisterMethod header_ "setMenuPaintable" (\() -> setMenuPaintable_impl this)
    jregisterMethod header_ "getMenuPaintable" (\() -> getMenuPaintable_impl this)
    jregisterMethod header_ "setFormPaintable" (\() -> setFormPaintable_impl this)
    jregisterMethod header_ "getFormPaintable" (\() -> getFormPaintable_impl this)
    jregisterMethod header_ "setGameSpecificPaintableP" (\() -> setGameSpecificPaintableP_impl this)
    jregisterMethod header_ "getGameSpecificPaintableP" (\() -> getGameSpecificPaintableP_impl this)
    jregisterMethod header_ "isSingleThread" (\() -> isSingleThread_impl this)
    jregisterMethod header_ "isRunningInAnotherThread" (\() -> isRunningInAnotherThread_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: AllBinaryGameCanvas -> IO ()
initFields_ this = do
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.touchFeatureFactory =<< (TouchFeatureFactory.getInstance)
    jset this.openGLFeatureFactory =<< (OpenGLFeatureFactory.getInstance)
    jset this.touchButtonFactory =<< (TouchButtonFactory.getInstance)
    jset this.gameAdStateFactory =<< (GameAdStateFactory.getInstance)
    jset this.gameStrings =<< (GameStrings.getInstance)
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    jset this.gameStateFactory =<< (GameStateFactory.getInstance)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.gameTickDisplayInfoSingleton =<< (GameTickDisplayInfoSingleton.getInstance)
    jset this.gameRunnable =<< (GameCanvasRunnable.new_1 this)
    jset this.gamePauseRunnable =<< (GameCanvasPauseRunnable.new_1 this)
    jset this.formUtil =<< (FormUtil.getInstance)
    jset this.myFormUtil =<< (MyFormUtil.getInstance)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.gameSpecificPaintable =<< (NullPaintable.getInstance)
    jset this.sensorGameUpdateProcessor =<< (fmap (\value_ -> javaCast value_ :: SensorGameUpdateProcessor.SensorGameUpdateProcessor) (SingleSensorGameUpdateProcessor.new_))
    jset this.endGameInfo =<< (EndGameInfo.new_)
    jset this.startIntermissionInterface =<< (fmap (\value_ -> javaCast value_ :: IntermissionInterface.IntermissionInterface) (Intermission.new_))
    jset this.endLevelIntermissionInterface =<< (fmap (\value_ -> javaCast value_ :: IntermissionInterface.IntermissionInterface) (Intermission.new_))
    jset this.gameLayerManager =<< (AllBinaryGameLayerManager.getNullInstance)
    jset this.gameState ((jget ((jget (this).gameStateFactory)).nO_GAME_STATE))
    jset this.gameOver (False)
    jset this.initialized (False)
    jset this.gameStateTimeHelper =<< (TimeDelayHelper.new_1 0)
    jset this.highScoresHelper (javaNull)
    jset this.highScoreSubmitted (False)
    jset this.realHighScoresPaintable =<< (HighScoresPaintable.new_)
    jset this.highScoresPaintable =<< (NullPaintable.getInstance)
    jset this.localPlayerGameInputList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.isCheating (False)
    jset this.hashtable ((jget ((jget (this).base.stdUtil)).nULL_TABLE))
    jset this.isSingleKeyRepeatableProcessing (False)
    jset this.gameInitializationInterfaceFactoryInterface ((jget BasicBuildGameInitializerFactory.nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY))
    jset this.touchButtonsPaintable =<< (NullPaintable.getInstance)
    jset this.touchPaintable =<< (NullPaintable.getInstance)
    jset this.cheatProcessor =<< (fmap (\value_ -> javaCast value_ :: PlayerGameInput.PlayerGameInput) (NoPlayerGameInput.getInstance))
    jset this.gameInputProcessor =<< (Processor.getInstance)
    jset this.endGameProcessor =<< (Processor.getInstance)
    jset this.realEndGameProcessor =<< (Processor.getInstance)
    jset this.startIntermissionProcessor =<< (Processor.getInstance)
    jset this.realStartIntermissionProcessor =<< (Processor.getInstance)
    jset this.endGamePaintable =<< (NullPaintable.getInstance)
    jset this.endGameStatePaintable =<< (NullPaintable.getInstance)
    jset this.nonBotPaintable =<< (NullPaintable.getInstance)
    jset this.intermissionPaintable =<< (NullPaintable.getInstance)
    jset this.startIntermissionPaintable =<< (NullInitUpdatePaintable.getInstance)
    jset this.mainStateProcessor =<< (Processor.getInstance)
    jset this.processGameProcessor =<< (Processor.getInstance)
    jset this.highScoresFactoryInterface (javaNull)
    jset this.startLevel (0)
    jset this.mainMenuInputProcessor =<< (fmap (\value_ -> javaCast value_ :: BasicMenuInputProcessor.BasicMenuInputProcessor) (NoMenuInputProcessor.getInstance))
    jset this.popupMenuInputProcessor =<< (fmap (\value_ -> javaCast value_ :: BasicMenuInputProcessor.BasicMenuInputProcessor) (NoMenuInputProcessor.getInstance))
    jset this.menuInputProcessor =<< (fmap (\value_ -> javaCast value_ :: BasicMenuInputProcessor.BasicMenuInputProcessor) (NoMenuInputProcessor.getInstance))
    jset this.menuForm =<< (ScrollSelectionForm.getNullScrollSelectionForm)
    jset this.formPaintable =<< (NullPaintable.getInstance)
    jset this.openMenuPaintable =<< (NullPaintable.getInstance)
    jset this.menuPaintable =<< (NullPaintable.getInstance)
    jset this.currentTouchInputFactory =<< (NoButtonsTouchInputFactory.getInstance)
    jset this.colorFillPaintable =<< (fmap (\value_ -> javaCast value_ :: ColorFillBasePaintable.ColorFillBasePaintable) (ColorFillPaintableFactory.getInstance_2 ((jio (ColorFillPaintableFactory.getInstance))) (jget ((jget (this).basicColorFactory)).bLACK) True))
    jset this.baseGameStatistics =<< (fmap (\value_ -> javaCast value_ :: BaseGameStatistics.BaseGameStatistics) (GameStatisticsFactory.getInstance))
    jset this.primaryPlayerQueue =<< (PrimaryPlayerQueueFactory.getInstance)
    jset this.secondaryPlayerQueue =<< (SecondaryPlayerQueueFactory.getInstance)
    jset this.bUILD_GAME ("buildGame")
    jset this.gameTypeFactory =<< (GameTypeFactory.getInstance)
    jset this.screenCapture =<< (ScreenCaptureFactory.getInstance)
    jset this.basicMotionGesturesHandler =<< (BasicMotionGesturesHandler.getInstance)
    jset this.gameKeyEventHandler =<< (GameKeyEventHandler.getInstance)
    jset this.gameBehavior (javaNull)
    jset this.menuBehavior (javaNull)
    jset this.progressPaintable =<< (ProgressCanvasFactory.getLazyInstance)
    jset this.fontHeightP (0)
    jset this.gameCanvasStartListener ((javaCast NullDemoPaintable.nULL_DEMO_PAINTABLE :: DemoPaintableInterface.DemoPaintableInterface))
    jset this.rawGameInputProcessor =<< (fmap (\value_ -> javaCast value_ :: InputProcessor.InputProcessor) (GameCanvasInputProcessor.new_1 this))
    jset this.rawInputProcessor =<< (fmap (\value_ -> javaCast value_ :: InputProcessor.InputProcessor) (FormInputProcessor.new_1 this))
    jset this.inputProcessor =<< (AllBinaryGameCanvas.getRawGameInputProcessor this)
    jset this.yIELD_SLEEP (100)
    pure ()

new_5 :: CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> HighScoresFactoryInterface.HighScoresFactoryInterface -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> Bool -> IO AllBinaryGameCanvas
new_5 commandListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered = do
    this <- newRecord_
    init_5 this commandListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered
    pure this

init_5 :: AllBinaryGameCanvas -> CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> HighScoresFactoryInterface.HighScoresFactoryInterface -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> Bool -> IO ()
init_5 this commandListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered = do
        RunnableCanvas.init_3 this.base (commandListener) (jget ((jio (CanvasStrings.getInstance))).eMPTY_CHILD_NAME_LIST) (True)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (HighScoresFactoryInterface.createHighScoresHelper highScoresFactoryInterface)
        jset (this).highScoresHelper (assignedValue)
        jset (this).gameInitializationInterfaceFactoryInterface (gameInitializationInterfaceFactoryInterface)
        Control.Monad.void (AllBinaryGameCanvas.init this gameLayerManager buffered)
        jset (this).highScoresFactoryInterface (highScoresFactoryInterface)
        if (((jio (GameInfo.getGameType ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))) == (jget ((jget (this).gameTypeFactory)).bOT)) || ((jio (GameInfo.getGameType ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))) == (jget ((jget (this).gameTypeFactory)).nONE))) then do
            assignedValue <- (DemoGameBehavior.getInstance)
            jset (this).gameBehavior (assignedValue)
            assignedValue <- (BaseMenuBehavior.getInstance)
            jset (this).menuBehavior (assignedValue)
        else do
            assignedValue <- (BaseGameBehavior.getInstance)
            jset (this).gameBehavior (assignedValue)
            assignedValue <- (AllBinaryGameCanvas.getInGameMenuBehavior this)
            jset (this).menuBehavior (assignedValue)
        Control.Monad.void (AllBinaryGameCanvas.initPopupMenu this)
        Control.Monad.void (AllBinaryGameCanvas.initMenu this)
        Control.Monad.void (AllBinaryGameCanvas.initSpecialPaint this)
        Control.Monad.void (DisplayChangeEventHandler.addListenerInterface ((jio (DisplayChangeEventHandler.getInstance))) (javaCast this))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

updateMeasurement_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.canvasStrings)).oN_DISPLAY_CHANGE_EVENT) e)
            ) $ do
            font <- (Graphics.getFont graphics)
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).sTART)))) (jget ((jget (this).base.base.canvasStrings)).fD_WIDTH)))) (Prelude.fromInteger (jnumericInteger (jio (MyFontProcessor.defaultCharWidth font))))))) (jget ((jget (this).base.base.canvasStrings)).fD_HEIGHT)))) (Prelude.fromInteger (jnumericInteger (jio (Font.getHeight font))))))))) this (jget ((jget (this).base.base.canvasStrings)).uPDATE_MEASUREMENT))
            assignedValue <- (Font.getHeight font)
            jset (this).fontHeightP (assignedValue)
            Control.Monad.void (MyFormUtil.updateMeasurement ((jget (this).myFormUtil)) graphics)
            popupMenuRectangle <- (MyFormUtil.getPopupMenuRectangle ((jget (this).myFormUtil)))
            let basicPopupMenuPaintable = ((javaCast (jio (AllBinaryGameCanvas.getOpenMenuPaintable this)) :: BasicPopupMenuPaintable.BasicPopupMenuPaintable))
            Control.Monad.void (BasicPopupMenuPaintable.init basicPopupMenuPaintable popupMenuRectangle)
            when ((jtoObject (jio (AllBinaryGameCanvas.getPopupMenuInputProcessor this))) /= (jtoObject (jio (NoMenuInputProcessor.getInstance)))) $ do
                let popupMenuInputProcessor = ((javaCast (jio (AllBinaryGameCanvas.getPopupMenuInputProcessor this)) :: PopupMenuInputProcessor.PopupMenuInputProcessor))
                Control.Monad.void (PopupMenuInputProcessor.init popupMenuInputProcessor popupMenuRectangle)
            assignedValue <- (MyFontProcessor.getInstance)
            jset (this).myFontProcessor (assignedValue)
        pure ()


getInGameMenuBehavior :: (JavaObjectClass this_) => this_ -> IO (BaseMenuBehavior.BaseMenuBehavior)
getInGameMenuBehavior object_ = jmethod object_ "getInGameMenuBehavior" (\() -> (getInGameMenuBehavior_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getInGameMenuBehavior_super :: (JavaObjectClass this_) => this_ -> IO (BaseMenuBehavior.BaseMenuBehavior)
getInGameMenuBehavior_super object_ = (getInGameMenuBehavior_impl (javaCast object_ :: AllBinaryGameCanvas))

getInGameMenuBehavior_impl :: AllBinaryGameCanvas -> IO (BaseMenuBehavior.BaseMenuBehavior)
getInGameMenuBehavior_impl this = do
        (fmap (\value_ -> javaCast value_ :: BaseMenuBehavior.BaseMenuBehavior) (InGameMenuBehavior.getInstance))


setCurrentThread :: (JavaObjectClass this_) => this_ -> IO (())
setCurrentThread object_ = jmethod object_ "setCurrentThread" (\() -> (setCurrentThread_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

setCurrentThread_super :: (JavaObjectClass this_) => this_ -> IO (())
setCurrentThread_super object_ = (setCurrentThread_impl (javaCast object_ :: AllBinaryGameCanvas))

setCurrentThread_impl :: AllBinaryGameCanvas -> IO (())
setCurrentThread_impl this = do
        if (jio (J2MEUtil.isHTML)) then do
            Control.Monad.void (RunnableCanvas.setCurrentThreadFake_super this.base)
        else do
            Control.Monad.void (RunnableCanvas.setCurrentThread_super this.base)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

onEvent_impl :: AllBinaryGameCanvas -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

onDisplayChangeEvent_impl :: AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.canvasStrings)).oN_DISPLAY_CHANGE_EVENT) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).sTART)))) (jio (DisplayInfoSingleton.toString ((jio (DisplayInfoSingleton.getInstance)))))))))) this (jget ((jget (this).base.base.canvasStrings)).uPDATE_MEASUREMENT))
            jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
            Control.Monad.void (BaseMenuBehavior.onDisplayChangeEvent ((jget (this).menuBehavior)) this displayChangeEvent)
        pure ()


-- throws Exception
updateMenuFromEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
updateMenuFromEvent object_ a1 = jmethod object_ "updateMenuFromEvent" (\() -> (updateMenuFromEvent_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

updateMenuFromEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
updateMenuFromEvent_super object_ a1 = (updateMenuFromEvent_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

updateMenuFromEvent_impl :: AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
updateMenuFromEvent_impl this displayChangeEvent = do
        formType <- (FormTypeFactory.getFormType ((jio (FormTypeFactory.getInstance))))
        rectangle <- (FormUtil.createFormRectangle ((jget (this).formUtil)))
        Control.Monad.void (ScrollSelectionForm.init ((jget (this).menuForm)) rectangle formType)
        when ((jget (this).currentTouchInputFactory) /= (jio (NoButtonsTouchInputFactory.getInstance))) $ do
            Control.Monad.void (TouchButtonFactory.toggle ((jget (this).touchButtonFactory)) (jio (RunnableCanvas.isPaused this)) (jio (BaseTouchInput.getList ((jget (this).currentTouchInputFactory)))))
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


-- throws Exception
processSleep :: (JavaObjectClass this_) => this_ -> IO (())
processSleep object_ = jmethod object_ "processSleep" (\() -> (processSleep_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

processSleep_super :: (JavaObjectClass this_) => this_ -> IO (())
processSleep_super object_ = (processSleep_impl (javaCast object_ :: AllBinaryGameCanvas))

processSleep_impl :: AllBinaryGameCanvas -> IO (())
processSleep_impl this = do
        Control.Monad.void (RunnableCanvas.processSleep_super this.base)
        when (jio (AllBinaryMediaManager.update)) $ do
            when (Prelude.not (jio (PlayerQueue.process ((jget (this).primaryPlayerQueue))))) $ do
                Control.Monad.void (PlayerQueue.process ((jget (this).secondaryPlayerQueue)))
        when ((jio (BasicMenuInputProcessor.processInputList ((jget (this).menuInputProcessor)))) /= (Prelude.negate 1)) $ do
            Control.Monad.void (Processor.process ((jget (this).base.runnableCanvasRefreshHelper)))
        pure ()


-- throws Exception
initPopupMenu :: (JavaObjectClass this_) => this_ -> IO (())
initPopupMenu object_ = jmethod object_ "initPopupMenu" (\() -> (initPopupMenu_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

initPopupMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
initPopupMenu_super object_ = (initPopupMenu_impl (javaCast object_ :: AllBinaryGameCanvas))

initPopupMenu_impl :: AllBinaryGameCanvas -> IO (())
initPopupMenu_impl this = do
        if ((jtoObject (jget (this).popupMenuInputProcessor)) == (jtoObject (jio (NoMenuInputProcessor.getInstance)))) then do
            features <- (Features.getInstance)
            popupMenuRectangle <- (MyFormUtil.getPopupMenuRectangle ((jget (this).myFormUtil)))
            when (jio (Features.isFeature features (javaCast (jget ((jget (this).touchFeatureFactory)).tOUCH_ENABLED)))) $ do
                Control.Monad.void (AllBinaryGameCanvas.setOpenMenuPaintable this (javaCast (jio (BasicPopupMenuPaintable.new_3 popupMenuRectangle (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jget (this).gameLayerManager)))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager))))))))
                Control.Monad.void (AllBinaryGameCanvas.setPopupMenuInputProcessor this (javaCast (jio (PopupMenuInputProcessor.new_4 (jio (BasicArrayListD.new_)) (Prelude.negate 1) this popupMenuRectangle))))
        else do
            pure ()
        pure ()


initMenu :: (JavaObjectClass this_) => this_ -> IO (())
initMenu object_ = jmethod object_ "initMenu" (\() -> (initMenu_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

initMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
initMenu_super object_ = (initMenu_impl (javaCast object_ :: AllBinaryGameCanvas))

initMenu_impl :: AllBinaryGameCanvas -> IO (())
initMenu_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "initMenu" e)
            ) $ do
            Control.Monad.void (BaseMenuBehavior.initMenu ((jget (this).menuBehavior)) this)
        pure ()


-- throws Exception
initMenu2 :: (JavaObjectClass this_) => this_ -> IO (())
initMenu2 object_ = jmethod object_ "initMenu2" (\() -> (initMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

initMenu2_super :: (JavaObjectClass this_) => this_ -> IO (())
initMenu2_super object_ = (initMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))

initMenu2_impl :: AllBinaryGameCanvas -> IO (())
initMenu2_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.closeMenu this)
        formType <- (FormTypeFactory.getFormType ((jio (FormTypeFactory.getInstance))))
        gameLimitedCommandTextItemArrayFactory <- (GameLimitedCommandTextItemArrayFactory.getInstance)
        commandTextItemArrayFactory <- (GameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory gameLimitedCommandTextItemArrayFactory)
        items <- (CommandTextItemArrayFactory.getInstance commandTextItemArrayFactory (jio (RunnableCanvas.getCommandStack this)) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jget (this).gameLayerManager)))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager)))))
        rectangle <- (FormUtil.createFormRectangle ((jget (this).formUtil)))
        Control.Monad.void (AllBinaryGameCanvas.setMenuForm this (jio (CommandCurrentSelectionFormFactory.getInstance (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) items rectangle formType 25 False (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jget (this).gameLayerManager)))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager)))))))
        scrollSelectionForm <- (AllBinaryGameCanvas.getMenuForm this)
        features <- (Features.getInstance)
        if (jio (Features.isFeature features (javaCast (jget ((jget (this).touchFeatureFactory)).tOUCH_ENABLED)))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicMenuInputProcessor.BasicMenuInputProcessor) (PopupCommandFormInputProcessor.new_5 (jio (BasicArrayListD.new_)) (Prelude.negate 1) this scrollSelectionForm (javaCast (jio (AllBinaryGameCanvas.getPopupMenuInputProcessor this)) :: PopupMenuInputProcessor.PopupMenuInputProcessor)))
            jset (this).mainMenuInputProcessor (assignedValue)
        else do
            pure ()
        Control.Monad.void (AllBinaryGameCanvas.setMenuInputProcessor this (jio (AllBinaryGameCanvas.getPopupMenuInputProcessor this)))
        if (scrollSelectionForm /= (jio (ScrollSelectionFormNoneFactory.getInstance))) then do
            Control.Monad.void (AllBinaryGameCanvas.setFormPaintable this (javaCast (jio (FormPaintable.new_1 scrollSelectionForm))))
        else do
            pure ()
        Control.Monad.void (AllBinaryGameCanvas.closeMenu this)
        pure ()


updateMenu :: (JavaObjectClass this_) => this_ -> IO (())
updateMenu object_ = jmethod object_ "updateMenu" (\() -> (updateMenu_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
updateMenu_super object_ = (updateMenu_impl (javaCast object_ :: AllBinaryGameCanvas))

updateMenu_impl :: AllBinaryGameCanvas -> IO (())
updateMenu_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "initMenu" e)
            ) $ do
            Control.Monad.void (BaseMenuBehavior.updateMenu ((jget (this).menuBehavior)) this)
        pure ()


-- throws Exception
updateMenu2 :: (JavaObjectClass this_) => this_ -> IO (())
updateMenu2 object_ = jmethod object_ "updateMenu2" (\() -> (updateMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateMenu2_super :: (JavaObjectClass this_) => this_ -> IO (())
updateMenu2_super object_ = (updateMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))

updateMenu2_impl :: AllBinaryGameCanvas -> IO (())
updateMenu2_impl this = do
        scrollSelectionForm <- (AllBinaryGameCanvas.getMenuForm this)
        Control.Monad.void (ScrollSelectionForm.deleteAll scrollSelectionForm)
        gameLimitedCommandTextItemArrayFactory <- (GameLimitedCommandTextItemArrayFactory.getInstance)
        commandTextItemArrayFactory <- (GameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory gameLimitedCommandTextItemArrayFactory)
        items <- (CommandTextItemArrayFactory.getInstance commandTextItemArrayFactory (jio (RunnableCanvas.getCommandStack this)) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jget (this).gameLayerManager)))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager)))))
        let size = (jlength items)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (ScrollSelectionForm.append scrollSelectionForm (jindex items (index)))
        formType <- (FormTypeFactory.getFormType ((jio (FormTypeFactory.getInstance))))
        rectangle <- (FormUtil.createFormRectangle ((jget (this).formUtil)))
        Control.Monad.void (ScrollSelectionForm.init scrollSelectionForm rectangle formType)
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: AllBinaryGameCanvas))

pause_impl :: AllBinaryGameCanvas -> IO (())
pause_impl this = do
        Control.Monad.void (DemoGameBehavior.pause ((jget (this).gameBehavior)) this)
        Control.Monad.void (AllBinaryGameCanvas.closeMenu this)
        Control.Monad.void (RunnableCanvas.pause_super this.base)
        Control.Monad.void (TouchButtonFactory.toggle ((jget (this).touchButtonFactory)) (jio (RunnableCanvas.isPaused this)) (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))))
        Control.Monad.void (TsUtil.gc ((jget (this).base.tsUtil)))
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: AllBinaryGameCanvas))

unPause_impl :: AllBinaryGameCanvas -> IO (())
unPause_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).gameStrings)).uNPAUSE))
        Control.Monad.void (AllBinaryGameCanvas.closeMenu this)
        Control.Monad.void (TsUtil.gc ((jget (this).base.tsUtil)))
        Control.Monad.void (RunnableCanvas.unPause_super this.base)
        Control.Monad.void (TouchButtonFactory.toggle ((jget (this).touchButtonFactory)) (jio (RunnableCanvas.isPaused this)) (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))))
        Control.Monad.void (DemoGameBehavior.unPause ((jget (this).gameBehavior)) this)
        pure ()


isPausable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPausable object_ = jmethod object_ "isPausable" (\() -> (isPausable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

isPausable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPausable_super object_ = (isPausable_impl (javaCast object_ :: AllBinaryGameCanvas))

isPausable_impl :: AllBinaryGameCanvas -> IO (Bool)
isPausable_impl this = do
    javaCatchReturn $ do
        if ((jio (CurrentDisplayableFactory.getUsedRunnable ((jio (CurrentDisplayableFactory.getInstance))))) == (jio (NullWaitGameRunnable.getInstance))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
popupMenu :: (JavaObjectClass this_) => this_ -> IO (())
popupMenu object_ = jmethod object_ "popupMenu" (\() -> (popupMenu_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

popupMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
popupMenu_super object_ = (popupMenu_impl (javaCast object_ :: AllBinaryGameCanvas))

popupMenu_impl :: AllBinaryGameCanvas -> IO (())
popupMenu_impl this = do
        Control.Monad.void (BaseMenuBehavior.popupMenu ((jget (this).menuBehavior)) this)
        pure ()


-- throws Exception
popupMenu2 :: (JavaObjectClass this_) => this_ -> IO (())
popupMenu2 object_ = jmethod object_ "popupMenu2" (\() -> (popupMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

popupMenu2_super :: (JavaObjectClass this_) => this_ -> IO (())
popupMenu2_super object_ = (popupMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))

popupMenu2_impl :: AllBinaryGameCanvas -> IO (())
popupMenu2_impl this = do
        Control.Monad.void (PlayerQueue.add ((jget (this).primaryPlayerQueue)) (jio (SelectSound.getInstance)))
        Control.Monad.void (AllBinaryGameCanvas.setMenuPaintable this (jio (AllBinaryGameCanvas.getFormPaintable this)))
        Control.Monad.void (AllBinaryGameCanvas.setMenuInputProcessor this (jget (this).mainMenuInputProcessor))
        Control.Monad.void (BasicMotionGesturesHandler.addListenerInterface ((jget (this).basicMotionGesturesHandler)) (javaCast (jget (this).mainMenuInputProcessor)))
        Control.Monad.void (GameKeyEventHandler.addListener ((jget (this).gameKeyEventHandler)) (javaCast (jget (this).mainMenuInputProcessor)))
        pure ()


-- throws Exception
toggleMenu :: (JavaObjectClass this_) => this_ -> IO (())
toggleMenu object_ = jmethod object_ "toggleMenu" (\() -> (toggleMenu_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

toggleMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
toggleMenu_super object_ = (toggleMenu_impl (javaCast object_ :: AllBinaryGameCanvas))

toggleMenu_impl :: AllBinaryGameCanvas -> IO (())
toggleMenu_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).gameStrings)).tOGGLE_MENU))
        if ((jio (AllBinaryGameCanvas.getMenuPaintable this)) == (jio (AllBinaryGameCanvas.getOpenMenuPaintable this))) then do
            Control.Monad.void (AllBinaryGameCanvas.pause this)
            Control.Monad.void (AllBinaryGameCanvas.updateMenu this)
            Control.Monad.void (AllBinaryGameCanvas.popupMenu this)
        else when ((jio (AllBinaryGameCanvas.getMenuPaintable this)) == (jio (AllBinaryGameCanvas.getFormPaintable this))) $ do
            Control.Monad.void (PlayerQueue.add ((jget (this).primaryPlayerQueue)) (jio (SelectSound.getInstance)))
            Control.Monad.void (AllBinaryGameCanvas.unPause this)
        pure ()


closeMenu :: (JavaObjectClass this_) => this_ -> IO (())
closeMenu object_ = jmethod object_ "closeMenu" (\() -> (closeMenu_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

closeMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
closeMenu_super object_ = (closeMenu_impl (javaCast object_ :: AllBinaryGameCanvas))

closeMenu_impl :: AllBinaryGameCanvas -> IO (())
closeMenu_impl this = do
        Control.Monad.void (BaseMenuBehavior.closeMenu ((jget (this).menuBehavior)) this)
        pure ()


closeMenu2 :: (JavaObjectClass this_) => this_ -> IO (())
closeMenu2 object_ = jmethod object_ "closeMenu2" (\() -> (closeMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

closeMenu2_super :: (JavaObjectClass this_) => this_ -> IO (())
closeMenu2_super object_ = (closeMenu2_impl (javaCast object_ :: AllBinaryGameCanvas))

closeMenu2_impl :: AllBinaryGameCanvas -> IO (())
closeMenu2_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.setMenuPaintable this (jio (AllBinaryGameCanvas.getOpenMenuPaintable this)))
        Control.Monad.void (BasicMotionGesturesHandler.removeListener ((jget (this).basicMotionGesturesHandler)) (javaCast (jget (this).mainMenuInputProcessor)))
        Control.Monad.void (GameKeyEventHandler.removeListener ((jget (this).gameKeyEventHandler)) (javaCast (jget (this).mainMenuInputProcessor)))
        Control.Monad.void (AllBinaryGameCanvas.setMenuInputProcessor this (jio (AllBinaryGameCanvas.getPopupMenuInputProcessor this)))
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: AllBinaryGameCanvas))

open_impl :: AllBinaryGameCanvas -> IO (())
open_impl this = do
        Control.Monad.void (BasicMotionGesturesHandler.addListenerInterface ((jget (this).basicMotionGesturesHandler)) (javaCast (jget (this).menuInputProcessor)))
        Control.Monad.void (GameKeyEventHandler.addListener ((jget (this).gameKeyEventHandler)) (javaCast (jget (this).menuInputProcessor)))
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: AllBinaryGameCanvas))

close_impl :: AllBinaryGameCanvas -> IO (())
close_impl this = do
        Control.Monad.void (BasicMotionGesturesHandler.removeListener ((jget (this).basicMotionGesturesHandler)) (javaCast (jget (this).menuInputProcessor)))
        Control.Monad.void (GameKeyEventHandler.removeListener ((jget (this).gameKeyEventHandler)) (javaCast (jget (this).menuInputProcessor)))
        Control.Monad.void (PlayerQueue.clear ((jget (this).primaryPlayerQueue)))
        Control.Monad.void (PlayerQueue.clear ((jget (this).secondaryPlayerQueue)))
        pure ()


-- throws Exception
processorInit :: (JavaObjectClass this_) => this_ -> IO (())
processorInit object_ = jmethod object_ "processorInit" (\() -> (processorInit_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

processorInit_super :: (JavaObjectClass this_) => this_ -> IO (())
processorInit_super object_ = (processorInit_impl (javaCast object_ :: AllBinaryGameCanvas))

processorInit_impl :: AllBinaryGameCanvas -> IO (())
processorInit_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.setMainStateProcessor this (jio (Processor.getInstance)))
        Control.Monad.void (AllBinaryGameCanvas.setProcessGameProcessorInit this)
        pure ()


setProcessGameProcessorInit :: (JavaObjectClass this_) => this_ -> IO (())
setProcessGameProcessorInit object_ = jmethod object_ "setProcessGameProcessorInit" (\() -> (setProcessGameProcessorInit_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

setProcessGameProcessorInit_super :: (JavaObjectClass this_) => this_ -> IO (())
setProcessGameProcessorInit_super object_ = (setProcessGameProcessorInit_impl (javaCast object_ :: AllBinaryGameCanvas))

setProcessGameProcessorInit_impl :: AllBinaryGameCanvas -> IO (())
setProcessGameProcessorInit_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.setProcessGameProcessor this (javaCast (jio (GameProcessor.new_1 this))))
        pure ()


initSpecialPaint :: (JavaObjectClass this_) => this_ -> IO (())
initSpecialPaint object_ = jmethod object_ "initSpecialPaint" (\() -> (initSpecialPaint_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

initSpecialPaint_super :: (JavaObjectClass this_) => this_ -> IO (())
initSpecialPaint_super object_ = (initSpecialPaint_impl (javaCast object_ :: AllBinaryGameCanvas))

initSpecialPaint_impl :: AllBinaryGameCanvas -> IO (())
initSpecialPaint_impl this = do
        Control.Monad.void (BaseMenuBehavior.initSpecialPaint ((jget (this).menuBehavior)) this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> Bool -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> Bool -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2

init_impl :: AllBinaryGameCanvas -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> Bool -> IO (())
init_impl this gameLayerManager buffered = do
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).gameStateTimeHelper)))
        Control.Monad.void (AllBinaryGameCanvas.setHighScoreSubmitted this False)
        Control.Monad.void (AllBinaryGameCanvas.setLayerManager this gameLayerManager)
        if (Prelude.not buffered) then do
            let bUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX"
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) bUFF_MESSAGE this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        else do
            javaThrow ((JavaException "Exception" "Buffering is disabled"))
        Control.Monad.void (AllBinaryGameCanvas.setGameInputProcessor this (jio (Processor.getInstance)))
        features <- (Features.getInstance)
        if (jio (Features.isFeature features (javaCast (jget ((jio (GameFeatureFactory.getInstance))).cHEATING)))) then do
            jset (this).isCheating (True)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: PlayerGameInput.PlayerGameInput) (CheatGameInputProcessor.new_1 this))
            jset (this).cheatProcessor (assignedValue)
            Control.Monad.void (GameKeyEventHandler.addListener ((jget (this).gameKeyEventHandler)) (javaCast (jget (this).cheatProcessor)))
        else do
            jset (this).isCheating (False)
            assignedValue <- (NoPlayerGameInput.getInstance)
            jset (this).cheatProcessor (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (EndGameProcessor.new_1 this))
        jset (this).realEndGameProcessor (assignedValue)
        Control.Monad.void (AllBinaryGameCanvas.setEndGameProcessor this (jio (Processor.getInstance)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (StartIntermissionProcessor.new_1 this))
        jset (this).realStartIntermissionProcessor (assignedValue)
        assignedValue <- (Processor.getInstance)
        jset (this).startIntermissionProcessor (assignedValue)
        Control.Monad.void (AllBinaryGameCanvas.setEndGameStatePaintable this (javaCast (jio (EndGamePaintable.new_1 this))))
        Control.Monad.void (AllBinaryGameCanvas.setEndGamePaintable this (jio (NullPaintable.getInstance)))
        Control.Monad.void (AllBinaryGameCanvas.setIntermissionPaintable this (jio (NullPaintable.getInstance)))
        Control.Monad.void (IntermissionInterface.setListener ((jio (AllBinaryGameCanvas.getStartIntermissionInterface this))) this)
        pure ()


notifyIntermission :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
notifyIntermission object_ a1 = jmethod object_ "notifyIntermission" (\() -> (notifyIntermission_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

notifyIntermission_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
notifyIntermission_super object_ a1 = (notifyIntermission_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

notifyIntermission_impl :: AllBinaryGameCanvas -> Bool -> IO (())
notifyIntermission_impl this enable = do
        if enable then do
            jset (this).startIntermissionProcessor ((jget (this).realStartIntermissionProcessor))
        else do
            assignedValue <- (Processor.getInstance)
            jset (this).startIntermissionProcessor (assignedValue)
        if enable then do
            Control.Monad.void (AllBinaryGameCanvas.setIntermissionPaintable this (javaCast (jio (AllBinaryGameCanvas.getStartIntermissionPaintable this))))
        else do
            Control.Monad.void (AllBinaryGameCanvas.setIntermissionPaintable this (jio (NullPaintable.getInstance)))
        pure ()


-- throws Exception
mediaInit :: (JavaObjectClass this_) => this_ -> IO (())
mediaInit object_ = jmethod object_ "mediaInit" (\() -> (mediaInit_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

mediaInit_super :: (JavaObjectClass this_) => this_ -> IO (())
mediaInit_super object_ = (mediaInit_impl (javaCast object_ :: AllBinaryGameCanvas))

mediaInit_impl :: AllBinaryGameCanvas -> IO (())
mediaInit_impl this = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED) this)
        pure ()


-- throws Exception
initConfigurable :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initConfigurable object_ a1 = jmethod object_ "initConfigurable" (\() -> (initConfigurable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

initConfigurable_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initConfigurable_super object_ a1 = (initConfigurable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

initConfigurable_impl :: AllBinaryGameCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initConfigurable_impl this abeClientInformation = do
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Setting Configurables")
        Control.Monad.void (GameInitializationUtil.initGame ((jio (GameInitializationUtil.getInstance))) abeClientInformation (javaCast this) (jget (this).gameInitializationInterfaceFactoryInterface))
        gameFeatureFactory <- (GameFeatureFactory.getInstance)
        changedGameFeatureListener <- (ChangedGameFeatureListener.getInstance)
        when (jio (ChangedGameFeatureListener.isChangedFeature changedGameFeatureListener (javaCast (jget (gameFeatureFactory).sOUND)))) $ do
            features <- (Features.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.new_))) "Sound Changing To: "))) (jio (Features.isFeature features (javaCast (jget (gameFeatureFactory).sOUND))))))))) this "initConfigurable")
            Control.Monad.void (AllBinaryGameCanvas.mediaInit this)
            Control.Monad.void (ChangedGameFeatureListener.remove changedGameFeatureListener (javaCast (jget (gameFeatureFactory).sOUND)))
        sensorFeatureFactory <- (SensorFeatureFactory.getInstance)
        when (((jio (ChangedGameFeatureListener.isChangedFeature changedGameFeatureListener (javaCast (jget (sensorFeatureFactory).oRIENTATION_SENSORS)))) || (jio (ChangedGameFeatureListener.isChangedFeature changedGameFeatureListener (javaCast (jget (sensorFeatureFactory).nO_ORIENTATION))))) || (jio (ChangedGameFeatureListener.isChangedFeature changedGameFeatureListener (javaCast (jget (sensorFeatureFactory).sIMULATED_ORIENTATION_SENSORS))))) $ do
            Control.Monad.void (ChangedGameFeatureListener.remove changedGameFeatureListener (javaCast (jget (sensorFeatureFactory).nO_ORIENTATION)))
            Control.Monad.void (ChangedGameFeatureListener.remove changedGameFeatureListener (javaCast (jget (sensorFeatureFactory).oRIENTATION_SENSORS)))
            Control.Monad.void (ChangedGameFeatureListener.remove changedGameFeatureListener (javaCast (jget (sensorFeatureFactory).sIMULATED_ORIENTATION_SENSORS)))
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        Control.Monad.void (AllBinaryGameCanvas.loadResourceLoadingLevel this (jget (resourceLoadingLevelFactory).lOAD_GAME))
        pure ()


-- throws Exception
initApp :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initApp object_ a1 = jmethod object_ "initApp" (\() -> (initApp_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

initApp_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initApp_super object_ a1 = (initApp_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

initApp_impl :: AllBinaryGameCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initApp_impl this abeClientInformation = do
        Control.Monad.void (AllBinaryGameCanvas.initConfigurable this abeClientInformation)
        Control.Monad.void (AllBinaryGameCanvas.processorInit this)
        Control.Monad.void (SensorGameUpdateProcessor.process ((jget (this).sensorGameUpdateProcessor)) (jget (this).gameLayerManager))
        Control.Monad.void (SensorGameUpdateProcessor.sendNotifications ((jget (this).sensorGameUpdateProcessor)) (jget (this).gameLayerManager))
        Control.Monad.void (AllBinaryGameCanvas.initTouch this)
        pure ()


-- throws Exception
initTouch :: (JavaObjectClass this_) => this_ -> IO (())
initTouch object_ = jmethod object_ "initTouch" (\() -> (initTouch_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

initTouch_super :: (JavaObjectClass this_) => this_ -> IO (())
initTouch_super object_ = (initTouch_impl (javaCast object_ :: AllBinaryGameCanvas))

initTouch_impl :: AllBinaryGameCanvas -> IO (())
initTouch_impl this = do
        let gameInitializedEvent = (jget ((jio (GameInitializationUtil.getInstance))).eVENT)
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        Control.Monad.void (GameInitializedEvent.setResourceLoadingLevel gameInitializedEvent (jget (resourceLoadingLevelFactory).lOAD_TOUCH))
        Control.Monad.void (GameInitializedEventHandler.fireEvent ((jio (GameInitializedEventHandler.getInstance))) (javaCast gameInitializedEvent))
        Control.Monad.void (TouchButtonFactory.defaultList ((jget (this).touchButtonFactory)))
        Control.Monad.void (AllBinaryGameCanvas.updateTouch this)
        Control.Monad.void (AllBinaryGameCanvas.postInitTouch this)
        pure ()


-- throws Exception
updateCurrentTouchInputFactory :: (JavaObjectClass this_) => this_ -> BaseTouchInput.BaseTouchInput -> IO (())
updateCurrentTouchInputFactory object_ a1 = jmethod object_ "updateCurrentTouchInputFactory" (\() -> (updateCurrentTouchInputFactory_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

updateCurrentTouchInputFactory_super :: (JavaObjectClass this_) => this_ -> BaseTouchInput.BaseTouchInput -> IO (())
updateCurrentTouchInputFactory_super object_ a1 = (updateCurrentTouchInputFactory_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

updateCurrentTouchInputFactory_impl :: AllBinaryGameCanvas -> BaseTouchInput.BaseTouchInput -> IO (())
updateCurrentTouchInputFactory_impl this nextTouchInput = do
        when (nextTouchInput /= (jget (this).currentTouchInputFactory)) $ do
            jset (this).currentTouchInputFactory (nextTouchInput)
            Control.Monad.void (PreLogUtil.put (jio (BaseTouchInput.toString ((jget (this).currentTouchInputFactory)))) this (jget ((jget (this).gameInputStrings)).uDPATE_CURRENT_TOUCH_INPUT_FACTORY))
            Control.Monad.void (TouchButtonFactory.toggle ((jget (this).touchButtonFactory)) (jio (RunnableCanvas.isPaused this)) (jio (BaseTouchInput.getList ((jget (this).currentTouchInputFactory)))))
        pure ()


-- throws Exception
updateTouch :: (JavaObjectClass this_) => this_ -> IO (())
updateTouch object_ = jmethod object_ "updateTouch" (\() -> (updateTouch_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateTouch_super :: (JavaObjectClass this_) => this_ -> IO (())
updateTouch_super object_ = (updateTouch_impl (javaCast object_ :: AllBinaryGameCanvas))

updateTouch_impl :: AllBinaryGameCanvas -> IO (())
updateTouch_impl this = do
        Control.Monad.void (DemoGameBehavior.updateTouch ((jget (this).gameBehavior)) this)
        pure ()


-- throws Exception
updateTouch2 :: (JavaObjectClass this_) => this_ -> IO (())
updateTouch2 object_ = jmethod object_ "updateTouch2" (\() -> (updateTouch2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateTouch2_super :: (JavaObjectClass this_) => this_ -> IO (())
updateTouch2_super object_ = (updateTouch2_impl (javaCast object_ :: AllBinaryGameCanvas))

updateTouch2_impl :: AllBinaryGameCanvas -> IO (())
updateTouch2_impl this = do
        features <- (Features.getInstance)
        when (jio (Features.isFeature features (javaCast (jget ((jget (this).touchFeatureFactory)).aUTO_HIDE_SHOW_SCREEN_BUTTONS)))) $ do
            when (((jio (GameInfo.getCurrentLevel ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))) - (jio (AllBinaryGameCanvas.getStartLevel this))) == 1) $ do
                Control.Monad.void (AllBinaryGameCanvas.setTouchPaintableP this (jio (NullPaintable.getInstance)))
        pure ()


-- throws Exception
postInitTouch :: (JavaObjectClass this_) => this_ -> IO (())
postInitTouch object_ = jmethod object_ "postInitTouch" (\() -> (postInitTouch_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

postInitTouch_super :: (JavaObjectClass this_) => this_ -> IO (())
postInitTouch_super object_ = (postInitTouch_impl (javaCast object_ :: AllBinaryGameCanvas))

postInitTouch_impl :: AllBinaryGameCanvas -> IO (())
postInitTouch_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.setTouchButtonsPaintable this (jio (TouchButtonsPaintableFactory.getInstance (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager)))))))
        Control.Monad.void (AllBinaryGameCanvas.updateScreenButtonPaintable this)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

initCommands_impl :: AllBinaryGameCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (RunnableCanvas.removeAllCommands this)
        Control.Monad.void (AllBinaryGameCanvas.addCommands this)
        Control.Monad.void (RunnableCanvas.setCommandListener this cmdListener)
        pure ()


addCommands :: (JavaObjectClass this_) => this_ -> IO (())
addCommands object_ = jmethod object_ "addCommands" (\() -> (addCommands_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

addCommands_super :: (JavaObjectClass this_) => this_ -> IO (())
addCommands_super object_ = (addCommands_impl (javaCast object_ :: AllBinaryGameCanvas))

addCommands_impl :: AllBinaryGameCanvas -> IO (())
addCommands_impl this = do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        myCommandsFactory <- (MyCommandsFactory.getInstance)
        when ((jio (DebugFactory.getInstance)) /= (jio (NoDebug.getInstance))) $ do
            Control.Monad.void (RunnableCanvas.addCommand this (jget (gameCommandsFactory).sTART_TRACE))
        Control.Monad.void (RunnableCanvas.addCommand this (jget (gameCommandsFactory).rESTART_COMMAND))
        Control.Monad.void (RunnableCanvas.addCommand this (jget (myCommandsFactory).pAUSE_COMMAND))
        Control.Monad.void (RunnableCanvas.addCommand this (jget (gameCommandsFactory).qUIT_COMMAND))
        isOverScan <- (GenericOperatingSystem.isOverScan ((jio (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance)))))))
        if (jio (J2MEUtil.isHTML)) then do
            pure ()
        else if (jget SWTUtil.isSWT) then do
            pure ()
        else when (Prelude.not isOverScan) $ do
            when ((jio (TouchScreenFactory.isTouch ((jio (TouchScreenFactory.getInstance))))) && (jio (InGameFeatures.isAny ((jio (InGameFeatures.new_)))))) $ do
                Control.Monad.void (RunnableCanvas.addCommand this (InGameOptionsForm.dISPLAY))
            Control.Monad.void (RunnableCanvas.addCommand this (jget (gameCommandsFactory).sAVE))
            Control.Monad.void (RunnableCanvas.addCommand this (jget (gameCommandsFactory).dISPLAY_LOAD_FORM))
        pure ()


itemStateChanged :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged object_ a1 = jmethod object_ "itemStateChanged" (\() -> (itemStateChanged_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

itemStateChanged_super :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged_super object_ a1 = (itemStateChanged_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

itemStateChanged_impl :: AllBinaryGameCanvas -> Item.Item -> IO (())
itemStateChanged_impl this item = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "itemStateChanged" e)
            ) $ do
            itemLabel <- (Item.getLabel item)
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.commonLabels)).iTEM_LABEL)))) itemLabel))))) this "itemStateChanged")
            when (javaInstanceOf item "ChoiceGroup") $ do
                gameFeatureUtil <- (GameFeatureUtil.getInstance)
                if (jio (GameFeatureUtil.isExclusive gameFeatureUtil itemLabel)) then do
                    Control.Monad.void (GameFeatureUtil.updateExclusiveForChoiceGroup gameFeatureUtil (javaCast item :: ChoiceGroup.ChoiceGroup))
                else do
                    Control.Monad.void (GameFeatureUtil.updateMultiple gameFeatureUtil (javaCast item :: ChoiceGroup.ChoiceGroup))
            Control.Monad.void (SensorGameUpdateProcessor.process ((jget (this).sensorGameUpdateProcessor)) (jget (this).gameLayerManager))
            Control.Monad.void (AllBinaryGameCanvas.updateTouch this)
            Control.Monad.void (AllBinaryGameCanvas.updateScreenButtonPaintable this)
            Control.Monad.void (SensorGameUpdateProcessor.sendNotifications ((jget (this).sensorGameUpdateProcessor)) (jget (this).gameLayerManager))
        pure ()


-- throws Exception
updateScreenButtonPaintable :: (JavaObjectClass this_) => this_ -> IO (())
updateScreenButtonPaintable object_ = jmethod object_ "updateScreenButtonPaintable" (\() -> (updateScreenButtonPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateScreenButtonPaintable_super :: (JavaObjectClass this_) => this_ -> IO (())
updateScreenButtonPaintable_super object_ = (updateScreenButtonPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

updateScreenButtonPaintable_impl :: AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable_impl this = do
        Control.Monad.void (DemoGameBehavior.updateScreenButtonPaintable ((jget (this).gameBehavior)) this)
        pure ()


updateScreenButtonPaintable2 :: (JavaObjectClass this_) => this_ -> IO (())
updateScreenButtonPaintable2 object_ = jmethod object_ "updateScreenButtonPaintable2" (\() -> (updateScreenButtonPaintable2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateScreenButtonPaintable2_super :: (JavaObjectClass this_) => this_ -> IO (())
updateScreenButtonPaintable2_super object_ = (updateScreenButtonPaintable2_impl (javaCast object_ :: AllBinaryGameCanvas))

updateScreenButtonPaintable2_impl :: AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable2_impl this = do
        features <- (Features.getInstance)
        if (jio (Features.isFeature features (javaCast (jget ((jget (this).touchFeatureFactory)).aUTO_HIDE_SHOW_SCREEN_BUTTONS)))) then do
            Control.Monad.void (AllBinaryGameCanvas.setTouchPaintableP this (jio (AllBinaryGameCanvas.getTouchButtonsPaintable this)))
            Control.Monad.void (AllBinaryGameCanvas.setStartLevel this (jio (GameInfo.getCurrentLevel ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))))
        else if (jio (Features.isFeature features (javaCast (jget ((jget (this).touchFeatureFactory)).sHOW_SCREEN_BUTTONS)))) then do
            Control.Monad.void (AllBinaryGameCanvas.setTouchPaintableP this (jio (AllBinaryGameCanvas.getTouchButtonsPaintable this)))
        else if (jio (Features.isFeature features (javaCast (jget ((jget (this).touchFeatureFactory)).hIDE_SCREEN_BUTTONS)))) then do
            Control.Monad.void (AllBinaryGameCanvas.setTouchPaintableP this (jio (NullPaintable.getInstance)))
        else do
            Control.Monad.void (AllBinaryGameCanvas.setTouchPaintableP this (jio (NullPaintable.getInstance)))
        pure ()


getLayerManager :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
getLayerManager object_ = jmethod object_ "getLayerManager" (\() -> (getLayerManager_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getLayerManager_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
getLayerManager_super object_ = (getLayerManager_impl (javaCast object_ :: AllBinaryGameCanvas))

getLayerManager_impl :: AllBinaryGameCanvas -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
getLayerManager_impl this = do
        pure ((jget (this).gameLayerManager))


setLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setLayerManager object_ a1 = jmethod object_ "setLayerManager" (\() -> (setLayerManager_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setLayerManager_super object_ a1 = (setLayerManager_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setLayerManager_impl :: AllBinaryGameCanvas -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setLayerManager_impl this layerManager = do
        jset (this).gameLayerManager (layerManager)
        pure ()


isGameOver :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver object_ = jmethod object_ "isGameOver" (\() -> (isGameOver_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

isGameOver_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver_super object_ = (isGameOver_impl (javaCast object_ :: AllBinaryGameCanvas))

isGameOver_impl :: AllBinaryGameCanvas -> IO (Bool)
isGameOver_impl this = do
        pure ((jget (this).gameOver))


setGameOver :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGameOver object_ a1 = jmethod object_ "setGameOver" (\() -> (setGameOver_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setGameOver_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGameOver_super object_ a1 = (setGameOver_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setGameOver_impl :: AllBinaryGameCanvas -> Bool -> IO (())
setGameOver_impl this gameOver = do
        jset (this).gameOver (gameOver)
        pure ()


-- throws Exception
processGameOver :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver object_ = jmethod object_ "processGameOver" (\() -> (processGameOver_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

processGameOver_super :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver_super object_ = (processGameOver_impl (javaCast object_ :: AllBinaryGameCanvas))

processGameOver_impl :: AllBinaryGameCanvas -> IO (())
processGameOver_impl this = do
        Control.Monad.void (PreLogUtil.put (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).gameStrings)).sET_GAME_OVER))
        Control.Monad.void (AllBinaryGameCanvas.setGameOver this True)
        Control.Monad.void (RunnableCanvas.removePauseCommand this)
        Control.Monad.void (AllBinaryGameCanvas.setGameState this (jget ((jget (this).gameStateFactory)).sHOW_END_RESULT_GAME_STATE))
        Control.Monad.void (AllBinaryGameCanvas.setEndGamePaintable this (jio (AllBinaryGameCanvas.getEndGameStatePaintable this)))
        pure ()


isHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted object_ = jmethod object_ "isHighScoreSubmitted" (\() -> (isHighScoreSubmitted_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

isHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted_super object_ = (isHighScoreSubmitted_impl (javaCast object_ :: AllBinaryGameCanvas))

isHighScoreSubmitted_impl :: AllBinaryGameCanvas -> IO (Bool)
isHighScoreSubmitted_impl this = do
        pure ((jget (this).highScoreSubmitted))


-- throws Exception
setHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted object_ a1 = jmethod object_ "setHighScoreSubmitted" (\() -> (setHighScoreSubmitted_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted_super object_ a1 = (setHighScoreSubmitted_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setHighScoreSubmitted_impl :: AllBinaryGameCanvas -> Bool -> IO (())
setHighScoreSubmitted_impl this highScoreSubmitted = do
        jset (this).highScoreSubmitted (highScoreSubmitted)
        when highScoreSubmitted $ do
            Control.Monad.void (HighScoresHelperBaseInterface.setSelectedHighScores ((jget (this).highScoresHelper)) (jio (NullHighScoresSingletonFactory.getInstance)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.new_))) "isHighScoreSubmitted: "))) highScoreSubmitted))))) this "setHighScoreSubmitted")
        pure ()


getGameState :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState object_ = jmethod object_ "getGameState" (\() -> (getGameState_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getGameState_super :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState_super object_ = (getGameState_impl (javaCast object_ :: AllBinaryGameCanvas))

getGameState_impl :: AllBinaryGameCanvas -> IO (GameState.GameState)
getGameState_impl this = do
        pure ((jget (this).gameState))


-- throws Exception
setGameState :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState object_ a1 = jmethod object_ "setGameState" (\() -> (setGameState_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setGameState_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState_super object_ a1 = (setGameState_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setGameState_impl :: AllBinaryGameCanvas -> GameState.GameState -> IO (())
setGameState_impl this gameState = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameStrings)).gAME_STATE)))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) gameState))))))) this (jget ((jget (this).gameStrings)).sET_GAME_STATE))
        jset (this).gameState (gameState)
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).gameStateTimeHelper)))
        Control.Monad.void (AllBinaryGameCanvas.updateEndGameProcessor this)
        Control.Monad.void (AllBinaryGameCanvas.updateGameKeyEventProcessor this)
        Control.Monad.void (DemoGameBehavior.setGameState ((jget (this).gameBehavior)) this)
        pure ()


-- throws Exception
updateGameState :: (JavaObjectClass this_) => this_ -> IO (())
updateGameState object_ = jmethod object_ "updateGameState" (\() -> (updateGameState_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateGameState_super :: (JavaObjectClass this_) => this_ -> IO (())
updateGameState_super object_ = (updateGameState_impl (javaCast object_ :: AllBinaryGameCanvas))

updateGameState_impl :: AllBinaryGameCanvas -> IO (())
updateGameState_impl this = do
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
        Control.Monad.void (GameAdState.processAdState gameAdState (jget (this).gameState) (jio (GameInfo.getGameType ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))))
        when ((jget (this).gameState) /= (jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE)) $ do
            Control.Monad.void (GameAdState.processPageAdState gameAdState)
        pure ()


updateGameKeyEventProcessor :: (JavaObjectClass this_) => this_ -> IO (())
updateGameKeyEventProcessor object_ = jmethod object_ "updateGameKeyEventProcessor" (\() -> (updateGameKeyEventProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateGameKeyEventProcessor_super :: (JavaObjectClass this_) => this_ -> IO (())
updateGameKeyEventProcessor_super object_ = (updateGameKeyEventProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

updateGameKeyEventProcessor_impl :: AllBinaryGameCanvas -> IO (())
updateGameKeyEventProcessor_impl this = do
        if (((jio (AllBinaryGameCanvas.getGameState this)) /= (jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE)) || (jget (this).isCheating)) then do
            pure ()
        else do
            pure ()
        pure ()


removeAllGameKeyInputListenersOnBuild :: (JavaObjectClass this_) => this_ -> IO (())
removeAllGameKeyInputListenersOnBuild object_ = jmethod object_ "removeAllGameKeyInputListenersOnBuild" (\() -> (removeAllGameKeyInputListenersOnBuild_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

removeAllGameKeyInputListenersOnBuild_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllGameKeyInputListenersOnBuild_super object_ = (removeAllGameKeyInputListenersOnBuild_impl (javaCast object_ :: AllBinaryGameCanvas))

removeAllGameKeyInputListenersOnBuild_impl :: AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListenersOnBuild_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.removeAllGameKeyInputListeners this)
        pure ()


removeAllGameKeyInputListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllGameKeyInputListeners object_ = jmethod object_ "removeAllGameKeyInputListeners" (\() -> (removeAllGameKeyInputListeners_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

removeAllGameKeyInputListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllGameKeyInputListeners_super object_ = (removeAllGameKeyInputListeners_impl (javaCast object_ :: AllBinaryGameCanvas))

removeAllGameKeyInputListeners_impl :: AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners_impl this = do
        Control.Monad.void (DemoGameBehavior.removeAllGameKeyInputListeners ((jget (this).gameBehavior)) this)
        pure ()


removeAllGameKeyInputListeners2 :: (JavaObjectClass this_) => this_ -> IO (())
removeAllGameKeyInputListeners2 object_ = jmethod object_ "removeAllGameKeyInputListeners2" (\() -> (removeAllGameKeyInputListeners2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

removeAllGameKeyInputListeners2_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllGameKeyInputListeners2_super object_ = (removeAllGameKeyInputListeners2_impl (javaCast object_ :: AllBinaryGameCanvas))

removeAllGameKeyInputListeners2_impl :: AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners2_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Remove PlayerInput Listeners" this "removeAllGameKeyInputListeners")
        forM_ [((jio (BasicArrayList.size ((jget (this).localPlayerGameInputList)))) - 1), ((jio (BasicArrayList.size ((jget (this).localPlayerGameInputList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let playerGameInput = (javaCast (jio (BasicArrayList.get ((jget (this).localPlayerGameInputList)) index)) :: PlayerGameInput.PlayerGameInput)
            Control.Monad.void (AllBinaryGameCanvas.removeKeyInputListener this playerGameInput)
            Control.Monad.void (PlayerGameInput.removeNonAIInputGameKeyEvents playerGameInput)
        pure ()


removeKeyInputListener :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
removeKeyInputListener object_ a1 = jmethod object_ "removeKeyInputListener" (\() -> (removeKeyInputListener_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

removeKeyInputListener_super :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
removeKeyInputListener_super object_ a1 = (removeKeyInputListener_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

removeKeyInputListener_impl :: AllBinaryGameCanvas -> PlayerGameInput.PlayerGameInput -> IO (())
removeKeyInputListener_impl this playerGameInput = do
        Control.Monad.void (GameKeyEventHandler.removeListener ((jget (this).gameKeyEventHandler)) (javaCast playerGameInput))
        pure ()


-- throws Exception
updateEndGameProcessor :: (JavaObjectClass this_) => this_ -> IO (())
updateEndGameProcessor object_ = jmethod object_ "updateEndGameProcessor" (\() -> (updateEndGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateEndGameProcessor_super :: (JavaObjectClass this_) => this_ -> IO (())
updateEndGameProcessor_super object_ = (updateEndGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

updateEndGameProcessor_impl :: AllBinaryGameCanvas -> IO (())
updateEndGameProcessor_impl this = do
        Control.Monad.void (DemoGameBehavior.updateEndGameProcessor ((jget (this).gameBehavior)) this)
        pure ()


-- throws Exception
updateEndGameProcessor2 :: (JavaObjectClass this_) => this_ -> IO (())
updateEndGameProcessor2 object_ = jmethod object_ "updateEndGameProcessor2" (\() -> (updateEndGameProcessor2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateEndGameProcessor2_super :: (JavaObjectClass this_) => this_ -> IO (())
updateEndGameProcessor2_super object_ = (updateEndGameProcessor2_impl (javaCast object_ :: AllBinaryGameCanvas))

updateEndGameProcessor2_impl :: AllBinaryGameCanvas -> IO (())
updateEndGameProcessor2_impl this = do
        if (((jio (AllBinaryGameCanvas.getGameState this)) == (jget ((jget (this).gameStateFactory)).sHOW_END_RESULT_GAME_STATE)) || ((jio (AllBinaryGameCanvas.getGameState this)) == (jget ((jget (this).gameStateFactory)).sHOW_HIGH_SCORE_GAME_STATE))) then do
            Control.Monad.void (AllBinaryGameCanvas.setEndGameProcessor this (jget (this).realEndGameProcessor))
        else do
            Control.Monad.void (AllBinaryGameCanvas.setEndGameProcessor this (jio (Processor.getInstance)))
        pure ()


-- throws Exception
buildGameInit :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
buildGameInit object_ a1 = jmethod object_ "buildGameInit" (\() -> (buildGameInit_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

buildGameInit_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
buildGameInit_super object_ a1 = (buildGameInit_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

buildGameInit_impl :: AllBinaryGameCanvas -> Bool -> IO (())
buildGameInit_impl this isPortion = do
        pure ()


-- throws Exception
cleanupGame :: (JavaObjectClass this_) => this_ -> IO (())
cleanupGame object_ = jmethod object_ "cleanupGame" (\() -> (cleanupGame_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

cleanupGame_super :: (JavaObjectClass this_) => this_ -> IO (())
cleanupGame_super object_ = (cleanupGame_impl (javaCast object_ :: AllBinaryGameCanvas))

cleanupGame_impl :: AllBinaryGameCanvas -> IO (())
cleanupGame_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cLEANUP))
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 10 "Cleaning Up")
        Control.Monad.void (PlayerQueue.clear ((jget (this).primaryPlayerQueue)))
        Control.Monad.void (PlayerQueue.clear ((jget (this).secondaryPlayerQueue)))
        Control.Monad.void (GameLevelDisplayChangeEventListenersFactory.clear ((jio (GameLevelDisplayChangeEventListenersFactory.getInstance))))
        pure ()


-- throws Exception
loadResourceLoadingLevel :: (JavaObjectClass this_) => this_ -> ResourceLoadingLevel.ResourceLoadingLevel -> IO (())
loadResourceLoadingLevel object_ a1 = jmethod object_ "loadResourceLoadingLevel" (\() -> (loadResourceLoadingLevel_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

loadResourceLoadingLevel_super :: (JavaObjectClass this_) => this_ -> ResourceLoadingLevel.ResourceLoadingLevel -> IO (())
loadResourceLoadingLevel_super object_ a1 = (loadResourceLoadingLevel_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

loadResourceLoadingLevel_impl :: AllBinaryGameCanvas -> ResourceLoadingLevel.ResourceLoadingLevel -> IO (())
loadResourceLoadingLevel_impl this resourceLoadingLevel = do
        let gameInitializedEvent = (jget ((jio (GameInitializationUtil.getInstance))).eVENT)
        Control.Monad.void (GameInitializedEvent.setResourceLoadingLevel gameInitializedEvent resourceLoadingLevel)
        Control.Monad.void (GameInitializedEventHandler.fireEvent ((jio (GameInitializedEventHandler.getInstance))) (javaCast gameInitializedEvent))
        pure ()


-- throws Exception
loadResources :: (JavaObjectClass this_) => this_ -> Int -> IO (())
loadResources object_ a1 = jmethod object_ "loadResources" (\() -> (loadResources_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

loadResources_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
loadResources_super object_ a1 = (loadResources_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

loadResources_impl :: AllBinaryGameCanvas -> Int -> IO (())
loadResources_impl this level = do
        let gameInitializedEvent = (jget ((jio (GameInitializationUtil.getInstance))).eVENT)
        Control.Monad.void (GameInitializedEvent.setLevel gameInitializedEvent level)
        Control.Monad.void (GameInitializedEventHandler.fireEvent ((jio (GameInitializedEventHandler.getInstance))) (javaCast gameInitializedEvent))
        pure ()


-- throws Exception
updateColor :: (JavaObjectClass this_) => this_ -> IO (())
updateColor object_ = jmethod object_ "updateColor" (\() -> (updateColor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

updateColor_super :: (JavaObjectClass this_) => this_ -> IO (())
updateColor_super object_ = (updateColor_impl (javaCast object_ :: AllBinaryGameCanvas))

updateColor_impl :: AllBinaryGameCanvas -> IO (())
updateColor_impl this = do
        pure ()


-- throws Exception
buildGame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
buildGame object_ a1 = jmethod object_ "buildGame" (\() -> (buildGame_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

buildGame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
buildGame_super object_ a1 = (buildGame_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

buildGame_impl :: AllBinaryGameCanvas -> Int -> IO (())
buildGame_impl this portion = do
    javaCatchReturn $ do
        Control.Monad.void (ScreenCapture.endRecording ((jget (this).screenCapture)))
        Control.Monad.void (ScreenCapture.startRecording ((jget (this).screenCapture)))
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        features <- (Features.getInstance)
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas portion "Generic Build")
        Control.Monad.void (AllBinaryGameCanvas.removeAllGameKeyInputListenersOnBuild this)
        Control.Monad.void (AllBinaryGameCanvas.updateTouch this)
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas portion "High Scores")
        Control.Monad.void (HighScoresFactoryInterface.fetchHighScores ((jget (this).highScoresFactoryInterface)) (jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager)))) (jget (this).highScoresHelper))
        Control.Monad.void (AllBinaryGameCanvas.setHighScoresPaintable this (jio (NullPaintable.getInstance)))
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas portion "Finishing.")
        Control.Monad.void (EndGameInfo.update ((jio (AllBinaryGameCanvas.getEndGameInfoP this))) (jio (AllBinaryGameLayerManager.getGameInfo ((jio (AllBinaryGameCanvas.getLayerManager this))))) (javaCast this))
        assignedValue <- (Features.isFeature features (javaCast (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_REPEAT_PRESS)))
        jset (this).isSingleKeyRepeatableProcessing (assignedValue)
        Control.Monad.void (AllBinaryGameCanvas.setGameOver this False)
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas portion "Finishing..")
        Control.Monad.void (AllBinaryGameCanvas.updateColor this)
        Control.Monad.void (InitUpdatePaintable.update ((jio (AllBinaryGameCanvas.getStartIntermissionPaintable this))))
        when (Prelude.not (jio (AllBinaryGameCanvas.isRunningInAnotherThread this))) $ do
            javaReturn (())
        Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas portion "Finishing...")
        when ((jio (RunnableCanvas.isMainCanvas this)) || (Prelude.not (jio (AllBinaryGameCanvas.isInitialized this)))) $ do
            if (jio (Features.isFeature features (jget ((jio (MainFeatureFactory.getInstance))).lOAD_ONDEMAND))) then do
                when ((jio (RunnableCanvas.getCustomCommandListener this)) /= javaNull) $ do
                    Control.Monad.void (ProgressCanvas.end progressCanvas)
            else do
                Control.Monad.void (ProgressCanvas.end progressCanvas)
            Control.Monad.void (AllBinaryGameCanvas.setInitialized this True)
        if ((jtoObject (jio (RunnableCanvas.getCustomCommandListener this))) == (jtoObject NullCommandListener.nULL_COMMAND_LISTENER)) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Show Game Paintable in DemoCanvas Thread" this (jget (this).bUILD_GAME))
            Control.Monad.void (DemoPaintableInterface.showGamePaintable ((jget (this).gameCanvasStartListener)))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "No GameCanvasStartListener" this (jget (this).bUILD_GAME))
        Control.Monad.void (ColorFillBasePaintable.setBasicColorP ((jget (this).colorFillPaintable)) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jget (this).gameLayerManager)))))
        Control.Monad.void (DemoGameBehavior.buildGame ((jget (this).gameBehavior)) this)
    pure ()


buildGame2 :: (JavaObjectClass this_) => this_ -> IO (())
buildGame2 object_ = jmethod object_ "buildGame2" (\() -> (buildGame2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

buildGame2_super :: (JavaObjectClass this_) => this_ -> IO (())
buildGame2_super object_ = (buildGame2_impl (javaCast object_ :: AllBinaryGameCanvas))

buildGame2_impl :: AllBinaryGameCanvas -> IO (())
buildGame2_impl this = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameInputStrings)).eNABLE_PLAYER_GAME_INPUTS)))) (jio (BasicArrayList.size ((jget (this).localPlayerGameInputList))))))))) this (jget (this).bUILD_GAME))
        playerGameInput <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size ((jget (this).localPlayerGameInputList)))) - 1), ((jio (BasicArrayList.size ((jget (this).localPlayerGameInputList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset playerGameInput ((javaCast (jio (BasicArrayList.get ((jget (this).localPlayerGameInputList)) index)) :: PlayerGameInput.PlayerGameInput))
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameInputStrings)).eNABLE_PLAYER_GAME_INPUT)))) (jio (PlayerGameInput.toString ((jget playerGameInput))))))))) this (jget (this).bUILD_GAME))
            Control.Monad.void (PlayerGameInput.removeNonAIInputGameKeyEvents ((jget playerGameInput)))
            Control.Monad.void (AllBinaryGameCanvas.addKeyInputListener this (jget playerGameInput))
        pure ()


addKeyInputListener :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
addKeyInputListener object_ a1 = jmethod object_ "addKeyInputListener" (\() -> (addKeyInputListener_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

addKeyInputListener_super :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
addKeyInputListener_super object_ a1 = (addKeyInputListener_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

addKeyInputListener_impl :: AllBinaryGameCanvas -> PlayerGameInput.PlayerGameInput -> IO (())
addKeyInputListener_impl this playerGameInput = do
        Control.Monad.void (GameKeyEventHandler.addListenerForPlayer ((jio (GameKeyEventHandler.getInstance))) (javaCast playerGameInput) (jio (PlayerGameInput.getPlayerInputId playerGameInput)))
        pure ()


setGameCanvasStartListener :: (JavaObjectClass this_) => this_ -> DemoPaintableInterface.DemoPaintableInterface -> IO (())
setGameCanvasStartListener object_ a1 = jmethod object_ "setGameCanvasStartListener" (\() -> (setGameCanvasStartListener_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setGameCanvasStartListener_super :: (JavaObjectClass this_) => this_ -> DemoPaintableInterface.DemoPaintableInterface -> IO (())
setGameCanvasStartListener_super object_ a1 = (setGameCanvasStartListener_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setGameCanvasStartListener_impl :: AllBinaryGameCanvas -> DemoPaintableInterface.DemoPaintableInterface -> IO (())
setGameCanvasStartListener_impl this gameCanvasStartListener = do
        jset (this).gameCanvasStartListener (gameCanvasStartListener)
        pure ()


-- throws Exception
loadState :: (JavaObjectClass this_) => this_ -> IO (())
loadState object_ = jmethod object_ "loadState" (\() -> (loadState_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

loadState_super :: (JavaObjectClass this_) => this_ -> IO (())
loadState_super object_ = (loadState_impl (javaCast object_ :: AllBinaryGameCanvas))

loadState_impl :: AllBinaryGameCanvas -> IO (())
loadState_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).lOAD))
        hashtable <- (AllBinaryGameCanvas.getLoadStateHashtable this)
        when ((hashtable /= javaNull) && ((jio (ABHashtable.size hashtable)) > 0)) $ do
            let levelAsString = (javaCast (jio (ABHashtable.get hashtable (javaCast GameInfo.lEVEL_NAME :: Any.Any))) :: String)
            let level = (javaToString levelAsString)
            gameInfo <- (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager)))
            Control.Monad.void (GameInfo.setCurrentLevel gameInfo level)
        pure ()


-- throws Exception
getLoadStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable object_ = jmethod object_ "getLoadStateHashtable" (\() -> (getLoadStateHashtable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_super object_ = (getLoadStateHashtable_impl (javaCast object_ :: AllBinaryGameCanvas))

getLoadStateHashtable_impl :: AllBinaryGameCanvas -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.commonLabels)).sTART_LABEL)))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).hashtable)))))))) this "getLoadStateHashtable")
        pure ((jget (this).hashtable))


setLoadStateHashtable :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable object_ a1 = jmethod object_ "setLoadStateHashtable" (\() -> (setLoadStateHashtable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_super object_ a1 = (setLoadStateHashtable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setLoadStateHashtable_impl :: AllBinaryGameCanvas -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_impl this hashtable = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.commonLabels)).sTART_LABEL)))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) hashtable))))))) this "setLoadStateHashtable")
        jset (this).hashtable (hashtable)
        pure ()


getCurrentStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable object_ = jmethod object_ "getCurrentStateHashtable" (\() -> (getCurrentStateHashtable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getCurrentStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_super object_ = (getCurrentStateHashtable_impl (javaCast object_ :: AllBinaryGameCanvas))

getCurrentStateHashtable_impl :: AllBinaryGameCanvas -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_impl this = do
        hashtable <- (StdUtil.createHashtable ((jget (this).base.stdUtil)))
        level <- (GameInfo.getCurrentLevel ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))
        Control.Monad.void (ABHashtable.put hashtable (GameInfo.lEVEL_NAME) (javaToString level))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "End: "))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) hashtable))))))) this "getCurrentStateHashtable")
        pure (hashtable)


paintGameOver :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintGameOver object_ a1 = jmethod object_ "paintGameOver" (\() -> (paintGameOver_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

paintGameOver_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintGameOver_super object_ a1 = (paintGameOver_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

paintGameOver_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
paintGameOver_impl this graphics = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED) this)
        pure ()


draw :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
draw object_ a1 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

draw_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
draw_super object_ a1 = (draw_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

draw_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
draw_impl this graphics = do
        Control.Monad.void (ColorFillBasePaintable.paint ((jget (this).colorFillPaintable)) graphics)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager)))))
        Control.Monad.void (Paintable.paint ((jget (this).gameSpecificPaintable)) graphics)
        pure ()


clear :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
clear object_ a1 = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

clear_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
clear_super object_ a1 = (clear_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

clear_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
clear_impl this graphics = do
        Control.Monad.void (ColorFillBasePaintable.paint ((jget (this).colorFillPaintable)) graphics)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

paint_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (BaseGameStatistics.nextRefresh ((jget (this).baseGameStatistics)))
        Control.Monad.void (AllBinaryGameCanvas.draw this graphics)
        Control.Monad.void (Paintable.paint ((jget (this).menuPaintable)) graphics)
        Control.Monad.void (PaintableInterface.paint ((jget (this).progressPaintable)) graphics)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

paintThreed_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


-- throws Exception
processEndLevelIntermissionGameState :: (JavaObjectClass this_) => this_ -> IO (())
processEndLevelIntermissionGameState object_ = jmethod object_ "processEndLevelIntermissionGameState" (\() -> (processEndLevelIntermissionGameState_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

processEndLevelIntermissionGameState_super :: (JavaObjectClass this_) => this_ -> IO (())
processEndLevelIntermissionGameState_super object_ = (processEndLevelIntermissionGameState_impl (javaCast object_ :: AllBinaryGameCanvas))

processEndLevelIntermissionGameState_impl :: AllBinaryGameCanvas -> IO (())
processEndLevelIntermissionGameState_impl this = do
        pure ()


nonBotPaint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
nonBotPaint object_ a1 = jmethod object_ "nonBotPaint" (\() -> (nonBotPaint_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

nonBotPaint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
nonBotPaint_super object_ a1 = (nonBotPaint_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

nonBotPaint_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
nonBotPaint_impl this graphics = do
        Control.Monad.void (Paintable.paint ((jget (this).endGamePaintable)) graphics)
        Control.Monad.void (Paintable.paint ((jget (this).intermissionPaintable)) graphics)
        Control.Monad.void (AllBinaryGameCanvas.paintIntermission this graphics)
        Control.Monad.void (Paintable.paint ((jget (this).touchPaintable)) graphics)
        pure ()


paintIntermission :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintIntermission object_ a1 = jmethod object_ "paintIntermission" (\() -> (paintIntermission_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

paintIntermission_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintIntermission_super object_ a1 = (paintIntermission_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

paintIntermission_impl :: AllBinaryGameCanvas -> Graphics.Graphics -> IO (())
paintIntermission_impl this graphics = do
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

keyPressed_impl :: AllBinaryGameCanvas -> Int -> IO (())
keyPressed_impl this keyCode = do
        Control.Monad.void (AllBinaryGameCanvas.keyPressedByDevice this keyCode 0)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

keyReleased_impl :: AllBinaryGameCanvas -> Int -> IO (())
keyReleased_impl this keyCode = do
        Control.Monad.void (AllBinaryGameCanvas.keyReleasedByDevice this keyCode 0)
        pure ()


keyRepeated :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated object_ a1 = jmethod object_ "keyRepeated" (\() -> (keyRepeated_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

keyRepeated_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated_super object_ a1 = (keyRepeated_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

keyRepeated_impl :: AllBinaryGameCanvas -> Int -> IO (())
keyRepeated_impl this keyCode = do
        Control.Monad.void (AllBinaryGameCanvas.keyRepeatedByDevice this keyCode 0)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2

keyPressedByDevice_impl :: AllBinaryGameCanvas -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (InputProcessor.keyPressedByDevice ((jget (this).inputProcessor)) keyCode deviceId)
        pure ()


keyRepeatedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice object_ a1 a2 = jmethod object_ "keyRepeatedByDevice" (\() -> (keyRepeatedByDevice_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2

keyRepeatedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice_super object_ a1 a2 = (keyRepeatedByDevice_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2

keyRepeatedByDevice_impl :: AllBinaryGameCanvas -> Int -> Int -> IO (())
keyRepeatedByDevice_impl this keyCode deviceId = do
        when (jget (this).isSingleKeyRepeatableProcessing) $ do
            Control.Monad.void (InputProcessor.keyPressedByDevice ((jget (this).inputProcessor)) keyCode deviceId)
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 = (keyReleasedByDevice_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2

keyReleasedByDevice_impl :: AllBinaryGameCanvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (InputProcessor.keyReleasedByDevice ((jget (this).inputProcessor)) (javaCast this) keyCode deviceId)
        pure ()


-- throws Exception
handleRawKey :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
handleRawKey object_ a1 a2 a3 = jmethod object_ "handleRawKey" (\() -> (handleRawKey_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2 a3

handleRawKey_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
handleRawKey_super object_ a1 a2 a3 = (handleRawKey_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2 a3

handleRawKey_impl :: AllBinaryGameCanvas -> Int -> Int -> Bool -> IO (())
handleRawKey_impl this keyCode deviceId repeated = do
        pure ()


endProgress :: (JavaObjectClass this_) => this_ -> Bool -> IO (Int)
endProgress object_ a1 = jmethod object_ "endProgress" (\() -> (endProgress_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

endProgress_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (Int)
endProgress_super object_ a1 = (endProgress_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

endProgress_impl :: AllBinaryGameCanvas -> Bool -> IO (Int)
endProgress_impl this isProgress = do
        portion <- newIORef (30)
        when (isProgress && (jio (RunnableCanvas.isMainCanvas this))) $ do
            myCommandsFactory <- (MyCommandsFactory.getInstance)
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            Control.Monad.void (ProgressCanvas.start progressCanvas)
            Control.Monad.void (CommandListener.commandAction ((jio (RunnableCanvas.getCustomCommandListener this))) (jget (myCommandsFactory).sET_DISPLAYABLE) progressCanvas)
            jset portion (4)
        pure ((jget portion))


-- throws Exception
processPlayingGame :: (JavaObjectClass this_) => this_ -> IO (())
processPlayingGame object_ = jmethod object_ "processPlayingGame" (\() -> (processPlayingGame_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

processPlayingGame_super :: (JavaObjectClass this_) => this_ -> IO (())
processPlayingGame_super object_ = (processPlayingGame_impl (javaCast object_ :: AllBinaryGameCanvas))

processPlayingGame_impl :: AllBinaryGameCanvas -> IO (())
processPlayingGame_impl this = do
        Control.Monad.void (PlayerGameInput.update ((jget (this).cheatProcessor)))
        Control.Monad.void (AllBinarySensor.update ((jio (SensorGameUpdateProcessor.getInputSensor ((jget (this).sensorGameUpdateProcessor))))))
        Control.Monad.void (Processor.process ((jget (this).gameInputProcessor)))
        Control.Monad.void (AllBinaryGameLayerManager.process ((jget (this).gameLayerManager)))
        Control.Monad.void (Processor.process ((jget (this).startIntermissionProcessor)))
        pure ()


-- throws Exception
threadInit :: (JavaObjectClass this_) => this_ -> IO (())
threadInit object_ = jmethod object_ "threadInit" (\() -> (threadInit_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

threadInit_super :: (JavaObjectClass this_) => this_ -> IO (())
threadInit_super object_ = (threadInit_impl (javaCast object_ :: AllBinaryGameCanvas))

threadInit_impl :: AllBinaryGameCanvas -> IO (())
threadInit_impl this = do
        pure ()


-- throws Exception
processGame :: (JavaObjectClass this_) => this_ -> IO (())
processGame object_ = jmethod object_ "processGame" (\() -> (processGame_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

processGame_super :: (JavaObjectClass this_) => this_ -> IO (())
processGame_super object_ = (processGame_impl (javaCast object_ :: AllBinaryGameCanvas))

processGame_impl :: AllBinaryGameCanvas -> IO (())
processGame_impl this = do
        Control.Monad.void (RunnableCanvas.process_super this.base)
        when (jio (AllBinaryMediaManager.update)) $ do
            when (Prelude.not (jio (PlayerQueue.process ((jget (this).primaryPlayerQueue))))) $ do
                Control.Monad.void (PlayerQueue.process ((jget (this).secondaryPlayerQueue)))
        Control.Monad.void (Processor.process ((jget (this).mainStateProcessor)))
        Control.Monad.void (BasicMenuInputProcessor.processInputList ((jget (this).menuInputProcessor)))
        Control.Monad.void (Processor.process ((jget (this).endGameProcessor)))
        Control.Monad.void (BaseGameStatistics.nextFrame ((jget (this).baseGameStatistics)))
        pure ()


notifyDonePainting :: (JavaObjectClass this_) => this_ -> IO (())
notifyDonePainting object_ = jmethod object_ "notifyDonePainting" (\() -> (notifyDonePainting_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

notifyDonePainting_super :: (JavaObjectClass this_) => this_ -> IO (())
notifyDonePainting_super object_ = (notifyDonePainting_impl (javaCast object_ :: AllBinaryGameCanvas))

notifyDonePainting_impl :: AllBinaryGameCanvas -> IO (())
notifyDonePainting_impl this = do
        do -- synchronized
            Control.Monad.void (ThreadObjectUtil.notifyObject ((jget (this).base.threadObjectUtil)) this)
        pure ()


-- throws Exception
shouldWait :: (JavaObjectClass this_) => this_ -> IO (())
shouldWait object_ = jmethod object_ "shouldWait" (\() -> (shouldWait_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

shouldWait_super :: (JavaObjectClass this_) => this_ -> IO (())
shouldWait_super object_ = (shouldWait_impl (javaCast object_ :: AllBinaryGameCanvas))

shouldWait_impl :: AllBinaryGameCanvas -> IO (())
shouldWait_impl this = do
        features <- (Features.getInstance)
        if (jio (AndroidUtil.isAndroid)) then do
            pure ()
        else if (jio (Features.isFeature features (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL_2D)))) then do
            pure ()
        else do
            when (jio (Features.isDefault features (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL)))) $ do
                openGLImageSpecificFactory <- (OpenGLImageSpecificFactory.getInstance)
                fix $ \loop -> when (jget (openGLImageSpecificFactory).updating) $ javaIteration (loop) $ do
                    Control.Monad.void (threadDelay (Prelude.fromIntegral (jget (this).yIELD_SLEEP) * 1000))
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: AllBinaryGameCanvas))

run_impl :: AllBinaryGameCanvas -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART_RUNNABLE) this (jget ((jget (this).base.base.commonStrings)).rUN))
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Game Thread")
            Control.Monad.void (AllBinaryGameCanvas.setCurrentThread this)
            Control.Monad.void (AllBinaryGameCanvas.setRunning this True)
            when ((jtoObject (jio (RunnableCanvas.getCustomCommandListener this))) == (jtoObject NullCommandListener.nULL_COMMAND_LISTENER)) $ do
                Control.Monad.void (threadDelay (Prelude.fromIntegral (jget (this).yIELD_SLEEP) * 1000))
            Control.Monad.void (AllBinaryGameCanvas.shouldWait this)
            Control.Monad.void (AllBinaryGameCanvas.threadInit this)
            when ((jtoObject (jio (RunnableCanvas.getCustomCommandListener this))) == (jtoObject NullCommandListener.nULL_COMMAND_LISTENER)) $ do
                Control.Monad.void (threadDelay (Prelude.fromIntegral (jget (this).yIELD_SLEEP) * 1000))
            Control.Monad.void (AllBinaryGameCanvas.open this)
            gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
            Control.Monad.void (GameAdState.init gameAdState)
            Control.Monad.void (GameAdState.setGameIsReady gameAdState True)
            Control.Monad.void (DemoGameBehavior.run ((jget (this).gameBehavior)) this)
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eND_RUNNABLE) this (jget ((jget (this).base.base.commonStrings)).rUN))
        pure ()


-- throws Exception
run2 :: (JavaObjectClass this_) => this_ -> IO (())
run2 object_ = jmethod object_ "run2" (\() -> (run2_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

run2_super :: (JavaObjectClass this_) => this_ -> IO (())
run2_super object_ = (run2_impl (javaCast object_ :: AllBinaryGameCanvas))

run2_impl :: AllBinaryGameCanvas -> IO (())
run2_impl this = do
        features <- (Features.getInstance)
        if ((jio (Features.isDefault features (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL_AS_GAME_THREAD)))) || (jio (J2MEUtil.isHTML))) then do
            when (jio (Features.isDefault features (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL_AS_GAME_THREAD)))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (OpenGLFeature.getName ((jget ((jget (this).openGLFeatureFactory)).oPENGL_AS_GAME_THREAD)))) this (jget ((jget (this).base.base.commonStrings)).rUN))
            when (jio (J2MEUtil.isHTML)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jio (GraphicsStrings.getInstance))).hTML) this (jget ((jget (this).base.base.commonStrings)).rUN))
            currentDisplayableFactory <- (CurrentDisplayableFactory.getInstance)
            Control.Monad.void (CurrentDisplayableFactory.setRunnable currentDisplayableFactory (javaCast (jget (this).gameRunnable)))
            Control.Monad.void (CurrentDisplayableFactory.setDisplayable currentDisplayableFactory (javaCast this))
            Control.Monad.void (OpenGLThreadUtil.onResume ((jio (OpenGLThreadUtil.getInstance))))
        else if (jio (Features.isDefault features (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)))) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (OpenGLFeature.getName ((jget ((jget (this).openGLFeatureFactory)).oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)))) this (jget ((jget (this).base.base.commonStrings)).rUN))
            Control.Monad.void (OpenGLThreadUtil.onResume ((jio (OpenGLThreadUtil.getInstance))))
            fix $ \loop -> when (jio (RunnableCanvas.isRunning this)) $ javaIteration (loop) $ do
                Control.Monad.void (AllBinaryGameCanvas.run3 this)
            Control.Monad.void (AllBinaryGameCanvas.end this)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "this thread" this (jget ((jget (this).base.base.commonStrings)).rUN))
            fix $ \loop -> when (jio (RunnableCanvas.isRunning this)) $ javaIteration (loop) $ do
                Control.Monad.void (AllBinaryGameCanvas.run3 this)
            Control.Monad.void (AllBinaryGameCanvas.end this)
        pure ()


-- throws Exception
run3 :: (JavaObjectClass this_) => this_ -> IO (())
run3 object_ = jmethod object_ "run3" (\() -> (run3_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

run3_super :: (JavaObjectClass this_) => this_ -> IO (())
run3_super object_ = (run3_impl (javaCast object_ :: AllBinaryGameCanvas))

run3_impl :: AllBinaryGameCanvas -> IO (())
run3_impl this = do
        Control.Monad.void (TimeDelayHelper.setStartTime ((jget (this).base.loopTimeHelper)) (jio (GameTickTimeDelayHelper.setStartTime ((jget (this).gameTickTimeDelayHelper)))))
        Control.Monad.void (GameTickDisplayInfoSingleton.update ((jget (this).gameTickDisplayInfoSingleton)))
        Control.Monad.void (AllBinaryGameCanvas.processGame this)
        Control.Monad.void (RunnableCanvas.processLoopSleep this)
        pure ()


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setRunning_impl :: AllBinaryGameCanvas -> Bool -> IO (())
setRunning_impl this running = do
        Control.Monad.void (RunnableCanvas.setRunning_super this.base running)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget (this).base.sET_RUNNING) e)
            ) $ do
            features <- (Features.getInstance)
            if running then do
                pure ()
            else do
                when ((jio (Features.isDefault features (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL)))) || (jget SWTUtil.isSWT)) $ do
                    when ((jio (GameInfo.getGameType ((jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager))))))) /= (jget ((jget (this).gameTypeFactory)).bOT)) $ do
                        currentDisplayableFactory <- (CurrentDisplayableFactory.getInstance)
                        Control.Monad.void (CurrentDisplayableFactory.clearRunnable currentDisplayableFactory)
                    Control.Monad.void (AllBinaryGameCanvas.end this)
        pure ()


-- throws Exception
end :: (JavaObjectClass this_) => this_ -> IO (())
end object_ = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

end_super :: (JavaObjectClass this_) => this_ -> IO (())
end_super object_ = (end_impl (javaCast object_ :: AllBinaryGameCanvas))

end_impl :: AllBinaryGameCanvas -> IO (())
end_impl this = do
        Control.Monad.void (ScreenCapture.endRecording ((jget (this).screenCapture)))
        Control.Monad.void (BaseGameStatistics.add ((jget (this).baseGameStatistics)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (BaseGameStatistics.toString ((jget (this).baseGameStatistics))))))) (jget ((jio (CommonSeps.getInstance))).nEW_LINE)))))))
        Control.Monad.void (BaseGameStatistics.init ((jget (this).baseGameStatistics)))
        Control.Monad.void (GameKeyEventHandler.removeListener ((jget (this).gameKeyEventHandler)) (javaCast (jget (this).cheatProcessor)))
        Control.Monad.void (AllBinaryGameCanvas.close this)
        Control.Monad.void (AllBinaryGameCanvas.removeAllGameKeyInputListeners this)
        Control.Monad.void (AllBinaryGameCanvas.endGameThread this)
        pure ()


-- throws Exception
endGameThread :: (JavaObjectClass this_) => this_ -> IO (())
endGameThread object_ = jmethod object_ "endGameThread" (\() -> (endGameThread_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

endGameThread_super :: (JavaObjectClass this_) => this_ -> IO (())
endGameThread_super object_ = (endGameThread_impl (javaCast object_ :: AllBinaryGameCanvas))

endGameThread_impl :: AllBinaryGameCanvas -> IO (())
endGameThread_impl this = do
        Control.Monad.void (DisplayChangeEventHandler.removeListener ((jio (DisplayChangeEventHandler.getInstance))) (javaCast this))
        Control.Monad.void (GameLevelDisplayChangeEventListenersFactory.clear ((jio (GameLevelDisplayChangeEventListenersFactory.getInstance))))
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
        Control.Monad.void (GameAdState.notPlayingAdState gameAdState)
        pure ()


createHighScore :: (JavaObjectClass this_) => this_ -> Int64 -> IO (HighScore.HighScore)
createHighScore object_ a1 = jmethod object_ "createHighScore" (\() -> (createHighScore_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

createHighScore_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (HighScore.HighScore)
createHighScore_super object_ a1 = (createHighScore_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

createHighScore_impl :: AllBinaryGameCanvas -> Int64 -> IO (HighScore.HighScore)
createHighScore_impl this score = do
        gameInfo <- (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager)))
        (HighScore.new_4 0 "NONE" (jio (GameInfo.new_5 (jio (GameInfo.getGameType gameInfo)) (jio (GameInfo.getGameMode gameInfo)) (jget ((jio (PlayerTypesFactory.getInstance))).pLAYER_TYPE_ONE) 0 0)) score)


-- throws Exception
setHighScore :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore object_ a1 a2 a3 a4 a5 = jmethod object_ "setHighScore" (\() -> (setHighScore_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2 a3 a4 a5

setHighScore_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore_super object_ a1 a2 a3 a4 a5 = (setHighScore_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2 a3 a4 a5

setHighScore_impl :: AllBinaryGameCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore_impl this abeClientInformation name score autoSubmit isLast = do
        Control.Monad.void (DemoGameBehavior.setHighScore ((jget (this).gameBehavior)) abeClientInformation this name score autoSubmit isLast)
        pure ()


-- throws Exception
setHighScore2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore2 object_ a1 a2 a3 a4 a5 = jmethod object_ "setHighScore2" (\() -> (setHighScore2_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1 a2 a3 a4 a5

setHighScore2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore2_super object_ a1 a2 a3 a4 a5 = (setHighScore2_impl (javaCast object_ :: AllBinaryGameCanvas)) a1 a2 a3 a4 a5

setHighScore2_impl :: AllBinaryGameCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore2_impl this abeClientInformation name score autoSubmit isLast = do
        highScore <- (AllBinaryGameCanvas.createHighScore this score)
        textBox <- (HighScoreTextBox.new_9 (jget (this).highScoresFactoryInterface) (jget (this).highScoresHelper) abeClientInformation (jio (AllBinaryGameLayerManager.getGameInfo ((jget (this).gameLayerManager)))) (jio (RunnableCanvas.getCustomCommandListener this)) name highScore (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jget (this).gameLayerManager)))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).gameLayerManager)))))
        when isLast $ do
            Control.Monad.void (CommandListener.commandAction ((jio (RunnableCanvas.getCustomCommandListener this))) (jget ((jio (GameCommandsFactory.getInstance))).sET_MENU_DISPLAYABLE) textBox)
        when autoSubmit $ do
            -- Java nested class SaveHighScoreRunnable: move it to its own module

            Control.Monad.void (ThreadPool.runTask ((jio (SecondaryThreadPool.getInstance))) (javaCast (jio (SaveHighScoreRunnable.new_))))
        pure ()


getGameStateTimeHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getGameStateTimeHelper object_ = jmethod object_ "getGameStateTimeHelper" (\() -> (getGameStateTimeHelper_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getGameStateTimeHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getGameStateTimeHelper_super object_ = (getGameStateTimeHelper_impl (javaCast object_ :: AllBinaryGameCanvas))

getGameStateTimeHelper_impl :: AllBinaryGameCanvas -> IO (TimeDelayHelper.TimeDelayHelper)
getGameStateTimeHelper_impl this = do
        pure ((jget (this).gameStateTimeHelper))


setInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized object_ a1 = jmethod object_ "setInitialized" (\() -> (setInitialized_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized_super object_ a1 = (setInitialized_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setInitialized_impl :: AllBinaryGameCanvas -> Bool -> IO (())
setInitialized_impl this initialized = do
        jset (this).initialized (initialized)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: AllBinaryGameCanvas))

isInitialized_impl :: AllBinaryGameCanvas -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: AllBinaryGameCanvas))

getSourceId_impl :: AllBinaryGameCanvas -> IO (Int)
getSourceId_impl this = do
        pure (AllBinaryGameCanvas.id)


setProgressPaintable :: (JavaObjectClass this_) => this_ -> PaintableInterface.PaintableInterface -> IO (())
setProgressPaintable object_ a1 = jmethod object_ "setProgressPaintable" (\() -> (setProgressPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setProgressPaintable_super :: (JavaObjectClass this_) => this_ -> PaintableInterface.PaintableInterface -> IO (())
setProgressPaintable_super object_ a1 = (setProgressPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setProgressPaintable_impl :: AllBinaryGameCanvas -> PaintableInterface.PaintableInterface -> IO (())
setProgressPaintable_impl this paintable = do
        jset (this).progressPaintable (paintable)
        pure ()


getStartIntermissionInterface :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getStartIntermissionInterface object_ = jmethod object_ "getStartIntermissionInterface" (\() -> (getStartIntermissionInterface_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getStartIntermissionInterface_super :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getStartIntermissionInterface_super object_ = (getStartIntermissionInterface_impl (javaCast object_ :: AllBinaryGameCanvas))

getStartIntermissionInterface_impl :: AllBinaryGameCanvas -> IO (IntermissionInterface.IntermissionInterface)
getStartIntermissionInterface_impl this = do
        pure ((jget (this).startIntermissionInterface))


getEndLevelIntermissionInterface :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getEndLevelIntermissionInterface object_ = jmethod object_ "getEndLevelIntermissionInterface" (\() -> (getEndLevelIntermissionInterface_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getEndLevelIntermissionInterface_super :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getEndLevelIntermissionInterface_super object_ = (getEndLevelIntermissionInterface_impl (javaCast object_ :: AllBinaryGameCanvas))

getEndLevelIntermissionInterface_impl :: AllBinaryGameCanvas -> IO (IntermissionInterface.IntermissionInterface)
getEndLevelIntermissionInterface_impl this = do
        pure ((jget (this).endLevelIntermissionInterface))


setTouchPaintableP :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setTouchPaintableP object_ a1 = jmethod object_ "setTouchPaintableP" (\() -> (setTouchPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setTouchPaintableP_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setTouchPaintableP_super object_ a1 = (setTouchPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setTouchPaintableP_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setTouchPaintableP_impl this paintable = do
        jset (this).touchPaintable (paintable)
        pure ()


getTouchPaintableP :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getTouchPaintableP object_ = jmethod object_ "getTouchPaintableP" (\() -> (getTouchPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getTouchPaintableP_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getTouchPaintableP_super object_ = (getTouchPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))

getTouchPaintableP_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getTouchPaintableP_impl this = do
        pure ((jget (this).touchPaintable))


setEndGamePaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setEndGamePaintable object_ a1 = jmethod object_ "setEndGamePaintable" (\() -> (setEndGamePaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setEndGamePaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setEndGamePaintable_super object_ a1 = (setEndGamePaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setEndGamePaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setEndGamePaintable_impl this endGamePaintable = do
        jset (this).endGamePaintable (endGamePaintable)
        pure ()


getEndGamePaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getEndGamePaintable object_ = jmethod object_ "getEndGamePaintable" (\() -> (getEndGamePaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getEndGamePaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getEndGamePaintable_super object_ = (getEndGamePaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getEndGamePaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getEndGamePaintable_impl this = do
        pure ((jget (this).endGamePaintable))


setIntermissionPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setIntermissionPaintable object_ a1 = jmethod object_ "setIntermissionPaintable" (\() -> (setIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setIntermissionPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setIntermissionPaintable_super object_ a1 = (setIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setIntermissionPaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setIntermissionPaintable_impl this intermissionPaintable = do
        jset (this).intermissionPaintable (intermissionPaintable)
        pure ()


getIntermissionPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getIntermissionPaintable object_ = jmethod object_ "getIntermissionPaintable" (\() -> (getIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getIntermissionPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getIntermissionPaintable_super object_ = (getIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getIntermissionPaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getIntermissionPaintable_impl this = do
        pure ((jget (this).intermissionPaintable))


getEndGameInfoP :: (JavaObjectClass this_) => this_ -> IO (EndGameInfo.EndGameInfo)
getEndGameInfoP object_ = jmethod object_ "getEndGameInfoP" (\() -> (getEndGameInfoP_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getEndGameInfoP_super :: (JavaObjectClass this_) => this_ -> IO (EndGameInfo.EndGameInfo)
getEndGameInfoP_super object_ = (getEndGameInfoP_impl (javaCast object_ :: AllBinaryGameCanvas))

getEndGameInfoP_impl :: AllBinaryGameCanvas -> IO (EndGameInfo.EndGameInfo)
getEndGameInfoP_impl this = do
        pure ((jget (this).endGameInfo))


setHighScoresPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setHighScoresPaintable object_ a1 = jmethod object_ "setHighScoresPaintable" (\() -> (setHighScoresPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setHighScoresPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setHighScoresPaintable_super object_ a1 = (setHighScoresPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setHighScoresPaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setHighScoresPaintable_impl this highScoresPaintable = do
        jset (this).highScoresPaintable (highScoresPaintable)
        pure ()


getHighScoresPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getHighScoresPaintable object_ = jmethod object_ "getHighScoresPaintable" (\() -> (getHighScoresPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getHighScoresPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getHighScoresPaintable_super object_ = (getHighScoresPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getHighScoresPaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getHighScoresPaintable_impl this = do
        pure ((jget (this).highScoresPaintable))


getRealHighScoresPaintable :: (JavaObjectClass this_) => this_ -> IO (HighScoresPaintable.HighScoresPaintable)
getRealHighScoresPaintable object_ = jmethod object_ "getRealHighScoresPaintable" (\() -> (getRealHighScoresPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getRealHighScoresPaintable_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresPaintable.HighScoresPaintable)
getRealHighScoresPaintable_super object_ = (getRealHighScoresPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getRealHighScoresPaintable_impl :: AllBinaryGameCanvas -> IO (HighScoresPaintable.HighScoresPaintable)
getRealHighScoresPaintable_impl this = do
        pure ((jget (this).realHighScoresPaintable))


clearPlayerGameInputList :: (JavaObjectClass this_) => this_ -> IO (())
clearPlayerGameInputList object_ = jmethod object_ "clearPlayerGameInputList" (\() -> (clearPlayerGameInputList_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

clearPlayerGameInputList_super :: (JavaObjectClass this_) => this_ -> IO (())
clearPlayerGameInputList_super object_ = (clearPlayerGameInputList_impl (javaCast object_ :: AllBinaryGameCanvas))

clearPlayerGameInputList_impl :: AllBinaryGameCanvas -> IO (())
clearPlayerGameInputList_impl this = do
        playerGameInput <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size ((jget (this).localPlayerGameInputList)))) - 1), ((jio (BasicArrayList.size ((jget (this).localPlayerGameInputList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset playerGameInput ((javaCast (jio (BasicArrayList.get ((jget (this).localPlayerGameInputList)) index)) :: PlayerGameInput.PlayerGameInput))
            Control.Monad.void (GameKeyEventHandler.removeListener ((jget (this).gameKeyEventHandler)) (javaCast (jget playerGameInput)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).localPlayerGameInputList)))
        pure ()


addPlayerGameInput :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
addPlayerGameInput object_ a1 = jmethod object_ "addPlayerGameInput" (\() -> (addPlayerGameInput_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

addPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
addPlayerGameInput_super object_ a1 = (addPlayerGameInput_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

addPlayerGameInput_impl :: AllBinaryGameCanvas -> PlayerGameInput.PlayerGameInput -> IO (())
addPlayerGameInput_impl this playerGameInput = do
        Control.Monad.void (BasicArrayList.add ((jget (this).localPlayerGameInputList)) playerGameInput)
        pure ()


setMenuInputProcessor :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor object_ a1 = jmethod object_ "setMenuInputProcessor" (\() -> (setMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor_super object_ a1 = (setMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setMenuInputProcessor_impl :: AllBinaryGameCanvas -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor_impl this menuInputProcessor = do
        jset (this).menuInputProcessor (menuInputProcessor)
        pure ()


getMenuInputProcessor :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor object_ = jmethod object_ "getMenuInputProcessor" (\() -> (getMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor_super object_ = (getMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getMenuInputProcessor_impl :: AllBinaryGameCanvas -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor_impl this = do
        pure ((jget (this).menuInputProcessor))


getMenuForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getMenuForm object_ = jmethod object_ "getMenuForm" (\() -> (getMenuForm_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getMenuForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getMenuForm_super object_ = (getMenuForm_impl (javaCast object_ :: AllBinaryGameCanvas))

getMenuForm_impl :: AllBinaryGameCanvas -> IO (ScrollSelectionForm.ScrollSelectionForm)
getMenuForm_impl this = do
        pure ((jget (this).menuForm))


setMenuForm :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setMenuForm object_ a1 = jmethod object_ "setMenuForm" (\() -> (setMenuForm_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setMenuForm_super :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setMenuForm_super object_ a1 = (setMenuForm_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setMenuForm_impl :: AllBinaryGameCanvas -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setMenuForm_impl this menuForm = do
        jset (this).menuForm (menuForm)
        pure ()


getStartLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartLevel object_ = jmethod object_ "getStartLevel" (\() -> (getStartLevel_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getStartLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartLevel_super object_ = (getStartLevel_impl (javaCast object_ :: AllBinaryGameCanvas))

getStartLevel_impl :: AllBinaryGameCanvas -> IO (Int)
getStartLevel_impl this = do
        pure ((jget (this).startLevel))


setStartLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStartLevel object_ a1 = jmethod object_ "setStartLevel" (\() -> (setStartLevel_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setStartLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStartLevel_super object_ a1 = (setStartLevel_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setStartLevel_impl :: AllBinaryGameCanvas -> Int -> IO (())
setStartLevel_impl this startLevel = do
        jset (this).startLevel (startLevel)
        pure ()


setTouchButtonsPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setTouchButtonsPaintable object_ a1 = jmethod object_ "setTouchButtonsPaintable" (\() -> (setTouchButtonsPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setTouchButtonsPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setTouchButtonsPaintable_super object_ a1 = (setTouchButtonsPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setTouchButtonsPaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setTouchButtonsPaintable_impl this touchButtonsPaintable = do
        jset (this).touchButtonsPaintable (touchButtonsPaintable)
        pure ()


getTouchButtonsPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getTouchButtonsPaintable object_ = jmethod object_ "getTouchButtonsPaintable" (\() -> (getTouchButtonsPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getTouchButtonsPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getTouchButtonsPaintable_super object_ = (getTouchButtonsPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getTouchButtonsPaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getTouchButtonsPaintable_impl this = do
        pure ((jget (this).touchButtonsPaintable))


setGameInputProcessor :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setGameInputProcessor object_ a1 = jmethod object_ "setGameInputProcessor" (\() -> (setGameInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setGameInputProcessor_super :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setGameInputProcessor_super object_ a1 = (setGameInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setGameInputProcessor_impl :: AllBinaryGameCanvas -> Processor.Processor -> IO (())
setGameInputProcessor_impl this gameInputProcessor = do
        jset (this).gameInputProcessor (gameInputProcessor)
        pure ()


getGameInputProcessor :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getGameInputProcessor object_ = jmethod object_ "getGameInputProcessor" (\() -> (getGameInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getGameInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getGameInputProcessor_super object_ = (getGameInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getGameInputProcessor_impl :: AllBinaryGameCanvas -> IO (Processor.Processor)
getGameInputProcessor_impl this = do
        pure ((jget (this).gameInputProcessor))


setEndGameProcessor :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setEndGameProcessor object_ a1 = jmethod object_ "setEndGameProcessor" (\() -> (setEndGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setEndGameProcessor_super :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setEndGameProcessor_super object_ a1 = (setEndGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setEndGameProcessor_impl :: AllBinaryGameCanvas -> Processor.Processor -> IO (())
setEndGameProcessor_impl this endGameProcessor = do
        jset (this).endGameProcessor (endGameProcessor)
        pure ()


getEndGameProcessor :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getEndGameProcessor object_ = jmethod object_ "getEndGameProcessor" (\() -> (getEndGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getEndGameProcessor_super :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getEndGameProcessor_super object_ = (getEndGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getEndGameProcessor_impl :: AllBinaryGameCanvas -> IO (Processor.Processor)
getEndGameProcessor_impl this = do
        pure ((jget (this).endGameProcessor))


setEndGameStatePaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setEndGameStatePaintable object_ a1 = jmethod object_ "setEndGameStatePaintable" (\() -> (setEndGameStatePaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setEndGameStatePaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setEndGameStatePaintable_super object_ a1 = (setEndGameStatePaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setEndGameStatePaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setEndGameStatePaintable_impl this endGameStatePaintable = do
        jset (this).endGameStatePaintable (endGameStatePaintable)
        pure ()


getEndGameStatePaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getEndGameStatePaintable object_ = jmethod object_ "getEndGameStatePaintable" (\() -> (getEndGameStatePaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getEndGameStatePaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getEndGameStatePaintable_super object_ = (getEndGameStatePaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getEndGameStatePaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getEndGameStatePaintable_impl this = do
        pure ((jget (this).endGameStatePaintable))


setNonBotPaintableP :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setNonBotPaintableP object_ a1 = jmethod object_ "setNonBotPaintableP" (\() -> (setNonBotPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setNonBotPaintableP_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setNonBotPaintableP_super object_ a1 = (setNonBotPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setNonBotPaintableP_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setNonBotPaintableP_impl this nonBotPaintable = do
        jset (this).nonBotPaintable (nonBotPaintable)
        pure ()


getNonBotPaintableP :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getNonBotPaintableP object_ = jmethod object_ "getNonBotPaintableP" (\() -> (getNonBotPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getNonBotPaintableP_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getNonBotPaintableP_super object_ = (getNonBotPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))

getNonBotPaintableP_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getNonBotPaintableP_impl this = do
        pure ((jget (this).nonBotPaintable))


setStartIntermissionPaintable :: (JavaObjectClass this_) => this_ -> InitUpdatePaintable.InitUpdatePaintable -> IO (())
setStartIntermissionPaintable object_ a1 = jmethod object_ "setStartIntermissionPaintable" (\() -> (setStartIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setStartIntermissionPaintable_super :: (JavaObjectClass this_) => this_ -> InitUpdatePaintable.InitUpdatePaintable -> IO (())
setStartIntermissionPaintable_super object_ a1 = (setStartIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setStartIntermissionPaintable_impl :: AllBinaryGameCanvas -> InitUpdatePaintable.InitUpdatePaintable -> IO (())
setStartIntermissionPaintable_impl this startIntermissionPaintable = do
        jset (this).startIntermissionPaintable (startIntermissionPaintable)
        pure ()


getStartIntermissionPaintable :: (JavaObjectClass this_) => this_ -> IO (InitUpdatePaintable.InitUpdatePaintable)
getStartIntermissionPaintable object_ = jmethod object_ "getStartIntermissionPaintable" (\() -> (getStartIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getStartIntermissionPaintable_super :: (JavaObjectClass this_) => this_ -> IO (InitUpdatePaintable.InitUpdatePaintable)
getStartIntermissionPaintable_super object_ = (getStartIntermissionPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getStartIntermissionPaintable_impl :: AllBinaryGameCanvas -> IO (InitUpdatePaintable.InitUpdatePaintable)
getStartIntermissionPaintable_impl this = do
        pure ((jget (this).startIntermissionPaintable))


setMainStateProcessor :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setMainStateProcessor object_ a1 = jmethod object_ "setMainStateProcessor" (\() -> (setMainStateProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setMainStateProcessor_super :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setMainStateProcessor_super object_ a1 = (setMainStateProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setMainStateProcessor_impl :: AllBinaryGameCanvas -> Processor.Processor -> IO (())
setMainStateProcessor_impl this mainStateProcessor = do
        jset (this).mainStateProcessor (mainStateProcessor)
        pure ()


getMainStateProcessor :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getMainStateProcessor object_ = jmethod object_ "getMainStateProcessor" (\() -> (getMainStateProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getMainStateProcessor_super :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getMainStateProcessor_super object_ = (getMainStateProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getMainStateProcessor_impl :: AllBinaryGameCanvas -> IO (Processor.Processor)
getMainStateProcessor_impl this = do
        pure ((jget (this).mainStateProcessor))


setProcessGameProcessor :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setProcessGameProcessor object_ a1 = jmethod object_ "setProcessGameProcessor" (\() -> (setProcessGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setProcessGameProcessor_super :: (JavaObjectClass this_) => this_ -> Processor.Processor -> IO (())
setProcessGameProcessor_super object_ a1 = (setProcessGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setProcessGameProcessor_impl :: AllBinaryGameCanvas -> Processor.Processor -> IO (())
setProcessGameProcessor_impl this processGameProcessor = do
        jset (this).processGameProcessor (processGameProcessor)
        pure ()


getProcessGameProcessor :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getProcessGameProcessor object_ = jmethod object_ "getProcessGameProcessor" (\() -> (getProcessGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getProcessGameProcessor_super :: (JavaObjectClass this_) => this_ -> IO (Processor.Processor)
getProcessGameProcessor_super object_ = (getProcessGameProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getProcessGameProcessor_impl :: AllBinaryGameCanvas -> IO (Processor.Processor)
getProcessGameProcessor_impl this = do
        pure ((jget (this).processGameProcessor))


setOpenMenuPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setOpenMenuPaintable object_ a1 = jmethod object_ "setOpenMenuPaintable" (\() -> (setOpenMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setOpenMenuPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setOpenMenuPaintable_super object_ a1 = (setOpenMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setOpenMenuPaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setOpenMenuPaintable_impl this openMenuPaintable = do
        jset (this).openMenuPaintable (openMenuPaintable)
        pure ()


getOpenMenuPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getOpenMenuPaintable object_ = jmethod object_ "getOpenMenuPaintable" (\() -> (getOpenMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getOpenMenuPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getOpenMenuPaintable_super object_ = (getOpenMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getOpenMenuPaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getOpenMenuPaintable_impl this = do
        pure ((jget (this).openMenuPaintable))


setPopupMenuInputProcessor :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setPopupMenuInputProcessor object_ a1 = jmethod object_ "setPopupMenuInputProcessor" (\() -> (setPopupMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setPopupMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setPopupMenuInputProcessor_super object_ a1 = (setPopupMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setPopupMenuInputProcessor_impl :: AllBinaryGameCanvas -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setPopupMenuInputProcessor_impl this popupMenuInputProcessor = do
        jset (this).popupMenuInputProcessor (popupMenuInputProcessor)
        pure ()


getPopupMenuInputProcessor :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getPopupMenuInputProcessor object_ = jmethod object_ "getPopupMenuInputProcessor" (\() -> (getPopupMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getPopupMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getPopupMenuInputProcessor_super object_ = (getPopupMenuInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getPopupMenuInputProcessor_impl :: AllBinaryGameCanvas -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getPopupMenuInputProcessor_impl this = do
        pure ((jget (this).popupMenuInputProcessor))


getSensorGameUpdateProcessor :: (JavaObjectClass this_) => this_ -> IO (SensorGameUpdateProcessor.SensorGameUpdateProcessor)
getSensorGameUpdateProcessor object_ = jmethod object_ "getSensorGameUpdateProcessor" (\() -> (getSensorGameUpdateProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getSensorGameUpdateProcessor_super :: (JavaObjectClass this_) => this_ -> IO (SensorGameUpdateProcessor.SensorGameUpdateProcessor)
getSensorGameUpdateProcessor_super object_ = (getSensorGameUpdateProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getSensorGameUpdateProcessor_impl :: AllBinaryGameCanvas -> IO (SensorGameUpdateProcessor.SensorGameUpdateProcessor)
getSensorGameUpdateProcessor_impl this = do
        pure ((jget (this).sensorGameUpdateProcessor))


getRawGameInputProcessor :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getRawGameInputProcessor object_ = jmethod object_ "getRawGameInputProcessor" (\() -> (getRawGameInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getRawGameInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getRawGameInputProcessor_super object_ = (getRawGameInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getRawGameInputProcessor_impl :: AllBinaryGameCanvas -> IO (InputProcessor.InputProcessor)
getRawGameInputProcessor_impl this = do
        pure ((jget (this).rawGameInputProcessor))


getRawInputProcessor :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getRawInputProcessor object_ = jmethod object_ "getRawInputProcessor" (\() -> (getRawInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getRawInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getRawInputProcessor_super object_ = (getRawInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getRawInputProcessor_impl :: AllBinaryGameCanvas -> IO (InputProcessor.InputProcessor)
getRawInputProcessor_impl this = do
        pure ((jget (this).rawInputProcessor))


setInputProcessor :: (JavaObjectClass this_) => this_ -> InputProcessor.InputProcessor -> IO (())
setInputProcessor object_ a1 = jmethod object_ "setInputProcessor" (\() -> (setInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setInputProcessor_super :: (JavaObjectClass this_) => this_ -> InputProcessor.InputProcessor -> IO (())
setInputProcessor_super object_ a1 = (setInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setInputProcessor_impl :: AllBinaryGameCanvas -> InputProcessor.InputProcessor -> IO (())
setInputProcessor_impl this inputProcessor = do
        jset (this).inputProcessor (inputProcessor)
        pure ()


getInputProcessor :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getInputProcessor object_ = jmethod object_ "getInputProcessor" (\() -> (getInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getInputProcessor_super object_ = (getInputProcessor_impl (javaCast object_ :: AllBinaryGameCanvas))

getInputProcessor_impl :: AllBinaryGameCanvas -> IO (InputProcessor.InputProcessor)
getInputProcessor_impl this = do
        pure ((jget (this).inputProcessor))


setMenuPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setMenuPaintable object_ a1 = jmethod object_ "setMenuPaintable" (\() -> (setMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setMenuPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setMenuPaintable_super object_ a1 = (setMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setMenuPaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setMenuPaintable_impl this menuPaintable = do
        jset (this).menuPaintable (menuPaintable)
        pure ()


getMenuPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getMenuPaintable object_ = jmethod object_ "getMenuPaintable" (\() -> (getMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getMenuPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getMenuPaintable_super object_ = (getMenuPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getMenuPaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getMenuPaintable_impl this = do
        pure ((jget (this).menuPaintable))


setFormPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setFormPaintable object_ a1 = jmethod object_ "setFormPaintable" (\() -> (setFormPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setFormPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setFormPaintable_super object_ a1 = (setFormPaintable_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setFormPaintable_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setFormPaintable_impl this formPaintable = do
        jset (this).formPaintable (formPaintable)
        pure ()


getFormPaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getFormPaintable object_ = jmethod object_ "getFormPaintable" (\() -> (getFormPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getFormPaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getFormPaintable_super object_ = (getFormPaintable_impl (javaCast object_ :: AllBinaryGameCanvas))

getFormPaintable_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getFormPaintable_impl this = do
        pure ((jget (this).formPaintable))


setGameSpecificPaintableP :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setGameSpecificPaintableP object_ a1 = jmethod object_ "setGameSpecificPaintableP" (\() -> (setGameSpecificPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))) () a1

setGameSpecificPaintableP_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setGameSpecificPaintableP_super object_ a1 = (setGameSpecificPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas)) a1

setGameSpecificPaintableP_impl :: AllBinaryGameCanvas -> Paintable.Paintable -> IO (())
setGameSpecificPaintableP_impl this gameSpecificPaintable = do
        jset (this).gameSpecificPaintable (gameSpecificPaintable)
        pure ()


getGameSpecificPaintableP :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getGameSpecificPaintableP object_ = jmethod object_ "getGameSpecificPaintableP" (\() -> (getGameSpecificPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getGameSpecificPaintableP_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getGameSpecificPaintableP_super object_ = (getGameSpecificPaintableP_impl (javaCast object_ :: AllBinaryGameCanvas))

getGameSpecificPaintableP_impl :: AllBinaryGameCanvas -> IO (Paintable.Paintable)
getGameSpecificPaintableP_impl this = do
        pure ((jget (this).gameSpecificPaintable))


isSingleThread :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleThread object_ = jmethod object_ "isSingleThread" (\() -> (isSingleThread_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

isSingleThread_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleThread_super object_ = (isSingleThread_impl (javaCast object_ :: AllBinaryGameCanvas))

isSingleThread_impl :: AllBinaryGameCanvas -> IO (Bool)
isSingleThread_impl this = do
        pure (((jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) || (jget SWTUtil.isSWT)))


isRunningInAnotherThread :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunningInAnotherThread object_ = jmethod object_ "isRunningInAnotherThread" (\() -> (isRunningInAnotherThread_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

isRunningInAnotherThread_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunningInAnotherThread_super object_ = (isRunningInAnotherThread_impl (javaCast object_ :: AllBinaryGameCanvas))

isRunningInAnotherThread_impl :: AllBinaryGameCanvas -> IO (Bool)
isRunningInAnotherThread_impl this = do
    javaCatchReturn $ do
        features <- (Features.getInstance)
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        if (jio (Features.isDefault features (javaCast (jget (openGLFeatureFactory).oPENGL_AS_GAME_THREAD)))) then do
            javaReturn (True)
        else do
            javaReturn =<< (RunnableCanvas.isRunning this)


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: AllBinaryGameCanvas))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: AllBinaryGameCanvas))

getType_impl :: AllBinaryGameCanvas -> IO (Int)
getType_impl this = do
        pure (AllBinaryGameCanvas.tYPE)


