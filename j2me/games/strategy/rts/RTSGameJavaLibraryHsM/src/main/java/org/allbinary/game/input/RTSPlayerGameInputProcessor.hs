{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.input
module RTSPlayerGameInputProcessor (module RTSPlayerGameInputProcessor, module GameInputProcessor) where

import GameInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, rtsPlayerGameInput)
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
import qualified RTSPlayerGameInput -- same package or java.lang
import qualified GameInputProcessor

data RTSPlayerGameInputProcessor = RTSPlayerGameInputProcessor
    { header_ :: JavaHeader
    , base :: GameInputProcessor.GameInputProcessor
    , rtsPlayerGameInput :: IORef (RTSPlayerGameInput.RTSPlayerGameInput)
    }

instance JavaNull RTSPlayerGameInputProcessor where
    javaNull = javaNullRecord "RTSPlayerGameInputProcessor"

instance JavaEquals RTSPlayerGameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSPlayerGameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass RTSPlayerGameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSPlayerGameInputProcessor
newRecord_ = do
    base <- GameInputProcessor.newRecord_
    let header_ = base.header_
    rtsPlayerGameInput <- newIORef javaNull
    let this = RTSPlayerGameInputProcessor header_ base rtsPlayerGameInput
    jregisterLevel header_ this
    pure this

initFields_ :: RTSPlayerGameInputProcessor -> IO ()
initFields_ this = do
    jset this.rtsPlayerGameInput (javaNull)
    pure ()

new_1 :: RTSPlayerGameInput.RTSPlayerGameInput -> IO RTSPlayerGameInputProcessor
new_1 rtsPlayerGameInput = do
    this <- newRecord_
    init_1 this rtsPlayerGameInput
    pure this

init_1 :: RTSPlayerGameInputProcessor -> RTSPlayerGameInput.RTSPlayerGameInput -> IO ()
init_1 this rtsPlayerGameInput = do
        GameInputProcessor.init_ this.base
        initFields_ this
        jset (this).rtsPlayerGameInput (rtsPlayerGameInput)
        pure ()


