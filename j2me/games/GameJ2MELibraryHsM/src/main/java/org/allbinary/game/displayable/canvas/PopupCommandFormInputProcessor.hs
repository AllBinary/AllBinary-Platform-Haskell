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
module PopupCommandFormInputProcessor (module PopupCommandFormInputProcessor, module CommandFormInputProcessor) where

import CommandFormInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processInput, processInput_super, processInput_impl, processMotionInput, processMotionInput_super, processMotionInput_impl)
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
import qualified PopupMenuInputProcessor -- same package or java.lang
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CommandFormInputProcessor

data PopupCommandFormInputProcessor = PopupCommandFormInputProcessor
    { header_ :: JavaHeader
    , base :: CommandFormInputProcessor.CommandFormInputProcessor
    }

instance JavaNull PopupCommandFormInputProcessor where
    javaNull = javaNullRecord "PopupCommandFormInputProcessor"

instance JavaEquals PopupCommandFormInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PopupCommandFormInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass PopupCommandFormInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PopupCommandFormInputProcessor
newRecord_ = do
    base <- CommandFormInputProcessor.newRecord_
    let header_ = base.header_
    let this = PopupCommandFormInputProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "processMotionInput" (\() -> processMotionInput_impl this)
    pure this

initFields_ :: PopupCommandFormInputProcessor -> IO ()
initFields_ this = do
    pure ()

new_5 :: BasicArrayList.BasicArrayList -> Int -> MyCanvas.MyCanvas -> ScrollSelectionForm.ScrollSelectionForm -> PopupMenuInputProcessor.PopupMenuInputProcessor -> IO PopupCommandFormInputProcessor
new_5 gameKeyEventList playerInputId gameCanvas form popupMenuInputProcessor = do
    this <- newRecord_
    init_5 this gameKeyEventList playerInputId gameCanvas form popupMenuInputProcessor
    pure this

init_5 :: PopupCommandFormInputProcessor -> BasicArrayList.BasicArrayList -> Int -> MyCanvas.MyCanvas -> ScrollSelectionForm.ScrollSelectionForm -> PopupMenuInputProcessor.PopupMenuInputProcessor -> IO ()
init_5 this gameKeyEventList playerInputId gameCanvas form popupMenuInputProcessor = do
        CommandFormInputProcessor.init_4 this.base (gameKeyEventList) (playerInputId) (gameCanvas) (form)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: PopupCommandFormInputProcessor))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: PopupCommandFormInputProcessor)) a1

processInput_impl :: PopupCommandFormInputProcessor -> Int -> IO (Int)
processInput_impl this key = do
        (CommandFormInputProcessor.processInput_super this.base key)


-- throws Exception
processMotionInput :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput object_ a1 = jmethod object_ "processMotionInput" (\() -> (processMotionInput_impl (javaCast object_ :: PopupCommandFormInputProcessor))) () a1

processMotionInput_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput_super object_ a1 = (processMotionInput_impl (javaCast object_ :: PopupCommandFormInputProcessor)) a1

processMotionInput_impl :: PopupCommandFormInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput_impl this motionGestureEvent = do
        Control.Monad.void (CommandFormInputProcessor.processMotionInput_super this.base motionGestureEvent)
        pure ()


