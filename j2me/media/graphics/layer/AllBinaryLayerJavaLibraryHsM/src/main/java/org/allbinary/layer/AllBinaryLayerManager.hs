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
module AllBinaryLayerManager (module AllBinaryLayerManager, module LayerManager) where

import LayerManager hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLayerProcessorArray, getLayerProcessorArray_super, getLayerProcessorArray_impl, setLayerProcessorArray, setLayerProcessorArray_super, setLayerProcessorArray_impl, log, log_super, log_impl, append, append_super, append_impl, appendAt, appendAt_super, appendAt_impl, appendProcessors, appendProcessors_super, appendProcessors_impl, remove, remove_super, remove_impl, process, process_super, process_impl, cleanup, cleanup_super, cleanup_impl, layerManagerEventHandler, createLayerManagerEvent, deleteLayerManagerEvent, basicLayerProcessorArray)
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
import qualified LayerProcessor -- same package or java.lang
import qualified LayerManagerNoDebug -- same package or java.lang
import qualified AllBinaryLayer -- same package or java.lang
import qualified LayerManagerEvent -- org.allbinary.layer.event.LayerManagerEvent
import qualified LayerManagerEventHandler -- org.allbinary.layer.event.LayerManagerEventHandler
import qualified LayerManager

data AllBinaryLayerManager = AllBinaryLayerManager
    { header_ :: JavaHeader
    , base :: LayerManager.LayerManager
    , layerManagerEventHandler :: IORef (LayerManagerEventHandler.LayerManagerEventHandler)
    , createLayerManagerEvent :: IORef (LayerManagerEvent.LayerManagerEvent)
    , deleteLayerManagerEvent :: IORef (LayerManagerEvent.LayerManagerEvent)
    , basicLayerProcessorArray :: IORef (JavaArray (LayerProcessor.LayerProcessor))
    }

instance JavaNull AllBinaryLayerManager where
    javaNull = javaNullRecord "AllBinaryLayerManager"

instance JavaEquals AllBinaryLayerManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryLayerManager where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryLayerManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryLayerManager
newRecord_ = do
    base <- LayerManager.newRecord_
    let header_ = base.header_
    layerManagerEventHandler <- newIORef javaNull
    createLayerManagerEvent <- newIORef javaNull
    deleteLayerManagerEvent <- newIORef javaNull
    basicLayerProcessorArray <- newIORef javaNull
    let this = AllBinaryLayerManager header_ base layerManagerEventHandler createLayerManagerEvent deleteLayerManagerEvent basicLayerProcessorArray
    jregisterLevel header_ this
    jregisterMethod header_ "getLayerProcessorArray" (\() -> getLayerProcessorArray_impl this)
    jregisterMethod header_ "setLayerProcessorArray" (\() -> setLayerProcessorArray_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "appendAt" (\() -> appendAt_impl this)
    jregisterMethod header_ "appendProcessors" (\() -> appendProcessors_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "cleanup" (\() -> cleanup_impl this)
    pure this

initFields_ :: AllBinaryLayerManager -> IO ()
initFields_ this = do
    jset this.layerManagerEventHandler =<< (LayerManagerEventHandler.getInstance)
    jset this.createLayerManagerEvent =<< (LayerManagerEvent.new_2 this (jget ((jget (this).layerManagerEventHandler)).cREATE))
    jset this.deleteLayerManagerEvent =<< (LayerManagerEvent.new_2 this (jget ((jget (this).layerManagerEventHandler)).dELETE))
    jset this.basicLayerProcessorArray ((jnewArray (0) javaNull))
    pure ()

new_ :: IO AllBinaryLayerManager
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryLayerManager -> IO ()
init_ this = do
        LayerManager.init_1 this.base (jio (LayerManagerNoDebug.getInstance))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getLayerProcessorArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (LayerProcessor.LayerProcessor))
getLayerProcessorArray object_ = jmethod object_ "getLayerProcessorArray" (\() -> (getLayerProcessorArray_impl (javaCast object_ :: AllBinaryLayerManager))) ()

getLayerProcessorArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (LayerProcessor.LayerProcessor))
getLayerProcessorArray_super object_ = (getLayerProcessorArray_impl (javaCast object_ :: AllBinaryLayerManager))

getLayerProcessorArray_impl :: AllBinaryLayerManager -> IO (JavaArray (LayerProcessor.LayerProcessor))
getLayerProcessorArray_impl this = do
        pure ((jget (this).basicLayerProcessorArray))


setLayerProcessorArray :: (JavaObjectClass this_) => this_ -> JavaArray (LayerProcessor.LayerProcessor) -> IO (())
setLayerProcessorArray object_ a1 = jmethod object_ "setLayerProcessorArray" (\() -> (setLayerProcessorArray_impl (javaCast object_ :: AllBinaryLayerManager))) () a1

setLayerProcessorArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (LayerProcessor.LayerProcessor) -> IO (())
setLayerProcessorArray_super object_ a1 = (setLayerProcessorArray_impl (javaCast object_ :: AllBinaryLayerManager)) a1

setLayerProcessorArray_impl :: AllBinaryLayerManager -> JavaArray (LayerProcessor.LayerProcessor) -> IO (())
setLayerProcessorArray_impl this layerProcessorArray = do
        jset (this).basicLayerProcessorArray (layerProcessorArray)
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: AllBinaryLayerManager))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: AllBinaryLayerManager))

log_impl :: AllBinaryLayerManager -> IO (())
log_impl this = do
        let size = (jlength (jget (this).basicLayerProcessorArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let layerProcessorInterface = (jindex ((jget (this).basicLayerProcessorArray)) (index))
        pure ()


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: AllBinaryLayerManager))) () a1

append_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_super object_ a1 = (append_impl (javaCast object_ :: AllBinaryLayerManager)) a1

append_impl :: AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_impl this layerInterface = do
        when (Prelude.not (jio (LayerManager.contains this layerInterface))) $ do
            Control.Monad.void (AllBinaryLayerManager.appendProcessors this layerInterface)
            Control.Monad.void (LayerManager.append_super this.base layerInterface)
        pure ()


-- throws Exception
appendAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt object_ a1 a2 = jmethod object_ "appendAt" (\() -> (appendAt_impl (javaCast object_ :: AllBinaryLayerManager))) () a1 a2

appendAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_super object_ a1 a2 = (appendAt_impl (javaCast object_ :: AllBinaryLayerManager)) a1 a2

appendAt_impl :: AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_impl this layerInterface index = do
        when (Prelude.not (jio (LayerManager.contains this layerInterface))) $ do
            Control.Monad.void (AllBinaryLayerManager.appendProcessors this layerInterface)
            Control.Monad.void (LayerManager.appendAt_super this.base layerInterface index)
        pure ()


-- throws Exception
appendProcessors :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
appendProcessors object_ a1 = jmethod object_ "appendProcessors" (\() -> (appendProcessors_impl (javaCast object_ :: AllBinaryLayerManager))) () a1

appendProcessors_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
appendProcessors_super object_ a1 = (appendProcessors_impl (javaCast object_ :: AllBinaryLayerManager)) a1

appendProcessors_impl :: AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
appendProcessors_impl this layerInterface = do
        Control.Monad.void (LayerManagerEvent.setLayerInterface ((jget (this).createLayerManagerEvent)) layerInterface)
        Control.Monad.void (LayerManagerEventHandler.fireEvent ((jget (this).layerManagerEventHandler)) (jget (this).createLayerManagerEvent))
        layerProcessorInterface <- newIORef (javaNull)
        index <- newIORef ((jlength (jget (this).basicLayerProcessorArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset layerProcessorInterface ((jindex ((jget (this).basicLayerProcessorArray)) ((jget index))))
            when (jio (LayerProcessor.isProcessorLayer ((jget layerProcessorInterface)) layerInterface)) $ do
                Control.Monad.void (LayerManager.append ((jio (LayerProcessor.getLayerManager ((jget layerProcessorInterface))))) layerInterface)
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: AllBinaryLayerManager))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: AllBinaryLayerManager)) a1

remove_impl :: AllBinaryLayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_impl this layerInterface = do
        Control.Monad.void (LayerManagerEvent.setLayerInterface ((jget (this).deleteLayerManagerEvent)) layerInterface)
        Control.Monad.void (LayerManagerEventHandler.fireDeleteEvent ((jget (this).layerManagerEventHandler)) (jget (this).deleteLayerManagerEvent))
        layerProcessorInterface <- newIORef (javaNull)
        index <- newIORef ((jlength (jget (this).basicLayerProcessorArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset layerProcessorInterface ((jindex ((jget (this).basicLayerProcessorArray)) ((jget index))))
            Control.Monad.void (LayerManager.remove ((jio (LayerProcessor.getLayerManager ((jget layerProcessorInterface))))) layerInterface)
        Control.Monad.void (LayerManager.remove_super this.base layerInterface)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AllBinaryLayerManager))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: AllBinaryLayerManager))

process_impl :: AllBinaryLayerManager -> IO (())
process_impl this = do
        layerProcessorInterface <- newIORef (javaNull)
        let size = (jlength (jget (this).basicLayerProcessorArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset layerProcessorInterface ((jindex ((jget (this).basicLayerProcessorArray)) (index)))
            Control.Monad.void (LayerProcessor.process ((jget layerProcessorInterface)) this)
        pure ()


-- throws Exception
cleanup :: (JavaObjectClass this_) => this_ -> IO (())
cleanup object_ = jmethod object_ "cleanup" (\() -> (cleanup_impl (javaCast object_ :: AllBinaryLayerManager))) ()

cleanup_super :: (JavaObjectClass this_) => this_ -> IO (())
cleanup_super object_ = (cleanup_impl (javaCast object_ :: AllBinaryLayerManager))

cleanup_impl :: AllBinaryLayerManager -> IO (())
cleanup_impl this = do
        layerProcessorInterface <- newIORef (javaNull)
        let size = (jlength (jget (this).basicLayerProcessorArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset layerProcessorInterface ((jindex ((jget (this).basicLayerProcessorArray)) (index)))
            Control.Monad.void (LayerManager.cleanup ((jio (LayerProcessor.getLayerManager ((jget layerProcessorInterface))))))
        Control.Monad.void (LayerManager.cleanup_super this.base)
        pure ()


