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
module RunnableCanvasSingleThreadStartRunnable (module RunnableCanvasSingleThreadStartRunnable, module GameRunnable) where

import GameRunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, processLoopSleep, processLoopSleep_super, processLoopSleep_impl, logUtil, runnableCanvas)
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
import qualified RunnableCanvas -- org.allbinary.canvas.RunnableCanvas
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GameRunnable

data RunnableCanvasSingleThreadStartRunnable = RunnableCanvasSingleThreadStartRunnable
    { header_ :: JavaHeader
    , base :: GameRunnable.GameRunnable
    , logUtil :: IORef (LogUtil.LogUtil)
    , runnableCanvas :: IORef (RunnableCanvas.RunnableCanvas)
    }

instance JavaNull RunnableCanvasSingleThreadStartRunnable where
    javaNull = javaNullRecord "RunnableCanvasSingleThreadStartRunnable"

instance JavaEquals RunnableCanvasSingleThreadStartRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RunnableCanvasSingleThreadStartRunnable where
    (==) = jrecordEquals

instance JavaObjectClass RunnableCanvasSingleThreadStartRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RunnableCanvasSingleThreadStartRunnable
newRecord_ = do
    base <- GameRunnable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    runnableCanvas <- newIORef javaNull
    let this = RunnableCanvasSingleThreadStartRunnable header_ base logUtil runnableCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "processLoopSleep" (\() -> processLoopSleep_impl this)
    pure this

initFields_ :: RunnableCanvasSingleThreadStartRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.runnableCanvas (javaNull)
    pure ()

new_1 :: RunnableCanvas.RunnableCanvas -> IO RunnableCanvasSingleThreadStartRunnable
new_1 demoCanvas = do
    this <- newRecord_
    init_1 this demoCanvas
    pure this

init_1 :: RunnableCanvasSingleThreadStartRunnable -> RunnableCanvas.RunnableCanvas -> IO ()
init_1 this demoCanvas = do
        GameRunnable.init_ this.base
        initFields_ this
        jset (this).runnableCanvas (demoCanvas)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: RunnableCanvasSingleThreadStartRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: RunnableCanvasSingleThreadStartRunnable))

run_impl :: RunnableCanvasSingleThreadStartRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            Control.Monad.void (RunnableCanvas.run ((jget (this).runnableCanvas)))
        pure ()


-- throws Exception
processLoopSleep :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep object_ = jmethod object_ "processLoopSleep" (\() -> (processLoopSleep_impl (javaCast object_ :: RunnableCanvasSingleThreadStartRunnable))) ()

processLoopSleep_super :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep_super object_ = (processLoopSleep_impl (javaCast object_ :: RunnableCanvasSingleThreadStartRunnable))

processLoopSleep_impl :: RunnableCanvasSingleThreadStartRunnable -> IO (())
processLoopSleep_impl this = do
        Control.Monad.void (RunnableCanvas.processLoopSleep ((jget (this).runnableCanvas)))
        pure ()


