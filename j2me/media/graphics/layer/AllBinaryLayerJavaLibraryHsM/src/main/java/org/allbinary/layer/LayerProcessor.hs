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
module LayerProcessor where

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
import qualified LayerManager -- same package or java.lang
import qualified AllBinaryLayerManager -- same package or java.lang
import qualified AllBinaryLayer -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LayerProcessorInterface

-- implements LayerProcessorInterface
data LayerProcessor = LayerProcessor
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , layerManager :: IORef (LayerManager.LayerManager)
    }

instance JavaNull LayerProcessor where
    javaNull = javaNullRecord "LayerProcessor"

instance JavaEquals LayerProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerProcessor where
    (==) = jrecordEquals

instance JavaObjectClass LayerProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerProcessor
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    layerManager <- newIORef javaNull
    let this = LayerProcessor header_ commonStrings layerManager
    jregisterLevel header_ this
    LayerProcessorInterface.registerInterface_ header_
    jregisterMethod header_ "processAt" (\() -> processAt_impl this)
    jregisterMethod header_ "isProcessorLayer" (\() -> isProcessorLayer_impl this)
    jregisterMethod header_ "getLayerManager" (\() -> getLayerManager_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: LayerProcessor -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.layerManager (javaNull)
    pure ()

new_1 :: LayerManager.LayerManager -> IO LayerProcessor
new_1 layerManager = do
    this <- newRecord_
    init_1 this layerManager
    pure this

init_1 :: LayerProcessor -> LayerManager.LayerManager -> IO ()
init_1 this layerManager = do
        initFields_ this
        jset (this).layerManager (layerManager)
        pure ()


-- throws Exception
processAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
processAt object_ a1 a2 a3 = jmethod object_ "processAt" (\() -> (processAt_impl (javaCast object_ :: LayerProcessor))) () a1 a2 a3

processAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
processAt_super object_ a1 a2 a3 = (processAt_impl (javaCast object_ :: LayerProcessor)) a1 a2 a3

processAt_impl :: LayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
processAt_impl this allBinaryLayerManager layerInterface index = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
isProcessorLayer :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isProcessorLayer object_ a1 = jmethod object_ "isProcessorLayer" (\() -> (isProcessorLayer_impl (javaCast object_ :: LayerProcessor))) () a1

isProcessorLayer_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isProcessorLayer_super object_ a1 = (isProcessorLayer_impl (javaCast object_ :: LayerProcessor)) a1

isProcessorLayer_impl :: LayerProcessor -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isProcessorLayer_impl this layerInterface = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


getLayerManager :: (JavaObjectClass this_) => this_ -> IO (LayerManager.LayerManager)
getLayerManager object_ = jmethod object_ "getLayerManager" (\() -> (getLayerManager_impl (javaCast object_ :: LayerProcessor))) ()

getLayerManager_super :: (JavaObjectClass this_) => this_ -> IO (LayerManager.LayerManager)
getLayerManager_super object_ = (getLayerManager_impl (javaCast object_ :: LayerProcessor))

getLayerManager_impl :: LayerProcessor -> IO (LayerManager.LayerManager)
getLayerManager_impl this = do
        pure ((jget (this).layerManager))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: LayerProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: LayerProcessor)) a1

process_impl :: LayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this allBinaryLayerManager = do
        layerManager <- (LayerProcessor.getLayerManager this)
        size <- (LayerManager.getSize layerManager)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (LayerProcessor.processAt this allBinaryLayerManager (javaCast (jio (LayerManager.getLayerAt layerManager index)) :: AllBinaryLayer.AllBinaryLayer) index)
        pure ()


