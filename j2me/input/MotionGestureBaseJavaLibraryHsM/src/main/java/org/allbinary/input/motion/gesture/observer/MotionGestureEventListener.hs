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
module MotionGestureEventListener (module MotionGestureEventListener, module BaseMotionGestureEventListener) where

import BaseMotionGestureEventListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onPressedMotionGestureEvent, onPressedMotionGestureEvent_super, onPressedMotionGestureEvent_impl, onUpMotionGestureEvent, onUpMotionGestureEvent_super, onUpMotionGestureEvent_impl, onDownMotionGestureEvent, onDownMotionGestureEvent_super, onDownMotionGestureEvent_impl, onLeftMotionGestureEvent, onLeftMotionGestureEvent_super, onLeftMotionGestureEvent_impl, onRightMotionGestureEvent, onRightMotionGestureEvent_super, onRightMotionGestureEvent_impl, onDiagonalDownRightMotionGestureEvent, onDiagonalDownRightMotionGestureEvent_super, onDiagonalDownRightMotionGestureEvent_impl, onDiagonalDownLeftMotionGestureEvent, onDiagonalDownLeftMotionGestureEvent_super, onDiagonalDownLeftMotionGestureEvent_impl, onDiagonalUpRightMotionGestureEvent, onDiagonalUpRightMotionGestureEvent_super, onDiagonalUpRightMotionGestureEvent_impl, onDiagonalUpLeftMotionGestureEvent, onDiagonalUpLeftMotionGestureEvent_super, onDiagonalUpLeftMotionGestureEvent_impl, released, released_super, released_impl, toString)
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
import qualified BaseMotionGestureEventListener

-- Java interface: the classes that implement it have these functions
data MotionGestureEventListener = MotionGestureEventListener
    { header_ :: JavaHeader
    }

instance JavaNull MotionGestureEventListener where
    javaNull = javaNullRecord "MotionGestureEventListener"

instance JavaEquals MotionGestureEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureEventListener where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MotionGestureEventListener
fromHeader_ header = MotionGestureEventListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MotionGestureEventListener header)
    BaseMotionGestureEventListener.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onPressedMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onPressedMotionGestureEvent object_ a1 = jmethod object_ "onPressedMotionGestureEvent" (\() -> (onPressedMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onPressedMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onPressedMotionGestureEvent_super object_ a1 = (onPressedMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onPressedMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onPressedMotionGestureEvent_impl this ev = javaAbstractMethod "onPressedMotionGestureEvent"


onUpMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onUpMotionGestureEvent object_ a1 = jmethod object_ "onUpMotionGestureEvent" (\() -> (onUpMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onUpMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onUpMotionGestureEvent_super object_ a1 = (onUpMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onUpMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onUpMotionGestureEvent_impl this ev = javaAbstractMethod "onUpMotionGestureEvent"


onDownMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDownMotionGestureEvent object_ a1 = jmethod object_ "onDownMotionGestureEvent" (\() -> (onDownMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onDownMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDownMotionGestureEvent_super object_ a1 = (onDownMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onDownMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDownMotionGestureEvent_impl this ev = javaAbstractMethod "onDownMotionGestureEvent"


onLeftMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onLeftMotionGestureEvent object_ a1 = jmethod object_ "onLeftMotionGestureEvent" (\() -> (onLeftMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onLeftMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onLeftMotionGestureEvent_super object_ a1 = (onLeftMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onLeftMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onLeftMotionGestureEvent_impl this ev = javaAbstractMethod "onLeftMotionGestureEvent"


onRightMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onRightMotionGestureEvent object_ a1 = jmethod object_ "onRightMotionGestureEvent" (\() -> (onRightMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onRightMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onRightMotionGestureEvent_super object_ a1 = (onRightMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onRightMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onRightMotionGestureEvent_impl this ev = javaAbstractMethod "onRightMotionGestureEvent"


onDiagonalDownRightMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownRightMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalDownRightMotionGestureEvent" (\() -> (onDiagonalDownRightMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onDiagonalDownRightMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownRightMotionGestureEvent_super object_ a1 = (onDiagonalDownRightMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onDiagonalDownRightMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownRightMotionGestureEvent_impl this ev = javaAbstractMethod "onDiagonalDownRightMotionGestureEvent"


onDiagonalDownLeftMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownLeftMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalDownLeftMotionGestureEvent" (\() -> (onDiagonalDownLeftMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onDiagonalDownLeftMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownLeftMotionGestureEvent_super object_ a1 = (onDiagonalDownLeftMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onDiagonalDownLeftMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownLeftMotionGestureEvent_impl this ev = javaAbstractMethod "onDiagonalDownLeftMotionGestureEvent"


onDiagonalUpRightMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpRightMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalUpRightMotionGestureEvent" (\() -> (onDiagonalUpRightMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onDiagonalUpRightMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpRightMotionGestureEvent_super object_ a1 = (onDiagonalUpRightMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onDiagonalUpRightMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpRightMotionGestureEvent_impl this ev = javaAbstractMethod "onDiagonalUpRightMotionGestureEvent"


onDiagonalUpLeftMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpLeftMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalUpLeftMotionGestureEvent" (\() -> (onDiagonalUpLeftMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener))) () a1

onDiagonalUpLeftMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpLeftMotionGestureEvent_super object_ a1 = (onDiagonalUpLeftMotionGestureEvent_impl (javaCast object_ :: MotionGestureEventListener)) a1

onDiagonalUpLeftMotionGestureEvent_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpLeftMotionGestureEvent_impl this ev = javaAbstractMethod "onDiagonalUpLeftMotionGestureEvent"


-- throws Exception
released :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
released object_ a1 = jmethod object_ "released" (\() -> (released_impl (javaCast object_ :: MotionGestureEventListener))) () a1

released_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
released_super object_ a1 = (released_impl (javaCast object_ :: MotionGestureEventListener)) a1

released_impl :: MotionGestureEventListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
released_impl this ev = javaAbstractMethod "released"


