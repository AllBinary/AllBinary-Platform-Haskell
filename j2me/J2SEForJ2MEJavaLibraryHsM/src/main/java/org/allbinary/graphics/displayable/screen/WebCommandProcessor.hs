{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
-- package org.allbinary.graphics.displayable.screen
module WebCommandProcessor where

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
import qualified AboutCommandProcessor -- same package or java.lang
import qualified Desktop -- java.awt.Desktop
import qualified URI -- java.net.URI
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data WebCommandProcessor = WebCommandProcessor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , aboutCommandProcessor :: IORef (AboutCommandProcessor.AboutCommandProcessor)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull WebCommandProcessor where
    javaNull = javaNullRecord "WebCommandProcessor"

instance JavaEquals WebCommandProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WebCommandProcessor where
    (==) = jrecordEquals

instance JavaObjectClass WebCommandProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WebCommandProcessor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    aboutCommandProcessor <- newIORef javaNull
    list <- newIORef javaNull
    let this = WebCommandProcessor header_ logUtil aboutCommandProcessor list
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: WebCommandProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.aboutCommandProcessor =<< (AboutCommandProcessor.getInstance)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO WebCommandProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WebCommandProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (WebCommandProcessor)
getInstance = do
        pure (WebCommandProcessor.instance_)


process :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> Command.Command -> Canvas.Canvas -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: WebCommandProcessor))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> Command.Command -> Canvas.Canvas -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: WebCommandProcessor)) a1 a2 a3

process_impl :: WebCommandProcessor -> CommandListener.CommandListener -> Command.Command -> Canvas.Canvas -> IO (())
process_impl this midletCommandListener command canvas = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).pROCESS) e)
            ) $ do
            when ((jio (Desktop.isDesktopSupported)) && (jio (Desktop.isSupported ((jio (Desktop.getDesktop))) (jget (Desktop.action).bROWSE)))) $ do
                Control.Monad.void (Desktop.browse ((jio (Desktop.getDesktop))) (jio (URI.new_1 (javaCast (jio (BasicArrayList.removeAt ((jget (this).list)) 0)) :: String))))
        pure ()


