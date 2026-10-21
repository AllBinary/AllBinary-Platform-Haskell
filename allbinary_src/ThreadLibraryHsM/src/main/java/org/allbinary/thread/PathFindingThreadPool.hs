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
-- package org.allbinary.thread
module PathFindingThreadPool (module PathFindingThreadPool, module ThreadPool) where

import ThreadPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, runTaskWithPriority, runTaskWithPriority_super, runTaskWithPriority_impl, runTask, runTask_super, runTask_impl, startTask, startTask_super, startTask_impl, completedTask, completedTask_super, completedTask_impl, instance_)
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
import qualified PriorityRunnable -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified ThreadPool

data PathFindingThreadPool = PathFindingThreadPool
    { header_ :: JavaHeader
    , base :: ThreadPool.ThreadPool
    }

instance JavaNull PathFindingThreadPool where
    javaNull = javaNullRecord "PathFindingThreadPool"

instance JavaEquals PathFindingThreadPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingThreadPool where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingThreadPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: ThreadPool.ThreadPool) (new_3 "PathFinding" 1 1)))

newRecord_ :: IO PathFindingThreadPool
newRecord_ = do
    base <- ThreadPool.newRecord_
    let header_ = base.header_
    let this = PathFindingThreadPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "runTaskWithPriority" (\() -> runTaskWithPriority_impl this)
    jregisterMethod header_ "runTask" (\() -> runTask_impl this)
    jregisterMethod header_ "startTask" (\() -> startTask_impl this)
    jregisterMethod header_ "completedTask" (\() -> completedTask_impl this)
    pure this

initFields_ :: PathFindingThreadPool -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ThreadPool.ThreadPool)
getInstance = do
        pure (PathFindingThreadPool.instance_)

new_3 :: String -> Int -> Int -> IO PathFindingThreadPool
new_3 poolName numThreads priority = do
    this <- newRecord_
    init_3 this poolName numThreads priority
    pure this

init_3 :: PathFindingThreadPool -> String -> Int -> Int -> IO ()
init_3 this poolName numThreads priority = do
        ThreadPool.init_3 this.base (poolName) (numThreads) (ThreadPool.nORMAL_PRIORITY)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


runTaskWithPriority :: (JavaObjectClass this_) => this_ -> PriorityRunnable.PriorityRunnable -> IO (())
runTaskWithPriority object_ a1 = jmethod object_ "runTaskWithPriority" (\() -> (runTaskWithPriority_impl (javaCast object_ :: PathFindingThreadPool))) () a1

runTaskWithPriority_super :: (JavaObjectClass this_) => this_ -> PriorityRunnable.PriorityRunnable -> IO (())
runTaskWithPriority_super object_ a1 = (runTaskWithPriority_impl (javaCast object_ :: PathFindingThreadPool)) a1

runTaskWithPriority_impl :: PathFindingThreadPool -> PriorityRunnable.PriorityRunnable -> IO (())
runTaskWithPriority_impl this task = do
        Control.Monad.void (ThreadPool.runTaskWithPriority_super this.base task)
        pure ()


runTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runTask object_ a1 = jmethod object_ "runTask" (\() -> (runTask_impl (javaCast object_ :: PathFindingThreadPool))) () a1

runTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runTask_super object_ a1 = (runTask_impl (javaCast object_ :: PathFindingThreadPool)) a1

runTask_impl :: PathFindingThreadPool -> Runnable.Runnable -> IO (())
runTask_impl this task = do
        Control.Monad.void (ThreadPool.runTask_super this.base task)
        pure ()


startTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
startTask object_ a1 = jmethod object_ "startTask" (\() -> (startTask_impl (javaCast object_ :: PathFindingThreadPool))) () a1

startTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
startTask_super object_ a1 = (startTask_impl (javaCast object_ :: PathFindingThreadPool)) a1

startTask_impl :: PathFindingThreadPool -> Runnable.Runnable -> IO (())
startTask_impl this task = do
        pure ()


completedTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
completedTask object_ a1 = jmethod object_ "completedTask" (\() -> (completedTask_impl (javaCast object_ :: PathFindingThreadPool))) () a1

completedTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
completedTask_super object_ a1 = (completedTask_impl (javaCast object_ :: PathFindingThreadPool)) a1

completedTask_impl :: PathFindingThreadPool -> Runnable.Runnable -> IO (())
completedTask_impl this task = do
        pure ()


