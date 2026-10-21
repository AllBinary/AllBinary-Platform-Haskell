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
-- package org.allbinary.input.motion.gesture.observer
module BaseMotionGestureEventListener (module BaseMotionGestureEventListener, module EventListenerInterface) where

import EventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onMotionGestureEvent, onMotionGestureEvent_super, onMotionGestureEvent_impl, onScrolledMotionGestureEvent, onScrolledMotionGestureEvent_super, onScrolledMotionGestureEvent_impl, toString)
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
import qualified MotionGestureEvent -- same package or java.lang
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface

-- Java interface: the classes that implement it have these functions
data BaseMotionGestureEventListener = BaseMotionGestureEventListener
    { header_ :: JavaHeader
    }

instance JavaNull BaseMotionGestureEventListener where
    javaNull = javaNullRecord "BaseMotionGestureEventListener"

instance JavaEquals BaseMotionGestureEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseMotionGestureEventListener where
    (==) = jrecordEquals

instance JavaObjectClass BaseMotionGestureEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BaseMotionGestureEventListener
fromHeader_ header = BaseMotionGestureEventListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BaseMotionGestureEventListener header)
    EventListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent object_ a1 = jmethod object_ "onMotionGestureEvent" (\() -> (onMotionGestureEvent_impl (javaCast object_ :: BaseMotionGestureEventListener))) () a1

onMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_super object_ a1 = (onMotionGestureEvent_impl (javaCast object_ :: BaseMotionGestureEventListener)) a1

onMotionGestureEvent_impl :: BaseMotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_impl this motionGestureEvent = javaAbstractMethod "onMotionGestureEvent"


onScrolledMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent object_ a1 = jmethod object_ "onScrolledMotionGestureEvent" (\() -> (onScrolledMotionGestureEvent_impl (javaCast object_ :: BaseMotionGestureEventListener))) () a1

onScrolledMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_super object_ a1 = (onScrolledMotionGestureEvent_impl (javaCast object_ :: BaseMotionGestureEventListener)) a1

onScrolledMotionGestureEvent_impl :: BaseMotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_impl this motionGestureEvent = javaAbstractMethod "onScrolledMotionGestureEvent"


