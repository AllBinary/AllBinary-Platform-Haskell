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
module ImmediateCommandFormInputProcessor (module ImmediateCommandFormInputProcessor, module CommandFormInputProcessor) where

import CommandFormInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onPressGameKeyEvent, onPressGameKeyEvent_super, onPressGameKeyEvent_impl, onDownGameKeyEvent, onDownGameKeyEvent_super, onDownGameKeyEvent_impl, onUpGameKeyEvent, onUpGameKeyEvent_super, onUpGameKeyEvent_impl, onMotionGestureEvent, onMotionGestureEvent_super, onMotionGestureEvent_impl, timeHelper, gameCommandCanvas)
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
import qualified GameCommandCanvas -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified RepaintBehavior -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CommandFormInputProcessor

data ImmediateCommandFormInputProcessor = ImmediateCommandFormInputProcessor
    { header_ :: JavaHeader
    , base :: CommandFormInputProcessor.CommandFormInputProcessor
    , timeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , gameCommandCanvas :: IORef (GameCommandCanvas.GameCommandCanvas)
    }

instance JavaNull ImmediateCommandFormInputProcessor where
    javaNull = javaNullRecord "ImmediateCommandFormInputProcessor"

instance JavaEquals ImmediateCommandFormInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImmediateCommandFormInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ImmediateCommandFormInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImmediateCommandFormInputProcessor
newRecord_ = do
    base <- CommandFormInputProcessor.newRecord_
    let header_ = base.header_
    timeHelper <- newIORef javaNull
    gameCommandCanvas <- newIORef javaNull
    let this = ImmediateCommandFormInputProcessor header_ base timeHelper gameCommandCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "onPressGameKeyEvent" (\() -> onPressGameKeyEvent_impl this)
    jregisterMethod header_ "onDownGameKeyEvent" (\() -> onDownGameKeyEvent_impl this)
    jregisterMethod header_ "onUpGameKeyEvent" (\() -> onUpGameKeyEvent_impl this)
    jregisterMethod header_ "onMotionGestureEvent" (\() -> onMotionGestureEvent_impl this)
    pure this

initFields_ :: ImmediateCommandFormInputProcessor -> IO ()
initFields_ this = do
    jset this.timeHelper =<< (TimeDelayHelper.new_1 25)
    jset this.gameCommandCanvas (javaNull)
    pure ()

new_4 :: BasicArrayList.BasicArrayList -> Int -> GameCommandCanvas.GameCommandCanvas -> ScrollSelectionForm.ScrollSelectionForm -> IO ImmediateCommandFormInputProcessor
new_4 gameKeyEventList playerInputId gameCommandCanvas form = do
    this <- newRecord_
    init_4 this gameKeyEventList playerInputId gameCommandCanvas form
    pure this

init_4 :: ImmediateCommandFormInputProcessor -> BasicArrayList.BasicArrayList -> Int -> GameCommandCanvas.GameCommandCanvas -> ScrollSelectionForm.ScrollSelectionForm -> IO ()
init_4 this gameKeyEventList playerInputId gameCommandCanvas form = do
        CommandFormInputProcessor.init_4 this.base (gameKeyEventList) (playerInputId) (gameCommandCanvas) (form)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).gameCommandCanvas (gameCommandCanvas)
        pure ()


onPressGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent object_ a1 = jmethod object_ "onPressGameKeyEvent" (\() -> (onPressGameKeyEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor))) () a1

onPressGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_super object_ a1 = (onPressGameKeyEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor)) a1

onPressGameKeyEvent_impl :: ImmediateCommandFormInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_impl this gameKeyEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.gameInputStrings)).oN_PRESS_GAME_KEY) e)
            ) $ do
            Control.Monad.void (CommandFormInputProcessor.onPressGameKeyEvent_super this.base gameKeyEvent)
            when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeHelper)))) $ do
                Control.Monad.void (CommandFormInputProcessor.processInputList this)
                Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget ((jget (this).gameCommandCanvas)).repaintBehavior)) (jio (CommandFormInputProcessor.getCanvas this)))
        pure ()


onDownGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent object_ a1 = jmethod object_ "onDownGameKeyEvent" (\() -> (onDownGameKeyEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor))) () a1

onDownGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_super object_ a1 = (onDownGameKeyEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor)) a1

onDownGameKeyEvent_impl :: ImmediateCommandFormInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_impl this gameKeyEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.gameInputStrings)).oN_DOWN_GAME_KEY) e)
            ) $ do
            Control.Monad.void (CommandFormInputProcessor.onDownGameKeyEvent_super this.base gameKeyEvent)
            when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeHelper)))) $ do
                Control.Monad.void (CommandFormInputProcessor.processInputList this)
                Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget ((jget (this).gameCommandCanvas)).repaintBehavior)) (jio (CommandFormInputProcessor.getCanvas this)))
        pure ()


onUpGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent object_ a1 = jmethod object_ "onUpGameKeyEvent" (\() -> (onUpGameKeyEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor))) () a1

onUpGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_super object_ a1 = (onUpGameKeyEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor)) a1

onUpGameKeyEvent_impl :: ImmediateCommandFormInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_impl this gameKeyEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.gameInputStrings)).oN_UP_GAME_KEY) e)
            ) $ do
            Control.Monad.void (CommandFormInputProcessor.onUpGameKeyEvent_super this.base gameKeyEvent)
            when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeHelper)))) $ do
                Control.Monad.void (CommandFormInputProcessor.processInputList this)
                Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget ((jget (this).gameCommandCanvas)).repaintBehavior)) (jio (CommandFormInputProcessor.getCanvas this)))
        pure ()


onMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent object_ a1 = jmethod object_ "onMotionGestureEvent" (\() -> (onMotionGestureEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor))) () a1

onMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_super object_ a1 = (onMotionGestureEvent_impl (javaCast object_ :: ImmediateCommandFormInputProcessor)) a1

onMotionGestureEvent_impl :: ImmediateCommandFormInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_impl this motionGestureEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this "onMotionGestureEvent" e)
            ) $ do
            Control.Monad.void (CommandFormInputProcessor.onMotionGestureEvent_super this.base motionGestureEvent)
            when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeHelper)))) $ do
                Control.Monad.void (CommandFormInputProcessor.processInputList this)
                Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget ((jget (this).gameCommandCanvas)).repaintBehavior)) (jio (CommandFormInputProcessor.getCanvas this)))
        pure ()


