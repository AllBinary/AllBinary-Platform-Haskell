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
-- package org.allbinary.graphics
module ScreenListenerInterface where

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

-- Java interface: the classes that implement it have these functions
data ScreenListenerInterface = ScreenListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull ScreenListenerInterface where
    javaNull = javaNullRecord "ScreenListenerInterface"

instance JavaEquals ScreenListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass ScreenListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ScreenListenerInterface
fromHeader_ header = ScreenListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ScreenListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onFullScreen :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
onFullScreen object_ a1 = jmethod object_ "onFullScreen" (\() -> (onFullScreen_impl (javaCast object_ :: ScreenListenerInterface))) () a1

onFullScreen_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
onFullScreen_super object_ a1 = (onFullScreen_impl (javaCast object_ :: ScreenListenerInterface)) a1

onFullScreen_impl :: ScreenListenerInterface -> Bool -> IO (())
onFullScreen_impl this isFullScreen = javaAbstractMethod "onFullScreen"


onFullScreenDisplay :: (JavaObjectClass this_) => this_ -> IO (())
onFullScreenDisplay object_ = jmethod object_ "onFullScreenDisplay" (\() -> (onFullScreenDisplay_impl (javaCast object_ :: ScreenListenerInterface))) ()

onFullScreenDisplay_super :: (JavaObjectClass this_) => this_ -> IO (())
onFullScreenDisplay_super object_ = (onFullScreenDisplay_impl (javaCast object_ :: ScreenListenerInterface))

onFullScreenDisplay_impl :: ScreenListenerInterface -> IO (())
onFullScreenDisplay_impl this = javaAbstractMethod "onFullScreenDisplay"


