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
-- package org.allbinary.input
module DirectionalAnalogLocationInputProcessor (module DirectionalAnalogLocationInputProcessor, module AnalogLocationInputProcessor) where

import AnalogLocationInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, getSourceId, getSourceId_super, getSourceId_impl, logUtil, inputProcessorArray, gameKeyFactory, leftGameKeyEvent, rightGameKeyEvent, upGameKeyEvent, downGameKeyEvent, leftTriggerGameKeyEvent, rightTriggerGameKeyEvent)
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
import qualified AnalogLocationInputProcessor -- org.allbinary.android.input.motion.AnalogLocationInputProcessor
import qualified GameInputProcessor -- org.allbinary.game.input.GameInputProcessor
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified AnalogLocationInput -- org.allbinary.game.input.analog.AnalogLocationInput
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified CustomGPoint -- org.allbinary.graphics.CustomGPoint
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements GameKeyEventSourceInterface
data DirectionalAnalogLocationInputProcessor = DirectionalAnalogLocationInputProcessor
    { header_ :: JavaHeader
    , base :: AnalogLocationInputProcessor.AnalogLocationInputProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , inputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , gameKeyFactory :: IORef (GameKeyFactory.GameKeyFactory)
    , leftGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    , rightGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    , upGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    , downGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    , leftTriggerGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    , rightTriggerGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    }

instance JavaNull DirectionalAnalogLocationInputProcessor where
    javaNull = javaNullRecord "DirectionalAnalogLocationInputProcessor"

instance JavaEquals DirectionalAnalogLocationInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectionalAnalogLocationInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass DirectionalAnalogLocationInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DirectionalAnalogLocationInputProcessor
newRecord_ = do
    base <- AnalogLocationInputProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    inputProcessorArray <- newIORef javaNull
    gameKeyFactory <- newIORef javaNull
    leftGameKeyEvent <- newIORef javaNull
    rightGameKeyEvent <- newIORef javaNull
    upGameKeyEvent <- newIORef javaNull
    downGameKeyEvent <- newIORef javaNull
    leftTriggerGameKeyEvent <- newIORef javaNull
    rightTriggerGameKeyEvent <- newIORef javaNull
    let this = DirectionalAnalogLocationInputProcessor header_ base logUtil inputProcessorArray gameKeyFactory leftGameKeyEvent rightGameKeyEvent upGameKeyEvent downGameKeyEvent leftTriggerGameKeyEvent rightTriggerGameKeyEvent
    jregisterLevel header_ this
    GameKeyEventSourceInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    pure this

initFields_ :: DirectionalAnalogLocationInputProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.inputProcessorArray (javaNull)
    jset this.gameKeyFactory =<< (GameKeyFactory.getInstance)
    jset this.leftGameKeyEvent (GameKeyEvent.nONE)
    jset this.rightGameKeyEvent (GameKeyEvent.nONE)
    jset this.upGameKeyEvent (GameKeyEvent.nONE)
    jset this.downGameKeyEvent (GameKeyEvent.nONE)
    jset this.leftTriggerGameKeyEvent (GameKeyEvent.nONE)
    jset this.rightTriggerGameKeyEvent (GameKeyEvent.nONE)
    pure ()

new_1 :: JavaArray (GameInputProcessor.GameInputProcessor) -> IO DirectionalAnalogLocationInputProcessor
new_1 inputProcessorArray = do
    this <- newRecord_
    init_1 this inputProcessorArray
    pure this

init_1 :: DirectionalAnalogLocationInputProcessor -> JavaArray (GameInputProcessor.GameInputProcessor) -> IO ()
init_1 this inputProcessorArray = do
        AnalogLocationInputProcessor.init_ this.base
        initFields_ this
        jset (this).inputProcessorArray (inputProcessorArray)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) (javaCast this) (javaCast (jget ((jget (this).gameKeyFactory)).lEFT)))
            jset (this).leftGameKeyEvent (assignedValue)
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) (javaCast this) (javaCast (jget ((jget (this).gameKeyFactory)).rIGHT)))
            jset (this).rightGameKeyEvent (assignedValue)
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) (javaCast this) (javaCast (jget ((jget (this).gameKeyFactory)).uP)))
            jset (this).upGameKeyEvent (assignedValue)
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) (javaCast this) (javaCast (jget ((jget (this).gameKeyFactory)).dOWN)))
            jset (this).downGameKeyEvent (assignedValue)
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) (javaCast this) (javaCast (jget ((jget (this).gameKeyFactory)).kEY_NUM0)))
            jset (this).leftTriggerGameKeyEvent (assignedValue)
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) (javaCast this) (javaCast (jget ((jget (this).gameKeyFactory)).kEY_NUM5)))
            jset (this).rightTriggerGameKeyEvent (assignedValue)
        pure ()


process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInput.AnalogLocationInput -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DirectionalAnalogLocationInputProcessor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInput.AnalogLocationInput -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: DirectionalAnalogLocationInputProcessor)) a1 a2

process_impl :: DirectionalAnalogLocationInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInput.AnalogLocationInput -> IO (())
process_impl this allbinaryLayerManager analogLocationInput = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to process analog input" this (jget (commonStrings).pROCESS) e)
            ) $ do
            customGPoint <- newIORef (javaNull)
            assignedValue <- (AnalogLocationInput.getCustomGPoint analogLocationInput)
            jset customGPoint (assignedValue)
            x <- (CustomGPoint.getX ((jget customGPoint)))
            y <- (CustomGPoint.getY ((jget customGPoint)))
            leftTrigger <- (AnalogLocationInput.getLeftTrigger analogLocationInput)
            rightTrigger <- (AnalogLocationInput.getRightTrigger analogLocationInput)
            if (x < 0) then do
                Control.Monad.void (processAnalog ((jindex ((jget (this).inputProcessorArray)) ((jio (GameKeyEvent.getKey ((jget (this).leftGameKeyEvent))))))) allbinaryLayerManager (jget (this).leftGameKeyEvent) x)
            else when (x > 0) $ do
                Control.Monad.void (processAnalog ((jindex ((jget (this).inputProcessorArray)) ((jio (GameKeyEvent.getKey ((jget (this).rightGameKeyEvent))))))) allbinaryLayerManager (jget (this).rightGameKeyEvent) x)
            if (y < 0) then do
                Control.Monad.void (processAnalog ((jindex ((jget (this).inputProcessorArray)) ((jio (GameKeyEvent.getKey ((jget (this).downGameKeyEvent))))))) allbinaryLayerManager (jget (this).downGameKeyEvent) y)
            else when (y > 0) $ do
                Control.Monad.void (processAnalog ((jindex ((jget (this).inputProcessorArray)) ((jio (GameKeyEvent.getKey ((jget (this).upGameKeyEvent))))))) allbinaryLayerManager (jget (this).upGameKeyEvent) y)
            when (leftTrigger > 0) $ do
                Control.Monad.void (processAnalog ((jindex ((jget (this).inputProcessorArray)) ((jio (GameKeyEvent.getKey ((jget (this).leftTriggerGameKeyEvent))))))) allbinaryLayerManager (jget (this).leftTriggerGameKeyEvent) leftTrigger)
            when (rightTrigger > 0) $ do
                Control.Monad.void (processAnalog ((jindex ((jget (this).inputProcessorArray)) ((jio (GameKeyEvent.getKey ((jget (this).rightTriggerGameKeyEvent))))))) allbinaryLayerManager (jget (this).rightTriggerGameKeyEvent) rightTrigger)
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: DirectionalAnalogLocationInputProcessor))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: DirectionalAnalogLocationInputProcessor))

getSourceId_impl :: DirectionalAnalogLocationInputProcessor -> IO (Int)
getSourceId_impl this = do
        pure (0)


