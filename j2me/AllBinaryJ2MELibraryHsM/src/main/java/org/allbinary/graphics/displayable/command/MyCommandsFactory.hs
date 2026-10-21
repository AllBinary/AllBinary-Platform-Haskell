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
module MyCommandsFactory where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data MyCommandsFactory = MyCommandsFactory
    { header_ :: JavaHeader
    , nO_COMMAND :: IORef (Command.Command)
    , gAUGE_CHANGE :: IORef (Command.Command)
    , sET_DISPLAYABLE :: IORef (Command.Command)
    , pAUSE_COMMAND :: IORef (Command.Command)
    , rESUME_COMMAND :: IORef (Command.Command)
    }

instance JavaNull MyCommandsFactory where
    javaNull = javaNullRecord "MyCommandsFactory"

instance JavaEquals MyCommandsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyCommandsFactory where
    (==) = jrecordEquals

instance JavaObjectClass MyCommandsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MyCommandsFactory
newRecord_ = do
    header_ <- newJavaHeader
    nO_COMMAND <- newIORef javaNull
    gAUGE_CHANGE <- newIORef javaNull
    sET_DISPLAYABLE <- newIORef javaNull
    pAUSE_COMMAND <- newIORef javaNull
    rESUME_COMMAND <- newIORef javaNull
    let this = MyCommandsFactory header_ nO_COMMAND gAUGE_CHANGE sET_DISPLAYABLE pAUSE_COMMAND rESUME_COMMAND
    jregisterLevel header_ this
    pure this

initFields_ :: MyCommandsFactory -> IO ()
initFields_ this = do
    jset this.nO_COMMAND =<< (Command.new_4 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Prelude.negate 1) (Prelude.negate 1))
    jset this.gAUGE_CHANGE =<< (Command.new_4 "GAUGE_CHANGE" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.iTEM) 1)
    jset this.sET_DISPLAYABLE =<< (Command.new_4 "Display" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 2)
    jset this.pAUSE_COMMAND =<< (Command.new_4 "Pause" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 0)
    jset this.rESUME_COMMAND =<< (Command.new_4 "Resume" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 0)
    pure ()


getInstance :: IO (MyCommandsFactory)
getInstance = do
        pure (MyCommandsFactory.instance_)

new_ :: IO MyCommandsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyCommandsFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


