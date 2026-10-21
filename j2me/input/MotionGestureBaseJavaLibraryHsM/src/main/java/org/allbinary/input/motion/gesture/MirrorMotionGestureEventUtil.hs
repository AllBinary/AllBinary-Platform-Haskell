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
-- package org.allbinary.input.motion.gesture
module MirrorMotionGestureEventUtil where

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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified MotionEventCircularPool -- org.allbinary.input.motion.gesture.observer.MotionEventCircularPool
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent

data MirrorMotionGestureEventUtil = MirrorMotionGestureEventUtil
    { header_ :: JavaHeader
    , motionEventCircularPool :: IORef (MotionEventCircularPool.MotionEventCircularPool)
    }

instance JavaNull MirrorMotionGestureEventUtil where
    javaNull = javaNullRecord "MirrorMotionGestureEventUtil"

instance JavaEquals MirrorMotionGestureEventUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MirrorMotionGestureEventUtil where
    (==) = jrecordEquals

instance JavaObjectClass MirrorMotionGestureEventUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MirrorMotionGestureEventUtil
newRecord_ = do
    header_ <- newJavaHeader
    motionEventCircularPool <- newIORef javaNull
    let this = MirrorMotionGestureEventUtil header_ motionEventCircularPool
    jregisterLevel header_ this
    jregisterMethod header_ "mirrorVerticle" (\() -> mirrorVerticle_impl this)
    jregisterMethod header_ "getNewX" (\() -> getNewX_impl this)
    pure this

initFields_ :: MirrorMotionGestureEventUtil -> IO ()
initFields_ this = do
    jset this.motionEventCircularPool (javaNull)
    pure ()

new_ :: IO MirrorMotionGestureEventUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MirrorMotionGestureEventUtil -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (MotionEventCircularPool.createPool (2147483647 :: Int))
        jset (this).motionEventCircularPool (assignedValue)
        pure ()


-- throws Exception
mirrorVerticle :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> Int -> IO (MotionGestureEvent.MotionGestureEvent)
mirrorVerticle object_ a1 a2 = jmethod object_ "mirrorVerticle" (\() -> (mirrorVerticle_impl (javaCast object_ :: MirrorMotionGestureEventUtil))) () a1 a2

mirrorVerticle_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> Int -> IO (MotionGestureEvent.MotionGestureEvent)
mirrorVerticle_super object_ a1 a2 = (mirrorVerticle_impl (javaCast object_ :: MirrorMotionGestureEventUtil)) a1 a2

mirrorVerticle_impl :: MirrorMotionGestureEventUtil -> MotionGestureEvent.MotionGestureEvent -> Int -> IO (MotionGestureEvent.MotionGestureEvent)
mirrorVerticle_impl this motionGestureEvent halfWidth = do
        event <- (MotionEventCircularPool.getInstance ((jget (this).motionEventCircularPool)) (jio (MotionGestureEvent.getMotionGesture motionGestureEvent)))
        previousNewX <- (MirrorMotionGestureEventUtil.getNewX this (jio (GPoint.getX ((jio (MotionGestureEvent.getPreviousPoint motionGestureEvent))))) halfWidth)
        currentNewX <- (MirrorMotionGestureEventUtil.getNewX this (jio (GPoint.getX ((jio (MotionGestureEvent.getCurrentPoint motionGestureEvent))))) halfWidth)
        pointFactory <- (PointFactory.getInstance)
        mirroredPreviousPoint <- (PointFactory.createXY pointFactory previousNewX (jio (GPoint.getY ((jio (MotionGestureEvent.getPreviousPoint motionGestureEvent))))))
        mirroredCurrentPoint <- (PointFactory.createXY pointFactory currentNewX (jio (GPoint.getY ((jio (MotionGestureEvent.getCurrentPoint motionGestureEvent))))))
        Control.Monad.void (MotionGestureEvent.setPreviousPoint event mirroredPreviousPoint)
        Control.Monad.void (MotionGestureEvent.setCurrentPoint event mirroredCurrentPoint)
        pure (event)


getNewX :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getNewX object_ a1 a2 = jmethod object_ "getNewX" (\() -> (getNewX_impl (javaCast object_ :: MirrorMotionGestureEventUtil))) () a1 a2

getNewX_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getNewX_super object_ a1 a2 = (getNewX_impl (javaCast object_ :: MirrorMotionGestureEventUtil)) a1 a2

getNewX_impl :: MirrorMotionGestureEventUtil -> Int -> Int -> IO (Int)
getNewX_impl this x halfWidth = do
        newX <- newIORef (0)
        if (x > halfWidth) then do
            jset newX ((halfWidth - ((x - halfWidth))))
        else do
            jset newX ((halfWidth + ((halfWidth - x))))
        pure ((jget newX))


getInstance :: IO (MirrorMotionGestureEventUtil)
getInstance = do
        pure (MirrorMotionGestureEventUtil.instance_)


