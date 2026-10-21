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
-- package org.allbinary.game.layer.drop
module DropLayerProcessor (module DropLayerProcessor, module BasicLayerProcessor) where

import BasicLayerProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, lAYER_PROCESSOR)
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
import qualified DropLayerInterface -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicLayerProcessor -- org.allbinary.layer.BasicLayerProcessor
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data DropLayerProcessor = DropLayerProcessor
    { header_ :: JavaHeader
    , base :: BasicLayerProcessor.BasicLayerProcessor
    }

instance JavaNull DropLayerProcessor where
    javaNull = javaNullRecord "DropLayerProcessor"

instance JavaEquals DropLayerProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DropLayerProcessor where
    (==) = jrecordEquals

instance JavaObjectClass DropLayerProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE lAYER_PROCESSOR #-}
lAYER_PROCESSOR = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicLayerProcessor.BasicLayerProcessor) (new_)))

newRecord_ :: IO DropLayerProcessor
newRecord_ = do
    base <- BasicLayerProcessor.newRecord_
    let header_ = base.header_
    let this = DropLayerProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: DropLayerProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DropLayerProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DropLayerProcessor -> IO ()
init_ this = do
        BasicLayerProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (BasicLayerProcessor.BasicLayerProcessor)
getInstance = do
        pure (DropLayerProcessor.lAYER_PROCESSOR)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DropLayerProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: DropLayerProcessor)) a1

process_impl :: DropLayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this allBinaryLayerManager = do
        list <- (BasicLayerProcessor.getList this)
        size <- (BasicArrayList.size list)
        layerInterface <- newIORef (javaNull)
        dropLayerInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset layerInterface ((javaCast (jindex ((jget (list).objectArray)) (index)) :: AllBinaryLayer.AllBinaryLayer))
            jset dropLayerInterface ((javaCast (jget layerInterface) :: DropLayerInterface.DropLayerInterface))
            jset layerInterface ((javaCast (jio (DropLayerInterface.getDroppedLayer ((jget dropLayerInterface)))) :: AllBinaryLayer.AllBinaryLayer))
            Control.Monad.void (AllBinaryLayerManager.append allBinaryLayerManager (jget layerInterface))
        Control.Monad.void (BasicArrayList.clear list)
        pure ()


