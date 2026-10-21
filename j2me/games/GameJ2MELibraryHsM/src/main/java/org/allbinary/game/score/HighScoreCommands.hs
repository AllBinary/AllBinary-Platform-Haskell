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
-- package org.allbinary.game.score
module HighScoreCommands where

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

data HighScoreCommands = HighScoreCommands
    { header_ :: JavaHeader
    , dISPLAY :: IORef (Command.Command)
    , pERSONAL :: IORef (Command.Command)
    , wORLD :: IORef (Command.Command)
    }

instance JavaNull HighScoreCommands where
    javaNull = javaNullRecord "HighScoreCommands"

instance JavaEquals HighScoreCommands where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreCommands where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreCommands where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoreCommands
newRecord_ = do
    header_ <- newJavaHeader
    dISPLAY <- newIORef javaNull
    pERSONAL <- newIORef javaNull
    wORLD <- newIORef javaNull
    let this = HighScoreCommands header_ dISPLAY pERSONAL wORLD
    jregisterLevel header_ this
    pure this

initFields_ :: HighScoreCommands -> IO ()
initFields_ this = do
    jset this.dISPLAY =<< (Command.new_4 "Scores" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.pERSONAL =<< (Command.new_4 "Personal" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.wORLD =<< (Command.new_4 "World" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    pure ()

new_ :: IO HighScoreCommands
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoreCommands -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HighScoreCommands)
getInstance = do
        pure (HighScoreCommands.instance_)


