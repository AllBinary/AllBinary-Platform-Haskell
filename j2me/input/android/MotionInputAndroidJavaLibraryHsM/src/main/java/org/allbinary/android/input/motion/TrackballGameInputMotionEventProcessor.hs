{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion
module TrackballGameInputMotionEventProcessor (module TrackballGameInputMotionEventProcessor, module MotionEventProcessor) where

import MotionEventProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, logUtil, pROCESSOR, listener, commonStrings)
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
import qualified MotionEvent -- android.view.MotionEvent
import qualified SingleKeyPressGameKeyFromMotionGestureEventListener -- org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener
import qualified DownTrackballInputToGameKeyEventAction -- org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction
import qualified LeftTrackballInputToGameKeyEventAction -- org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction
import qualified RightTrackballInputToGameKeyEventAction -- org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction
import qualified UpTrackballInputToGameKeyEventAction -- org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified MotionEventProcessor

data TrackballGameInputMotionEventProcessor = TrackballGameInputMotionEventProcessor
    { header_ :: JavaHeader
    , base :: MotionEventProcessor.MotionEventProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , listener :: IORef (SingleKeyPressGameKeyFromMotionGestureEventListener.SingleKeyPressGameKeyFromMotionGestureEventListener)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull TrackballGameInputMotionEventProcessor where
    javaNull = javaNullRecord "TrackballGameInputMotionEventProcessor"

instance JavaEquals TrackballGameInputMotionEventProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrackballGameInputMotionEventProcessor where
    (==) = jrecordEquals

instance JavaObjectClass TrackballGameInputMotionEventProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE pROCESSOR #-}
pROCESSOR = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO TrackballGameInputMotionEventProcessor
newRecord_ = do
    base <- MotionEventProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    listener <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = TrackballGameInputMotionEventProcessor header_ base logUtil listener commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: TrackballGameInputMotionEventProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.listener =<< (SingleKeyPressGameKeyFromMotionGestureEventListener.new_)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()


getInstance :: IO (TrackballGameInputMotionEventProcessor)
getInstance = do
        pure ((jget TrackballGameInputMotionEventProcessor.pROCESSOR))

new_ :: IO TrackballGameInputMotionEventProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TrackballGameInputMotionEventProcessor -> IO ()
init_ this = do
        MotionEventProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TrackballGameInputMotionEventProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: TrackballGameInputMotionEventProcessor)) a1

process_impl :: TrackballGameInputMotionEventProcessor -> MotionEvent.MotionEvent -> IO (())
process_impl this motionEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).pROCESS) e)
            ) $ do
            x <- (MotionEvent.getX motionEvent)
            y <- (MotionEvent.getY motionEvent)
            if (x < 0.0) then do
                Control.Monad.void (SingleKeyPressGameKeyFromMotionGestureEventListener.onCompleteMotionGestureInputEvent ((jget (this).listener)) (jio (LeftTrackballInputToGameKeyEventAction.getInstance)))
            else when (x > 0.0) $ do
                Control.Monad.void (SingleKeyPressGameKeyFromMotionGestureEventListener.onCompleteMotionGestureInputEvent ((jget (this).listener)) (jio (RightTrackballInputToGameKeyEventAction.getInstance)))
            if (y < 0.0) then do
                Control.Monad.void (SingleKeyPressGameKeyFromMotionGestureEventListener.onCompleteMotionGestureInputEvent ((jget (this).listener)) (jio (UpTrackballInputToGameKeyEventAction.getInstance)))
            else when (y > 0.0) $ do
                Control.Monad.void (SingleKeyPressGameKeyFromMotionGestureEventListener.onCompleteMotionGestureInputEvent ((jget (this).listener)) (jio (DownTrackballInputToGameKeyEventAction.getInstance)))
        pure ()


