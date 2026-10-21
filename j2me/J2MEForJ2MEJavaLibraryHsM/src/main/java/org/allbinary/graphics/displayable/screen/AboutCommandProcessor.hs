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
module AboutCommandProcessor where

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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener

data AboutCommandProcessor = AboutCommandProcessor
    { header_ :: JavaHeader
    }

instance JavaNull AboutCommandProcessor where
    javaNull = javaNullRecord "AboutCommandProcessor"

instance JavaEquals AboutCommandProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AboutCommandProcessor where
    (==) = jrecordEquals

instance JavaObjectClass AboutCommandProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AboutCommandProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = AboutCommandProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: AboutCommandProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AboutCommandProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AboutCommandProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AboutCommandProcessor)
getInstance = do
        pure (AboutCommandProcessor.instance_)


process :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> Command.Command -> Canvas.Canvas -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AboutCommandProcessor))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> Command.Command -> Canvas.Canvas -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: AboutCommandProcessor)) a1 a2 a3

process_impl :: AboutCommandProcessor -> CommandListener.CommandListener -> Command.Command -> Canvas.Canvas -> IO (())
process_impl this midletCommandListener command canvas = do
        Control.Monad.void (CommandListener.commandAction midletCommandListener command canvas)
        pure ()


