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
-- package org.allbinary.graphics.form
module InputProcessor (module InputProcessor, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, playerGameInputCompositeInterface)
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
import qualified Processor -- org.allbinary.canvas.Processor
import qualified PlayerGameInputCompositeInterface -- org.allbinary.game.input.PlayerGameInputCompositeInterface

data InputProcessor = InputProcessor
    { header_ :: JavaHeader
    , base :: Processor.Processor
    , playerGameInputCompositeInterface :: IORef (PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface)
    }

instance JavaNull InputProcessor where
    javaNull = javaNullRecord "InputProcessor"

instance JavaEquals InputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass InputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InputProcessor
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    playerGameInputCompositeInterface <- newIORef javaNull
    let this = InputProcessor header_ base playerGameInputCompositeInterface
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: InputProcessor -> IO ()
initFields_ this = do
    jset this.playerGameInputCompositeInterface (javaNull)
    pure ()

new_1 :: PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface -> IO InputProcessor
new_1 playerGameInputCompositeInterface = do
    this <- newRecord_
    init_1 this playerGameInputCompositeInterface
    pure this

init_1 :: InputProcessor -> PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface -> IO ()
init_1 this playerGameInputCompositeInterface = do
        Processor.init_ this.base
        initFields_ this
        jset (this).playerGameInputCompositeInterface (playerGameInputCompositeInterface)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: InputProcessor))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: InputProcessor))

process_impl :: InputProcessor -> IO (())
process_impl this = do
        Control.Monad.void (PlayerGameInputCompositeInterface.update ((jio (PlayerGameInputCompositeInterface.getPlayerGameInput ((jget (this).playerGameInputCompositeInterface))))))
        pure ()


