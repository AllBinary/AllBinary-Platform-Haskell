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
module NoCompleteMotionGestureInputEventListener where

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
import qualified CompleteMotionGestureInputEventListenerInterface -- org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements CompleteMotionGestureInputEventListenerInterface
data NoCompleteMotionGestureInputEventListener = NoCompleteMotionGestureInputEventListener
    { header_ :: JavaHeader
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

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoCompleteMotionGestureInputEventListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = NoCompleteMotionGestureInputEventListener header_
    jregisterLevel header_ this
    CompleteMotionGestureInputEventListenerInterface.registerInterface_ header_
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


