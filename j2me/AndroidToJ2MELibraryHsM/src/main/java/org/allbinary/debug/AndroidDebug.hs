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
module AndroidDebug where

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
import qualified Debug -- android.os.Debug
import qualified DebugInterface

-- implements DebugInterface
data AndroidDebug = AndroidDebug
    { header_ :: JavaHeader
    , startTime :: IORef (Int64)
    , running :: IORef (Bool)
    , bufferSize :: IORef (Int)
    }

instance JavaNull AndroidDebug where
    javaNull = javaNullRecord "AndroidDebug"

instance JavaEquals AndroidDebug where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidDebug where
    (==) = jrecordEquals

instance JavaObjectClass AndroidDebug where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidDebug
newRecord_ = do
    header_ <- newJavaHeader
    startTime <- newIORef 0
    running <- newIORef False
    bufferSize <- newIORef 0
    let this = AndroidDebug header_ startTime running bufferSize
    jregisterLevel header_ this
    DebugInterface.registerInterface_ header_
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "getMaxTime" (\() -> getMaxTime_impl this)
    jregisterMethod header_ "setStartTime" (\() -> setStartTime_impl this)
    jregisterMethod header_ "getStartTime" (\() -> getStartTime_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    pure this

initFields_ :: AndroidDebug -> IO ()
initFields_ this = do
    jset this.startTime ((Prelude.maxBound :: Int64))
    jset this.running (False)
    jset this.bufferSize (((32 * 1024) * 1024))
    pure ()

new_ :: IO AndroidDebug
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidDebug -> IO ()
init_ this = do
    initFields_ this


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: AndroidDebug))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: AndroidDebug))

start_impl :: AndroidDebug -> IO (())
start_impl this = do
        Control.Monad.void (AndroidDebug.setStartTime this (jio jcurrentTimeMillis))
        Control.Monad.void (Debug.startMethodTracing "trace" (jget (this).bufferSize))
        Control.Monad.void (AndroidDebug.setRunning this True)
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: AndroidDebug))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: AndroidDebug))

stop_impl :: AndroidDebug -> IO (())
stop_impl this = do
        jset (this).startTime ((Prelude.maxBound :: Int64))
        Control.Monad.void (Debug.stopMethodTracing)
        Control.Monad.void (AndroidDebug.setRunning this False)
        pure ()


getMaxTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime object_ = jmethod object_ "getMaxTime" (\() -> (getMaxTime_impl (javaCast object_ :: AndroidDebug))) ()

getMaxTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime_super object_ = (getMaxTime_impl (javaCast object_ :: AndroidDebug))

getMaxTime_impl :: AndroidDebug -> IO (Int64)
getMaxTime_impl this = do
        pure (120000)


setStartTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setStartTime object_ a1 = jmethod object_ "setStartTime" (\() -> (setStartTime_impl (javaCast object_ :: AndroidDebug))) () a1

setStartTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setStartTime_super object_ a1 = (setStartTime_impl (javaCast object_ :: AndroidDebug)) a1

setStartTime_impl :: AndroidDebug -> Int64 -> IO (())
setStartTime_impl this startTime = do
        jset (this).startTime (startTime)
        pure ()


getStartTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime object_ = jmethod object_ "getStartTime" (\() -> (getStartTime_impl (javaCast object_ :: AndroidDebug))) ()

getStartTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime_super object_ = (getStartTime_impl (javaCast object_ :: AndroidDebug))

getStartTime_impl :: AndroidDebug -> IO (Int64)
getStartTime_impl this = do
        pure ((jget (this).startTime))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: AndroidDebug))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: AndroidDebug)) a1

setRunning_impl :: AndroidDebug -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: AndroidDebug))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: AndroidDebug))

isRunning_impl :: AndroidDebug -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


