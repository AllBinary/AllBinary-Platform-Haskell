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
module HighScoreCommandsFactory (module HighScoreCommandsFactory, module HighScoreCommandsBaseFactory) where

import HighScoreCommandsBaseFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified HighScoreCommands -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified HighScoreCommandsBaseFactory

data HighScoreCommandsFactory = HighScoreCommandsFactory
    { header_ :: JavaHeader
    , base :: HighScoreCommandsBaseFactory.HighScoreCommandsBaseFactory
    }

instance JavaNull HighScoreCommandsFactory where
    javaNull = javaNullRecord "HighScoreCommandsFactory"

instance JavaEquals HighScoreCommandsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreCommandsFactory where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreCommandsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO HighScoreCommandsFactory
newRecord_ = do
    base <- HighScoreCommandsBaseFactory.newRecord_
    let header_ = base.header_
    let this = HighScoreCommandsFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: HighScoreCommandsFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (HighScoreCommandsFactory)
getInstance = do
        pure (HighScoreCommandsFactory.instance_)

new_ :: IO HighScoreCommandsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoreCommandsFactory -> IO ()
init_ this = do
        HighScoreCommandsBaseFactory.init_1 this.base (jarrayFromList [(jget ((jio (HighScoreCommands.getInstance))).pERSONAL), (jget ((jio (HighScoreCommands.getInstance))).wORLD)])
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


