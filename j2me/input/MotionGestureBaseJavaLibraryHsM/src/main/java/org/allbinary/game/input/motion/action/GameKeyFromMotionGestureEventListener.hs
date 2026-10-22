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
-- package org.allbinary.game.input.motion.action
module GameKeyFromMotionGestureEventListener (module GameKeyFromMotionGestureEventListener, module CompleteMotionGestureInputEventListener) where

import CompleteMotionGestureInputEventListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onEvent, onEvent_super, onEvent_impl, onCompleteMotionGestureInputEvent, onCompleteMotionGestureInputEvent_super, onCompleteMotionGestureInputEvent_impl, logUtil, previousGameKeyEvent)
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
import qualified GameKeyCompleteMotionGestureInputEvent -- same package or java.lang
import qualified CompleteMotionGestureInputEvent -- org.allbinary.game.input.CompleteMotionGestureInputEvent
import qualified CompleteMotionGestureInputEventListener -- org.allbinary.game.input.CompleteMotionGestureInputEventListener
import qualified DownGameKeyEventHandler -- org.allbinary.game.input.event.DownGameKeyEventHandler
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified UpGameKeyEventHandler -- org.allbinary.game.input.event.UpGameKeyEventHandler
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GameKeyFromMotionGestureEventListener = GameKeyFromMotionGestureEventListener
    { header_ :: JavaHeader
    , base :: CompleteMotionGestureInputEventListener.CompleteMotionGestureInputEventListener
    , logUtil :: IORef (LogUtil.LogUtil)
    , previousGameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    }

instance JavaNull GameKeyFromMotionGestureEventListener where
    javaNull = javaNullRecord "GameKeyFromMotionGestureEventListener"

instance JavaEquals GameKeyFromMotionGestureEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyFromMotionGestureEventListener where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyFromMotionGestureEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameKeyFromMotionGestureEventListener
newRecord_ = do
    base <- CompleteMotionGestureInputEventListener.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    previousGameKeyEvent <- newIORef javaNull
    let this = GameKeyFromMotionGestureEventListener header_ base logUtil previousGameKeyEvent
    jregisterLevel header_ this
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onCompleteMotionGestureInputEvent" (\() -> onCompleteMotionGestureInputEvent_impl this)
    pure this

initFields_ :: GameKeyFromMotionGestureEventListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.previousGameKeyEvent (GameKeyEvent.nONE)
    pure ()

new_ :: IO GameKeyFromMotionGestureEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyFromMotionGestureEventListener -> IO ()
init_ this = do
    CompleteMotionGestureInputEventListener.init_ this.base
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameKeyFromMotionGestureEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameKeyFromMotionGestureEventListener)) a1

onEvent_impl :: GameKeyFromMotionGestureEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onCompleteMotionGestureInputEvent :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent object_ a1 = jmethod object_ "onCompleteMotionGestureInputEvent" (\() -> (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: GameKeyFromMotionGestureEventListener))) () a1

onCompleteMotionGestureInputEvent_super :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_super object_ a1 = (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: GameKeyFromMotionGestureEventListener)) a1

onCompleteMotionGestureInputEvent_impl :: GameKeyFromMotionGestureEventListener -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_impl this completeMotionGestureInputEvent = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "onCompleteMotionGestureInputEvent" e)
            ) $ do
            let gameKeyCompleteMotionGestureInputEvent = (javaCast completeMotionGestureInputEvent :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
            gameKeyEvent <- (GameKeyCompleteMotionGestureInputEvent.getGameKeyEvent gameKeyCompleteMotionGestureInputEvent)
            when (gameKeyEvent /= (jget (this).previousGameKeyEvent)) $ do
                when ((jget (this).previousGameKeyEvent) /= GameKeyEvent.nONE) $ do
                    Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jio (UpGameKeyEventHandler.getInstance))) (javaCast (jget (this).previousGameKeyEvent)))
                jset (this).previousGameKeyEvent (gameKeyEvent)
                when ((gameKeyEvent /= javaNull) && (gameKeyEvent /= GameKeyEvent.nONE)) $ do
                    Control.Monad.void (DownGameKeyEventHandler.fireEvent ((jio (DownGameKeyEventHandler.getInstance))) (javaCast gameKeyEvent))
        pure ()


