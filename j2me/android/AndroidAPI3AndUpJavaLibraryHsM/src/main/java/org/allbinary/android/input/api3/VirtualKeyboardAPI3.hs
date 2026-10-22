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
-- package org.allbinary.android.input.api3
module VirtualKeyboardAPI3 (module VirtualKeyboardAPI3, module VirtualKeyboard) where

import VirtualKeyboard hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onEvent, onEvent_super, onEvent_impl, onVirtualKeyboardEvent, onVirtualKeyboardEvent_super, onVirtualKeyboardEvent_impl, forceHide, forceHide_super, forceHide_impl, hide, hide_super, hide_impl, showVirtualKeyboard, showVirtualKeyboard_super, showVirtualKeyboard_impl, hideVirtualKeyboard, hideVirtualKeyboard_super, hideVirtualKeyboard_impl, mAX_API, mIN_API, virtualKeyboard, activity, showVirtualKeyboardRunnable, hideVirtualKeyboardRunnable)
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
import qualified Runnable -- same package or java.lang
import qualified ShowVirtualKeyboardRunnable -- same package or java.lang
import qualified HideVirtualKeyboardRunnable -- same package or java.lang
import qualified Activity -- android.app.Activity
import qualified VirtualKeyboard -- org.allbinary.android.input.VirtualKeyboard
import qualified VirtualKeyboardEvent -- org.allbinary.input.event.VirtualKeyboardEvent
import qualified VirtualKeyboardEventHandler -- org.allbinary.input.event.VirtualKeyboardEventHandler
import qualified VirtualKeyboardEventListenerInterface -- org.allbinary.input.event.VirtualKeyboardEventListenerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements VirtualKeyboardEventListenerInterface
data VirtualKeyboardAPI3 = VirtualKeyboardAPI3
    { header_ :: JavaHeader
    , base :: VirtualKeyboard.VirtualKeyboard
    , virtualKeyboard :: IORef (Bool)
    , activity :: IORef (Activity.Activity)
    , showVirtualKeyboardRunnable :: IORef (Runnable.Runnable)
    , hideVirtualKeyboardRunnable :: IORef (Runnable.Runnable)
    }

instance JavaNull VirtualKeyboardAPI3 where
    javaNull = javaNullRecord "VirtualKeyboardAPI3"

instance JavaEquals VirtualKeyboardAPI3 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VirtualKeyboardAPI3 where
    (==) = jrecordEquals

instance JavaObjectClass VirtualKeyboardAPI3 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE mAX_API #-}
mAX_API = unsafePerformIO (newIORef ((2147483647 :: Int)))

{-# NOINLINE mIN_API #-}
mIN_API = unsafePerformIO (newIORef (3))

newRecord_ :: IO VirtualKeyboardAPI3
newRecord_ = do
    base <- VirtualKeyboard.newRecord_
    let header_ = base.header_
    virtualKeyboard <- newIORef False
    activity <- newIORef javaNull
    showVirtualKeyboardRunnable <- newIORef javaNull
    hideVirtualKeyboardRunnable <- newIORef javaNull
    let this = VirtualKeyboardAPI3 header_ base virtualKeyboard activity showVirtualKeyboardRunnable hideVirtualKeyboardRunnable
    jregisterLevel header_ this
    VirtualKeyboardEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onVirtualKeyboardEvent" (\() -> onVirtualKeyboardEvent_impl this)
    jregisterMethod header_ "forceHide" (\() -> forceHide_impl this)
    jregisterMethod header_ "hide" (\() -> hide_impl this)
    jregisterMethod header_ "showVirtualKeyboard" (\() -> showVirtualKeyboard_impl this)
    jregisterMethod header_ "hideVirtualKeyboard" (\() -> hideVirtualKeyboard_impl this)
    pure this

initFields_ :: VirtualKeyboardAPI3 -> IO ()
initFields_ this = do
    jset this.virtualKeyboard (False)
    jset this.activity (javaNull)
    jset this.showVirtualKeyboardRunnable (javaNull)
    jset this.hideVirtualKeyboardRunnable (javaNull)
    pure ()

new_1 :: Activity.Activity -> IO VirtualKeyboardAPI3
new_1 activity = do
    this <- newRecord_
    init_1 this activity
    pure this

init_1 :: VirtualKeyboardAPI3 -> Activity.Activity -> IO ()
init_1 this activity = do
        VirtualKeyboard.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).activity (activity)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (ShowVirtualKeyboardRunnable.new_1 (jget (this).activity)))
        jset (this).showVirtualKeyboardRunnable (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (HideVirtualKeyboardRunnable.new_1 (jget (this).activity)))
        jset (this).hideVirtualKeyboardRunnable (assignedValue)
        virtualKeyboardEventHandler <- (VirtualKeyboardEventHandler.getInstance)
        Control.Monad.void (VirtualKeyboardEventHandler.removeAllListeners virtualKeyboardEventHandler)
        Control.Monad.void (VirtualKeyboardEventHandler.addListenerInterface virtualKeyboardEventHandler (javaCast this))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: VirtualKeyboardAPI3))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: VirtualKeyboardAPI3)) a1

onEvent_impl :: VirtualKeyboardAPI3 -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onVirtualKeyboardEvent :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent object_ a1 = jmethod object_ "onVirtualKeyboardEvent" (\() -> (onVirtualKeyboardEvent_impl (javaCast object_ :: VirtualKeyboardAPI3))) () a1

onVirtualKeyboardEvent_super :: (JavaObjectClass this_) => this_ -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_super object_ a1 = (onVirtualKeyboardEvent_impl (javaCast object_ :: VirtualKeyboardAPI3)) a1

onVirtualKeyboardEvent_impl :: VirtualKeyboardAPI3 -> VirtualKeyboardEvent.VirtualKeyboardEvent -> IO (())
onVirtualKeyboardEvent_impl this virtualKeyboardEvent = do
        let isShow = (javaCast (jio (VirtualKeyboardEvent.getSource virtualKeyboardEvent)) :: Bool)
        if isShow then do
            Control.Monad.void (VirtualKeyboardAPI3.showVirtualKeyboard this)
        else do
            Control.Monad.void (VirtualKeyboardAPI3.hideVirtualKeyboard this)
        pure ()


forceHide :: (JavaObjectClass this_) => this_ -> IO (())
forceHide object_ = jmethod object_ "forceHide" (\() -> (forceHide_impl (javaCast object_ :: VirtualKeyboardAPI3))) ()

forceHide_super :: (JavaObjectClass this_) => this_ -> IO (())
forceHide_super object_ = (forceHide_impl (javaCast object_ :: VirtualKeyboardAPI3))

forceHide_impl :: VirtualKeyboardAPI3 -> IO (())
forceHide_impl this = do
        Control.Monad.void (VirtualKeyboardAPI3.hideVirtualKeyboard this)
        pure ()


hide :: (JavaObjectClass this_) => this_ -> IO (())
hide object_ = jmethod object_ "hide" (\() -> (hide_impl (javaCast object_ :: VirtualKeyboardAPI3))) ()

hide_super :: (JavaObjectClass this_) => this_ -> IO (())
hide_super object_ = (hide_impl (javaCast object_ :: VirtualKeyboardAPI3))

hide_impl :: VirtualKeyboardAPI3 -> IO (())
hide_impl this = do
        when (jget (this).virtualKeyboard) $ do
            Control.Monad.void (VirtualKeyboardAPI3.forceHide this)
        pure ()


showVirtualKeyboard :: (JavaObjectClass this_) => this_ -> IO (())
showVirtualKeyboard object_ = jmethod object_ "showVirtualKeyboard" (\() -> (showVirtualKeyboard_impl (javaCast object_ :: VirtualKeyboardAPI3))) ()

showVirtualKeyboard_super :: (JavaObjectClass this_) => this_ -> IO (())
showVirtualKeyboard_super object_ = (showVirtualKeyboard_impl (javaCast object_ :: VirtualKeyboardAPI3))

showVirtualKeyboard_impl :: VirtualKeyboardAPI3 -> IO (())
showVirtualKeyboard_impl this = do
        Control.Monad.void (Activity.runOnUiThread ((jget (this).activity)) (jget (this).showVirtualKeyboardRunnable))
        jset (this).virtualKeyboard (True)
        pure ()


hideVirtualKeyboard :: (JavaObjectClass this_) => this_ -> IO (())
hideVirtualKeyboard object_ = jmethod object_ "hideVirtualKeyboard" (\() -> (hideVirtualKeyboard_impl (javaCast object_ :: VirtualKeyboardAPI3))) ()

hideVirtualKeyboard_super :: (JavaObjectClass this_) => this_ -> IO (())
hideVirtualKeyboard_super object_ = (hideVirtualKeyboard_impl (javaCast object_ :: VirtualKeyboardAPI3))

hideVirtualKeyboard_impl :: VirtualKeyboardAPI3 -> IO (())
hideVirtualKeyboard_impl this = do
        Control.Monad.void (Activity.runOnUiThread ((jget (this).activity)) (jget (this).hideVirtualKeyboardRunnable))
        jset (this).virtualKeyboard (False)
        pure ()


