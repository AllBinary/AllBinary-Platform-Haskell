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
module GestureOnlyMotionRecognizer (module GestureOnlyMotionRecognizer, module MotionRecognizer) where

import MotionRecognizer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processStartMotionEvent, processStartMotionEvent_super, processStartMotionEvent_impl, processEndMotionEvent, processEndMotionEvent_super, processEndMotionEvent_impl, processDraggedMotionEvent, processDraggedMotionEvent_super, processDraggedMotionEvent_impl, motionGestureRecognizer, id, index, pointCircularPool)
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
import qualified MotionGestureRecognizer -- org.allbinary.input.motion.gesture.MotionGestureRecognizer
import qualified MotionRecognizer

data GestureOnlyMotionRecognizer = GestureOnlyMotionRecognizer
    { header_ :: JavaHeader
    , base :: MotionRecognizer.MotionRecognizer
    , motionGestureRecognizer :: IORef (MotionGestureRecognizer.MotionGestureRecognizer)
    , id :: IORef (Int)
    }

instance JavaNull GestureOnlyMotionRecognizer where
    javaNull = javaNullRecord "GestureOnlyMotionRecognizer"

instance JavaEquals GestureOnlyMotionRecognizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GestureOnlyMotionRecognizer where
    (==) = jrecordEquals

instance JavaObjectClass GestureOnlyMotionRecognizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE index #-}
index = unsafePerformIO (newIORef (0))

{-# NOINLINE pointCircularPool #-}
pointCircularPool = unsafePerformIO ((GPointCircularPool.new_1 40))

newRecord_ :: IO GestureOnlyMotionRecognizer
newRecord_ = do
    base <- MotionRecognizer.newRecord_
    let header_ = base.header_
    motionGestureRecognizer <- newIORef javaNull
    id <- newIORef 0
    let this = GestureOnlyMotionRecognizer header_ base motionGestureRecognizer id
    jregisterLevel header_ this
    jregisterMethod header_ "processStartMotionEvent" (\() -> processStartMotionEvent_impl this)
    jregisterMethod header_ "processEndMotionEvent" (\() -> processEndMotionEvent_impl this)
    jregisterMethod header_ "processDraggedMotionEvent" (\() -> processDraggedMotionEvent_impl this)
    pure this

initFields_ :: GestureOnlyMotionRecognizer -> IO ()
initFields_ this = do
    jset this.motionGestureRecognizer (javaNull)
    jset this.id (0)
    pure ()

new_ :: IO GestureOnlyMotionRecognizer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GestureOnlyMotionRecognizer -> IO ()
init_ this = do
        MotionRecognizer.init_ this.base
        initFields_ this
        jset (this).id ((jpostIncrement GestureOnlyMotionRecognizer.index (+ 1)))
        assignedValue <- (MotionGestureRecognizer.new_1 (jget (this).id))
        jset (this).motionGestureRecognizer (assignedValue)
        pure ()


-- throws Exception
processStartMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processStartMotionEvent" (\() -> (processStartMotionEvent_impl (javaCast object_ :: GestureOnlyMotionRecognizer))) () a1 a2 a3 a4

processStartMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_super object_ a1 a2 a3 a4 = (processStartMotionEvent_impl (javaCast object_ :: GestureOnlyMotionRecognizer)) a1 a2 a3 a4

processStartMotionEvent_impl :: GestureOnlyMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_impl this x y deviceId modifiers = do
        let point = (javaCast (jio (getNextInstance GestureOnlyMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
        Control.Monad.void (CustomGPoint.setX point x)
        Control.Monad.void (CustomGPoint.setY point y)
        Control.Monad.void (MotionGestureRecognizer.processPressedMotionEvent ((jget (this).motionGestureRecognizer)) (javaCast point) deviceId modifiers)
        pure ()


-- throws Exception
processEndMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processEndMotionEvent" (\() -> (processEndMotionEvent_impl (javaCast object_ :: GestureOnlyMotionRecognizer))) () a1 a2 a3 a4

processEndMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_super object_ a1 a2 a3 a4 = (processEndMotionEvent_impl (javaCast object_ :: GestureOnlyMotionRecognizer)) a1 a2 a3 a4

processEndMotionEvent_impl :: GestureOnlyMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_impl this x y deviceId modifiers = do
        let point = (javaCast (jio (getNextInstance GestureOnlyMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
        Control.Monad.void (CustomGPoint.setX point x)
        Control.Monad.void (CustomGPoint.setY point y)
        Control.Monad.void (MotionGestureRecognizer.processReleasedMotionEvent ((jget (this).motionGestureRecognizer)) (javaCast point) deviceId modifiers)
        pure ()


-- throws Exception
processDraggedMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processDraggedMotionEvent" (\() -> (processDraggedMotionEvent_impl (javaCast object_ :: GestureOnlyMotionRecognizer))) () a1 a2 a3 a4

processDraggedMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_super object_ a1 a2 a3 a4 = (processDraggedMotionEvent_impl (javaCast object_ :: GestureOnlyMotionRecognizer)) a1 a2 a3 a4

processDraggedMotionEvent_impl :: GestureOnlyMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_impl this x y deviceId modifiers = do
        let point = (javaCast (jio (getNextInstance GestureOnlyMotionRecognizer.pointCircularPool)) :: CustomGPoint.CustomGPoint)
        Control.Monad.void (CustomGPoint.setX point x)
        Control.Monad.void (CustomGPoint.setY point y)
        Control.Monad.void (MotionGestureRecognizer.processDraggedMotionEvent ((jget (this).motionGestureRecognizer)) (javaCast point) deviceId modifiers)
        pure ()


