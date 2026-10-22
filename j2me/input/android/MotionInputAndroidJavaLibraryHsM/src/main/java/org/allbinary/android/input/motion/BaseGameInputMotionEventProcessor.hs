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
module BaseGameInputMotionEventProcessor (module BaseGameInputMotionEventProcessor, module MotionEventProcessor) where

import MotionEventProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, addListener, addListener_super, addListener_impl, commonStrings, gameMotionGestureListener)
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
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified GameMotionGestureListener -- org.allbinary.input.motion.gesture.observer.GameMotionGestureListener
import qualified MotionGestureReceiveInterfaceFactory -- org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified MotionEventProcessor

data BaseGameInputMotionEventProcessor = BaseGameInputMotionEventProcessor
    { header_ :: JavaHeader
    , base :: MotionEventProcessor.MotionEventProcessor
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameMotionGestureListener :: IORef (GameMotionGestureListener.GameMotionGestureListener)
    }

instance JavaNull BaseGameInputMotionEventProcessor where
    javaNull = javaNullRecord "BaseGameInputMotionEventProcessor"

instance JavaEquals BaseGameInputMotionEventProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseGameInputMotionEventProcessor where
    (==) = jrecordEquals

instance JavaObjectClass BaseGameInputMotionEventProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BaseGameInputMotionEventProcessor
newRecord_ = do
    base <- MotionEventProcessor.newRecord_
    let header_ = base.header_
    commonStrings <- newIORef javaNull
    gameMotionGestureListener <- newIORef javaNull
    let this = BaseGameInputMotionEventProcessor header_ base commonStrings gameMotionGestureListener
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    pure this

initFields_ :: BaseGameInputMotionEventProcessor -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameMotionGestureListener (javaNull)
    pure ()

new_ :: IO BaseGameInputMotionEventProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseGameInputMotionEventProcessor -> IO ()
init_ this = do
        MotionEventProcessor.init_ this.base
        initFields_ this
        assignedValue <- (GameMotionGestureListener.new_1 (jio (MotionGestureReceiveInterfaceFactory.getInstance)))
        jset (this).gameMotionGestureListener (assignedValue)
        Control.Monad.void (BaseGameInputMotionEventProcessor.addListener this)
        pure ()


process :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BaseGameInputMotionEventProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: BaseGameInputMotionEventProcessor)) a1

process_impl :: BaseGameInputMotionEventProcessor -> MotionEvent.MotionEvent -> IO (())
process_impl this motionEvent = do
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> IO (())
addListener object_ = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: BaseGameInputMotionEventProcessor))) ()

addListener_super :: (JavaObjectClass this_) => this_ -> IO (())
addListener_super object_ = (addListener_impl (javaCast object_ :: BaseGameInputMotionEventProcessor))

addListener_impl :: BaseGameInputMotionEventProcessor -> IO (())
addListener_impl this = do
        motionGesturesHandler <- (BasicMotionGesturesHandler.getInstance)
        Control.Monad.void (BasicMotionGesturesHandler.addListenerInterface motionGesturesHandler (javaCast (jget (this).gameMotionGestureListener)))
        pure ()


