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
-- package org.allbinary.game.displayable.canvas
module NoMenuInputProcessor (module NoMenuInputProcessor, module BasicMenuInputProcessor) where

import BasicMenuInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, onDownGameKeyEvent, onDownGameKeyEvent_super, onDownGameKeyEvent_impl, onUpGameKeyEvent, onUpGameKeyEvent_super, onUpGameKeyEvent_impl, onMotionGestureEvent, onMotionGestureEvent_super, onMotionGestureEvent_impl, sINGLETON)
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
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified BasicMenuInputProcessor

data NoMenuInputProcessor = NoMenuInputProcessor
    { header_ :: JavaHeader
    , base :: BasicMenuInputProcessor.BasicMenuInputProcessor
    }

instance JavaNull NoMenuInputProcessor where
    javaNull = javaNullRecord "NoMenuInputProcessor"

instance JavaEquals NoMenuInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoMenuInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass NoMenuInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO NoMenuInputProcessor
newRecord_ = do
    base <- BasicMenuInputProcessor.newRecord_
    let header_ = base.header_
    let this = NoMenuInputProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "onDownGameKeyEvent" (\() -> onDownGameKeyEvent_impl this)
    jregisterMethod header_ "onUpGameKeyEvent" (\() -> onUpGameKeyEvent_impl this)
    jregisterMethod header_ "onMotionGestureEvent" (\() -> onMotionGestureEvent_impl this)
    pure this

initFields_ :: NoMenuInputProcessor -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (NoMenuInputProcessor)
getInstance = do
        pure (NoMenuInputProcessor.sINGLETON)

new_ :: IO NoMenuInputProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoMenuInputProcessor -> IO ()
init_ this = do
        BasicMenuInputProcessor.init_3 this.base (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))) (Prelude.negate 1) (NullCanvas.nULL_CANVAS)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


onDownGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent object_ a1 = jmethod object_ "onDownGameKeyEvent" (\() -> (onDownGameKeyEvent_impl (javaCast object_ :: NoMenuInputProcessor))) () a1

onDownGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_super object_ a1 = (onDownGameKeyEvent_impl (javaCast object_ :: NoMenuInputProcessor)) a1

onDownGameKeyEvent_impl :: NoMenuInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_impl this gameKeyEvent = do
        pure ()


onUpGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent object_ a1 = jmethod object_ "onUpGameKeyEvent" (\() -> (onUpGameKeyEvent_impl (javaCast object_ :: NoMenuInputProcessor))) () a1

onUpGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_super object_ a1 = (onUpGameKeyEvent_impl (javaCast object_ :: NoMenuInputProcessor)) a1

onUpGameKeyEvent_impl :: NoMenuInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_impl this gameKeyEvent = do
        pure ()


onMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent object_ a1 = jmethod object_ "onMotionGestureEvent" (\() -> (onMotionGestureEvent_impl (javaCast object_ :: NoMenuInputProcessor))) () a1

onMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_super object_ a1 = (onMotionGestureEvent_impl (javaCast object_ :: NoMenuInputProcessor)) a1

onMotionGestureEvent_impl :: NoMenuInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_impl this motionGestureEvent = do
        pure ()


