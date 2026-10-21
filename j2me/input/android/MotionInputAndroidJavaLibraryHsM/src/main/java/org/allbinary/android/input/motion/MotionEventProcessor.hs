{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion
module MotionEventProcessor where

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
import qualified MotionEvent -- android.view.MotionEvent

data MotionEventProcessor = MotionEventProcessor
    { header_ :: JavaHeader
    }

instance JavaNull MotionEventProcessor where
    javaNull = javaNullRecord "MotionEventProcessor"

instance JavaEquals MotionEventProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionEventProcessor where
    (==) = jrecordEquals

instance JavaObjectClass MotionEventProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionEventProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = MotionEventProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: MotionEventProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MotionEventProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionEventProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MotionEventProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: MotionEventProcessor)) a1

process_impl :: MotionEventProcessor -> MotionEvent.MotionEvent -> IO (())
process_impl this motionEvent = do
        pure ()


