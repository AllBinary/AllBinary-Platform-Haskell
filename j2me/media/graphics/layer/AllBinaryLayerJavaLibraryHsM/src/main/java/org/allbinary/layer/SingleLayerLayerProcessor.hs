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
-- package org.allbinary.layer
module SingleLayerLayerProcessor (module SingleLayerLayerProcessor, module LayerProcessor) where

import LayerProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl)
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
import qualified SingleLayerLayerManager -- same package or java.lang
import qualified LayerManager -- same package or java.lang
import qualified AllBinaryLayer -- same package or java.lang
import qualified AllBinaryLayerManager -- same package or java.lang
import qualified LayerProcessor

data SingleLayerLayerProcessor = SingleLayerLayerProcessor
    { header_ :: JavaHeader
    , base :: LayerProcessor.LayerProcessor
    }

instance JavaNull SingleLayerLayerProcessor where
    javaNull = javaNullRecord "SingleLayerLayerProcessor"

instance JavaEquals SingleLayerLayerProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SingleLayerLayerProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SingleLayerLayerProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SingleLayerLayerProcessor
newRecord_ = do
    base <- LayerProcessor.newRecord_
    let header_ = base.header_
    let this = SingleLayerLayerProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SingleLayerLayerProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SingleLayerLayerProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SingleLayerLayerProcessor -> IO ()
init_ this = do
        LayerProcessor.init_1 this.base (jio (SingleLayerLayerManager.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SingleLayerLayerProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: SingleLayerLayerProcessor)) a1

process_impl :: SingleLayerLayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this allBinaryLayerManager = do
        layerManager <- (LayerProcessor.getLayerManager this)
        Control.Monad.void (LayerProcessor.processAt this allBinaryLayerManager (javaCast (jio (LayerManager.getLayerAt layerManager 0)) :: AllBinaryLayer.AllBinaryLayer) 0)
        pure ()


