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
module AllAnalogControllerVisitor (module AllAnalogControllerVisitor, module AnalogControllerVisitor) where

import AnalogControllerVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified AnalogControllerVisitor

data AllAnalogControllerVisitor = AllAnalogControllerVisitor
    { header_ :: JavaHeader
    , base :: AnalogControllerVisitor.AnalogControllerVisitor
    }

instance JavaNull AllAnalogControllerVisitor where
    javaNull = javaNullRecord "AllAnalogControllerVisitor"

instance JavaEquals AllAnalogControllerVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllAnalogControllerVisitor where
    (==) = jrecordEquals

instance JavaObjectClass AllAnalogControllerVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllAnalogControllerVisitor
newRecord_ = do
    base <- AnalogControllerVisitor.newRecord_
    let header_ = base.header_
    let this = AllAnalogControllerVisitor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: AllAnalogControllerVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllAnalogControllerVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllAnalogControllerVisitor -> IO ()
init_ this = do
    AnalogControllerVisitor.init_ this.base
    initFields_ this


process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AllAnalogControllerVisitor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: AllAnalogControllerVisitor)) a1 a2

process_impl :: AllAnalogControllerVisitor -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process_impl this allbinaryLayerManager analogLocationInputProcessor = do
        analogLocationInputList <- (AnalogLocationInputFactory.getList ((jio (AnalogLocationInputFactory.getInstance))))
        analogLocationInput <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size analogLocationInputList)) - 1), ((jio (BasicArrayList.size analogLocationInputList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset analogLocationInput ((javaCast (jio (BasicArrayList.get analogLocationInputList index)) :: AnalogLocationInput.AnalogLocationInput))
            Control.Monad.void (AnalogLocationInputProcessor.process analogLocationInputProcessor allbinaryLayerManager (jget analogLocationInput))
        pure ()


