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
-- package org.allbinary.game.input
module MapSelectionGameInputProcessor (module MapSelectionGameInputProcessor, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, onInput, onInput_super, onInput_impl, processInput, processInput_super, processInput_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, getName, getName_super, getName_impl, getPlayerGameInput, getPlayerGameInput_super, getPlayerGameInput_impl, logUtil, gameCanvas, raceTrackGeographicMapInterfaceFactoryInterface, preGameSelectorPaintable, inputTimeHelper, playerGameInput, lockedIndex, abRunnable)
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
import qualified PlayerGameInput -- same package or java.lang
import qualified GameInputProcessorComposite -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified LockedFeatureNotificationUtil -- org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil
import qualified LockedUtil -- org.allbinary.logic.system.security.licensing.LockedUtil
import qualified Processor -- org.allbinary.canvas.Processor
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified PreGameSelectorPaintable -- org.allbinary.game.displayable.canvas.PreGameSelectorPaintable
import qualified GameKeyEventHandler -- org.allbinary.game.input.event.GameKeyEventHandler
import qualified GameKeyEventUtil -- org.allbinary.game.input.event.GameKeyEventUtil
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified SelectSound -- org.allbinary.media.audio.SelectSound
import qualified MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface -- org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface
import qualified ABRunnable -- org.allbinary.thread.ABRunnable
import qualified ThreadObjectUtil -- org.allbinary.thread.ThreadObjectUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified GameInputProcessorInterface
import qualified PlayerGameInputCompositeInterface

-- implements GameInputProcessorInterface
-- implements PlayerGameInputCompositeInterface
data MapSelectionGameInputProcessor = MapSelectionGameInputProcessor
    { header_ :: JavaHeader
    , base :: Processor.Processor
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , raceTrackGeographicMapInterfaceFactoryInterface :: IORef (MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface)
    , preGameSelectorPaintable :: IORef (PreGameSelectorPaintable.PreGameSelectorPaintable)
    , inputTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , playerGameInput :: IORef (PlayerGameInput.PlayerGameInput)
    , lockedIndex :: IORef (Int)
    , abRunnable :: IORef (ABRunnable.ABRunnable)
    }

instance JavaNull MapSelectionGameInputProcessor where
    javaNull = javaNullRecord "MapSelectionGameInputProcessor"

instance JavaEquals MapSelectionGameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MapSelectionGameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass MapSelectionGameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MapSelectionGameInputProcessor
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    gameCanvas <- newIORef javaNull
    raceTrackGeographicMapInterfaceFactoryInterface <- newIORef javaNull
    preGameSelectorPaintable <- newIORef javaNull
    inputTimeHelper <- newIORef javaNull
    playerGameInput <- newIORef javaNull
    lockedIndex <- newIORef 0
    abRunnable <- newIORef javaNull
    let this = MapSelectionGameInputProcessor header_ base logUtil gameCanvas raceTrackGeographicMapInterfaceFactoryInterface preGameSelectorPaintable inputTimeHelper playerGameInput lockedIndex abRunnable
    jregisterLevel header_ this
    GameInputProcessorInterface.registerInterface_ header_
    PlayerGameInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "onInput" (\() -> onInput_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getPlayerGameInput" (\() -> getPlayerGameInput_impl this)
    pure this

initFields_ :: MapSelectionGameInputProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameCanvas (javaNull)
    jset this.raceTrackGeographicMapInterfaceFactoryInterface (javaNull)
    jset this.preGameSelectorPaintable (javaNull)
    jset this.inputTimeHelper =<< (TimeDelayHelper.new_1 650)
    jset this.playerGameInput (javaNull)
    jset this.lockedIndex (0)
    jset this.abRunnable =<< (ABRunnable.new_ {- Java anonymous class body: implement it as a record of functions
        -- run
-})
    pure ()

new_4 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface -> PreGameSelectorPaintable.PreGameSelectorPaintable -> Int -> IO MapSelectionGameInputProcessor
new_4 gameCanvas raceTrackGeographicMapInterfaceFactoryInterface mapSelectorPaintable lockedIndex = do
    this <- newRecord_
    init_4 this gameCanvas raceTrackGeographicMapInterfaceFactoryInterface mapSelectorPaintable lockedIndex
    pure this

init_4 :: MapSelectionGameInputProcessor -> AllBinaryGameCanvas.AllBinaryGameCanvas -> MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface -> PreGameSelectorPaintable.PreGameSelectorPaintable -> Int -> IO ()
init_4 this gameCanvas raceTrackGeographicMapInterfaceFactoryInterface mapSelectorPaintable lockedIndex = do
        Processor.init_ this.base
        initFields_ this
        jset (this).gameCanvas (gameCanvas)
        jset (this).raceTrackGeographicMapInterfaceFactoryInterface (raceTrackGeographicMapInterfaceFactoryInterface)
        jset (this).preGameSelectorPaintable (mapSelectorPaintable)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: PlayerGameInput.PlayerGameInput) (GameInputProcessorComposite.new_2 "Map Selection" this))
        jset (this).playerGameInput (assignedValue)
        jset (this).lockedIndex (lockedIndex)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MapSelectionGameInputProcessor))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: MapSelectionGameInputProcessor))

process_impl :: MapSelectionGameInputProcessor -> IO (())
process_impl this = do
        Control.Monad.void (PlayerGameInput.update ((jio (MapSelectionGameInputProcessor.getPlayerGameInput this))))
        pure ()


-- throws Exception
onInput :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onInput object_ a1 = jmethod object_ "onInput" (\() -> (onInput_impl (javaCast object_ :: MapSelectionGameInputProcessor))) () a1

onInput_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onInput_super object_ a1 = (onInput_impl (javaCast object_ :: MapSelectionGameInputProcessor)) a1

onInput_impl :: MapSelectionGameInputProcessor -> BasicArrayList.BasicArrayList -> IO (())
onInput_impl this list = do
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get list index)
            key <- (GameKeyEventUtil.getKey anyType)
            if ((((key == Canvas.lEFT) || (key == Canvas.rIGHT)) || (key == Canvas.uP)) || (key == Canvas.dOWN)) then do
                when (jio (TimeDelayHelper.isTimeTNT ((jget (this).inputTimeHelper)))) $ do
                    Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
                    Control.Monad.void (PreGameScrollSelectionForm.processInputKey ((jio (PreGameSelectorPaintable.getPreGameSelectionForm ((jget (this).preGameSelectorPaintable))))) key)
                    throwIO JavaBreak
            else when (key == Canvas.kEY_NUM0) $ do
                selectedIndex <- (PreGameScrollSelectionForm.getSelectedIndex ((jio (PreGameSelectorPaintable.getPreGameSelectionForm ((jget (this).preGameSelectorPaintable))))))
                if ((selectedIndex < (jget (this).lockedIndex)) || (Prelude.not (jio (LockedUtil.isLocked ((jio (LockedUtil.getInstance))))))) then do
                    when (Prelude.not (jio (ABRunnable.isRunning ((jget this.abRunnable))))) $ do
                        Control.Monad.void (ABRunnable.setRunning ((jget this.abRunnable)) True)
                        Control.Monad.void (ThreadObjectUtil.processThread ((jio (ThreadObjectUtil.getInstance))) (jget this.abRunnable))
                    throwIO JavaBreak
                else do
                    Control.Monad.void (LockedFeatureNotificationUtil.fire ((jio (LockedFeatureNotificationUtil.getInstance))))
            Control.Monad.void (BasicArrayList.clear list)
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: MapSelectionGameInputProcessor))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: MapSelectionGameInputProcessor)) a1

processInput_impl :: MapSelectionGameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: MapSelectionGameInputProcessor))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: MapSelectionGameInputProcessor))

initInputProcessors_impl :: MapSelectionGameInputProcessor -> IO (())
initInputProcessors_impl this = do
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: MapSelectionGameInputProcessor))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: MapSelectionGameInputProcessor))

getName_impl :: MapSelectionGameInputProcessor -> IO (String)
getName_impl this = do
        (Processor.toString this)


getPlayerGameInput :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput object_ = jmethod object_ "getPlayerGameInput" (\() -> (getPlayerGameInput_impl (javaCast object_ :: MapSelectionGameInputProcessor))) ()

getPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_super object_ = (getPlayerGameInput_impl (javaCast object_ :: MapSelectionGameInputProcessor))

getPlayerGameInput_impl :: MapSelectionGameInputProcessor -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_impl this = do
        pure ((jget (this).playerGameInput))


