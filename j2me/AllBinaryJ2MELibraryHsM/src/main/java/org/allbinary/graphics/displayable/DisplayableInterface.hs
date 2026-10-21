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
-- package org.allbinary.graphics.displayable
module DisplayableInterface where

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
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener

-- Java interface: the classes that implement it have these functions
data DisplayableInterface = DisplayableInterface
    { header_ :: JavaHeader
    }

instance JavaNull DisplayableInterface where
    javaNull = javaNullRecord "DisplayableInterface"

instance JavaEquals DisplayableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisplayableInterface where
    (==) = jrecordEquals

instance JavaObjectClass DisplayableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DisplayableInterface
fromHeader_ header = DisplayableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DisplayableInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


addCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand object_ a1 = jmethod object_ "addCommand" (\() -> (addCommand_impl (javaCast object_ :: DisplayableInterface))) () a1

addCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand_super object_ a1 = (addCommand_impl (javaCast object_ :: DisplayableInterface)) a1

addCommand_impl :: DisplayableInterface -> Command.Command -> IO (())
addCommand_impl this cmd = javaAbstractMethod "addCommand"


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: DisplayableInterface))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: DisplayableInterface))

getHeight_impl :: DisplayableInterface -> IO (Int)
getHeight_impl this = javaAbstractMethod "getHeight"


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: DisplayableInterface))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: DisplayableInterface))

getWidth_impl :: DisplayableInterface -> IO (Int)
getWidth_impl this = javaAbstractMethod "getWidth"


removeCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand object_ a1 = jmethod object_ "removeCommand" (\() -> (removeCommand_impl (javaCast object_ :: DisplayableInterface))) () a1

removeCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand_super object_ a1 = (removeCommand_impl (javaCast object_ :: DisplayableInterface)) a1

removeCommand_impl :: DisplayableInterface -> Command.Command -> IO (())
removeCommand_impl this cmd = javaAbstractMethod "removeCommand"


setCommandListener :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener object_ a1 = jmethod object_ "setCommandListener" (\() -> (setCommandListener_impl (javaCast object_ :: DisplayableInterface))) () a1

setCommandListener_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener_super object_ a1 = (setCommandListener_impl (javaCast object_ :: DisplayableInterface)) a1

setCommandListener_impl :: DisplayableInterface -> CommandListener.CommandListener -> IO (())
setCommandListener_impl this l = javaAbstractMethod "setCommandListener"


