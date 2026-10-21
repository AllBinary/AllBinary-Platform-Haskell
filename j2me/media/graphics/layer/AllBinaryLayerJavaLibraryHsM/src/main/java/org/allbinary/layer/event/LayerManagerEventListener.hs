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
-- package org.allbinary.layer.event
module LayerManagerEventListener where

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
import qualified LayerManagerEvent -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified LayerManagerEventListenerInterface

-- implements LayerManagerEventListenerInterface
data LayerManagerEventListener = LayerManagerEventListener
    { header_ :: JavaHeader
    }

instance JavaNull LayerManagerEventListener where
    javaNull = javaNullRecord "LayerManagerEventListener"

instance JavaEquals LayerManagerEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerManagerEventListener where
    (==) = jrecordEquals

instance JavaObjectClass LayerManagerEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerManagerEventListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = LayerManagerEventListener header_
    jregisterLevel header_ this
    LayerManagerEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onCreateLayerManagerEvent" (\() -> onCreateLayerManagerEvent_impl this)
    jregisterMethod header_ "onDeleteLayerManagerEvent" (\() -> onDeleteLayerManagerEvent_impl this)
    pure this

initFields_ :: LayerManagerEventListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LayerManagerEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerManagerEventListener -> IO ()
init_ this = do
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: LayerManagerEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: LayerManagerEventListener)) a1

onEvent_impl :: LayerManagerEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        pure ()


-- throws Exception
onCreateLayerManagerEvent :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onCreateLayerManagerEvent object_ a1 = jmethod object_ "onCreateLayerManagerEvent" (\() -> (onCreateLayerManagerEvent_impl (javaCast object_ :: LayerManagerEventListener))) () a1

onCreateLayerManagerEvent_super :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onCreateLayerManagerEvent_super object_ a1 = (onCreateLayerManagerEvent_impl (javaCast object_ :: LayerManagerEventListener)) a1

onCreateLayerManagerEvent_impl :: LayerManagerEventListener -> LayerManagerEvent.LayerManagerEvent -> IO (())
onCreateLayerManagerEvent_impl this layerManagerEvent = do
        pure ()


-- throws Exception
onDeleteLayerManagerEvent :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onDeleteLayerManagerEvent object_ a1 = jmethod object_ "onDeleteLayerManagerEvent" (\() -> (onDeleteLayerManagerEvent_impl (javaCast object_ :: LayerManagerEventListener))) () a1

onDeleteLayerManagerEvent_super :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onDeleteLayerManagerEvent_super object_ a1 = (onDeleteLayerManagerEvent_impl (javaCast object_ :: LayerManagerEventListener)) a1

onDeleteLayerManagerEvent_impl :: LayerManagerEventListener -> LayerManagerEvent.LayerManagerEvent -> IO (())
onDeleteLayerManagerEvent_impl this layerManagerEvent = do
        pure ()


