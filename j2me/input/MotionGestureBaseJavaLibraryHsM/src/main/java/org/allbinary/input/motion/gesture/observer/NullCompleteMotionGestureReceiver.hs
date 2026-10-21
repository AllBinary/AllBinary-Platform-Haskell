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
module NullCompleteMotionGestureReceiver where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CompleteMotionGestureListenerInterface

-- implements CompleteMotionGestureListenerInterface
data NullCompleteMotionGestureReceiver = NullCompleteMotionGestureReceiver
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull NullCompleteMotionGestureReceiver where
    javaNull = javaNullRecord "NullCompleteMotionGestureReceiver"

instance JavaEquals NullCompleteMotionGestureReceiver where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullCompleteMotionGestureReceiver where
    (==) = jrecordEquals

instance JavaObjectClass NullCompleteMotionGestureReceiver where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullCompleteMotionGestureReceiver
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = NullCompleteMotionGestureReceiver header_ logUtil
    jregisterLevel header_ this
    CompleteMotionGestureListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onMotionGestureCompleted" (\() -> onMotionGestureCompleted_impl this)
    pure this

initFields_ :: NullCompleteMotionGestureReceiver -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO NullCompleteMotionGestureReceiver
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullCompleteMotionGestureReceiver -> IO ()
init_ this = do
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Null Gesture Reciever" this (jget (commonStrings).cONSTRUCTOR))
        pure ()


-- throws Exception
onMotionGestureCompleted :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted object_ a1 = jmethod object_ "onMotionGestureCompleted" (\() -> (onMotionGestureCompleted_impl (javaCast object_ :: NullCompleteMotionGestureReceiver))) () a1

onMotionGestureCompleted_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted_super object_ a1 = (onMotionGestureCompleted_impl (javaCast object_ :: NullCompleteMotionGestureReceiver)) a1

onMotionGestureCompleted_impl :: NullCompleteMotionGestureReceiver -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted_impl this list = do
        pure ()


