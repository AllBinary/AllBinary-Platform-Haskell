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
module MotionEventCircularPool where

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
import qualified MotionEventFactory -- same package or java.lang
import qualified MotionGestureEvent -- same package or java.lang
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified AllBinaryEventCircularPool -- org.allbinary.logic.util.event.AllBinaryEventCircularPool

data MotionEventCircularPool = MotionEventCircularPool
    { header_ :: JavaHeader
    , mIN :: IORef (Int)
    , eventPool :: IORef (AllBinaryEventCircularPool.AllBinaryEventCircularPool)
    }

instance JavaNull MotionEventCircularPool where
    javaNull = javaNullRecord "MotionEventCircularPool"

instance JavaEquals MotionEventCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionEventCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass MotionEventCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionEventCircularPool
newRecord_ = do
    header_ <- newJavaHeader
    mIN <- newIORef 0
    eventPool <- newIORef javaNull
    let this = MotionEventCircularPool header_ mIN eventPool
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: MotionEventCircularPool -> IO ()
initFields_ this = do
    jset this.mIN =<< (MotionGestureInput.getId ((jget ((jio (TouchMotionGestureFactory.getInstance))).lAST_MOTION)))
    jset this.eventPool =<< (AllBinaryEventCircularPool.new_1 ((((jget ((jio (InputFactory.getInstance))).mAX) - 1)) - (jget (this).mIN)))
    pure ()


createPool :: Int -> IO (MotionEventCircularPool)
createPool id = do
        (new_1 id)

new_1 :: Int -> IO MotionEventCircularPool
new_1 id = do
    this <- newRecord_
    init_1 this id
    pure this

init_1 :: MotionEventCircularPool -> Int -> IO ()
init_1 this id = do
        initFields_ this
        Control.Monad.void (AllBinaryEventCircularPool.initAllBinaryEventCircularPool ((jget (this).eventPool)) (javaCast (jio (MotionEventFactory.new_2 (jget (this).eventPool) id))))
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> MotionGestureInput.MotionGestureInput -> IO (MotionGestureEvent.MotionGestureEvent)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: MotionEventCircularPool))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> MotionGestureInput.MotionGestureInput -> IO (MotionGestureEvent.MotionGestureEvent)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: MotionEventCircularPool)) a1

getInstance_impl :: MotionEventCircularPool -> MotionGestureInput.MotionGestureInput -> IO (MotionGestureEvent.MotionGestureEvent)
getInstance_impl this motionGestureInput = do
        pure ((javaCast (jio (AllBinaryEventCircularPool.getInstance ((jget (this).eventPool)) ((jio (MotionGestureInput.getId motionGestureInput)) - (jget (this).mIN)))) :: MotionGestureEvent.MotionGestureEvent))


