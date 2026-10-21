{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.thread
module ABRunnable where

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
import qualified Thread -- same package or java.lang
import qualified RunnableInterface

-- implements RunnableInterface
data ABRunnable = ABRunnable
    { header_ :: JavaHeader
    , running :: IORef (Bool)
    }

instance JavaNull ABRunnable where
    javaNull = javaNullRecord "ABRunnable"

instance JavaEquals ABRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABRunnable where
    (==) = jrecordEquals

instance JavaObjectClass ABRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABRunnable
newRecord_ = do
    header_ <- newJavaHeader
    running <- newIORef False
    let this = ABRunnable header_ running
    jregisterLevel header_ this
    RunnableInterface.registerInterface_ header_
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: ABRunnable -> IO ()
initFields_ this = do
    jset this.running (False)
    pure ()

new_ :: IO ABRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABRunnable -> IO ()
init_ this = do
    initFields_ this


setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: ABRunnable))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: ABRunnable)) a1

setThread_impl :: ABRunnable -> Thread.Thread -> IO (())
setThread_impl this thread = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: ABRunnable))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: ABRunnable))

isRunning_impl :: ABRunnable -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: ABRunnable))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: ABRunnable)) a1

setRunning_impl :: ABRunnable -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ABRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ABRunnable))

run_impl :: ABRunnable -> IO (())
run_impl this = do
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: ABRunnable))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: ABRunnable))

getType_impl :: ABRunnable -> IO (Int)
getType_impl this = do
        pure ((Prelude.negate 1))


