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
-- package org.allbinary.game.input.mapping
module MotionInputMappingEventListener where

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
import qualified InputMappingEvent -- org.allbinary.game.input.mapping.event.InputMappingEvent
import qualified InputMappingEventListenerInterface -- org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements InputMappingEventListenerInterface
data MotionInputMappingEventListener = MotionInputMappingEventListener
    { header_ :: JavaHeader
    }

instance JavaNull MotionInputMappingEventListener where
    javaNull = javaNullRecord "MotionInputMappingEventListener"

instance JavaEquals MotionInputMappingEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionInputMappingEventListener where
    (==) = jrecordEquals

instance JavaObjectClass MotionInputMappingEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionInputMappingEventListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = MotionInputMappingEventListener header_
    jregisterLevel header_ this
    InputMappingEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onInputMappingEvent" (\() -> onInputMappingEvent_impl this)
    pure this

initFields_ :: MotionInputMappingEventListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MotionInputMappingEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionInputMappingEventListener -> IO ()
init_ this = do
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: MotionInputMappingEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: MotionInputMappingEventListener)) a1

onEvent_impl :: MotionInputMappingEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onInputMappingEvent :: (JavaObjectClass this_) => this_ -> InputMappingEvent.InputMappingEvent -> IO (())
onInputMappingEvent object_ a1 = jmethod object_ "onInputMappingEvent" (\() -> (onInputMappingEvent_impl (javaCast object_ :: MotionInputMappingEventListener))) () a1

onInputMappingEvent_super :: (JavaObjectClass this_) => this_ -> InputMappingEvent.InputMappingEvent -> IO (())
onInputMappingEvent_super object_ a1 = (onInputMappingEvent_impl (javaCast object_ :: MotionInputMappingEventListener)) a1

onInputMappingEvent_impl :: MotionInputMappingEventListener -> InputMappingEvent.InputMappingEvent -> IO (())
onInputMappingEvent_impl this inputMappingEvent = do
        pure ()


