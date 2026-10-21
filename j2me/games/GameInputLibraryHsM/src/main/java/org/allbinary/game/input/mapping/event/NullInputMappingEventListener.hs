{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.input.mapping.event
module NullInputMappingEventListener where

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
import qualified InputMappingEvent -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified InputMappingEventListenerInterface

-- implements InputMappingEventListenerInterface
data NullInputMappingEventListener = NullInputMappingEventListener
    { header_ :: JavaHeader
    }

instance JavaNull NullInputMappingEventListener where
    javaNull = javaNullRecord "NullInputMappingEventListener"

instance JavaEquals NullInputMappingEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullInputMappingEventListener where
    (==) = jrecordEquals

instance JavaObjectClass NullInputMappingEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_INPUT_MAPPING_EVENT_LISTENER #-}
nULL_INPUT_MAPPING_EVENT_LISTENER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullInputMappingEventListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullInputMappingEventListener header_
    jregisterLevel header_ this
    InputMappingEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onInputMappingEvent" (\() -> onInputMappingEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    pure this

initFields_ :: NullInputMappingEventListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullInputMappingEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullInputMappingEventListener -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
onInputMappingEvent :: (JavaObjectClass this_) => this_ -> InputMappingEvent.InputMappingEvent -> IO (())
onInputMappingEvent object_ a1 = jmethod object_ "onInputMappingEvent" (\() -> (onInputMappingEvent_impl (javaCast object_ :: NullInputMappingEventListener))) () a1

onInputMappingEvent_super :: (JavaObjectClass this_) => this_ -> InputMappingEvent.InputMappingEvent -> IO (())
onInputMappingEvent_super object_ a1 = (onInputMappingEvent_impl (javaCast object_ :: NullInputMappingEventListener)) a1

onInputMappingEvent_impl :: NullInputMappingEventListener -> InputMappingEvent.InputMappingEvent -> IO (())
onInputMappingEvent_impl this inputMappingEvent = do
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: NullInputMappingEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: NullInputMappingEventListener)) a1

onEvent_impl :: NullInputMappingEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        pure ()


