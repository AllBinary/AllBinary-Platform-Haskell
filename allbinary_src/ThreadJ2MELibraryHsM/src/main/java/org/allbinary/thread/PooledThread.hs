{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module PooledThread (module PooledThread, module Thread) where

import Thread hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, logUtil, commonStrings, threadObjectUtil, threadPool, iNTERRUPT_EXCEPTION)
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
import qualified ThreadObjectUtil -- same package or java.lang
import qualified ThreadPool -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Thread

data PooledThread = PooledThread
    { header_ :: JavaHeader
    , base :: Thread.Thread
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , threadObjectUtil :: IORef (ThreadObjectUtil.ThreadObjectUtil)
    , threadPool :: IORef (ThreadPool.ThreadPool)
    , iNTERRUPT_EXCEPTION :: IORef (String)
    }

instance JavaNull PooledThread where
    javaNull = javaNullRecord "PooledThread"

instance JavaEquals PooledThread where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PooledThread where
    (==) = jrecordEquals

instance JavaObjectClass PooledThread where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PooledThread
newRecord_ = do
    base <- Thread.newRecord_
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    threadObjectUtil <- newIORef javaNull
    threadPool <- newIORef javaNull
    iNTERRUPT_EXCEPTION <- newIORef ""
    let this = PooledThread header_ base logUtil commonStrings threadObjectUtil threadPool iNTERRUPT_EXCEPTION
    jregisterLevel header_ this
    jregisterLevel header_ base
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: PooledThread -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.threadObjectUtil =<< (ThreadObjectUtil.getInstance)
    jset this.threadPool (javaNull)
    jset this.iNTERRUPT_EXCEPTION ("Exit InterruptedException")
    pure ()

new_1 :: ThreadPool.ThreadPool -> IO PooledThread
new_1 threadPool = do
    this <- newRecord_
    init_1 this threadPool
    pure this

init_1 :: PooledThread -> ThreadPool.ThreadPool -> IO ()
init_1 this threadPool = do
        Thread.init_1 this.base (jio (ThreadPool.createName threadPool))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).threadPool (threadPool)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: PooledThread))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: PooledThread))

run_impl :: PooledThread -> IO (())
run_impl this = do
        Control.Monad.void (ThreadPool.threadStarted ((jget (this).threadPool)))
        fix $ \loop -> when True $ javaIteration (loop) $ do
            task2 <- newIORef ((javaCast (jget ((jget (this).threadObjectUtil)).nULL_PRIORITY_RUNNABLE) :: Runnable.Runnable))
            handle (\(ex :: JavaException) -> do
                logUtil <- (LogUtil.getInstance)
                Control.Monad.void (LogUtil.putF logUtil (jget (this).iNTERRUPT_EXCEPTION) this (jget ((jget (this).commonStrings)).rUN))
                throwIO JavaBreak
                ) $ do
                assignedValue <- (ThreadPool.getTask ((jget (this).threadPool)))
                jset task2 (assignedValue)
                jset ((jget (this).threadPool)).runningTask (True)
                Control.Monad.void (ThreadPool.startTask ((jget (this).threadPool)) (jget task2))
            when ((jtoObject (jget task2)) == (jtoObject (jget ((jget (this).threadObjectUtil)).nULL_PRIORITY_RUNNABLE))) $ do
                throwIO JavaBreak
            handle (\(e :: JavaException) -> do
                logUtil <- (LogUtil.getInstance)
                Control.Monad.void (LogUtil.put logUtil (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).commonStrings)).eXCEPTION_LABEL)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget task2)))))))) this (jget ((jget (this).commonStrings)).rUN) e)
                ) $ do
                Control.Monad.void (Runnable.run ((jget task2)))
                Control.Monad.void (ThreadPool.completedTask ((jget (this).threadPool)) (jget task2))
                jset ((jget (this).threadPool)).runningTask (False)
        Control.Monad.void (ThreadPool.threadStopped ((jget (this).threadPool)))
        pure ()


