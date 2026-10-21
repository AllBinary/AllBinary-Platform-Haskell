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
module CompleteMotionGestureListenerInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data CompleteMotionGestureListenerInterface = CompleteMotionGestureListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull CompleteMotionGestureListenerInterface where
    javaNull = javaNullRecord "CompleteMotionGestureListenerInterface"

instance JavaEquals CompleteMotionGestureListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompleteMotionGestureListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass CompleteMotionGestureListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CompleteMotionGestureListenerInterface
fromHeader_ header = CompleteMotionGestureListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CompleteMotionGestureListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
onMotionGestureCompleted :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted object_ a1 = jmethod object_ "onMotionGestureCompleted" (\() -> (onMotionGestureCompleted_impl (javaCast object_ :: CompleteMotionGestureListenerInterface))) () a1

onMotionGestureCompleted_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted_super object_ a1 = (onMotionGestureCompleted_impl (javaCast object_ :: CompleteMotionGestureListenerInterface)) a1

onMotionGestureCompleted_impl :: CompleteMotionGestureListenerInterface -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted_impl this list = javaAbstractMethod "onMotionGestureCompleted"


