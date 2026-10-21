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
-- package org.allbinary.debug
module DebugInterface where

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

-- Java interface: the classes that implement it have these functions
data DebugInterface = DebugInterface
    { header_ :: JavaHeader
    }

instance JavaNull DebugInterface where
    javaNull = javaNullRecord "DebugInterface"

instance JavaEquals DebugInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DebugInterface where
    (==) = jrecordEquals

instance JavaObjectClass DebugInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DebugInterface
fromHeader_ header = DebugInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DebugInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: DebugInterface))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: DebugInterface))

start_impl :: DebugInterface -> IO (())
start_impl this = javaAbstractMethod "start"


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: DebugInterface))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: DebugInterface))

stop_impl :: DebugInterface -> IO (())
stop_impl this = javaAbstractMethod "stop"


getStartTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime object_ = jmethod object_ "getStartTime" (\() -> (getStartTime_impl (javaCast object_ :: DebugInterface))) ()

getStartTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime_super object_ = (getStartTime_impl (javaCast object_ :: DebugInterface))

getStartTime_impl :: DebugInterface -> IO (Int64)
getStartTime_impl this = javaAbstractMethod "getStartTime"


getMaxTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime object_ = jmethod object_ "getMaxTime" (\() -> (getMaxTime_impl (javaCast object_ :: DebugInterface))) ()

getMaxTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime_super object_ = (getMaxTime_impl (javaCast object_ :: DebugInterface))

getMaxTime_impl :: DebugInterface -> IO (Int64)
getMaxTime_impl this = javaAbstractMethod "getMaxTime"


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: DebugInterface))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: DebugInterface))

isRunning_impl :: DebugInterface -> IO (Bool)
isRunning_impl this = javaAbstractMethod "isRunning"


