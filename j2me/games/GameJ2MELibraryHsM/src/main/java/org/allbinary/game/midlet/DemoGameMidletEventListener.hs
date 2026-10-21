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
-- package org.allbinary.game.midlet
module DemoGameMidletEventListener (module DemoGameMidletEventListener, module EventListenerInterface) where

import EventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onDemoStart, onDemoStart_super, onDemoStart_impl, onGameStart, onGameStart_super, onGameStart_impl, onDemoGameMidletEvent, onDemoGameMidletEvent_super, onDemoGameMidletEvent_impl, toString)
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
import qualified DemoGameMidletEvent -- same package or java.lang
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface

-- Java interface: the classes that implement it have these functions
data DemoGameMidletEventListener = DemoGameMidletEventListener
    { header_ :: JavaHeader
    }

instance JavaNull DemoGameMidletEventListener where
    javaNull = javaNullRecord "DemoGameMidletEventListener"

instance JavaEquals DemoGameMidletEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameMidletEventListener where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameMidletEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DemoGameMidletEventListener
fromHeader_ header = DemoGameMidletEventListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DemoGameMidletEventListener header)
    EventListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onDemoStart :: (JavaObjectClass this_) => this_ -> IO (())
onDemoStart object_ = jmethod object_ "onDemoStart" (\() -> (onDemoStart_impl (javaCast object_ :: DemoGameMidletEventListener))) ()

onDemoStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onDemoStart_super object_ = (onDemoStart_impl (javaCast object_ :: DemoGameMidletEventListener))

onDemoStart_impl :: DemoGameMidletEventListener -> IO (())
onDemoStart_impl this = javaAbstractMethod "onDemoStart"


onGameStart :: (JavaObjectClass this_) => this_ -> IO (())
onGameStart object_ = jmethod object_ "onGameStart" (\() -> (onGameStart_impl (javaCast object_ :: DemoGameMidletEventListener))) ()

onGameStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onGameStart_super object_ = (onGameStart_impl (javaCast object_ :: DemoGameMidletEventListener))

onGameStart_impl :: DemoGameMidletEventListener -> IO (())
onGameStart_impl this = javaAbstractMethod "onGameStart"


onDemoGameMidletEvent :: (JavaObjectClass this_) => this_ -> DemoGameMidletEvent.DemoGameMidletEvent -> IO (())
onDemoGameMidletEvent object_ a1 = jmethod object_ "onDemoGameMidletEvent" (\() -> (onDemoGameMidletEvent_impl (javaCast object_ :: DemoGameMidletEventListener))) () a1

onDemoGameMidletEvent_super :: (JavaObjectClass this_) => this_ -> DemoGameMidletEvent.DemoGameMidletEvent -> IO (())
onDemoGameMidletEvent_super object_ a1 = (onDemoGameMidletEvent_impl (javaCast object_ :: DemoGameMidletEventListener)) a1

onDemoGameMidletEvent_impl :: DemoGameMidletEventListener -> DemoGameMidletEvent.DemoGameMidletEvent -> IO (())
onDemoGameMidletEvent_impl this demoGameMidletEvent = javaAbstractMethod "onDemoGameMidletEvent"


