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
-- package org.allbinary.midlet
module MidletCompositeInterface where

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
import qualified AllBinaryMidlet -- same package or java.lang
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified MIDlet -- javax.microedition.midlet.MIDlet

-- Java interface: the classes that implement it have these functions
data MidletCompositeInterface = MidletCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull MidletCompositeInterface where
    javaNull = javaNullRecord "MidletCompositeInterface"

instance JavaEquals MidletCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MidletCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass MidletCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MidletCompositeInterface
fromHeader_ header = MidletCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MidletCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setMidlet :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
setMidlet object_ a1 = jmethod object_ "setMidlet" (\() -> (setMidlet_impl (javaCast object_ :: MidletCompositeInterface))) () a1

setMidlet_super :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
setMidlet_super object_ a1 = (setMidlet_impl (javaCast object_ :: MidletCompositeInterface)) a1

setMidlet_impl :: MidletCompositeInterface -> MIDlet.MIDlet -> IO (())
setMidlet_impl this midlet = javaAbstractMethod "setMidlet"


getMidlet :: (JavaObjectClass this_) => this_ -> IO (AllBinaryMidlet.AllBinaryMidlet)
getMidlet object_ = jmethod object_ "getMidlet" (\() -> (getMidlet_impl (javaCast object_ :: MidletCompositeInterface))) ()

getMidlet_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryMidlet.AllBinaryMidlet)
getMidlet_super object_ = (getMidlet_impl (javaCast object_ :: MidletCompositeInterface))

getMidlet_impl :: MidletCompositeInterface -> IO (AllBinaryMidlet.AllBinaryMidlet)
getMidlet_impl this = javaAbstractMethod "getMidlet"


getDisplayable :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getDisplayable object_ = jmethod object_ "getDisplayable" (\() -> (getDisplayable_impl (javaCast object_ :: MidletCompositeInterface))) ()

getDisplayable_super :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getDisplayable_super object_ = (getDisplayable_impl (javaCast object_ :: MidletCompositeInterface))

getDisplayable_impl :: MidletCompositeInterface -> IO (Displayable.Displayable)
getDisplayable_impl this = javaAbstractMethod "getDisplayable"


