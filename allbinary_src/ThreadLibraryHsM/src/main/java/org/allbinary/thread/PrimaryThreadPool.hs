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
module PrimaryThreadPool (module PrimaryThreadPool, module ThreadPool) where

import ThreadPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, runTask, runTask_super, runTask_impl, startTask, startTask_super, startTask_impl, completedTask, completedTask_super, completedTask_impl, tHREAD_POOL)
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
import qualified Runnable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified ThreadPoolStrings -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ThreadPool

data PrimaryThreadPool = PrimaryThreadPool
    { header_ :: JavaHeader
    , base :: ThreadPool.ThreadPool
    }

instance JavaNull PrimaryThreadPool where
    javaNull = javaNullRecord "PrimaryThreadPool"

instance JavaEquals PrimaryThreadPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimaryThreadPool where
    (==) = jrecordEquals

instance JavaObjectClass PrimaryThreadPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE tHREAD_POOL #-}
tHREAD_POOL = unsafePerformIO ((ThreadPool.new_3 "Primary" 1 (ThreadPool.nORMAL_PRIORITY)))

newRecord_ :: IO PrimaryThreadPool
newRecord_ = do
    base <- ThreadPool.newRecord_
    let header_ = base.header_
    let this = PrimaryThreadPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "runTask" (\() -> runTask_impl this)
    jregisterMethod header_ "startTask" (\() -> startTask_impl this)
    jregisterMethod header_ "completedTask" (\() -> completedTask_impl this)
    pure this

initFields_ :: PrimaryThreadPool -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ThreadPool.ThreadPool)
getInstance = do
        pure (PrimaryThreadPool.tHREAD_POOL)

new_3 :: String -> Int -> Int -> IO PrimaryThreadPool
new_3 poolName numThreads priority = do
    this <- newRecord_
    init_3 this poolName numThreads priority
    pure this

init_3 :: PrimaryThreadPool -> String -> Int -> Int -> IO ()
init_3 this poolName numThreads priority = do
        ThreadPool.init_3 this.base (poolName) (numThreads) (priority)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


runTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runTask object_ a1 = jmethod object_ "runTask" (\() -> (runTask_impl (javaCast object_ :: PrimaryThreadPool))) () a1

runTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runTask_super object_ a1 = (runTask_impl (javaCast object_ :: PrimaryThreadPool)) a1

runTask_impl :: PrimaryThreadPool -> Runnable.Runnable -> IO (())
runTask_impl this task = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) task))))) (jio jcurrentTimeMillis)))))) this (jget ((jget (this).base.threadPoolStrings)).aDD_TASK))
        Control.Monad.void (ThreadPool.runTask_super this.base task)
        pure ()


startTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
startTask object_ a1 = jmethod object_ "startTask" (\() -> (startTask_impl (javaCast object_ :: PrimaryThreadPool))) () a1

startTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
startTask_super object_ a1 = (startTask_impl (javaCast object_ :: PrimaryThreadPool)) a1

startTask_impl :: PrimaryThreadPool -> Runnable.Runnable -> IO (())
startTask_impl this task = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.threadPoolStrings)).sTART_TASK)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) task))))))) this (jget ((jget (this).base.commonStrings)).rUN))
        pure ()


completedTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
completedTask object_ a1 = jmethod object_ "completedTask" (\() -> (completedTask_impl (javaCast object_ :: PrimaryThreadPool))) () a1

completedTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
completedTask_super object_ a1 = (completedTask_impl (javaCast object_ :: PrimaryThreadPool)) a1

completedTask_impl :: PrimaryThreadPool -> Runnable.Runnable -> IO (())
completedTask_impl this task = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.threadPoolStrings)).cOMPLETE_TASK)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) task))))))) this (jget ((jget (this).base.commonStrings)).rUN))
        pure ()


