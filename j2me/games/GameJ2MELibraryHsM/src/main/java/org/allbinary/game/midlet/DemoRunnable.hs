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
-- package org.allbinary.game.midlet
module DemoRunnable where

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
import qualified DemoGameMidlet -- same package or java.lang
import qualified DemoGameMidletEvent -- same package or java.lang
import qualified DemoGameMidletStateFactory -- same package or java.lang
import qualified DemoGameMidletEventHandler -- same package or java.lang
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Runnable

-- implements Runnable
data DemoRunnable = DemoRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , demoGameMidlet :: IORef (DemoGameMidlet.DemoGameMidlet)
    , startDemoGameMidletEvent :: IORef (DemoGameMidletEvent.DemoGameMidletEvent)
    }

instance JavaNull DemoRunnable where
    javaNull = javaNullRecord "DemoRunnable"

instance JavaEquals DemoRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoRunnable where
    (==) = jrecordEquals

instance JavaObjectClass DemoRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DemoRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    demoGameMidlet <- newIORef javaNull
    startDemoGameMidletEvent <- newIORef javaNull
    let this = DemoRunnable header_ logUtil commonStrings demoGameMidlet startDemoGameMidletEvent
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: DemoRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.demoGameMidlet (javaNull)
    jset this.startDemoGameMidletEvent (javaNull)
    pure ()

new_1 :: DemoGameMidlet.DemoGameMidlet -> IO DemoRunnable
new_1 demoGameMidlet = do
    this <- newRecord_
    init_1 this demoGameMidlet
    pure this

init_1 :: DemoRunnable -> DemoGameMidlet.DemoGameMidlet -> IO ()
init_1 this demoGameMidlet = do
        initFields_ this
        jset (this).demoGameMidlet (demoGameMidlet)
        assignedValue <- (DemoGameMidletEvent.new_2 (jget (this).demoGameMidlet) (jget ((jio (DemoGameMidletStateFactory.getInstance))).sTART_DEMO))
        jset (this).startDemoGameMidletEvent (assignedValue)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: DemoRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: DemoRunnable))

run_impl :: DemoRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) "GameCanvasRunnableInterface"))))) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (DemoGameMidlet.commandAction ((jget (this).demoGameMidlet)) (jget ((jio (MyCommandsFactory.getInstance))).sET_DISPLAYABLE) (jio (ProgressCanvasFactory.getInstance)))
            Control.Monad.void (DemoGameMidlet.setGameCanvasRunnableInterface ((jget (this).demoGameMidlet)) (jio (DemoGameMidlet.createDemoGameCanvasRunnableInterface ((jget (this).demoGameMidlet)))))
            Control.Monad.void (DemoGameMidlet.demoSetup ((jget (this).demoGameMidlet)))
            Control.Monad.void (DemoGameMidletEventHandler.fireEvent ((jio (DemoGameMidletEventHandler.getInstance))) (jget (this).startDemoGameMidletEvent))
            Control.Monad.void (DemoGameMidlet.startGameCanvasRunnableInterface ((jget (this).demoGameMidlet)))
            Control.Monad.void (DemoGameMidlet.postDemoSetup ((jget (this).demoGameMidlet)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


