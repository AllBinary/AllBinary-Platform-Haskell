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
module CreateGameRunnable where

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
import qualified Any -- same package or java.lang
import qualified DemoGameMidletEvent -- same package or java.lang
import qualified DemoGameMidletStateFactory -- same package or java.lang
import qualified DemoGameMidletEventHandler -- same package or java.lang
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified Runnable

-- implements Runnable
data CreateGameRunnable = CreateGameRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , demoGameMidlet :: IORef (DemoGameMidlet.DemoGameMidlet)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , startGameMidletEvent :: IORef (DemoGameMidletEvent.DemoGameMidletEvent)
    }

instance JavaNull CreateGameRunnable where
    javaNull = javaNullRecord "CreateGameRunnable"

instance JavaEquals CreateGameRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CreateGameRunnable where
    (==) = jrecordEquals

instance JavaObjectClass CreateGameRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CreateGameRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    demoGameMidlet <- newIORef javaNull
    hashtable <- newIORef javaNull
    startGameMidletEvent <- newIORef javaNull
    let this = CreateGameRunnable header_ logUtil commonStrings demoGameMidlet hashtable startGameMidletEvent
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: CreateGameRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.demoGameMidlet (javaNull)
    jset this.hashtable (javaNull)
    jset this.startGameMidletEvent (javaNull)
    pure ()

new_2 :: DemoGameMidlet.DemoGameMidlet -> ABHashtable.ABHashtable -> IO CreateGameRunnable
new_2 demoGameMidlet hashtable = do
    this <- newRecord_
    init_2 this demoGameMidlet hashtable
    pure this

init_2 :: CreateGameRunnable -> DemoGameMidlet.DemoGameMidlet -> ABHashtable.ABHashtable -> IO ()
init_2 this demoGameMidlet hashtable = do
        initFields_ this
        jset (this).demoGameMidlet (demoGameMidlet)
        jset (this).hashtable (hashtable)
        assignedValue <- (DemoGameMidletEvent.new_2 this (jget ((jio (DemoGameMidletStateFactory.getInstance))).sTART_GAME))
        jset (this).startGameMidletEvent (assignedValue)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: CreateGameRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: CreateGameRunnable))

run_impl :: CreateGameRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            Control.Monad.void (DemoGameMidlet.commandAction ((jget (this).demoGameMidlet)) (jget ((jio (MyCommandsFactory.getInstance))).sET_DISPLAYABLE) (javaCast progressCanvas))
            Control.Monad.void (DemoGameMidlet.stopGameCanvasRunnableInterface ((jget (this).demoGameMidlet)))
            Control.Monad.void (DemoGameMidlet.setGameCanvasRunnableInterface ((jget (this).demoGameMidlet)) (jio (DemoGameMidlet.createGameCanvasRunnableInterface ((jget (this).demoGameMidlet)))))
            Control.Monad.void (GameCanvasRunnableInterface.setLoadStateHashtable ((jio (DemoGameMidlet.getGameCanvasRunnableInterface ((jget (this).demoGameMidlet))))) (jget (this).hashtable))
            Control.Monad.void (DemoGameMidlet.startGameCanvasRunnableInterface ((jget (this).demoGameMidlet)))
            Control.Monad.void (DemoGameMidletEventHandler.fireEvent ((jio (DemoGameMidletEventHandler.getInstance))) (javaCast (jget (this).startGameMidletEvent)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


