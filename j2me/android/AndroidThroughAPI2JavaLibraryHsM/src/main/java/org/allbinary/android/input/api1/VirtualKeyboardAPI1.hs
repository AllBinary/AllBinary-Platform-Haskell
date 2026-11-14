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
-- package org.allbinary.android.input.api1
module VirtualKeyboardAPI1 (module VirtualKeyboardAPI1, module VirtualKeyboard) where

import VirtualKeyboard hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onVirtualKeyboardEvent, onVirtualKeyboardEvent_super, onVirtualKeyboardEvent_impl, onEvent, onEvent_super, onEvent_impl, mIN_API, mAX_API)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified VirtualKeyboard -- org.allbinary.android.input.VirtualKeyboard
import qualified VirtualKeyboardEventListenerInterface -- org.allbinary.input.event.VirtualKeyboardEventListenerInterface
import qualified Activity -- android.app.Activity
import qualified VirtualKeyboardEvent -- org.allbinary.input.event.VirtualKeyboardEvent
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

-- implements VirtualKeyboardEventListenerInterface
data VirtualKeyboardAPI1 = VirtualKeyboardAPI1
    { header_ :: JavaHeader
    , base :: VirtualKeyboard.VirtualKeyboard
    }

instance JavaNull VirtualKeyboardAPI1 where
    javaNull = javaNullRecord "VirtualKeyboardAPI1"

instance JavaEquals VirtualKeyboardAPI1 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VirtualKeyboardAPI1 where
    (==) = jrecordEquals

instance JavaObjectClass VirtualKeyboardAPI1 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mIN_API :: IORef (Int)
{-# NOINLINE mIN_API #-}
mIN_API = unsafePerformIO (newIORef (1))

mAX_API :: IORef (Int)
{-# NOINLINE mAX_API #-}
mAX_API = unsafePerformIO (newIORef (2))

newRecord_ :: IO VirtualKeyboardAPI1
newRecord_ = do
    base <- VirtualKeyboard.newRecord_
    let header_ = base.header_
    let this = VirtualKeyboardAPI1 header_ base
    jregisterLevel header_ this
    VirtualKeyboardEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onVirtualKeyboardEvent" (\() -> onVirtualKeyboardEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    pure this

initFields_ :: VirtualKeyboardAPI1 -> IO ()
initFields_ this = do
    pure ()

new_1 :: Activity.Activity -> IO VirtualKeyboardAPI1
new_1 activity = do
    this <- newRecord_
    init_1 this activity
    pure this

init_1 :: VirtualKeyboardAPI1 -> Activity.Activity -> IO ()
init_1 this activity = do
        VirtualKeyboard.init_ this.base
        initFields_ this
        pure ()
        pure ()


onVirtualKeyboardEvent :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent object_ a1 = jmethod object_ "onVirtualKeyboardEvent" (\() -> (onVirtualKeyboardEvent_impl (javaCast object_ :: VirtualKeyboardAPI1))) () a1

onVirtualKeyboardEvent_super :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_super object_ a1 = (onVirtualKeyboardEvent_impl (javaCast object_ :: VirtualKeyboardAPI1)) a1

onVirtualKeyboardEvent_impl :: VirtualKeyboardAPI1 -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_impl this virtualKeyboardEvent = do
        Control.Monad.void (VirtualKeyboard.onVirtualKeyboardEvent_super this.base virtualKeyboardEvent)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: VirtualKeyboardAPI1))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: VirtualKeyboardAPI1)) a1

onEvent_impl :: VirtualKeyboardAPI1 -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (VirtualKeyboard.onEvent_super this.base eventObject)
        pure ()


