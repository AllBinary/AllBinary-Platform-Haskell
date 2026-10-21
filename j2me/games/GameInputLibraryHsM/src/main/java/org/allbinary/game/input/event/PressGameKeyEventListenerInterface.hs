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
module PressGameKeyEventListenerInterface (module PressGameKeyEventListenerInterface, module EventListenerInterface) where

import EventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onPressGameKeyEvent, onPressGameKeyEvent_super, onPressGameKeyEvent_impl, toString)
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
data PressGameKeyEventListenerInterface = PressGameKeyEventListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull PressGameKeyEventListenerInterface where
    javaNull = javaNullRecord "PressGameKeyEventListenerInterface"

instance JavaEquals PressGameKeyEventListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PressGameKeyEventListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass PressGameKeyEventListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PressGameKeyEventListenerInterface
fromHeader_ header = PressGameKeyEventListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PressGameKeyEventListenerInterface header)
    EventListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
onPressGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent object_ a1 = jmethod object_ "onPressGameKeyEvent" (\() -> (onPressGameKeyEvent_impl (javaCast object_ :: PressGameKeyEventListenerInterface))) () a1

onPressGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_super object_ a1 = (onPressGameKeyEvent_impl (javaCast object_ :: PressGameKeyEventListenerInterface)) a1

onPressGameKeyEvent_impl :: PressGameKeyEventListenerInterface -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_impl this gameKeyEvent = javaAbstractMethod "onPressGameKeyEvent"


