{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.view
module EmulatorViewInterface where

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

-- Java interface: the classes that implement it have these functions
data EmulatorViewInterface = EmulatorViewInterface
    { header_ :: JavaHeader
    }

instance JavaNull EmulatorViewInterface where
    javaNull = javaNullRecord "EmulatorViewInterface"

instance JavaEquals EmulatorViewInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmulatorViewInterface where
    (==) = jrecordEquals

instance JavaObjectClass EmulatorViewInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> EmulatorViewInterface
fromHeader_ header = EmulatorViewInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (EmulatorViewInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setMidlet :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
setMidlet object_ a1 = jmethod object_ "setMidlet" (\() -> (setMidlet_impl (javaCast object_ :: EmulatorViewInterface))) () a1

setMidlet_super :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
setMidlet_super object_ a1 = (setMidlet_impl (javaCast object_ :: EmulatorViewInterface)) a1

setMidlet_impl :: EmulatorViewInterface -> MIDlet.MIDlet -> IO (())
setMidlet_impl this midlet = javaAbstractMethod "setMidlet"


onEmulatorInitComplete :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onEmulatorInitComplete object_ a1 = jmethod object_ "onEmulatorInitComplete" (\() -> (onEmulatorInitComplete_impl (javaCast object_ :: EmulatorViewInterface))) () (jtoObject a1)

onEmulatorInitComplete_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onEmulatorInitComplete_super object_ a1 = (onEmulatorInitComplete_impl (javaCast object_ :: EmulatorViewInterface)) (jtoObject a1)

onEmulatorInitComplete_impl :: EmulatorViewInterface -> JavaObject -> IO (())
onEmulatorInitComplete_impl this midletActivityObject_ = javaAbstractMethod "onEmulatorInitComplete"


onSetDisplayable :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
onSetDisplayable object_ a1 = jmethod object_ "onSetDisplayable" (\() -> (onSetDisplayable_impl (javaCast object_ :: EmulatorViewInterface))) () a1

onSetDisplayable_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
onSetDisplayable_super object_ a1 = (onSetDisplayable_impl (javaCast object_ :: EmulatorViewInterface)) a1

onSetDisplayable_impl :: EmulatorViewInterface -> Displayable.Displayable -> IO (())
onSetDisplayable_impl this displayable = javaAbstractMethod "onSetDisplayable"


