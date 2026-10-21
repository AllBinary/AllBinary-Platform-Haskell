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
-- package org.allbinary.game.displayable.canvas
module DemoGameStartupRunnable (module DemoGameStartupRunnable, module ABRunnable) where

import ABRunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, getType, getType_super, getType_impl, logUtil, demoCanvas, tYPE)
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
import qualified DemoCanvas -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABRunnable -- org.allbinary.thread.ABRunnable

data DemoGameStartupRunnable = DemoGameStartupRunnable
    { header_ :: JavaHeader
    , base :: ABRunnable.ABRunnable
    , logUtil :: IORef (LogUtil.LogUtil)
    , demoCanvas :: IORef (DemoCanvas.DemoCanvas)
    }

instance JavaNull DemoGameStartupRunnable where
    javaNull = javaNullRecord "DemoGameStartupRunnable"

instance JavaEquals DemoGameStartupRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameStartupRunnable where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameStartupRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

tYPE = 4

newRecord_ :: IO DemoGameStartupRunnable
newRecord_ = do
    base <- ABRunnable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    demoCanvas <- newIORef javaNull
    let this = DemoGameStartupRunnable header_ base logUtil demoCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: DemoGameStartupRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.demoCanvas (javaNull)
    pure ()

new_1 :: DemoCanvas.DemoCanvas -> IO DemoGameStartupRunnable
new_1 demoCanvas = do
    this <- newRecord_
    init_1 this demoCanvas
    pure this

init_1 :: DemoGameStartupRunnable -> DemoCanvas.DemoCanvas -> IO ()
init_1 this demoCanvas = do
        ABRunnable.init_ this.base
        initFields_ this
        jset (this).demoCanvas (demoCanvas)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: DemoGameStartupRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: DemoGameStartupRunnable))

run_impl :: DemoGameStartupRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (ABRunnable.setRunning this False)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            Control.Monad.void (ABRunnable.setRunning this True)
            Control.Monad.void (DemoCanvas.stopGameDemo ((jget (this).demoCanvas)))
            Control.Monad.void (DemoCanvas.create ((jget (this).demoCanvas)))
            Control.Monad.void (DemoCanvas.start ((jget (this).demoCanvas)))
            Control.Monad.void (ABRunnable.setRunning this False)
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: DemoGameStartupRunnable))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: DemoGameStartupRunnable))

getType_impl :: DemoGameStartupRunnable -> IO (Int)
getType_impl this = do
        pure (DemoGameStartupRunnable.tYPE)


