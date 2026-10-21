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
-- package org.allbinary.view
module NullEmulatorView where

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
import qualified Any -- same package or java.lang
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified MIDlet -- javax.microedition.midlet.MIDlet
import qualified EmulatorViewInterface

-- implements EmulatorViewInterface
data NullEmulatorView = NullEmulatorView
    { header_ :: JavaHeader
    }

instance JavaNull NullEmulatorView where
    javaNull = javaNullRecord "NullEmulatorView"

instance JavaEquals NullEmulatorView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullEmulatorView where
    (==) = jrecordEquals

instance JavaObjectClass NullEmulatorView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_EMULATOR_VIEW #-}
nULL_EMULATOR_VIEW = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullEmulatorView
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullEmulatorView header_
    jregisterLevel header_ this
    EmulatorViewInterface.registerInterface_ header_
    jregisterMethod header_ "setMidlet" (\() -> setMidlet_impl this)
    jregisterMethod header_ "onEmulatorInitComplete" (\() -> onEmulatorInitComplete_impl this)
    jregisterMethod header_ "onSetDisplayable" (\() -> onSetDisplayable_impl this)
    pure this

initFields_ :: NullEmulatorView -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullEmulatorView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullEmulatorView -> IO ()
init_ this = do
    initFields_ this


setMidlet :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
setMidlet object_ a1 = jmethod object_ "setMidlet" (\() -> (setMidlet_impl (javaCast object_ :: NullEmulatorView))) () a1

setMidlet_super :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
setMidlet_super object_ a1 = (setMidlet_impl (javaCast object_ :: NullEmulatorView)) a1

setMidlet_impl :: NullEmulatorView -> MIDlet.MIDlet -> IO (())
setMidlet_impl this midlet = do
        pure ()


onEmulatorInitComplete :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onEmulatorInitComplete object_ a1 = jmethod object_ "onEmulatorInitComplete" (\() -> (onEmulatorInitComplete_impl (javaCast object_ :: NullEmulatorView))) () (jtoObject a1)

onEmulatorInitComplete_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onEmulatorInitComplete_super object_ a1 = (onEmulatorInitComplete_impl (javaCast object_ :: NullEmulatorView)) (jtoObject a1)

onEmulatorInitComplete_impl :: NullEmulatorView -> JavaObject -> IO (())
onEmulatorInitComplete_impl this midletActivityObject_ = do
        let midletActivity = jtoObject midletActivityObject_
        pure ()


onSetDisplayable :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
onSetDisplayable object_ a1 = jmethod object_ "onSetDisplayable" (\() -> (onSetDisplayable_impl (javaCast object_ :: NullEmulatorView))) () a1

onSetDisplayable_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
onSetDisplayable_super object_ a1 = (onSetDisplayable_impl (javaCast object_ :: NullEmulatorView)) a1

onSetDisplayable_impl :: NullEmulatorView -> Displayable.Displayable -> IO (())
onSetDisplayable_impl this displayable = do
        pure ()


