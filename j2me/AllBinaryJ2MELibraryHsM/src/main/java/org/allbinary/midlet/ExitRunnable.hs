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
module ExitRunnable where

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
import qualified AllBinaryMidlet -- same package or java.lang
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified Processor -- org.allbinary.canvas.Processor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Runnable

-- implements Runnable
data ExitRunnable = ExitRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , midlet :: IORef (AllBinaryMidlet.AllBinaryMidlet)
    , processor :: IORef (Processor.Processor)
    , isProgress :: IORef (Bool)
    }

instance JavaNull ExitRunnable where
    javaNull = javaNullRecord "ExitRunnable"

instance JavaEquals ExitRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ExitRunnable where
    (==) = jrecordEquals

instance JavaObjectClass ExitRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ExitRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    midlet <- newIORef javaNull
    processor <- newIORef javaNull
    isProgress <- newIORef False
    let this = ExitRunnable header_ logUtil commonStrings midlet processor isProgress
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: ExitRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.midlet (javaNull)
    jset this.processor (javaNull)
    jset this.isProgress (False)
    pure ()

new_3 :: AllBinaryMidlet.AllBinaryMidlet -> Processor.Processor -> Bool -> IO ExitRunnable
new_3 midlet processor isProgress = do
    this <- newRecord_
    init_3 this midlet processor isProgress
    pure this

init_3 :: ExitRunnable -> AllBinaryMidlet.AllBinaryMidlet -> Processor.Processor -> Bool -> IO ()
init_3 this midlet processor isProgress = do
        initFields_ this
        jset (this).midlet (midlet)
        jset (this).isProgress (isProgress)
        jset (this).processor (processor)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ExitRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ExitRunnable))

run_impl :: ExitRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            handle (\(e2 :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
                ) $ do
                Control.Monad.void (Processor.process ((jget (this).processor)))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (AllBinaryMidlet.destroyAppInRunnable ((jget (this).midlet)) False (jget (this).isProgress))
            Control.Monad.void (AllBinaryMidlet.setDisplay ((jget (this).midlet)) (javaCast NullCanvas.nULL_CANVAS))
            Control.Monad.void (AllBinaryMidlet.notifyDestroyed ((jget (this).midlet)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (Processor.process ((jget (this).processor)))
        pure ()


