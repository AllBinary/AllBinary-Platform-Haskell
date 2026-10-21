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
-- package org.allbinary.input.motion
module AllMotionRecognizer (module AllMotionRecognizer, module MotionRecognizer) where

import MotionRecognizer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processStartMotionEvent, processStartMotionEvent_super, processStartMotionEvent_impl, processEndMotionEvent, processEndMotionEvent_super, processEndMotionEvent_impl, processDraggedMotionEvent, processDraggedMotionEvent_super, processDraggedMotionEvent_impl, processMovedMotionEvent, processMovedMotionEvent_super, processMovedMotionEvent_impl, processScrolledMotionEvent, processScrolledMotionEvent_super, processScrolledMotionEvent_impl, getMotionGestureRecognizer, getMotionGestureRecognizer_super, getMotionGestureRecognizer_impl, logUtil, motionGestureRecognizer, touchButtonProcessing, touchButtonRecognizer, id, index, pointCircularPool, lastX, lastY)
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
import qualified CustomGPoint -- org.allbinary.graphics.CustomGPoint
import qualified GPointCircularPool -- org.allbinary.graphics.GPointCircularPool
import qualified TouchButtonRecognizer -- org.allbinary.input.motion.button.TouchButtonRecognizer
import qualified MotionGestureRecognizer -- org.allbinary.input.motion.gesture.MotionGestureRecognizer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified MotionRecognizer

data AllMotionRecognizer = AllMotionRecognizer
    { header_ :: JavaHeader
    , base :: MotionRecognizer.MotionRecognizer
    , logUtil :: IORef (LogUtil.LogUtil)
    , motionGestureRecognizer :: IORef (MotionGestureRecognizer.MotionGestureRecognizer)
    , touchButtonProcessing :: IORef (Bool)
    , touchButtonRecognizer :: IORef (TouchButtonRecognizer.TouchButtonRecognizer)
    , id :: IORef (Int)
    , lastX :: IORef (Int)
    , lastY :: IORef (Int)
    }

instance JavaNull AllMotionRecognizer where
    javaNull = javaNullRecord "AllMotionRecognizer"

instance JavaEquals AllMotionRecognizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllMotionRecognizer where
    (==) = jrecordEquals

instance JavaObjectClass AllMotionRecognizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE index #-}
index = unsafePerformIO (newIORef (0))

{-# NOINLINE pointCircularPool #-}
pointCircularPool = unsafePerformIO ((GPointCircularPool.new_1 40))

newRecord_ :: IO AllMotionRecognizer
newRecord_ = do
    base <- MotionRecognizer.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    motionGestureRecognizer <- newIORef javaNull
    touchButtonProcessing <- newIORef False
    touchButtonRecognizer <- newIORef javaNull
    id <- newIORef 0
    lastX <- newIORef 0
    lastY <- newIORef 0
    let this = AllMotionRecognizer header_ base logUtil motionGestureRecognizer touchButtonProcessing touchButtonRecognizer id lastX lastY
    jregisterLevel header_ this
    jregisterMethod header_ "processStartMotionEvent" (\() -> processStartMotionEvent_impl this)
    jregisterMethod header_ "processEndMotionEvent" (\() -> processEndMotionEvent_impl this)
    jregisterMethod header_ "processDraggedMotionEvent" (\() -> processDraggedMotionEvent_impl this)
    jregisterMethod header_ "processMovedMotionEvent" (\() -> processMovedMotionEvent_impl this)
    jregisterMethod header_ "processScrolledMotionEvent" (\() -> processScrolledMotionEvent_impl this)
    jregisterMethod header_ "getMotionGestureRecognizer" (\() -> getMotionGestureRecognizer_impl this)
    pure this

initFields_ :: AllMotionRecognizer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.motionGestureRecognizer (javaNull)
    jset this.touchButtonProcessing (False)
    jset this.touchButtonRecognizer (javaNull)
    jset this.id (0)
    jset this.lastX (0)
    jset this.lastY (0)
    pure ()

new_ :: IO AllMotionRecognizer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllMotionRecognizer -> IO ()
init_ this = do
        MotionRecognizer.init_ this.base
        initFields_ this
        jset (this).id ((jpostIncrement AllMotionRecognizer.index (+ 1)))
        assignedValue <- (MotionGestureRecognizer.new_1 (jget (this).id))
        jset (this).motionGestureRecognizer (assignedValue)
        assignedValue <- (TouchButtonRecognizer.new_)
        jset (this).touchButtonRecognizer (assignedValue)
        pure ()


-- throws Exception
processStartMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processStartMotionEvent" (\() -> (processStartMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processStartMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_super object_ a1 a2 a3 a4 = (processStartMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processStartMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_impl this x y deviceId modifiers = do
        when (jio (TouchButtonRecognizer.pressTouchButtonInput ((jget (this).touchButtonRecognizer)) x y deviceId)) $ do
            jset (this).touchButtonProcessing (True)
        when (Prelude.not (jget (this).touchButtonProcessing)) $ do
            let point = (javaCast (jio (getNextInstance AllMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
            Control.Monad.void (CustomGPoint.setX point x)
            Control.Monad.void (CustomGPoint.setY point y)
            Control.Monad.void (MotionGestureRecognizer.processPressedMotionEvent ((jget (this).motionGestureRecognizer)) point deviceId modifiers)
        pure ()


-- throws Exception
processEndMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processEndMotionEvent" (\() -> (processEndMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processEndMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_super object_ a1 a2 a3 a4 = (processEndMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processEndMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_impl this x y deviceId modifiers = do
        when (jio (TouchButtonRecognizer.releaseTouchButtonInput ((jget (this).touchButtonRecognizer)) x y deviceId)) $ do
            pure ()
        when (Prelude.not (jget (this).touchButtonProcessing)) $ do
            let point = (javaCast (jio (getNextInstance AllMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
            Control.Monad.void (CustomGPoint.setX point x)
            Control.Monad.void (CustomGPoint.setY point y)
            Control.Monad.void (MotionGestureRecognizer.processReleasedMotionEvent ((jget (this).motionGestureRecognizer)) point deviceId modifiers)
        when (jget (this).touchButtonProcessing) $ do
            jset (this).touchButtonProcessing (False)
        pure ()


-- throws Exception
processDraggedMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processDraggedMotionEvent" (\() -> (processDraggedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processDraggedMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_super object_ a1 a2 a3 a4 = (processDraggedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processDraggedMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_impl this x y deviceId modifiers = do
        when (jget (this).touchButtonProcessing) $ do
            Control.Monad.void (TouchButtonRecognizer.pressTouchButtonInput ((jget (this).touchButtonRecognizer)) x y deviceId)
        when (Prelude.not (jget (this).touchButtonProcessing)) $ do
            let point = (javaCast (jio (getNextInstance AllMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
            Control.Monad.void (CustomGPoint.setX point x)
            Control.Monad.void (CustomGPoint.setY point y)
            Control.Monad.void (MotionGestureRecognizer.processDraggedMotionEvent ((jget (this).motionGestureRecognizer)) point deviceId modifiers)
        pure ()


-- throws Exception
processMovedMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processMovedMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processMovedMotionEvent" (\() -> (processMovedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processMovedMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processMovedMotionEvent_super object_ a1 a2 a3 a4 = (processMovedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processMovedMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processMovedMotionEvent_impl this x y deviceId modifiers = do
        when ((x /= (jget (this).lastX)) || (y /= (jget (this).lastY))) $ do
            jset (this).lastX (x)
            jset (this).lastY (y)
            let point = (javaCast (jio (getNextInstance AllMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
            Control.Monad.void (CustomGPoint.setX point x)
            Control.Monad.void (CustomGPoint.setY point y)
            Control.Monad.void (MotionGestureRecognizer.processMovedMotionEvent ((jget (this).motionGestureRecognizer)) point deviceId modifiers)
        pure ()


-- throws Exception
processScrolledMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processScrolledMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processScrolledMotionEvent" (\() -> (processScrolledMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processScrolledMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processScrolledMotionEvent_super object_ a1 a2 a3 a4 = (processScrolledMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processScrolledMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processScrolledMotionEvent_impl this x y deviceId modifiers = do
        let point = (javaCast (jio (getNextInstance AllMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
        Control.Monad.void (CustomGPoint.setX point x)
        Control.Monad.void (CustomGPoint.setY point y)
        Control.Monad.void (MotionGestureRecognizer.processScrolledMotionEvent ((jget (this).motionGestureRecognizer)) point deviceId modifiers)
        pure ()


getMotionGestureRecognizer :: (JavaObjectClass this_) => this_ -> IO (MotionGestureRecognizer.MotionGestureRecognizer)
getMotionGestureRecognizer object_ = jmethod object_ "getMotionGestureRecognizer" (\() -> (getMotionGestureRecognizer_impl (javaCast object_ :: AllMotionRecognizer))) ()

getMotionGestureRecognizer_super :: (JavaObjectClass this_) => this_ -> IO (MotionGestureRecognizer.MotionGestureRecognizer)
getMotionGestureRecognizer_super object_ = (getMotionGestureRecognizer_impl (javaCast object_ :: AllMotionRecognizer))

getMotionGestureRecognizer_impl :: AllMotionRecognizer -> IO (MotionGestureRecognizer.MotionGestureRecognizer)
getMotionGestureRecognizer_impl this = do
        pure ((jget (this).motionGestureRecognizer))


