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
-- package org.allbinary.graphics.displayable.command
module MyCommandInterface where

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

-- Java interface: the classes that implement it have these functions
data MyCommandInterface = MyCommandInterface
    { header_ :: JavaHeader
    }

instance JavaNull MyCommandInterface where
    javaNull = javaNullRecord "MyCommandInterface"

instance JavaEquals MyCommandInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyCommandInterface where
    (==) = jrecordEquals

instance JavaObjectClass MyCommandInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MyCommandInterface
fromHeader_ header = MyCommandInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MyCommandInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


addCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand object_ a1 = jmethod object_ "addCommand" (\() -> (addCommand_impl (javaCast object_ :: MyCommandInterface))) () a1

addCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand_super object_ a1 = (addCommand_impl (javaCast object_ :: MyCommandInterface)) a1

addCommand_impl :: MyCommandInterface -> Command.Command -> IO (())
addCommand_impl this command = javaAbstractMethod "addCommand"


removeAllCommands :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands object_ = jmethod object_ "removeAllCommands" (\() -> (removeAllCommands_impl (javaCast object_ :: MyCommandInterface))) ()

removeAllCommands_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands_super object_ = (removeAllCommands_impl (javaCast object_ :: MyCommandInterface))

removeAllCommands_impl :: MyCommandInterface -> IO (())
removeAllCommands_impl this = javaAbstractMethod "removeAllCommands"


