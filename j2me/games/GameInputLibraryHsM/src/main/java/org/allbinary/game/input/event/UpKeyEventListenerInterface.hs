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
module UpKeyEventListenerInterface (module UpKeyEventListenerInterface, module EventListenerInterface) where

import EventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onUpKeyEvent, onUpKeyEvent_super, onUpKeyEvent_impl, toString)
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
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface

-- Java interface: the classes that implement it have these functions
data UpKeyEventListenerInterface = UpKeyEventListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull UpKeyEventListenerInterface where
    javaNull = javaNullRecord "UpKeyEventListenerInterface"

instance JavaEquals UpKeyEventListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpKeyEventListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass UpKeyEventListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UpKeyEventListenerInterface
fromHeader_ header = UpKeyEventListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UpKeyEventListenerInterface header)
    EventListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
onUpKeyEvent :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onUpKeyEvent object_ a1 = jmethod object_ "onUpKeyEvent" (\() -> (onUpKeyEvent_impl (javaCast object_ :: UpKeyEventListenerInterface))) () a1

onUpKeyEvent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onUpKeyEvent_super object_ a1 = (onUpKeyEvent_impl (javaCast object_ :: UpKeyEventListenerInterface)) a1

onUpKeyEvent_impl :: UpKeyEventListenerInterface -> Int -> IO (())
onUpKeyEvent_impl this keyAsInteger = javaAbstractMethod "onUpKeyEvent"


