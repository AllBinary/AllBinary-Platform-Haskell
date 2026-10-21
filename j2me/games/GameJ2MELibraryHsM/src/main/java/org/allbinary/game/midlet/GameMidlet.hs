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
-- package org.allbinary.game.midlet
module GameMidlet (module GameMidlet, module ProgressMidlet) where

import ProgressMidlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, setDemo, setDemo_super, setDemo_impl, createGame, createGame_super, createGame_impl, mediaShutdown, mediaShutdown_super, mediaShutdown_impl, stopAll, stopAll_super, stopAll_impl, pauseApp, pauseApp_super, pauseApp_impl, pauseAppBackground, pauseAppBackground_super, pauseAppBackground_impl, unPauseApp, unPauseApp_super, unPauseApp_impl, unPauseAppBackground, unPauseAppBackground_super, unPauseAppBackground_impl, destroyAppInRunnable, destroyAppInRunnable_super, destroyAppInRunnable_impl, destroyApp, destroyApp_super, destroyApp_impl, startApp, startApp_super, startApp_impl, commandAction, commandAction_super, commandAction_impl, updateFullScreen, updateFullScreen_super, updateFullScreen_impl, onEvent, onEvent_super, onEvent_impl, getInputMappingInstructionsCanvas, getInputMappingInstructionsCanvas_super, getInputMappingInstructionsCanvas_impl, getInputMappingCanvas, getInputMappingCanvas_super, getInputMappingCanvas_impl, getAboutCanvas, getAboutCanvas_super, getAboutCanvas_impl, getHelpPaintable, getHelpPaintable_super, getHelpPaintable_impl, createHighScoresCanvas, createHighScoresCanvas_super, createHighScoresCanvas_impl, startGameCanvasRunnableInterface, startGameCanvasRunnableInterface_super, startGameCanvasRunnableInterface_impl, stopGameCanvasRunnableInterface, stopGameCanvasRunnableInterface_super, stopGameCanvasRunnableInterface_impl, getGameCanvasRunnableInterface, getGameCanvasRunnableInterface_super, getGameCanvasRunnableInterface_impl, setGameCanvasRunnableInterface, setGameCanvasRunnableInterface_super, setGameCanvasRunnableInterface_impl, createGameLayerManager, createGameLayerManager_super, createGameLayerManager_impl, getGameOptionsForm, getGameOptionsForm_super, getGameOptionsForm_impl, save, save_super, save_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, setLoadGameForm, setLoadGameForm_super, setLoadGameForm_impl, getLoadGameForm, getLoadGameForm_super, getLoadGameForm_impl, setResized, setResized_super, setResized_impl, isResized, isResized_super, isResized_impl, isDemoLoading, isDemoLoading_super, isDemoLoading_impl, enumerationUtil, basicColorFactory, features, midletStrings, myCommandsFactory, gameStrings, gameAdStateFactory, gameStateFactory, tsUtil, dISPLAYABLE, cOMMAND_NAME, nO_COMMAND, nO_DISPLAYABLE, cOMMAND_ACTION, pAUSE_APP_BACKGROUND, uN_PAUSE_APP_BACKGROUND, aboutCommandProcessor, webCommandProcessor, gameMidletStateFactory, gameStartTimeHelper, fullScreenUtil, debugInterface, allbinaryGameCanvasRunnableInterface, thread, loadGameForm, isFullScreen, resized, startedBefore)
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
import qualified GameMidletStateFactory -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified GameMidletEventHandler -- same package or java.lang
import qualified DemoGameMidletEvent -- same package or java.lang
import qualified DemoGameMidletStateFactory -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified MIDletStateChangeException -- javax.microedition.midlet.MIDletStateChangeException
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified TsUtil -- org.allbinary.TsUtil
import qualified GameAdStateFactory -- org.allbinary.business.advertisement.GameAdStateFactory
import qualified FullScreenUtil -- org.allbinary.canvas.FullScreenUtil
import qualified GameStatisticsFactory -- org.allbinary.canvas.GameStatisticsFactory
import qualified DebugFactory -- org.allbinary.debug.DebugFactory
import qualified DebugInterface -- org.allbinary.debug.DebugInterface
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified GameMode -- org.allbinary.game.GameMode
import qualified GameStrings -- org.allbinary.game.GameStrings
import qualified GameTypeFactory -- org.allbinary.game.GameTypeFactory
import qualified PlayerTypesFactory -- org.allbinary.game.PlayerTypesFactory
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameOptionsForm -- org.allbinary.game.configuration.GameOptionsForm
import qualified GameOptionsFormFactory -- org.allbinary.game.configuration.GameOptionsFormFactory
import qualified InGameFeatures -- org.allbinary.game.configuration.InGameFeatures
import qualified InGameOptionsForm -- org.allbinary.game.configuration.InGameOptionsForm
import qualified InGameOptionsFormFactory -- org.allbinary.game.configuration.InGameOptionsFormFactory
import qualified LoadGameForm -- org.allbinary.game.configuration.LoadGameForm
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified GameFeatureEventHandler -- org.allbinary.game.configuration.event.GameFeatureEventHandler
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFormUtil -- org.allbinary.game.configuration.feature.GameFeatureFormUtil
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified GamePersistanceSingleton -- org.allbinary.game.configuration.persistance.GamePersistanceSingleton
import qualified KeyValuePersistance -- org.allbinary.game.configuration.persistance.KeyValuePersistance
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified BasicPaintablesCanvas -- org.allbinary.game.displayable.canvas.BasicPaintablesCanvas
import qualified DemoCanvas -- org.allbinary.game.displayable.canvas.DemoCanvas
import qualified GameCanvasRunnableInterface -- org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
import qualified GameEventHandlerUtil -- org.allbinary.game.displayable.canvas.GameEventHandlerUtil
import qualified GameInputMappingCanvas -- org.allbinary.game.displayable.canvas.GameInputMappingCanvas
import qualified GameInputMappingInstructionsCanvas -- org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas
import qualified MenuListener -- org.allbinary.game.displayable.canvas.MenuListener
import qualified NullGameCanvasRunnable -- org.allbinary.game.displayable.canvas.NullGameCanvasRunnable
import qualified TextNotificationUtil -- org.allbinary.game.input.TextNotificationUtil
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified HelpPaintable -- org.allbinary.game.paint.help.HelpPaintable
import qualified HighScoreCommands -- org.allbinary.game.score.HighScoreCommands
import qualified HighScoreCommandsFactory -- org.allbinary.game.score.HighScoreCommandsFactory
import qualified HighScoreTextBox -- org.allbinary.game.score.displayable.HighScoreTextBox
import qualified HighScoreUtil -- org.allbinary.game.score.displayable.HighScoreUtil
import qualified HighScoresCanvas -- org.allbinary.game.score.displayable.HighScoresCanvas
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified ResizableListenerHandler -- org.allbinary.graphics.ResizableListenerHandler
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ColorChangeEventHandler -- org.allbinary.graphics.color.ColorChangeEventHandler
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified AboutCommandProcessor -- org.allbinary.graphics.displayable.screen.AboutCommandProcessor
import qualified AboutPaintableFactory -- org.allbinary.graphics.displayable.screen.AboutPaintableFactory
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified WebCommandProcessor -- org.allbinary.graphics.displayable.screen.WebCommandProcessor
import qualified AllBinarySensorManager -- org.allbinary.input.AllBinarySensorManager
import qualified VirtualKeyboardEventHandler -- org.allbinary.input.event.VirtualKeyboardEventHandler
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ClientInformationFactory -- org.allbinary.logic.system.security.licensing.ClientInformationFactory
import qualified InApplicationPurchaseFactory -- org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory
import qualified LockableFeature -- org.allbinary.logic.system.security.licensing.LockableFeature
import qualified LockableFeatureFactory -- org.allbinary.logic.system.security.licensing.LockableFeatureFactory
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified AllBinaryMediaManager -- org.allbinary.media.audio.AllBinaryMediaManager
import qualified MidletStrings -- org.allbinary.midlet.MidletStrings
import qualified ProgressMidlet -- org.allbinary.midlet.ProgressMidlet
import qualified NullThread -- org.allbinary.thread.NullThread
import qualified ThreadFactoryUtil -- org.allbinary.thread.ThreadFactoryUtil
import qualified ThreadUtil -- org.allbinary.thread.ThreadUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements CommandListener
data GameMidlet = GameMidlet
    { header_ :: JavaHeader
    , base :: ProgressMidlet.ProgressMidlet
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , features :: IORef (Features.Features)
    , midletStrings :: IORef (MidletStrings.MidletStrings)
    , myCommandsFactory :: IORef (MyCommandsFactory.MyCommandsFactory)
    , gameStrings :: IORef (GameStrings.GameStrings)
    , gameAdStateFactory :: IORef (GameAdStateFactory.GameAdStateFactory)
    , gameStateFactory :: IORef (GameStateFactory.GameStateFactory)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , dISPLAYABLE :: IORef (String)
    , cOMMAND_NAME :: IORef (String)
    , nO_COMMAND :: IORef (String)
    , nO_DISPLAYABLE :: IORef (String)
    , cOMMAND_ACTION :: IORef (String)
    , pAUSE_APP_BACKGROUND :: IORef (String)
    , uN_PAUSE_APP_BACKGROUND :: IORef (String)
    , aboutCommandProcessor :: IORef (AboutCommandProcessor.AboutCommandProcessor)
    , webCommandProcessor :: IORef (WebCommandProcessor.WebCommandProcessor)
    , gameMidletStateFactory :: IORef (GameMidletStateFactory.GameMidletStateFactory)
    , gameStartTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , fullScreenUtil :: IORef (FullScreenUtil.FullScreenUtil)
    , debugInterface :: IORef (DebugInterface.DebugInterface)
    , allbinaryGameCanvasRunnableInterface :: IORef (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
    , thread :: IORef (Thread.Thread)
    , loadGameForm :: IORef (CommandForm.CommandForm)
    , isFullScreen :: IORef (Bool)
    , resized :: IORef (Bool)
    , startedBefore :: IORef (Bool)
    }

instance JavaNull GameMidlet where
    javaNull = javaNullRecord "GameMidlet"

instance JavaEquals GameMidlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameMidlet where
    (==) = jrecordEquals

instance JavaObjectClass GameMidlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameMidlet
newRecord_ = do
    base <- ProgressMidlet.newRecord_
    let header_ = base.header_
    enumerationUtil <- newIORef javaNull
    basicColorFactory <- newIORef javaNull
    features <- newIORef javaNull
    midletStrings <- newIORef javaNull
    myCommandsFactory <- newIORef javaNull
    gameStrings <- newIORef javaNull
    gameAdStateFactory <- newIORef javaNull
    gameStateFactory <- newIORef javaNull
    tsUtil <- newIORef javaNull
    dISPLAYABLE <- newIORef ""
    cOMMAND_NAME <- newIORef ""
    nO_COMMAND <- newIORef ""
    nO_DISPLAYABLE <- newIORef ""
    cOMMAND_ACTION <- newIORef ""
    pAUSE_APP_BACKGROUND <- newIORef ""
    uN_PAUSE_APP_BACKGROUND <- newIORef ""
    aboutCommandProcessor <- newIORef javaNull
    webCommandProcessor <- newIORef javaNull
    gameMidletStateFactory <- newIORef javaNull
    gameStartTimeHelper <- newIORef javaNull
    fullScreenUtil <- newIORef javaNull
    debugInterface <- newIORef javaNull
    allbinaryGameCanvasRunnableInterface <- newIORef javaNull
    thread <- newIORef javaNull
    loadGameForm <- newIORef javaNull
    isFullScreen <- newIORef False
    resized <- newIORef False
    startedBefore <- newIORef False
    let this = GameMidlet header_ base enumerationUtil basicColorFactory features midletStrings myCommandsFactory gameStrings gameAdStateFactory gameStateFactory tsUtil dISPLAYABLE cOMMAND_NAME nO_COMMAND nO_DISPLAYABLE cOMMAND_ACTION pAUSE_APP_BACKGROUND uN_PAUSE_APP_BACKGROUND aboutCommandProcessor webCommandProcessor gameMidletStateFactory gameStartTimeHelper fullScreenUtil debugInterface allbinaryGameCanvasRunnableInterface thread loadGameForm isFullScreen resized startedBefore
    jregisterLevel header_ this
    CommandListener.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setDemo" (\() -> setDemo_impl this)
    jregisterMethod header_ "createGame" (\() -> createGame_impl this)
    jregisterMethod header_ "mediaShutdown" (\() -> mediaShutdown_impl this)
    jregisterMethod header_ "stopAll" (\() -> stopAll_impl this)
    jregisterMethod header_ "pauseApp" (\() -> pauseApp_impl this)
    jregisterMethod header_ "pauseAppBackground" (\() -> pauseAppBackground_impl this)
    jregisterMethod header_ "unPauseApp" (\() -> unPauseApp_impl this)
    jregisterMethod header_ "unPauseAppBackground" (\() -> unPauseAppBackground_impl this)
    jregisterMethod header_ "destroyAppInRunnable" (\() -> destroyAppInRunnable_impl this)
    jregisterMethod header_ "destroyApp" (\() -> destroyApp_impl this)
    jregisterMethod header_ "startApp" (\() -> startApp_impl this)
    jregisterMethod header_ "commandAction" (\() -> commandAction_impl this)
    jregisterMethod header_ "updateFullScreen" (\() -> updateFullScreen_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "getInputMappingInstructionsCanvas" (\() -> getInputMappingInstructionsCanvas_impl this)
    jregisterMethod header_ "getInputMappingCanvas" (\() -> getInputMappingCanvas_impl this)
    jregisterMethod header_ "getAboutCanvas" (\() -> getAboutCanvas_impl this)
    jregisterMethod header_ "getHelpPaintable" (\() -> getHelpPaintable_impl this)
    jregisterMethod header_ "createHighScoresCanvas" (\() -> createHighScoresCanvas_impl this)
    jregisterMethod header_ "startGameCanvasRunnableInterface" (\() -> startGameCanvasRunnableInterface_impl this)
    jregisterMethod header_ "stopGameCanvasRunnableInterface" (\() -> stopGameCanvasRunnableInterface_impl this)
    jregisterMethod header_ "getGameCanvasRunnableInterface" (\() -> getGameCanvasRunnableInterface_impl this)
    jregisterMethod header_ "setGameCanvasRunnableInterface" (\() -> setGameCanvasRunnableInterface_impl this)
    jregisterMethod header_ "createGameLayerManager" (\() -> createGameLayerManager_impl this)
    jregisterMethod header_ "getGameOptionsForm" (\() -> getGameOptionsForm_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "getCurrentStateHashtable" (\() -> getCurrentStateHashtable_impl this)
    jregisterMethod header_ "setLoadGameForm" (\() -> setLoadGameForm_impl this)
    jregisterMethod header_ "getLoadGameForm" (\() -> getLoadGameForm_impl this)
    jregisterMethod header_ "setResized" (\() -> setResized_impl this)
    jregisterMethod header_ "isResized" (\() -> isResized_impl this)
    jregisterMethod header_ "isDemoLoading" (\() -> isDemoLoading_impl this)
    pure this

initFields_ :: GameMidlet -> IO ()
initFields_ this = do
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.features =<< (Features.getInstance)
    jset this.midletStrings =<< (MidletStrings.getInstance)
    jset this.myCommandsFactory =<< (MyCommandsFactory.getInstance)
    jset this.gameStrings =<< (GameStrings.getInstance)
    jset this.gameAdStateFactory =<< (GameAdStateFactory.getInstance)
    jset this.gameStateFactory =<< (GameStateFactory.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.dISPLAYABLE (" Displayable: ")
    jset this.cOMMAND_NAME ("command Name/Label: ")
    jset this.nO_COMMAND ("No Command")
    jset this.nO_DISPLAYABLE ("No Displayable")
    jset this.cOMMAND_ACTION =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "GameMidlet::"))) (jget ((jget (this).midletStrings)).cOMMAND_ACTION)))))
    jset this.pAUSE_APP_BACKGROUND ("pauseAppBackground")
    jset this.uN_PAUSE_APP_BACKGROUND ("unPauseAppBackground")
    jset this.aboutCommandProcessor =<< (AboutCommandProcessor.getInstance)
    jset this.webCommandProcessor =<< (WebCommandProcessor.getInstance)
    jset this.gameMidletStateFactory =<< (GameMidletStateFactory.getInstance)
    jset this.gameStartTimeHelper =<< (TimeDelayHelper.new_1 240)
    jset this.fullScreenUtil =<< (FullScreenUtil.getInstance)
    jset this.debugInterface (javaNull)
    jset this.allbinaryGameCanvasRunnableInterface ((javaCast NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE :: GameCanvasRunnableInterface.GameCanvasRunnableInterface))
    jset this.thread (NullThread.nULL_THREAD)
    jset this.loadGameForm (javaNull)
    jset this.isFullScreen (False)
    jset this.resized (False)
    jset this.startedBefore (False)
    pure ()

new_1 :: ClientInformationFactory.ClientInformationFactory -> IO GameMidlet
new_1 clientInformationFactory = do
    this <- newRecord_
    init_1 this clientInformationFactory
    pure this

init_1 :: GameMidlet -> ClientInformationFactory.ClientInformationFactory -> IO ()
init_1 this clientInformationFactory = do
        ProgressMidlet.init_1 this.base (clientInformationFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (SmallIntegerSingletonFactory.initWithRange ((jio (SmallIntegerSingletonFactory.getInstance))) 0x291 6)
        assignedValue <- (CommandForm.getNullCommandForm)
        jset (this).loadGameForm (assignedValue)
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.init progressCanvas this)
        Control.Monad.void (GameFeatureEventHandler.addListenerInterface ((jio (GameFeatureEventHandler.getInstance))) (jio (ChangedGameFeatureListener.getInstance)))
        Control.Monad.void (GamePersistanceSingleton.clear ((jio (GamePersistanceSingleton.getInstance))))
        assignedValue <- (DebugFactory.getInstance)
        jset (this).debugInterface (assignedValue)
        Control.Monad.void (GameMidlet.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameMidlet))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GameMidlet))

init_impl :: GameMidlet -> IO (())
init_impl this = do
        pure ()


-- throws Exception
setDemo :: (JavaObjectClass this_) => this_ -> IO (())
setDemo object_ = jmethod object_ "setDemo" (\() -> (setDemo_impl (javaCast object_ :: GameMidlet))) ()

setDemo_super :: (JavaObjectClass this_) => this_ -> IO (())
setDemo_super object_ = (setDemo_impl (javaCast object_ :: GameMidlet))

setDemo_impl :: GameMidlet -> IO (())
setDemo_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
createGame :: (JavaObjectClass this_) => this_ -> IO (())
createGame object_ = jmethod object_ "createGame" (\() -> (createGame_impl (javaCast object_ :: GameMidlet))) ()

createGame_super :: (JavaObjectClass this_) => this_ -> IO (())
createGame_super object_ = (createGame_impl (javaCast object_ :: GameMidlet))

createGame_impl :: GameMidlet -> IO (())
createGame_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
mediaShutdown :: (JavaObjectClass this_) => this_ -> IO (())
mediaShutdown object_ = jmethod object_ "mediaShutdown" (\() -> (mediaShutdown_impl (javaCast object_ :: GameMidlet))) ()

mediaShutdown_super :: (JavaObjectClass this_) => this_ -> IO (())
mediaShutdown_super object_ = (mediaShutdown_impl (javaCast object_ :: GameMidlet))

mediaShutdown_impl :: GameMidlet -> IO (())
mediaShutdown_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))
        pure ()


stopAll :: (JavaObjectClass this_) => this_ -> IO (())
stopAll object_ = jmethod object_ "stopAll" (\() -> (stopAll_impl (javaCast object_ :: GameMidlet))) ()

stopAll_super :: (JavaObjectClass this_) => this_ -> IO (())
stopAll_super object_ = (stopAll_impl (javaCast object_ :: GameMidlet))

stopAll_impl :: GameMidlet -> IO (())
stopAll_impl this = do
        pure ()


pauseApp :: (JavaObjectClass this_) => this_ -> IO (())
pauseApp object_ = jmethod object_ "pauseApp" (\() -> (pauseApp_impl (javaCast object_ :: GameMidlet))) ()

pauseApp_super :: (JavaObjectClass this_) => this_ -> IO (())
pauseApp_super object_ = (pauseApp_impl (javaCast object_ :: GameMidlet))

pauseApp_impl :: GameMidlet -> IO (())
pauseApp_impl this = do
        Control.Monad.void (GameMidlet.pauseAppBackground this True)
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
        Control.Monad.void (Advertisements.stopAll ((jio (GameAdState.getAdvertisements gameAdState))))
        pure ()


pauseAppBackground :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
pauseAppBackground object_ a1 = jmethod object_ "pauseAppBackground" (\() -> (pauseAppBackground_impl (javaCast object_ :: GameMidlet))) () a1

pauseAppBackground_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
pauseAppBackground_super object_ a1 = (pauseAppBackground_impl (javaCast object_ :: GameMidlet)) a1

pauseAppBackground_impl :: GameMidlet -> Bool -> IO (())
pauseAppBackground_impl this background = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget (this).pAUSE_APP_BACKGROUND))
        if ((jtoObject (jget (this).allbinaryGameCanvasRunnableInterface)) /= (jtoObject NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE)) then do
            Control.Monad.void (GameCanvasRunnableInterface.pause ((jget (this).allbinaryGameCanvasRunnableInterface)))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "<<<<<< Null" this (jget (this).pAUSE_APP_BACKGROUND))
        Control.Monad.void (AllBinarySensorManager.shutdown ((jio (AllBinarySensorManager.getInstance))))
        pure ()


unPauseApp :: (JavaObjectClass this_) => this_ -> IO (())
unPauseApp object_ = jmethod object_ "unPauseApp" (\() -> (unPauseApp_impl (javaCast object_ :: GameMidlet))) ()

unPauseApp_super :: (JavaObjectClass this_) => this_ -> IO (())
unPauseApp_super object_ = (unPauseApp_impl (javaCast object_ :: GameMidlet))

unPauseApp_impl :: GameMidlet -> IO (())
unPauseApp_impl this = do
        Control.Monad.void (GameMidlet.unPauseAppBackground this True)
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
        Control.Monad.void (Advertisements.startAll ((jio (GameAdState.getAdvertisements gameAdState))))
        pure ()


unPauseAppBackground :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
unPauseAppBackground object_ a1 = jmethod object_ "unPauseAppBackground" (\() -> (unPauseAppBackground_impl (javaCast object_ :: GameMidlet))) () a1

unPauseAppBackground_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
unPauseAppBackground_super object_ a1 = (unPauseAppBackground_impl (javaCast object_ :: GameMidlet)) a1

unPauseAppBackground_impl :: GameMidlet -> Bool -> IO (())
unPauseAppBackground_impl this background = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget (this).uN_PAUSE_APP_BACKGROUND))
        Control.Monad.void (AllBinarySensorManager.init ((jio (AllBinarySensorManager.getInstance))))
        let gameCanvasRunnableInterface = (jget (this).allbinaryGameCanvasRunnableInterface)
        if ((jtoObject gameCanvasRunnableInterface) /= (jtoObject NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE)) then do
            Control.Monad.void (GameCanvasRunnableInterface.unPause gameCanvasRunnableInterface)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "<<<<<< Null" this (jget (this).uN_PAUSE_APP_BACKGROUND))
        pure ()


destroyAppInRunnable :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (())
destroyAppInRunnable object_ a1 a2 = jmethod object_ "destroyAppInRunnable" (\() -> (destroyAppInRunnable_impl (javaCast object_ :: GameMidlet))) () a1 a2

destroyAppInRunnable_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (())
destroyAppInRunnable_super object_ a1 a2 = (destroyAppInRunnable_impl (javaCast object_ :: GameMidlet)) a1 a2

destroyAppInRunnable_impl :: GameMidlet -> Bool -> Bool -> IO (())
destroyAppInRunnable_impl this unconditional isProgress = do
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        when isProgress $ do
            Control.Monad.void (ProgressCanvas.start progressCanvas)
            Control.Monad.void (GameMidlet.commandAction this (jget ((jget (this).myCommandsFactory)).sET_DISPLAYABLE) progressCanvas)
        Control.Monad.void (GameMidlet.destroyApp this unconditional)
        when isProgress $ do
            Control.Monad.void (ProgressCanvas.end progressCanvas)
        pure ()


destroyApp :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
destroyApp object_ a1 = jmethod object_ "destroyApp" (\() -> (destroyApp_impl (javaCast object_ :: GameMidlet))) () a1

destroyApp_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
destroyApp_super object_ a1 = (destroyApp_impl (javaCast object_ :: GameMidlet)) a1

destroyApp_impl :: GameMidlet -> Bool -> IO (())
destroyApp_impl this unconditional = do
        let mETHOD_NAME = "GameMidlet::destroyApp"
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this mETHOD_NAME e)
            ) $ do
            Control.Monad.void (PreLogUtil.put (jio (GameStatisticsFactory.toString ((jio (GameStatisticsFactory.getInstance))))) this mETHOD_NAME)
            gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
            Control.Monad.void (Advertisements.stopAll ((jio (GameAdState.getAdvertisements gameAdState))))
            if (Prelude.not (jio (ProgressMidlet.isDestroyed this))) then do
                Control.Monad.void (GameMidlet.stopGameCanvasRunnableInterface this)
                Control.Monad.void (GameMidlet.setGameCanvasRunnableInterface this (NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE))
                Control.Monad.void (GameMidlet.mediaShutdown this)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Midlet Managment Error: Midlet Should Only Be Destroyed Once" this mETHOD_NAME)
            Control.Monad.void (ProgressMidlet.destroyApp_super this.base True)
            Control.Monad.void (PreLogUtil.put (jget ((jget (this).base.base.commonStrings)).eND) this mETHOD_NAME)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eND) this mETHOD_NAME)
        pure ()


-- throws MIDletStateChangeException
startApp :: (JavaObjectClass this_) => this_ -> IO (())
startApp object_ = jmethod object_ "startApp" (\() -> (startApp_impl (javaCast object_ :: GameMidlet))) ()

startApp_super :: (JavaObjectClass this_) => this_ -> IO (())
startApp_super object_ = (startApp_impl (javaCast object_ :: GameMidlet))

startApp_impl :: GameMidlet -> IO (())
startApp_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "startApp" e)
            Control.Monad.void (GameMidlet.destroyApp this False)
            Control.Monad.void (ProgressMidlet.notifyDestroyed this)
            ) $ do
            gameAdState <- (GameAdStateFactory.getCurrentInstance ((jget (this).gameAdStateFactory)))
            Control.Monad.void (Advertisements.startAll ((jio (GameAdState.getAdvertisements gameAdState))))
            let sTART_APP = "startApp"
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this sTART_APP)
            let gameCanvasRunnableInterface = (jget (this).allbinaryGameCanvasRunnableInterface)
            if (gameCanvasRunnableInterface == NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE) then do
                Control.Monad.void (GameMidletStateFactory.setCurrentGameState ((jget (this).gameMidletStateFactory)) (jget ((jget (this).gameStateFactory)).nO_GAME_STATE))
                Control.Monad.void (GameMidlet.setDemo this)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "GameCanvasRunnableInterface is available" this sTART_APP)
                if (gameCanvasRunnableInterface == (jio (ProgressMidlet.getCurrentDisplayable this))) then do
                    Control.Monad.void (GameMidlet.unPauseAppBackground this False)
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "GameCanvasRunnableInterface is not current displayable" this sTART_APP)
        pure ()


commandAction :: (JavaObjectClass this_) => this_ -> Command.Command -> Displayable.Displayable -> IO (())
commandAction object_ a1 a2 = jmethod object_ "commandAction" (\() -> (commandAction_impl (javaCast object_ :: GameMidlet))) () a1 a2

commandAction_super :: (JavaObjectClass this_) => this_ -> Command.Command -> Displayable.Displayable -> IO (())
commandAction_super object_ a1 a2 = (commandAction_impl (javaCast object_ :: GameMidlet)) a1 a2

commandAction_impl :: GameMidlet -> Command.Command -> Displayable.Displayable -> IO (())
commandAction_impl this command displayable = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).eXCEPTION_LABEL)))) (jio (Command.getLabel command))))))) this (jget ((jget (this).midletStrings)).cOMMAND_ACTION) e)
            when (command /= (jget ((jio (GameCommandsFactory.getInstance))).eXIT_COMMAND)) $ do
                Control.Monad.void (ProgressMidlet.exitProgress this False)
            ) $ do
            displayableAsString <- newIORef ((jget (this).nO_DISPLAYABLE))
            when (displayable /= javaNull) $ do
                assignedValue <- (Displayable.toString displayable)
                jset displayableAsString (assignedValue)
            label <- newIORef ((jget (this).nO_COMMAND))
            when (command /= javaNull) $ do
                assignedValue <- (Command.getLabel command)
                jset label (assignedValue)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).cOMMAND_NAME)))) (jget label)))) (jget (this).dISPLAYABLE)))) (jget displayableAsString)))))) this (jget (this).cOMMAND_ACTION))
            gameCommandsFactory <- (GameCommandsFactory.getInstance)
            let allbinaryGameCanvasRunnableInterface = (jget (this).allbinaryGameCanvasRunnableInterface)
            let gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface
            if (command == (jget (gameCommandsFactory).sHOW_GAME_CANVAS)) then do
                when (((jio (Display.getCurrent ((jio (ProgressMidlet.getDisplay this))))) /= gameCanvasRunnableInterface) && ((jio (GameCanvasRunnableInterface.getType allbinaryGameCanvasRunnableInterface)) /= (jio (NullGameCanvasRunnable.getType NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE)))) $ do
                    Control.Monad.void (ProgressMidlet.setDisplay this (javaCast gameCanvasRunnableInterface :: Displayable.Displayable))
                Control.Monad.void (GameMidlet.unPauseAppBackground this False)
            else if (command == (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS)) then do
                let menuListener = (javaCast displayable :: MenuListener.MenuListener)
                Control.Monad.void (MenuListener.close menuListener)
                Control.Monad.void (ProgressMidlet.setDisplay this (javaCast gameCanvasRunnableInterface :: Displayable.Displayable))
                Control.Monad.void (GameMidlet.unPauseAppBackground this False)
            else if (command == (jget (gameCommandsFactory).eXIT_COMMAND)) then do
                when ((jio (BasicArrayList.size ((jio (GameMidletEventHandler.getEventListenerInterfaceListP ((jio (GameMidletEventHandler.getInstance)))))))) == 0) $ do
                    Control.Monad.void (ProgressMidlet.exitProgress this True)
                Control.Monad.void (GameMidletEventHandler.fireEvent ((jio (GameMidletEventHandler.getInstance))) (jio (DemoGameMidletEvent.new_2 this (jget ((jio (DemoGameMidletStateFactory.getInstance))).nONE))))
            else if (command == (jget (gameCommandsFactory).eXIT_WITHOUT_PROGRESS_COMMAND)) then do
                Control.Monad.void (ProgressMidlet.exitProgress this False)
            else if (((command == (jget (gameCommandsFactory).sTART_COMMAND)) || (command == (jget (gameCommandsFactory).rESTART_COMMAND))) || (command == (jget (gameCommandsFactory).cONTINUE_COMMAND))) then do
                if (((jio (GameMidletStateFactory.getCurrentGameState ((jget (this).gameMidletStateFactory)))) /= (jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE)) || (command == (jget (gameCommandsFactory).rESTART_COMMAND))) then do
                    if (jio (TimeDelayHelper.isTimeTNT ((jget (this).gameStartTimeHelper)))) then do
                        if ((command == (jget (gameCommandsFactory).sTART_COMMAND)) && (jio (GameMidlet.isDemoLoading this))) then do
                            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Trying to Start Game Before Loading Complete" this (jget ((jget (this).midletStrings)).cOMMAND_ACTION))
                        else do
                            jset (this).startedBefore (True)
                            Control.Monad.void (GameMidlet.createGame this)
                            Control.Monad.void (GameMidletStateFactory.setCurrentGameState ((jget (this).gameMidletStateFactory)) (jget ((jget (this).gameStateFactory)).pLAYING_GAME_STATE))
                    else do
                        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Starting Game Too Often" this (jget ((jget (this).midletStrings)).cOMMAND_ACTION))
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Already in playing state" this (jget (this).cOMMAND_ACTION))
            else if (command == (jget (gameCommandsFactory).bUY_COMMAND)) then do
                inApplicationPurchaseFactory <- (InApplicationPurchaseFactory.getInstance)
                list <- (LockableFeatureFactory.getList ((jio (LockableFeatureFactory.getInstance))))
                let lockableFeature = (javaCast (jio (BasicArrayList.get list 0)) :: LockableFeature.LockableFeature)
                if (((jio (BasicArrayList.size list)) > 0) && (Prelude.not (jio (InApplicationPurchaseFactory.isPurchased inApplicationPurchaseFactory lockableFeature)))) then do
                    Control.Monad.void (InApplicationPurchaseFactory.purchase inApplicationPurchaseFactory lockableFeature)
                else do
                    Control.Monad.void (TextNotificationUtil.fireSuccess ((jio (TextNotificationUtil.getInstance))) "Already Purchased")
            else if (command == (jget (gameCommandsFactory).qUIT_COMMAND)) then do
                when (jio (TimeDelayHelper.isTimeTNT ((jget (this).gameStartTimeHelper)))) $ do
                    when (javaInstanceOf displayable "HighScoreTextBox") $ do
                        let menuListener = (javaCast displayable :: MenuListener.MenuListener)
                        Control.Monad.void (MenuListener.close menuListener)
                    Control.Monad.void (GameMidlet.stopGameCanvasRunnableInterface this)
                    Control.Monad.void (GameMidletStateFactory.setCurrentGameState ((jget (this).gameMidletStateFactory)) (jget ((jget (this).gameStateFactory)).nO_GAME_STATE))
                    Control.Monad.void (GameMidlet.setDemo this)
            else if (command == (jget ((jget (this).myCommandsFactory)).rESUME_COMMAND)) then do
                Control.Monad.void (GameMidlet.unPauseAppBackground this False)
            else if (command == (jget ((jget (this).myCommandsFactory)).pAUSE_COMMAND)) then do
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
            else if (command == (jget ((jget (this).myCommandsFactory)).sET_DISPLAYABLE)) then do
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
                Control.Monad.void (ProgressMidlet.setDisplay this displayable)
            else if (command == (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE)) then do
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
                let menuListener = (javaCast displayable :: MenuListener.MenuListener)
                Control.Monad.void (MenuListener.open menuListener)
                Control.Monad.void (ProgressMidlet.setDisplay this displayable)
            else if (command == (jget (gameCommandsFactory).sTART_TRACE)) then do
                Control.Monad.void (DebugInterface.start ((jget (this).debugInterface)))
                let gameCanvas = (javaCast allbinaryGameCanvasRunnableInterface :: AllBinaryGameCanvas.AllBinaryGameCanvas)
                Control.Monad.void (AllBinaryGameCanvas.addCommand gameCanvas (jget (gameCommandsFactory).sTOP_TRACE))
                Control.Monad.void (AllBinaryGameCanvas.removeCommand gameCanvas (jget (gameCommandsFactory).sTART_TRACE))
            else if (command == (jget (gameCommandsFactory).sTOP_TRACE)) then do
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
                Control.Monad.void (DebugInterface.stop ((jget (this).debugInterface)))
                Control.Monad.void (GameMidlet.unPauseAppBackground this False)
                let gameCanvas = (javaCast allbinaryGameCanvasRunnableInterface :: AllBinaryGameCanvas.AllBinaryGameCanvas)
                Control.Monad.void (AllBinaryGameCanvas.addCommand gameCanvas (jget (gameCommandsFactory).sTART_TRACE))
                Control.Monad.void (AllBinaryGameCanvas.removeCommand gameCanvas (jget (gameCommandsFactory).sTOP_TRACE))
            else if (command == (jget (gameCommandsFactory).dEFAULT_OPTIONS)) then do
                let tempDisplayable = displayable
                when (javaInstanceOf tempDisplayable "GameOptionsForm") $ do
                    Control.Monad.void (GameFeatureFormUtil.setDefault ((jio (GameFeatureFormUtil.getInstance))) (javaCast tempDisplayable :: CommandForm.CommandForm))
            else if (command == GameInputMappingInstructionsCanvas.dISPLAY) then do
                let tempDisplayable = displayable
                when (javaInstanceOf tempDisplayable "GameInputMappingCanvas") $ do
                    let gameInputMappingCanvas = (javaCast tempDisplayable :: GameInputMappingCanvas.GameInputMappingCanvas)
                    Control.Monad.void (GameInputMappingCanvas.update gameInputMappingCanvas)
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) (jio (GameMidlet.getInputMappingInstructionsCanvas this)))
            else if (jio (HighScoreCommandsFactory.isHighScoreCommand ((jio (HighScoreCommandsFactory.getInstance))) command)) then do
                let tempDisplayable = displayable
                when (javaInstanceOf tempDisplayable "HighScoresCanvas") $ do
                    let highScoresCanvas = (javaCast tempDisplayable :: HighScoresCanvas.HighScoresCanvas)
                    Control.Monad.void (HighScoresCanvas.updateCommand highScoresCanvas command)
            else if (command == (jget ((jio (HighScoreCommands.getInstance))).dISPLAY)) then do
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) (jio (GameMidlet.createHighScoresCanvas this)))
            else if (command == GameInputMappingInstructionsCanvas.cLOSE) then do
                let menuListener = (javaCast displayable :: MenuListener.MenuListener)
                Control.Monad.void (MenuListener.close menuListener)
                Control.Monad.void (GameMidlet.commandAction this (GameInputMappingCanvas.dISPLAY) (NullCanvas.nULL_CANVAS))
            else if (command == GameInputMappingCanvas.dISPLAY) then do
                when (jio (J2MEUtil.isHTML)) $ do
                    Control.Monad.void (GameMidlet.pauseAppBackground this False)
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) (jio (GameMidlet.getInputMappingCanvas this)))
            else if (command == GameInputMappingCanvas.dEFAULT) then do
                let tempDisplayable = displayable
                when (javaInstanceOf tempDisplayable "GameInputMappingCanvas") $ do
                    let gameInputMappingCanvas = (javaCast tempDisplayable :: GameInputMappingCanvas.GameInputMappingCanvas)
                    Control.Monad.void (GameInputMappingCanvas.setDefault gameInputMappingCanvas)
            else if (command == InGameOptionsForm.dISPLAY) then do
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
                progressCanvas <- (ProgressCanvasFactory.getInstance)
                Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "In Game Options")
                layerManager <- (GameMidlet.createGameLayerManager this)
                inGameOptionsFormFactory <- (InGameOptionsFormFactory.getInstance)
                Control.Monad.void (InGameOptionsFormFactory.init inGameOptionsFormFactory this (jio (InGameFeatures.new_)) "Options In Game" (jio (AllBinaryGameLayerManager.getBackgroundBasicColor layerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor layerManager)))
                inGameOptionsForm <- (InGameOptionsFormFactory.get inGameOptionsFormFactory)
                Control.Monad.void (InGameOptionsForm.setItemStateListener inGameOptionsForm allbinaryGameCanvasRunnableInterface)
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) inGameOptionsForm)
            else if (command == InGameOptionsForm.dEFAULT) then do
                let inGameOptionsForm = (javaCast (jio (InGameOptionsFormFactory.get ((jio (InGameOptionsFormFactory.getInstance))))) :: InGameOptionsForm.InGameOptionsForm)
                Control.Monad.void (GameFeatureFormUtil.setDefault ((jio (GameFeatureFormUtil.getInstance))) inGameOptionsForm)
            else if (command == (jget (gameCommandsFactory).dISPLAY_OPTIONS)) then do
                Control.Monad.void (AllBinaryMediaManager.setMuted True)
                Control.Monad.void (GameMidlet.stopAll this)
                mainFeatureFactory <- (MainFeatureFactory.getInstance)
                assignedValue <- (Features.isFeature ((jget (this).features)) (jget (mainFeatureFactory).fULL_SCREEN))
                jset (this).isFullScreen (assignedValue)
                Control.Monad.void (ResizableListenerHandler.fireEvent ((jio (ResizableListenerHandler.getInstance))) True)
                Control.Monad.void (GameMidlet.setResized this False)
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) (jio (GameMidlet.getGameOptionsForm this)))
            else if (command == (jget (gameCommandsFactory).cLOSE_OPTIONS)) then do
                Control.Monad.void (ResizableListenerHandler.fireEvent ((jio (ResizableListenerHandler.getInstance))) False)
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS) displayable)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Close isFullScreen/change: ")
                Control.Monad.void (StringMaker.appendboolean stringBuffer (jget (this).isFullScreen))
                Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (FullScreenUtil.isScreenChange ((jget (this).fullScreenUtil)) (jget (this).isFullScreen))))
                Control.Monad.void (StringMaker.append stringBuffer " isResized: ")
                Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (GameMidlet.isResized this)))
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this (jget (this).cOMMAND_ACTION))
                when ((jio (GameMidlet.isResized this)) || (jio (FullScreenUtil.isScreenChange ((jget (this).fullScreenUtil)) (jget (this).isFullScreen)))) $ do
                    Control.Monad.void (GameMidlet.updateFullScreen this)
                Control.Monad.void (AllBinaryMediaManager.setMuted False)
            else if (command == (jget (gameCommandsFactory).dISPLAY_LOAD_FORM)) then do
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
                keyValuePersistance <- (fmap (\value_ -> javaCast value_ :: KeyValuePersistance.KeyValuePersistance) (GamePersistanceSingleton.getInstance))
                Control.Monad.void (KeyValuePersistance.clear keyValuePersistance)
                Control.Monad.void (KeyValuePersistance.loadAll keyValuePersistance (jget (this).base.abeClientInformation))
                if ((jio (GameMidlet.getLoadGameForm this)) == (jio (CommandForm.getNullCommandForm))) then do
                    layerManager <- (GameMidlet.createGameLayerManager this)
                    Control.Monad.void (GameMidlet.setLoadGameForm this (jio (LoadGameForm.new_4 this "Load Game" (jio (AllBinaryGameLayerManager.getBackgroundBasicColor layerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor layerManager)))))
                else do
                    Control.Monad.void (CommandForm.update ((jio (GameMidlet.getLoadGameForm this))))
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) (jio (GameMidlet.getLoadGameForm this)))
            else if (command == (jget (gameCommandsFactory).lOAD_FILE)) then do
                let loadGameForm = (javaCast (jio (GameMidlet.getLoadGameForm this)) :: LoadGameForm.LoadGameForm)
                index <- (LoadGameForm.getSelectedId loadGameForm)
                when (index /= (Prelude.negate 1)) $ do
                    keyValuePersistance <- (fmap (\value_ -> javaCast value_ :: KeyValuePersistance.KeyValuePersistance) (GamePersistanceSingleton.getInstance))
                    Control.Monad.void (ProgressMidlet.setStartStateHashtable this (jio (KeyValuePersistance.get keyValuePersistance index)))
                    menuListener <- (fmap (\value_ -> javaCast value_ :: MenuListener.MenuListener) (GameMidlet.getLoadGameForm this))
                    Control.Monad.void (MenuListener.close menuListener)
                    Control.Monad.void (PreLogUtil.put (jio (BasicMotionGesturesHandler.toString ((jio (BasicMotionGesturesHandler.getInstance))))) this (jget (this).cOMMAND_ACTION))
                    Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).sTART_COMMAND) (NullCanvas.nULL_CANVAS))
                    Control.Monad.void (PreLogUtil.put (jio (BasicMotionGesturesHandler.toString ((jio (BasicMotionGesturesHandler.getInstance))))) this (jget (this).cOMMAND_ACTION))
            else if (command == (jget (gameCommandsFactory).dELETE_FILE)) then do
                let loadGameForm = (javaCast (jio (GameMidlet.getLoadGameForm this)) :: LoadGameForm.LoadGameForm)
                index <- (LoadGameForm.getSelectedText loadGameForm)
                when (index /= (Prelude.negate 1)) $ do
                    keyValuePersistance <- (fmap (\value_ -> javaCast value_ :: KeyValuePersistance.KeyValuePersistance) (GamePersistanceSingleton.getInstance))
                    Control.Monad.void (KeyValuePersistance.delete keyValuePersistance (jget (this).base.abeClientInformation) index)
                    Control.Monad.void (KeyValuePersistance.clear keyValuePersistance)
                    Control.Monad.void (KeyValuePersistance.loadAllSize keyValuePersistance (jget (this).base.abeClientInformation) 1)
                    Control.Monad.void (CommandForm.update ((jio (GameMidlet.getLoadGameForm this))))
            else if (command == (jget (gameCommandsFactory).sAVE)) then do
                keyValuePersistance <- (fmap (\value_ -> javaCast value_ :: KeyValuePersistance.KeyValuePersistance) (GamePersistanceSingleton.getInstance))
                Control.Monad.void (GameMidlet.pauseAppBackground this False)
                Control.Monad.void (KeyValuePersistance.save keyValuePersistance (jget (this).base.abeClientInformation) (jio (GameMidlet.getCurrentStateHashtable this)))
                Control.Monad.void (GameMidlet.unPauseAppBackground this False)
            else if (command == HighScoreUtil.sUBMIT_TEXTBOX_COMMAND) then do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Submitted Score" this (jget (this).cOMMAND_ACTION))
                when (javaInstanceOf displayable "HighScoreTextBox") $ do
                    let highScoreTextBox = (javaCast displayable :: HighScoreTextBox.HighScoreTextBox)
                    jset (highScoreTextBox).submitted (True)
                Control.Monad.void (GameCanvasRunnableInterface.setHighScoreSubmitted allbinaryGameCanvasRunnableInterface True)
                Control.Monad.void (GameMidlet.commandAction this (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS) displayable)
            else if (command == (jget (gameCommandsFactory).dISPLAY_ABOUT)) then do
                Control.Monad.void (AboutCommandProcessor.process ((jget (this).aboutCommandProcessor)) this (jget (gameCommandsFactory).sET_MENU_DISPLAYABLE) (jio (GameMidlet.getAboutCanvas this)))
            else if (command == (jget (gameCommandsFactory).oPEN_WEB_URL)) then do
                Control.Monad.void (WebCommandProcessor.process ((jget (this).webCommandProcessor)) this (jget (gameCommandsFactory).oPEN_WEB_URL) (NullCanvas.nULL_CANVAS))
            else if (command == (jget (gameCommandsFactory).tOGGLE_KEYBOARD)) then do
                virtualKeyboardEventHandler <- (VirtualKeyboardEventHandler.getInstance)
                Control.Monad.void (VirtualKeyboardEventHandler.fireEvent virtualKeyboardEventHandler (jget (virtualKeyboardEventHandler).sHOW_EVENT))
            else when ((jio (TsUtil.compareTo ((jget (this).tsUtil)) (jio (Command.getLabel command)) (jio (Command.getLabel ((jget (gameCommandsFactory).tOGGLE_FULLSCREEN)))))) == 0) $ do
                mainFeatureFactory <- (MainFeatureFactory.getInstance)
                isFullScreen <- (Features.isFeature ((jget (this).features)) (jget (mainFeatureFactory).fULL_SCREEN))
                if isFullScreen then do
                    Control.Monad.void (Features.removeDefault ((jget (this).features)) (jget (mainFeatureFactory).fULL_SCREEN))
                else do
                    Control.Monad.void (Features.addDefault ((jget (this).features)) (jget (mainFeatureFactory).fULL_SCREEN))
                Control.Monad.void (GameMidlet.updateFullScreen this)
        pure ()


updateFullScreen :: (JavaObjectClass this_) => this_ -> IO (())
updateFullScreen object_ = jmethod object_ "updateFullScreen" (\() -> (updateFullScreen_impl (javaCast object_ :: GameMidlet))) ()

updateFullScreen_super :: (JavaObjectClass this_) => this_ -> IO (())
updateFullScreen_super object_ = (updateFullScreen_impl (javaCast object_ :: GameMidlet))

updateFullScreen_impl :: GameMidlet -> IO (())
updateFullScreen_impl this = do
        mainFeatureFactory <- (MainFeatureFactory.getInstance)
        isFullScreen <- (Features.isFeature ((jget (this).features)) (jget (mainFeatureFactory).fULL_SCREEN))
        displayable <- (Display.getCurrent ((jio (ProgressMidlet.getDisplay this))))
        when (javaInstanceOf displayable "Canvas") $ do
            let canvas = (javaCast displayable :: Canvas.Canvas)
            Control.Monad.void (Canvas.setFullScreenMode canvas isFullScreen)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameMidlet))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameMidlet)) a1

onEvent_impl :: GameMidlet -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
getInputMappingInstructionsCanvas :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getInputMappingInstructionsCanvas object_ = jmethod object_ "getInputMappingInstructionsCanvas" (\() -> (getInputMappingInstructionsCanvas_impl (javaCast object_ :: GameMidlet))) ()

getInputMappingInstructionsCanvas_super :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getInputMappingInstructionsCanvas_super object_ = (getInputMappingInstructionsCanvas_impl (javaCast object_ :: GameMidlet))

getInputMappingInstructionsCanvas_impl :: GameMidlet -> IO (MyCanvas.MyCanvas)
getInputMappingInstructionsCanvas_impl this = do
        (fmap (\value_ -> javaCast value_ :: MyCanvas.MyCanvas) (GameInputMappingInstructionsCanvas.new_2 this (jio (GameMidlet.createGameLayerManager this))))


-- throws Exception
getInputMappingCanvas :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getInputMappingCanvas object_ = jmethod object_ "getInputMappingCanvas" (\() -> (getInputMappingCanvas_impl (javaCast object_ :: GameMidlet))) ()

getInputMappingCanvas_super :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getInputMappingCanvas_super object_ = (getInputMappingCanvas_impl (javaCast object_ :: GameMidlet))

getInputMappingCanvas_impl :: GameMidlet -> IO (MyCanvas.MyCanvas)
getInputMappingCanvas_impl this = do
        (fmap (\value_ -> javaCast value_ :: MyCanvas.MyCanvas) (GameInputMappingCanvas.new_4 (jget (this).base.abeClientInformation) this (jio (GameMidlet.createGameLayerManager this)) (jio (GameMidlet.getHelpPaintable this))))


-- throws Exception
getAboutCanvas :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getAboutCanvas object_ = jmethod object_ "getAboutCanvas" (\() -> (getAboutCanvas_impl (javaCast object_ :: GameMidlet))) ()

getAboutCanvas_super :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getAboutCanvas_super object_ = (getAboutCanvas_impl (javaCast object_ :: GameMidlet))

getAboutCanvas_impl :: GameMidlet -> IO (MyCanvas.MyCanvas)
getAboutCanvas_impl this = do
        (fmap (\value_ -> javaCast value_ :: MyCanvas.MyCanvas) (BasicPaintablesCanvas.new_4 this (jget ((jio (CanvasStrings.getInstance))).aBOUT) (jio (GameMidlet.createGameLayerManager this)) (jget ((jio (AboutPaintableFactory.getInstance))).paintableArray)))


-- throws Exception
getHelpPaintable :: (JavaObjectClass this_) => this_ -> IO (HelpPaintable.HelpPaintable)
getHelpPaintable object_ = jmethod object_ "getHelpPaintable" (\() -> (getHelpPaintable_impl (javaCast object_ :: GameMidlet))) ()

getHelpPaintable_super :: (JavaObjectClass this_) => this_ -> IO (HelpPaintable.HelpPaintable)
getHelpPaintable_super object_ = (getHelpPaintable_impl (javaCast object_ :: GameMidlet))

getHelpPaintable_impl :: GameMidlet -> IO (HelpPaintable.HelpPaintable)
getHelpPaintable_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
createHighScoresCanvas :: (JavaObjectClass this_) => this_ -> IO (HighScoresCanvas.HighScoresCanvas)
createHighScoresCanvas object_ = jmethod object_ "createHighScoresCanvas" (\() -> (createHighScoresCanvas_impl (javaCast object_ :: GameMidlet))) ()

createHighScoresCanvas_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresCanvas.HighScoresCanvas)
createHighScoresCanvas_super object_ = (createHighScoresCanvas_impl (javaCast object_ :: GameMidlet))

createHighScoresCanvas_impl :: GameMidlet -> IO (HighScoresCanvas.HighScoresCanvas)
createHighScoresCanvas_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
startGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> IO (())
startGameCanvasRunnableInterface object_ = jmethod object_ "startGameCanvasRunnableInterface" (\() -> (startGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))) ()

startGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> IO (())
startGameCanvasRunnableInterface_super object_ = (startGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))

startGameCanvasRunnableInterface_impl :: GameMidlet -> IO (())
startGameCanvasRunnableInterface_impl this = do
        threadFactoryUtil <- (ThreadFactoryUtil.getInstance)
        assignedValue <- (ThreadFactoryUtil.getInstanceGameCanvasRunnable threadFactoryUtil (jget (this).allbinaryGameCanvasRunnableInterface))
        jset (this).thread (assignedValue)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Thread Priority: "))) (Prelude.fromInteger (jnumericInteger (jio (Thread.getPriority ((jget (this).thread))))))))))) this "startGameCanvasRunnableInterface")
        Control.Monad.void (GameCanvasRunnableInterface.setThread ((jget (this).allbinaryGameCanvasRunnableInterface)) (jget (this).thread))
        Control.Monad.void (ThreadFactoryUtil.start threadFactoryUtil (jget (this).thread))
        pure ()


-- throws Exception
stopGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> IO (())
stopGameCanvasRunnableInterface object_ = jmethod object_ "stopGameCanvasRunnableInterface" (\() -> (stopGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))) ()

stopGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> IO (())
stopGameCanvasRunnableInterface_super object_ = (stopGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))

stopGameCanvasRunnableInterface_impl :: GameMidlet -> IO (())
stopGameCanvasRunnableInterface_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).gameStrings)).sTOP_GAME_CANVAS_RUNNABLE_INTERFACE))
        Control.Monad.void (GameNotificationEventHandler.removeAllListeners ((jio (GameNotificationEventHandler.getInstance))))
        Control.Monad.void (ColorChangeEventHandler.removeAllListeners ((jio (ColorChangeEventHandler.getInstance))))
        Control.Monad.void (GameEventHandlerUtil.removeAllListeners)
        let gameCanvasRunnableInterface = (jget (this).allbinaryGameCanvasRunnableInterface)
        if ((jtoObject gameCanvasRunnableInterface) /= (jtoObject NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE)) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Set Running False: "))) (jio (GameCanvasRunnableInterface.toString gameCanvasRunnableInterface))))))) this (jget ((jget (this).gameStrings)).sTOP_GAME_CANVAS_RUNNABLE_INTERFACE))
            Control.Monad.void (GameCanvasRunnableInterface.setRunning gameCanvasRunnableInterface False)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "StopGame - Could Not Stop" this (jget ((jget (this).gameStrings)).sTOP_GAME_CANVAS_RUNNABLE_INTERFACE))
        Control.Monad.void (ThreadUtil.join ((jio (ThreadUtil.getInstance))) (jget (this).thread))
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        if (jio (Features.isFeature ((jget (this).features)) (jget ((jio (MainFeatureFactory.getInstance))).lOAD_ALL))) then do
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Stopped Game Runnable")
        else do
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Stopped Main Runnable")
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eND) this (jget ((jget (this).gameStrings)).sTOP_GAME_CANVAS_RUNNABLE_INTERFACE))
        pure ()


getGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
getGameCanvasRunnableInterface object_ = jmethod object_ "getGameCanvasRunnableInterface" (\() -> (getGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))) ()

getGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
getGameCanvasRunnableInterface_super object_ = (getGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))

getGameCanvasRunnableInterface_impl :: GameMidlet -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
getGameCanvasRunnableInterface_impl this = do
        pure ((jget (this).allbinaryGameCanvasRunnableInterface))


setGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> GameCanvasRunnableInterface.GameCanvasRunnableInterface -> IO (())
setGameCanvasRunnableInterface object_ a1 = jmethod object_ "setGameCanvasRunnableInterface" (\() -> (setGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet))) () a1

setGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> GameCanvasRunnableInterface.GameCanvasRunnableInterface -> IO (())
setGameCanvasRunnableInterface_super object_ a1 = (setGameCanvasRunnableInterface_impl (javaCast object_ :: GameMidlet)) a1

setGameCanvasRunnableInterface_impl :: GameMidlet -> GameCanvasRunnableInterface.GameCanvasRunnableInterface -> IO (())
setGameCanvasRunnableInterface_impl this gameCanvasRunnableInterface = do
        jset (this).allbinaryGameCanvasRunnableInterface (gameCanvasRunnableInterface)
        pure ()


createGameLayerManager :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
createGameLayerManager object_ = jmethod object_ "createGameLayerManager" (\() -> (createGameLayerManager_impl (javaCast object_ :: GameMidlet))) ()

createGameLayerManager_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
createGameLayerManager_super object_ = (createGameLayerManager_impl (javaCast object_ :: GameMidlet))

createGameLayerManager_impl :: GameMidlet -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
createGameLayerManager_impl this = do
        gameInfo <- (GameInfo.new_5 (jget ((jio (GameTypeFactory.getInstance))).sINGLE_PLAYER) (jget GameMode.sERVER) (jget ((jio (PlayerTypesFactory.getInstance))).pLAYER_TYPE_ONE) 1 1)
        (AllBinaryGameLayerManager.new_3 (jget ((jget (this).basicColorFactory)).bLACK) (jget ((jget (this).basicColorFactory)).wHITE) gameInfo)


getGameOptionsForm :: (JavaObjectClass this_) => this_ -> IO (CommandForm.CommandForm)
getGameOptionsForm object_ = jmethod object_ "getGameOptionsForm" (\() -> (getGameOptionsForm_impl (javaCast object_ :: GameMidlet))) ()

getGameOptionsForm_super :: (JavaObjectClass this_) => this_ -> IO (CommandForm.CommandForm)
getGameOptionsForm_super object_ = (getGameOptionsForm_impl (javaCast object_ :: GameMidlet))

getGameOptionsForm_impl :: GameMidlet -> IO (CommandForm.CommandForm)
getGameOptionsForm_impl this = do
        layerManager <- (GameMidlet.createGameLayerManager this)
        (GameOptionsFormFactory.init ((jio (GameOptionsFormFactory.getInstance))) this "Game Options" (jio (AllBinaryGameLayerManager.getBackgroundBasicColor layerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor layerManager)))


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> IO (())
save object_ = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: GameMidlet))) ()

save_super :: (JavaObjectClass this_) => this_ -> IO (())
save_super object_ = (save_impl (javaCast object_ :: GameMidlet))

save_impl :: GameMidlet -> IO (())
save_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).sAVE))
        hashtable <- (GameMidlet.getCurrentStateHashtable this)
        Control.Monad.void (GamePersistanceSingleton.save ((jio (GamePersistanceSingleton.getInstance))) (jget (this).base.abeClientInformation) hashtable)
        pure ()


-- throws Exception
getCurrentStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable object_ = jmethod object_ "getCurrentStateHashtable" (\() -> (getCurrentStateHashtable_impl (javaCast object_ :: GameMidlet))) ()

getCurrentStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_super object_ = (getCurrentStateHashtable_impl (javaCast object_ :: GameMidlet))

getCurrentStateHashtable_impl :: GameMidlet -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this "getCurrentStateHashtable")
        hashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        when ((jtoObject (jget (this).allbinaryGameCanvasRunnableInterface)) /= (jtoObject NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE)) $ do
            currentHashtable <- (GameCanvasRunnableInterface.getCurrentStateHashtable ((jget (this).allbinaryGameCanvasRunnableInterface)))
            enumeration <- (ABHashtable.keys currentHashtable)
            key <- newIORef (javaNull)
            fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
                assignedValue <- (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)
                jset key (assignedValue)
                Control.Monad.void (ABHashtable.put hashtable (jget key) (jio (ABHashtable.get currentHashtable (jget key))))
        pure (hashtable)


setLoadGameForm :: (JavaObjectClass this_) => this_ -> LoadGameForm.LoadGameForm -> IO (())
setLoadGameForm object_ a1 = jmethod object_ "setLoadGameForm" (\() -> (setLoadGameForm_impl (javaCast object_ :: GameMidlet))) () a1

setLoadGameForm_super :: (JavaObjectClass this_) => this_ -> LoadGameForm.LoadGameForm -> IO (())
setLoadGameForm_super object_ a1 = (setLoadGameForm_impl (javaCast object_ :: GameMidlet)) a1

setLoadGameForm_impl :: GameMidlet -> LoadGameForm.LoadGameForm -> IO (())
setLoadGameForm_impl this loadGameForm = do
        jset (this).loadGameForm (loadGameForm)
        pure ()


getLoadGameForm :: (JavaObjectClass this_) => this_ -> IO (CommandForm.CommandForm)
getLoadGameForm object_ = jmethod object_ "getLoadGameForm" (\() -> (getLoadGameForm_impl (javaCast object_ :: GameMidlet))) ()

getLoadGameForm_super :: (JavaObjectClass this_) => this_ -> IO (CommandForm.CommandForm)
getLoadGameForm_super object_ = (getLoadGameForm_impl (javaCast object_ :: GameMidlet))

getLoadGameForm_impl :: GameMidlet -> IO (CommandForm.CommandForm)
getLoadGameForm_impl this = do
        pure ((jget (this).loadGameForm))


setResized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setResized object_ a1 = jmethod object_ "setResized" (\() -> (setResized_impl (javaCast object_ :: GameMidlet))) () a1

setResized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setResized_super object_ a1 = (setResized_impl (javaCast object_ :: GameMidlet)) a1

setResized_impl :: GameMidlet -> Bool -> IO (())
setResized_impl this resized = do
        jset (this).resized (resized)
        pure ()


isResized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isResized object_ = jmethod object_ "isResized" (\() -> (isResized_impl (javaCast object_ :: GameMidlet))) ()

isResized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isResized_super object_ = (isResized_impl (javaCast object_ :: GameMidlet))

isResized_impl :: GameMidlet -> IO (Bool)
isResized_impl this = do
        pure ((jget (this).resized))


isDemoLoading :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDemoLoading object_ = jmethod object_ "isDemoLoading" (\() -> (isDemoLoading_impl (javaCast object_ :: GameMidlet))) ()

isDemoLoading_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDemoLoading_super object_ = (isDemoLoading_impl (javaCast object_ :: GameMidlet))

isDemoLoading_impl :: GameMidlet -> IO (Bool)
isDemoLoading_impl this = do
    javaCatchReturn $ do
        when (jget (this).startedBefore) $ do
            javaReturn (False)
        displayable <- (Display.getCurrent ((jio (ProgressMidlet.getDisplay this))))
        when (javaInstanceOf displayable "DemoCanvas") $ do
            let demoCanvas = (javaCast displayable :: DemoCanvas.DemoCanvas)
            when (jio (DemoCanvas.isDemoLoading demoCanvas)) $ do
                javaReturn (True)
        pure (False)


