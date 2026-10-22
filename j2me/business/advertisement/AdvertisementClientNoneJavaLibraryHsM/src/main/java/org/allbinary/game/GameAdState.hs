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
-- package org.allbinary.game
module GameAdState (module GameAdState, module GameAdStateBase) where

import GameAdStateBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onVirtualKeyboardEvent, onVirtualKeyboardEvent_super, onVirtualKeyboardEvent_impl)
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
import qualified GameAdStateBase -- org.allbinary.business.advertisement.GameAdStateBase
import qualified AdConfiguration -- org.allbinary.business.advertisement.AdConfiguration
import qualified VirtualKeyboardEvent -- org.allbinary.input.event.VirtualKeyboardEvent
import qualified VirtualKeyboardEventHandler -- org.allbinary.input.event.VirtualKeyboardEventHandler
import qualified VirtualKeyboardEventListenerInterface -- org.allbinary.input.event.VirtualKeyboardEventListenerInterface

-- implements VirtualKeyboardEventListenerInterface
data GameAdState = GameAdState
    { header_ :: JavaHeader
    , base :: GameAdStateBase.GameAdStateBase
    }

instance JavaNull GameAdState where
    javaNull = javaNullRecord "GameAdState"

instance JavaEquals GameAdState where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameAdState where
    (==) = jrecordEquals

instance JavaObjectClass GameAdState where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameAdState
newRecord_ = do
    base <- GameAdStateBase.newRecord_
    let header_ = base.header_
    let this = GameAdState header_ base
    jregisterLevel header_ this
    VirtualKeyboardEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onVirtualKeyboardEvent" (\() -> onVirtualKeyboardEvent_impl this)
    pure this

initFields_ :: GameAdState -> IO ()
initFields_ this = do
    pure ()

new_1 :: AdConfiguration.AdConfiguration -> IO GameAdState
new_1 adConfiguration = do
    this <- newRecord_
    init_1 this adConfiguration
    pure this

init_1 :: GameAdState -> AdConfiguration.AdConfiguration -> IO ()
init_1 this adConfiguration = do
        GameAdStateBase.init_1 this.base (adConfiguration)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (VirtualKeyboardEventHandler.addListenerInterface ((jio (VirtualKeyboardEventHandler.getInstance))) (javaCast this))
        pure ()


-- throws Exception
onVirtualKeyboardEvent :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent object_ a1 = jmethod object_ "onVirtualKeyboardEvent" (\() -> (onVirtualKeyboardEvent_impl (javaCast object_ :: GameAdState))) () a1

onVirtualKeyboardEvent_super :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_super object_ a1 = (onVirtualKeyboardEvent_impl (javaCast object_ :: GameAdState)) a1

onVirtualKeyboardEvent_impl :: GameAdState -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_impl this virtualKeyboardEvent = do
        pure ()


