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
module DemoLimitedCommandTextItemArrayFactory where

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
import qualified CommandTextItemArrayFactory -- org.allbinary.graphics.form.item.CommandTextItemArrayFactory
import qualified LimitCommandsVisitor -- org.allbinary.graphics.form.item.LimitCommandsVisitor

data DemoLimitedCommandTextItemArrayFactory = DemoLimitedCommandTextItemArrayFactory
    { header_ :: JavaHeader
    , commandTextItemArrayFactory :: IORef (CommandTextItemArrayFactory.CommandTextItemArrayFactory)
    }

instance JavaNull DemoLimitedCommandTextItemArrayFactory where
    javaNull = javaNullRecord "DemoLimitedCommandTextItemArrayFactory"

instance JavaEquals DemoLimitedCommandTextItemArrayFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoLimitedCommandTextItemArrayFactory where
    (==) = jrecordEquals

instance JavaObjectClass DemoLimitedCommandTextItemArrayFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DemoLimitedCommandTextItemArrayFactory
newRecord_ = do
    header_ <- newJavaHeader
    commandTextItemArrayFactory <- newIORef javaNull
    let this = DemoLimitedCommandTextItemArrayFactory header_ commandTextItemArrayFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getCommandTextItemArrayFactory" (\() -> getCommandTextItemArrayFactory_impl this)
    pure this

initFields_ :: DemoLimitedCommandTextItemArrayFactory -> IO ()
initFields_ this = do
    jset this.commandTextItemArrayFactory =<< (CommandTextItemArrayFactory.new_1 (jio (LimitCommandsVisitor.new_)))
    pure ()

new_ :: IO DemoLimitedCommandTextItemArrayFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DemoLimitedCommandTextItemArrayFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DemoLimitedCommandTextItemArrayFactory)
getInstance = do
        pure (DemoLimitedCommandTextItemArrayFactory.instance_)


getCommandTextItemArrayFactory :: (JavaObjectClass this_) => this_ -> IO (CommandTextItemArrayFactory.CommandTextItemArrayFactory)
getCommandTextItemArrayFactory object_ = jmethod object_ "getCommandTextItemArrayFactory" (\() -> (getCommandTextItemArrayFactory_impl (javaCast object_ :: DemoLimitedCommandTextItemArrayFactory))) ()

getCommandTextItemArrayFactory_super :: (JavaObjectClass this_) => this_ -> IO (CommandTextItemArrayFactory.CommandTextItemArrayFactory)
getCommandTextItemArrayFactory_super object_ = (getCommandTextItemArrayFactory_impl (javaCast object_ :: DemoLimitedCommandTextItemArrayFactory))

getCommandTextItemArrayFactory_impl :: DemoLimitedCommandTextItemArrayFactory -> IO (CommandTextItemArrayFactory.CommandTextItemArrayFactory)
getCommandTextItemArrayFactory_impl this = do
        pure ((jget (this).commandTextItemArrayFactory))


