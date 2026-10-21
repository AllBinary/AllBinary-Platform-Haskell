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
-- package org.allbinary.content
module CommandUriAction where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data CommandUriAction = CommandUriAction
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CommandUriAction where
    javaNull = javaNullRecord "CommandUriAction"

instance JavaEquals CommandUriAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandUriAction where
    (==) = jrecordEquals

instance JavaObjectClass CommandUriAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommandUriAction
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CommandUriAction header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: CommandUriAction -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO CommandUriAction
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommandUriAction -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommandUriAction)
getInstance = do
        pure (CommandUriAction.instance_)


add :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: CommandUriAction))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: CommandUriAction)) a1 a2

add_impl :: CommandUriAction -> Command.Command -> String -> IO (())
add_impl this command url = do
        pure ()


process :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: CommandUriAction))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: CommandUriAction)) a1

process_impl :: CommandUriAction -> Command.Command -> IO (())
process_impl this command = do
        pure ()


