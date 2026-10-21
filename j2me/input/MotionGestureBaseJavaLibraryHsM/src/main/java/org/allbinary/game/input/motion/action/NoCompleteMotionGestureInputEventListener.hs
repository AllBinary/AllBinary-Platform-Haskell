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
module NoCompleteMotionGestureInputEventListener (module NoCompleteMotionGestureInputEventListener, module CompleteMotionGestureInputEventListener) where

import CompleteMotionGestureInputEventListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onEvent, onEvent_super, onEvent_impl, onCompleteMotionGestureInputEvent, onCompleteMotionGestureInputEvent_super, onCompleteMotionGestureInputEvent_impl, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified CompleteMotionGestureInputEvent -- org.allbinary.game.input.CompleteMotionGestureInputEvent
import qualified CompleteMotionGestureInputEventListener -- org.allbinary.game.input.CompleteMotionGestureInputEventListener
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

data NoCompleteMotionGestureInputEventListener = NoCompleteMotionGestureInputEventListener
    { header_ :: JavaHeader
    , base :: CompleteMotionGestureInputEventListener.CompleteMotionGestureInputEventListener
    }

instance JavaNull NoCompleteMotionGestureInputEventListener where
    javaNull = javaNullRecord "NoCompleteMotionGestureInputEventListener"

instance JavaEquals NoCompleteMotionGestureInputEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoCompleteMotionGestureInputEventListener where
    (==) = jrecordEquals

instance JavaObjectClass NoCompleteMotionGestureInputEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO NoCompleteMotionGestureInputEventListener
newRecord_ = do
    base <- CompleteMotionGestureInputEventListener.newRecord_
    let header_ = base.header_
    let this = NoCompleteMotionGestureInputEventListener header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onCompleteMotionGestureInputEvent" (\() -> onCompleteMotionGestureInputEvent_impl this)
    pure this

initFields_ :: NoCompleteMotionGestureInputEventListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoCompleteMotionGestureInputEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoCompleteMotionGestureInputEventListener -> IO ()
init_ this = do
        CompleteMotionGestureInputEventListener.init_ this.base
        initFields_ this
        pure ()
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: NoCompleteMotionGestureInputEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: NoCompleteMotionGestureInputEventListener)) a1

onEvent_impl :: NoCompleteMotionGestureInputEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onCompleteMotionGestureInputEvent :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent object_ a1 = jmethod object_ "onCompleteMotionGestureInputEvent" (\() -> (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: NoCompleteMotionGestureInputEventListener))) () a1

onCompleteMotionGestureInputEvent_super :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_super object_ a1 = (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: NoCompleteMotionGestureInputEventListener)) a1

onCompleteMotionGestureInputEvent_impl :: NoCompleteMotionGestureInputEventListener -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_impl this completeMotionGestureInputEvent = do
        pure ()


getInstance :: IO (NoCompleteMotionGestureInputEventListener)
getInstance = do
        pure (NoCompleteMotionGestureInputEventListener.instance_)


