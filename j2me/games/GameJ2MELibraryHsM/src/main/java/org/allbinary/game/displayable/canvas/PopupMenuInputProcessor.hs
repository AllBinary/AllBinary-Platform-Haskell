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
module PopupMenuInputProcessor (module PopupMenuInputProcessor, module BasicMenuInputProcessor) where

import BasicMenuInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, processInput, processInput_super, processInput_impl, processInputList, processInputList_super, processInputList_impl, processMotionInputs, processMotionInputs_super, processMotionInputs_impl, processMotionInput, processMotionInput_super, processMotionInput_impl, rectangleCollisionUtil, cLICK_DELAY, clickTimeHelper, rectangle)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified RectangleCollisionUtil -- org.allbinary.math.RectangleCollisionUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicMenuInputProcessor

data PopupMenuInputProcessor = PopupMenuInputProcessor
    { header_ :: JavaHeader
    , base :: BasicMenuInputProcessor.BasicMenuInputProcessor
    , rectangleCollisionUtil :: IORef (RectangleCollisionUtil.RectangleCollisionUtil)
    , cLICK_DELAY :: IORef (Int)
    , clickTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , rectangle :: IORef (Rectangle.Rectangle)
    }

instance JavaNull PopupMenuInputProcessor where
    javaNull = javaNullRecord "PopupMenuInputProcessor"

instance JavaEquals PopupMenuInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PopupMenuInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass PopupMenuInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PopupMenuInputProcessor
newRecord_ = do
    base <- BasicMenuInputProcessor.newRecord_
    let header_ = base.header_
    rectangleCollisionUtil <- newIORef javaNull
    cLICK_DELAY <- newIORef 0
    clickTimeHelper <- newIORef javaNull
    rectangle <- newIORef javaNull
    let this = PopupMenuInputProcessor header_ base rectangleCollisionUtil cLICK_DELAY clickTimeHelper rectangle
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "processInputList" (\() -> processInputList_impl this)
    jregisterMethod header_ "processMotionInputs" (\() -> processMotionInputs_impl this)
    jregisterMethod header_ "processMotionInput" (\() -> processMotionInput_impl this)
    pure this

initFields_ :: PopupMenuInputProcessor -> IO ()
initFields_ this = do
    jset this.rectangleCollisionUtil =<< (RectangleCollisionUtil.getInstance)
    jset this.cLICK_DELAY (120)
    jset this.clickTimeHelper =<< (TimeDelayHelper.new_1 (jget (this).cLICK_DELAY))
    jset this.rectangle (javaNull)
    pure ()

new_4 :: BasicArrayList.BasicArrayList -> Int -> MyCanvas.MyCanvas -> Rectangle.Rectangle -> IO PopupMenuInputProcessor
new_4 gameKeyEventList playerInputId gameCanvas rectangle = do
    this <- newRecord_
    init_4 this gameKeyEventList playerInputId gameCanvas rectangle
    pure this

init_4 :: PopupMenuInputProcessor -> BasicArrayList.BasicArrayList -> Int -> MyCanvas.MyCanvas -> Rectangle.Rectangle -> IO ()
init_4 this gameKeyEventList playerInputId gameCanvas rectangle = do
        BasicMenuInputProcessor.init_3 this.base (gameKeyEventList) (playerInputId) (gameCanvas)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).rectangle (rectangle)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PopupMenuInputProcessor))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: PopupMenuInputProcessor)) a1

init_impl :: PopupMenuInputProcessor -> Rectangle.Rectangle -> IO (())
init_impl this rectangle = do
        jset (this).rectangle (rectangle)
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: PopupMenuInputProcessor))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: PopupMenuInputProcessor)) a1

processInput_impl :: PopupMenuInputProcessor -> Int -> IO (Int)
processInput_impl this key = do
    javaCatchReturn $ do
        when (key == Canvas.kEY_STAR) $ do
            let gameCanvas = (javaCast (jio (BasicMenuInputProcessor.getCanvas this)) :: AllBinaryGameCanvas.AllBinaryGameCanvas)
            Control.Monad.void (AllBinaryGameCanvas.toggleMenu gameCanvas)
            javaReturn (1)
        pure (0)


-- throws Exception
processInputList :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList object_ = jmethod object_ "processInputList" (\() -> (processInputList_impl (javaCast object_ :: PopupMenuInputProcessor))) ()

processInputList_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList_super object_ = (processInputList_impl (javaCast object_ :: PopupMenuInputProcessor))

processInputList_impl :: PopupMenuInputProcessor -> IO (Int)
processInputList_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jio (GameInputStrings.getInstance))).pROCESS_INPUT) e)
            pure ((Prelude.negate 1))
            ) $ do
            motionInputsIndex <- (PopupMenuInputProcessor.processMotionInputs this)
            list <- (BasicMenuInputProcessor.getGameKeyEventList this)
            size <- (BasicArrayList.size list)
            key <- newIORef (0)
            gameKeyEvent <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset gameKeyEvent ((javaCast (jindex ((jget (list).objectArray)) (index)) :: GameKeyEvent.GameKeyEvent))
                when ((jget gameKeyEvent) /= javaNull) $ do
                    assignedValue <- (GameKeyEvent.getKey ((jget gameKeyEvent)))
                    jset key (assignedValue)
                    when ((jio (PopupMenuInputProcessor.processInput this (jget key))) == 1) $ do
                        throwIO JavaBreak
            Control.Monad.void (BasicMenuInputProcessor.clear this)
            if ((size > 0) || (motionInputsIndex >= 0)) then do
                javaReturn (1)
            else do
                javaReturn ((Prelude.negate 1))


-- throws Exception
processMotionInputs :: (JavaObjectClass this_) => this_ -> IO (Int)
processMotionInputs object_ = jmethod object_ "processMotionInputs" (\() -> (processMotionInputs_impl (javaCast object_ :: PopupMenuInputProcessor))) ()

processMotionInputs_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processMotionInputs_super object_ = (processMotionInputs_impl (javaCast object_ :: PopupMenuInputProcessor))

processMotionInputs_impl :: PopupMenuInputProcessor -> IO (Int)
processMotionInputs_impl this = do
        let lastIndex = ((jio (BasicArrayList.size ((jget (this).base.motionGestureEventList)))) - 1)
        when (lastIndex >= 0) $ do
            let motionGestureEvent = (javaCast (jindex ((jget ((jget (this).base.motionGestureEventList)).objectArray)) (lastIndex)) :: MotionGestureEvent.MotionGestureEvent)
            Control.Monad.void (PopupMenuInputProcessor.processMotionInput this motionGestureEvent)
        Control.Monad.void (BasicArrayList.clear ((jget (this).base.motionGestureEventList)))
        pure (lastIndex)


-- throws Exception
processMotionInput :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput object_ a1 = jmethod object_ "processMotionInput" (\() -> (processMotionInput_impl (javaCast object_ :: PopupMenuInputProcessor))) () a1

processMotionInput_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput_super object_ a1 = (processMotionInput_impl (javaCast object_ :: PopupMenuInputProcessor)) a1

processMotionInput_impl :: PopupMenuInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput_impl this motionGestureEvent = do
    javaCatchReturn $ do
        when (motionGestureEvent == javaNull) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) "Exception: Bug" this (jget ((jget (this).base.base.gameInputStrings)).pROCESS_MOTION_INPUT))
            javaReturn (())
        touchMotionGestureFactory <- (TouchMotionGestureFactory.getInstance)
        motionGestureInput <- (MotionGestureEvent.getMotionGesture motionGestureEvent)
        when (motionGestureInput == (jget (touchMotionGestureFactory).rELEASED)) $ do
            point <- (MotionGestureEvent.getCurrentPoint motionGestureEvent)
            rectPoint <- (Rectangle.getPoint ((jget (this).rectangle)))
            when (jio (RectangleCollisionUtil.isInside ((jget (this).rectangleCollisionUtil)) (jio (GPoint.getX rectPoint)) (jio (GPoint.getY rectPoint)) ((jio (Rectangle.getMaxX ((jget (this).rectangle)))) + 20) (jio (Rectangle.getMaxY ((jget (this).rectangle)))) (jio (GPoint.getX point)) (jio (GPoint.getY point)))) $ do
                when (jio (TimeDelayHelper.isTimeTNT ((jget (this).clickTimeHelper)))) $ do
                    let gameCanvas = (javaCast (jio (BasicMenuInputProcessor.getCanvas this)) :: AllBinaryGameCanvas.AllBinaryGameCanvas)
                    Control.Monad.void (AllBinaryGameCanvas.toggleMenu gameCanvas)
    pure ()


