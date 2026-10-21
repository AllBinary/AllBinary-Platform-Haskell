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
-- package org.allbinary.game.input.event
module DownKeyEventListenerInterface (module DownKeyEventListenerInterface, module EventListenerInterface) where

import EventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onDownKeyEvent, onDownKeyEvent_super, onDownKeyEvent_impl, onDownKey, onDownKey_super, onDownKey_impl, toString)
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
import qualified GameKeyEvent -- same package or java.lang
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface

-- Java interface: the classes that implement it have these functions
data DownKeyEventListenerInterface = DownKeyEventListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull DownKeyEventListenerInterface where
    javaNull = javaNullRecord "DownKeyEventListenerInterface"

instance JavaEquals DownKeyEventListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownKeyEventListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass DownKeyEventListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DownKeyEventListenerInterface
fromHeader_ header = DownKeyEventListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DownKeyEventListenerInterface header)
    EventListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
onDownKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownKeyEvent object_ a1 = jmethod object_ "onDownKeyEvent" (\() -> (onDownKeyEvent_impl (javaCast object_ :: DownKeyEventListenerInterface))) () a1

onDownKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownKeyEvent_super object_ a1 = (onDownKeyEvent_impl (javaCast object_ :: DownKeyEventListenerInterface)) a1

onDownKeyEvent_impl :: DownKeyEventListenerInterface -> GameKeyEvent.GameKeyEvent -> IO (())
onDownKeyEvent_impl this keyInteger = javaAbstractMethod "onDownKeyEvent"


-- throws Exception
onDownKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onDownKey object_ a1 = jmethod object_ "onDownKey" (\() -> (onDownKey_impl (javaCast object_ :: DownKeyEventListenerInterface))) () a1

onDownKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onDownKey_super object_ a1 = (onDownKey_impl (javaCast object_ :: DownKeyEventListenerInterface)) a1

onDownKey_impl :: DownKeyEventListenerInterface -> Int -> IO (())
onDownKey_impl this keyInteger = javaAbstractMethod "onDownKey"


