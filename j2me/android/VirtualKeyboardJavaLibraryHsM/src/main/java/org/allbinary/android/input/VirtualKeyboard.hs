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
-- package org.allbinary.android.input
module VirtualKeyboard where

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
import qualified VirtualKeyboardEvent -- org.allbinary.input.event.VirtualKeyboardEvent
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

data VirtualKeyboard = VirtualKeyboard
    { header_ :: JavaHeader
    }

instance JavaNull VirtualKeyboard where
    javaNull = javaNullRecord "VirtualKeyboard"

instance JavaEquals VirtualKeyboard where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VirtualKeyboard where
    (==) = jrecordEquals

instance JavaObjectClass VirtualKeyboard where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_VIRTUAL_KEYBOARD #-}
nULL_VIRTUAL_KEYBOARD = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VirtualKeyboard
newRecord_ = do
    header_ <- newJavaHeader
    let this = VirtualKeyboard header_
    jregisterLevel header_ this
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onVirtualKeyboardEvent" (\() -> onVirtualKeyboardEvent_impl this)
    jregisterMethod header_ "forceHide" (\() -> forceHide_impl this)
    jregisterMethod header_ "hide" (\() -> hide_impl this)
    pure this

initFields_ :: VirtualKeyboard -> IO ()
initFields_ this = do
    pure ()

new_ :: IO VirtualKeyboard
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VirtualKeyboard -> IO ()
init_ this = do
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: VirtualKeyboard))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: VirtualKeyboard)) a1

onEvent_impl :: VirtualKeyboard -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onVirtualKeyboardEvent :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent object_ a1 = jmethod object_ "onVirtualKeyboardEvent" (\() -> (onVirtualKeyboardEvent_impl (javaCast object_ :: VirtualKeyboard))) () a1

onVirtualKeyboardEvent_super :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_super object_ a1 = (onVirtualKeyboardEvent_impl (javaCast object_ :: VirtualKeyboard)) a1

onVirtualKeyboardEvent_impl :: VirtualKeyboard -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_impl this virtualKeyboardEvent = do
        pure ()


forceHide :: (JavaObjectClass this_) => this_ -> IO (())
forceHide object_ = jmethod object_ "forceHide" (\() -> (forceHide_impl (javaCast object_ :: VirtualKeyboard))) ()

forceHide_super :: (JavaObjectClass this_) => this_ -> IO (())
forceHide_super object_ = (forceHide_impl (javaCast object_ :: VirtualKeyboard))

forceHide_impl :: VirtualKeyboard -> IO (())
forceHide_impl this = do
        pure ()


hide :: (JavaObjectClass this_) => this_ -> IO (())
hide object_ = jmethod object_ "hide" (\() -> (hide_impl (javaCast object_ :: VirtualKeyboard))) ()

hide_super :: (JavaObjectClass this_) => this_ -> IO (())
hide_super object_ = (hide_impl (javaCast object_ :: VirtualKeyboard))

hide_impl :: VirtualKeyboard -> IO (())
hide_impl this = do
        pure ()


