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
-- package org.allbinary.android.input.motion
module SingleAnalogControllerVisitor (module SingleAnalogControllerVisitor, module AnalogControllerVisitor) where

import AnalogControllerVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, playerInputId)
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
import qualified AnalogLocationInputProcessor -- same package or java.lang
import qualified AnalogLocationInput -- org.allbinary.game.input.analog.AnalogLocationInput
import qualified AnalogLocationInputFactory -- org.allbinary.game.input.analog.AnalogLocationInputFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified AnalogControllerVisitor

data SingleAnalogControllerVisitor = SingleAnalogControllerVisitor
    { header_ :: JavaHeader
    , base :: AnalogControllerVisitor.AnalogControllerVisitor
    , playerInputId :: IORef (Int)
    }

instance JavaNull SingleAnalogControllerVisitor where
    javaNull = javaNullRecord "SingleAnalogControllerVisitor"

instance JavaEquals SingleAnalogControllerVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SingleAnalogControllerVisitor where
    (==) = jrecordEquals

instance JavaObjectClass SingleAnalogControllerVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SingleAnalogControllerVisitor
newRecord_ = do
    base <- AnalogControllerVisitor.newRecord_
    let header_ = base.header_
    playerInputId <- newIORef 0
    let this = SingleAnalogControllerVisitor header_ base playerInputId
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SingleAnalogControllerVisitor -> IO ()
initFields_ this = do
    jset this.playerInputId (0)
    pure ()

new_1 :: Int -> IO SingleAnalogControllerVisitor
new_1 playerInputId = do
    this <- newRecord_
    init_1 this playerInputId
    pure this

init_1 :: SingleAnalogControllerVisitor -> Int -> IO ()
init_1 this playerInputId = do
        AnalogControllerVisitor.init_ this.base
        initFields_ this
        jset (this).playerInputId (playerInputId)
        pure ()


process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SingleAnalogControllerVisitor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: SingleAnalogControllerVisitor)) a1 a2

process_impl :: SingleAnalogControllerVisitor -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process_impl this allbinaryLayerManager analogLocationInputProcessor = do
        analogLocationInput <- (AnalogLocationInputFactory.getInstanceForPlayer ((jio (AnalogLocationInputFactory.getInstance))) (jget (this).playerInputId))
        Control.Monad.void (AnalogLocationInputProcessor.process analogLocationInputProcessor allbinaryLayerManager analogLocationInput)
        pure ()


