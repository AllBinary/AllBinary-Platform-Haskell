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
module ThreadPool where

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
import qualified NullRunnable -- same package or java.lang
import qualified ThreadPoolStrings -- same package or java.lang
import qualified ThreadObjectUtil -- same package or java.lang
import qualified PooledThread -- same package or java.lang
import qualified PriorityRunnable -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data ThreadPool = ThreadPool
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , nULL_RUNNABLE :: IORef (NullRunnable.NullRunnable)
    , threadPoolStrings :: IORef (ThreadPoolStrings.ThreadPoolStrings)
    , threadObjectUtil :: IORef (ThreadObjectUtil.ThreadObjectUtil)
    , poolName :: IORef (String)
    , priority :: IORef (Int)
    , isAlive :: IORef (Bool)
    , taskQueue :: IORef (BasicArrayList.BasicArrayList)
    , threadID :: IORef (Int)
    , numThreads :: IORef (Int)
    , runningTask :: IORef (Bool)
    }

instance JavaNull ThreadPool where
    javaNull = javaNullRecord "ThreadPool"

instance JavaEquals ThreadPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreadPool where
    (==) = jrecordEquals

instance JavaObjectClass ThreadPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

rOOT_NAME = "-PooledThread-"

nORMAL_PRIORITY = Thread.nORM_PRIORITY

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreadPool
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    nULL_RUNNABLE <- newIORef javaNull
    threadPoolStrings <- newIORef javaNull
    threadObjectUtil <- newIORef javaNull
    poolName <- newIORef ""
    priority <- newIORef 0
    isAlive <- newIORef False
    taskQueue <- newIORef javaNull
    threadID <- newIORef 0
    numThreads <- newIORef 0
    runningTask <- newIORef False
    let this = ThreadPool header_ logUtil commonStrings nULL_RUNNABLE threadPoolStrings threadObjectUtil poolName priority isAlive taskQueue threadID numThreads runningTask
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "runAPriorityTask" (\() -> runAPriorityTask_impl this)
    jregisterMethod header_ "runTaskWithPriority" (\() -> runTaskWithPriority_impl this)
    jregisterMethod header_ "runTask" (\() -> runTask_impl this)
    jregisterMethod header_ "getTask" (\() -> getTask_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "join" (\() -> join_impl this)
    jregisterMethod header_ "isBusy" (\() -> isBusy_impl this)
    jregisterMethod header_ "threadStarted" (\() -> threadStarted_impl this)
    jregisterMethod header_ "threadStopped" (\() -> threadStopped_impl this)
    jregisterMethod header_ "startTask" (\() -> startTask_impl this)
    jregisterMethod header_ "completedTask" (\() -> completedTask_impl this)
    jregisterMethod header_ "createName" (\() -> createName_impl this)
    pure this

initFields_ :: ThreadPool -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.nULL_RUNNABLE =<< (NullRunnable.getInstance)
    jset this.threadPoolStrings =<< (ThreadPoolStrings.getInstance)
    jset this.threadObjectUtil =<< (ThreadObjectUtil.getInstance)
    jset this.poolName (javaNull)
    jset this.priority (0)
    jset this.isAlive (False)
    jset this.taskQueue =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.threadID (0)
    jset this.numThreads (0)
    jset this.runningTask (False)
    pure ()

new_3 :: String -> Int -> Int -> IO ThreadPool
new_3 poolName numThreads priority = do
    this <- newRecord_
    init_3 this poolName numThreads priority
    pure this

init_3 :: ThreadPool -> String -> Int -> Int -> IO ()
init_3 this poolName numThreads priority = do
        initFields_ this
        jset (this).poolName (poolName)
        jset (this).priority (priority)
        jset (this).numThreads (numThreads)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ThreadPool))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ThreadPool))

init_impl :: ThreadPool -> IO (())
init_impl this = do
        when (Prelude.not (jget (this).isAlive)) $ do
            jset (this).isAlive (True)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).taskQueue (assignedValue)
            pooledThread <- newIORef (javaNull)
            forM_ [0 .. (jget (this).numThreads) - 1] $ \i -> javaIteration (pure ()) $ do
                assignedValue <- (PooledThread.new_1 this)
                jset pooledThread (assignedValue)
                Control.Monad.void (PooledThread.setPriority ((jget pooledThread)) (jget (this).priority))
                Control.Monad.void (PooledThread.start ((jget pooledThread)))
        pure ()


-- throws Exception
runAPriorityTask :: (JavaObjectClass this_) => this_ -> IO (())
runAPriorityTask object_ = jmethod object_ "runAPriorityTask" (\() -> (runAPriorityTask_impl (javaCast object_ :: ThreadPool))) ()

runAPriorityTask_super :: (JavaObjectClass this_) => this_ -> IO (())
runAPriorityTask_super object_ = (runAPriorityTask_impl (javaCast object_ :: ThreadPool))

runAPriorityTask_impl :: ThreadPool -> IO (())
runAPriorityTask_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


runTaskWithPriority :: (JavaObjectClass this_) => this_ -> PriorityRunnable.PriorityRunnable -> IO (())
runTaskWithPriority object_ a1 = jmethod object_ "runTaskWithPriority" (\() -> (runTaskWithPriority_impl (javaCast object_ :: ThreadPool))) () a1

runTaskWithPriority_super :: (JavaObjectClass this_) => this_ -> PriorityRunnable.PriorityRunnable -> IO (())
runTaskWithPriority_super object_ a1 = (runTaskWithPriority_impl (javaCast object_ :: ThreadPool)) a1

runTaskWithPriority_impl :: ThreadPool -> PriorityRunnable.PriorityRunnable -> IO (())
runTaskWithPriority_impl this task = do
        do -- synchronized
            when (Prelude.not (jget (this).isAlive)) $ do
                Control.Monad.void (ThreadPool.init this)
            when (task /= javaNull) $ do
                size <- (BasicArrayList.size ((jget (this).taskQueue)))
                runnable <- newIORef (javaNull)
                lowerPriorityRunnable <- newIORef ((jget ((jget (this).threadObjectUtil)).nULL_PRIORITY_RUNNABLE))
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    jset runnable ((javaCast (jio (BasicArrayList.get ((jget (this).taskQueue)) index)) :: PriorityRunnable.PriorityRunnable))
                    when ((jio (PriorityRunnable.getPriority ((jget runnable)))) > (jio (PriorityRunnable.getPriority task))) $ do
                        jset lowerPriorityRunnable ((jget runnable))
                        throwIO JavaBreak
                if ((jget lowerPriorityRunnable) == (jget ((jget (this).threadObjectUtil)).nULL_PRIORITY_RUNNABLE)) then do
                    Control.Monad.void (BasicArrayList.add ((jget (this).taskQueue)) task)
                else do
                    index <- newIORef =<< (BasicArrayList.indexOf ((jget (this).taskQueue)) (jget lowerPriorityRunnable))
                    Control.Monad.void (BasicArrayList.addAt ((jget (this).taskQueue)) (jget index) task)
                Control.Monad.void (jnotify this)
        pure ()


runTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runTask object_ a1 = jmethod object_ "runTask" (\() -> (runTask_impl (javaCast object_ :: ThreadPool))) () a1

runTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runTask_super object_ a1 = (runTask_impl (javaCast object_ :: ThreadPool)) a1

runTask_impl :: ThreadPool -> Runnable.Runnable -> IO (())
runTask_impl this task = do
        do -- synchronized
            when (Prelude.not (jget (this).isAlive)) $ do
                Control.Monad.void (ThreadPool.init this)
            when (task /= javaNull) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).taskQueue)) task)
                Control.Monad.void (jnotify this)
        pure ()


-- throws InterruptedException
getTask :: (JavaObjectClass this_) => this_ -> IO (Runnable.Runnable)
getTask object_ = jmethod object_ "getTask" (\() -> (getTask_impl (javaCast object_ :: ThreadPool))) ()

getTask_super :: (JavaObjectClass this_) => this_ -> IO (Runnable.Runnable)
getTask_super object_ = (getTask_impl (javaCast object_ :: ThreadPool))

getTask_impl :: ThreadPool -> IO (Runnable.Runnable)
getTask_impl this = do
    javaCatchReturn $ do
        do -- synchronized
            fix $ \loop -> when ((jio (BasicArrayList.size ((jget (this).taskQueue)))) == 0) $ javaIteration (loop) $ do
                when (Prelude.not (jget (this).isAlive)) $ do
                    javaReturn ((javaCast (jget (this).nULL_RUNNABLE) :: Runnable.Runnable))
                Control.Monad.void (jwait this 0)
            let runnable = (javaCast (jio (BasicArrayList.removeAt ((jget (this).taskQueue)) 0)) :: Runnable.Runnable)
            javaReturn (runnable)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: ThreadPool))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: ThreadPool))

clear_impl :: ThreadPool -> IO (())
clear_impl this = do
        do -- synchronized
            when (jget (this).isAlive) $ do
                Control.Monad.void (BasicArrayList.clear ((jget (this).taskQueue)))
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: ThreadPool))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: ThreadPool))

close_impl :: ThreadPool -> IO (())
close_impl this = do
        do -- synchronized
            when (jget (this).isAlive) $ do
                jset (this).isAlive (False)
                Control.Monad.void (BasicArrayList.clear ((jget (this).taskQueue)))
        pure ()


join :: (JavaObjectClass this_) => this_ -> IO (())
join object_ = jmethod object_ "join" (\() -> (join_impl (javaCast object_ :: ThreadPool))) ()

join_super :: (JavaObjectClass this_) => this_ -> IO (())
join_super object_ = (join_impl (javaCast object_ :: ThreadPool))

join_impl :: ThreadPool -> IO (())
join_impl this = do
        do -- synchronized
            jset (this).isAlive (False)
            Control.Monad.void (BasicArrayList.clear ((jget (this).taskQueue)))
            Control.Monad.void (jnotifyAll this)
        pure ()


isBusy :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBusy object_ = jmethod object_ "isBusy" (\() -> (isBusy_impl (javaCast object_ :: ThreadPool))) ()

isBusy_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBusy_super object_ = (isBusy_impl (javaCast object_ :: ThreadPool))

isBusy_impl :: ThreadPool -> IO (Bool)
isBusy_impl this = do
    javaCatchReturn $ do
        when (Prelude.not (jget (this).isAlive)) $ do
            javaReturn (False)
        when ((jio (BasicArrayList.size ((jget (this).taskQueue)))) > 0) $ do
            javaReturn (True)
        when (jget (this).runningTask) $ do
            javaReturn (True)
        pure (False)


threadStarted :: (JavaObjectClass this_) => this_ -> IO (())
threadStarted object_ = jmethod object_ "threadStarted" (\() -> (threadStarted_impl (javaCast object_ :: ThreadPool))) ()

threadStarted_super :: (JavaObjectClass this_) => this_ -> IO (())
threadStarted_super object_ = (threadStarted_impl (javaCast object_ :: ThreadPool))

threadStarted_impl :: ThreadPool -> IO (())
threadStarted_impl this = do
        pure ()


threadStopped :: (JavaObjectClass this_) => this_ -> IO (())
threadStopped object_ = jmethod object_ "threadStopped" (\() -> (threadStopped_impl (javaCast object_ :: ThreadPool))) ()

threadStopped_super :: (JavaObjectClass this_) => this_ -> IO (())
threadStopped_super object_ = (threadStopped_impl (javaCast object_ :: ThreadPool))

threadStopped_impl :: ThreadPool -> IO (())
threadStopped_impl this = do
        when ((jget (this).numThreads) == 1) $ do
            jset (this).isAlive (False)
            Control.Monad.void (BasicArrayList.clear ((jget (this).taskQueue)))
        pure ()


startTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
startTask object_ a1 = jmethod object_ "startTask" (\() -> (startTask_impl (javaCast object_ :: ThreadPool))) () a1

startTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
startTask_super object_ a1 = (startTask_impl (javaCast object_ :: ThreadPool)) a1

startTask_impl :: ThreadPool -> Runnable.Runnable -> IO (())
startTask_impl this task = do
        pure ()


completedTask :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
completedTask object_ a1 = jmethod object_ "completedTask" (\() -> (completedTask_impl (javaCast object_ :: ThreadPool))) () a1

completedTask_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
completedTask_super object_ a1 = (completedTask_impl (javaCast object_ :: ThreadPool)) a1

completedTask_impl :: ThreadPool -> Runnable.Runnable -> IO (())
completedTask_impl this task = do
        pure ()


createName :: (JavaObjectClass this_) => this_ -> IO (String)
createName object_ = jmethod object_ "createName" (\() -> (createName_impl (javaCast object_ :: ThreadPool))) ()

createName_super :: (JavaObjectClass this_) => this_ -> IO (String)
createName_super object_ = (createName_impl (javaCast object_ :: ThreadPool))

createName_impl :: ThreadPool -> IO (String)
createName_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).poolName)))) (ThreadPool.rOOT_NAME)))) (jpostIncrement (this).threadID (+ 1))))))


