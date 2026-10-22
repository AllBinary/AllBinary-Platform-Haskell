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
-- package org.allbinary.midlet
module ProgressMidlet (module ProgressMidlet, module AllBinaryMidlet) where

import AllBinaryMidlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, preInit, preInit_super, preInit_impl, exitProgress, exitProgress_super, exitProgress_impl, abeClientInformation)
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
import qualified MidletExitProcessorFactory -- same package or java.lang
import qualified ExitRunnable -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Processor -- org.allbinary.canvas.Processor
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ClientInformationFactory -- org.allbinary.logic.system.security.licensing.ClientInformationFactory
import qualified PrimaryThreadPool -- org.allbinary.thread.PrimaryThreadPool
import qualified ThreadPool -- org.allbinary.thread.ThreadPool
import qualified AllBinaryMidlet

data ProgressMidlet = ProgressMidlet
    { header_ :: JavaHeader
    , base :: AllBinaryMidlet.AllBinaryMidlet
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    }

instance JavaNull ProgressMidlet where
    javaNull = javaNullRecord "ProgressMidlet"

instance JavaEquals ProgressMidlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressMidlet where
    (==) = jrecordEquals

instance JavaObjectClass ProgressMidlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ProgressMidlet
newRecord_ = do
    base <- AllBinaryMidlet.newRecord_
    let header_ = base.header_
    abeClientInformation <- newIORef javaNull
    let this = ProgressMidlet header_ base abeClientInformation
    jregisterLevel header_ this
    jregisterMethod header_ "preInit" (\() -> preInit_impl this)
    jregisterMethod header_ "exitProgress" (\() -> exitProgress_impl this)
    pure this

initFields_ :: ProgressMidlet -> IO ()
initFields_ this = do
    jset this.abeClientInformation (javaNull)
    pure ()

new_1 :: ClientInformationFactory.ClientInformationFactory -> IO ProgressMidlet
new_1 clientInformationFactory = do
    this <- newRecord_
    init_1 this clientInformationFactory
    pure this

init_1 :: ProgressMidlet -> ClientInformationFactory.ClientInformationFactory -> IO ()
init_1 this clientInformationFactory = do
        AllBinaryMidlet.init_ this.base
        initFields_ this
        Control.Monad.void (ProgressMidlet.preInit this)
        assignedValue <- (ClientInformationFactory.getInstance clientInformationFactory)
        jset (this).abeClientInformation (assignedValue)
        pure ()


preInit :: (JavaObjectClass this_) => this_ -> IO (())
preInit object_ = jmethod object_ "preInit" (\() -> (preInit_impl (javaCast object_ :: ProgressMidlet))) ()

preInit_super :: (JavaObjectClass this_) => this_ -> IO (())
preInit_super object_ = (preInit_impl (javaCast object_ :: ProgressMidlet))

preInit_impl :: ProgressMidlet -> IO (())
preInit_impl this = do
        pure ()


exitProgress :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
exitProgress object_ a1 = jmethod object_ "exitProgress" (\() -> (exitProgress_impl (javaCast object_ :: ProgressMidlet))) () a1

exitProgress_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
exitProgress_super object_ a1 = (exitProgress_impl (javaCast object_ :: ProgressMidlet)) a1

exitProgress_impl :: ProgressMidlet -> Bool -> IO (())
exitProgress_impl this isProgress = do
        processor <- (MidletExitProcessorFactory.getExitInstance ((jio (MidletExitProcessorFactory.getInstance))) (javaCast this))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "exit" e)
            handle (\(e2 :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "exit" e)
                ) $ do
                Control.Monad.void (Processor.process processor)
            ) $ do
            primaryThreadPool <- (PrimaryThreadPool.getInstance)
            runnable <- (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (ExitRunnable.new_3 this processor isProgress))
            Control.Monad.void (ThreadPool.runTask primaryThreadPool runnable)
        pure ()


