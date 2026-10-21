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
module CommandRunnable where

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
import qualified CommandFormInputProcessor -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Runnable

-- implements Runnable
data CommandRunnable = CommandRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commandFormInputProcessor :: IORef (CommandFormInputProcessor.CommandFormInputProcessor)
    , command :: IORef (Command.Command)
    }

instance JavaNull CommandRunnable where
    javaNull = javaNullRecord "CommandRunnable"

instance JavaEquals CommandRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandRunnable where
    (==) = jrecordEquals

instance JavaObjectClass CommandRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommandRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commandFormInputProcessor <- newIORef javaNull
    command <- newIORef javaNull
    let this = CommandRunnable header_ logUtil commonStrings commandFormInputProcessor command
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: CommandRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commandFormInputProcessor (javaNull)
    jset this.command (javaNull)
    pure ()

new_2 :: CommandFormInputProcessor.CommandFormInputProcessor -> Command.Command -> IO CommandRunnable
new_2 commandFormInputProcessor command = do
    this <- newRecord_
    init_2 this commandFormInputProcessor command
    pure this

init_2 :: CommandRunnable -> CommandFormInputProcessor.CommandFormInputProcessor -> Command.Command -> IO ()
init_2 this commandFormInputProcessor command = do
        initFields_ this
        jset (this).commandFormInputProcessor (commandFormInputProcessor)
        jset (this).command (command)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: CommandRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: CommandRunnable))

run_impl :: CommandRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
            canvas <- (CommandFormInputProcessor.getCanvas ((jget (this).commandFormInputProcessor)))
            commandListener <- (MyCanvas.getCustomCommandListener canvas)
            Control.Monad.void (CommandListener.commandAction commandListener (jget (this).command) canvas)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND_RUNNABLE) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


