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
-- package org.allbinary.game.tick
module OptimizedTickableLayerProcessor (module OptimizedTickableLayerProcessor, module LayerProcessor) where

import LayerProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAt, processAt_super, processAt_impl, isProcessorLayer, isProcessorLayer_super, isProcessorLayer_impl)
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
import qualified OptimizedTickableLayerManager -- same package or java.lang
import qualified AllBinaryGameLayer -- org.allbinary.game.layer.AllBinaryGameLayer
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LayerProcessor -- org.allbinary.layer.LayerProcessor

data OptimizedTickableLayerProcessor = OptimizedTickableLayerProcessor
    { header_ :: JavaHeader
    , base :: LayerProcessor.LayerProcessor
    }

instance JavaNull OptimizedTickableLayerProcessor where
    javaNull = javaNullRecord "OptimizedTickableLayerProcessor"

instance JavaEquals OptimizedTickableLayerProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OptimizedTickableLayerProcessor where
    (==) = jrecordEquals

instance JavaObjectClass OptimizedTickableLayerProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OptimizedTickableLayerProcessor
newRecord_ = do
    base <- LayerProcessor.newRecord_
    let header_ = base.header_
    let this = OptimizedTickableLayerProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processAt" (\() -> processAt_impl this)
    jregisterMethod header_ "isProcessorLayer" (\() -> isProcessorLayer_impl this)
    pure this

initFields_ :: OptimizedTickableLayerProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OptimizedTickableLayerProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OptimizedTickableLayerProcessor -> IO ()
init_ this = do
        LayerProcessor.init_1 this.base (jio (OptimizedTickableLayerManager.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
processAt object_ a1 a2 a3 = jmethod object_ "processAt" (\() -> (processAt_impl (javaCast object_ :: OptimizedTickableLayerProcessor))) () a1 a2 a3

processAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
processAt_super object_ a1 a2 a3 = (processAt_impl (javaCast object_ :: OptimizedTickableLayerProcessor)) a1 a2 a3

processAt_impl :: OptimizedTickableLayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
processAt_impl this allBinaryLayerManager layerInterface index = do
        let tickableInterface = (javaCast layerInterface :: AllBinaryGameLayer.AllBinaryGameLayer)
        Control.Monad.void (AllBinaryGameLayer.processTick tickableInterface allBinaryLayerManager)
        pure ()


isProcessorLayer :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isProcessorLayer object_ a1 = jmethod object_ "isProcessorLayer" (\() -> (isProcessorLayer_impl (javaCast object_ :: OptimizedTickableLayerProcessor))) () a1

isProcessorLayer_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isProcessorLayer_super object_ a1 = (isProcessorLayer_impl (javaCast object_ :: OptimizedTickableLayerProcessor)) a1

isProcessorLayer_impl :: OptimizedTickableLayerProcessor -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isProcessorLayer_impl this layerInterface = do
    javaCatchReturn $ do
        if (jio (AllBinaryLayer.implmentsTickableInterface layerInterface)) then do
            javaReturn (True)
        else do
            javaReturn (False)


