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
module BasicMenuInputProcessor (module BasicMenuInputProcessor, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onMotionGestureEvent, onMotionGestureEvent_super, onMotionGestureEvent_impl, onScrolledMotionGestureEvent, onScrolledMotionGestureEvent_super, onScrolledMotionGestureEvent_impl, setCanvas, setCanvas_super, setCanvas_impl, getCanvas, getCanvas_super, getCanvas_impl, processInputList, processInputList_super, processInputList_impl, motionGestureEventList, canvas)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified BaseMotionGestureEventListener -- org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements BaseMotionGestureEventListener
data BasicMenuInputProcessor = BasicMenuInputProcessor
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , motionGestureEventList :: IORef (BasicArrayList.BasicArrayList)
    , canvas :: IORef (Canvas.Canvas)
    }

instance JavaNull BasicMenuInputProcessor where
    javaNull = javaNullRecord "BasicMenuInputProcessor"

instance JavaEquals BasicMenuInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicMenuInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass BasicMenuInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicMenuInputProcessor
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    motionGestureEventList <- newIORef javaNull
    canvas <- newIORef javaNull
    let this = BasicMenuInputProcessor header_ base motionGestureEventList canvas
    jregisterLevel header_ this
    BaseMotionGestureEventListener.registerInterface_ header_
    jregisterMethod header_ "onMotionGestureEvent" (\() -> onMotionGestureEvent_impl this)
    jregisterMethod header_ "onScrolledMotionGestureEvent" (\() -> onScrolledMotionGestureEvent_impl this)
    jregisterMethod header_ "setCanvas" (\() -> setCanvas_impl this)
    jregisterMethod header_ "getCanvas" (\() -> getCanvas_impl this)
    jregisterMethod header_ "processInputList" (\() -> processInputList_impl this)
    pure this

initFields_ :: BasicMenuInputProcessor -> IO ()
initFields_ this = do
    jset this.motionGestureEventList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.canvas ((javaCast NullCanvas.nULL_CANVAS :: Canvas.Canvas))
    pure ()

new_3 :: BasicArrayList.BasicArrayList -> Int -> Canvas.Canvas -> IO BasicMenuInputProcessor
new_3 gameKeyEventList playerInputId gameCanvas = do
    this <- newRecord_
    init_3 this gameKeyEventList playerInputId gameCanvas
    pure this

init_3 :: BasicMenuInputProcessor -> BasicArrayList.BasicArrayList -> Int -> Canvas.Canvas -> IO ()
init_3 this gameKeyEventList playerInputId gameCanvas = do
        PlayerGameInput.init_3 this.base (gameKeyEventList) (jio (BasicArrayListD.new_)) (playerInputId)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).canvas (gameCanvas)
        pure ()


onMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent object_ a1 = jmethod object_ "onMotionGestureEvent" (\() -> (onMotionGestureEvent_impl (javaCast object_ :: BasicMenuInputProcessor))) () a1

onMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_super object_ a1 = (onMotionGestureEvent_impl (javaCast object_ :: BasicMenuInputProcessor)) a1

onMotionGestureEvent_impl :: BasicMenuInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_impl this motionGestureEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).motionGestureEventList)) motionGestureEvent)
        pure ()


onScrolledMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent object_ a1 = jmethod object_ "onScrolledMotionGestureEvent" (\() -> (onScrolledMotionGestureEvent_impl (javaCast object_ :: BasicMenuInputProcessor))) () a1

onScrolledMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_super object_ a1 = (onScrolledMotionGestureEvent_impl (javaCast object_ :: BasicMenuInputProcessor)) a1

onScrolledMotionGestureEvent_impl :: BasicMenuInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_impl this motionGestureEvent = do
        pure ()


setCanvas :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
setCanvas object_ a1 = jmethod object_ "setCanvas" (\() -> (setCanvas_impl (javaCast object_ :: BasicMenuInputProcessor))) () a1

setCanvas_super :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
setCanvas_super object_ a1 = (setCanvas_impl (javaCast object_ :: BasicMenuInputProcessor)) a1

setCanvas_impl :: BasicMenuInputProcessor -> MyCanvas.MyCanvas -> IO (())
setCanvas_impl this canvas = do
        jset (this).canvas (canvas)
        pure ()


getCanvas :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getCanvas object_ = jmethod object_ "getCanvas" (\() -> (getCanvas_impl (javaCast object_ :: BasicMenuInputProcessor))) ()

getCanvas_super :: (JavaObjectClass this_) => this_ -> IO (MyCanvas.MyCanvas)
getCanvas_super object_ = (getCanvas_impl (javaCast object_ :: BasicMenuInputProcessor))

getCanvas_impl :: BasicMenuInputProcessor -> IO (MyCanvas.MyCanvas)
getCanvas_impl this = do
        pure ((javaCast (jget (this).canvas) :: MyCanvas.MyCanvas))


-- throws Exception
processInputList :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList object_ = jmethod object_ "processInputList" (\() -> (processInputList_impl (javaCast object_ :: BasicMenuInputProcessor))) ()

processInputList_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList_super object_ = (processInputList_impl (javaCast object_ :: BasicMenuInputProcessor))

processInputList_impl :: BasicMenuInputProcessor -> IO (Int)
processInputList_impl this = do
        pure ((Prelude.negate 1))


