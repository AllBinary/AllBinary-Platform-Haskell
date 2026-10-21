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
-- package org.allbinary.canvas
module FullScreenInterface where

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
data FullScreenInterface = FullScreenInterface
    { header_ :: JavaHeader
    }

instance JavaNull FullScreenInterface where
    javaNull = javaNullRecord "FullScreenInterface"

instance JavaEquals FullScreenInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FullScreenInterface where
    (==) = jrecordEquals

instance JavaObjectClass FullScreenInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> FullScreenInterface
fromHeader_ header = FullScreenInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (FullScreenInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isFullScreenMode :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFullScreenMode object_ = jmethod object_ "isFullScreenMode" (\() -> (isFullScreenMode_impl (javaCast object_ :: FullScreenInterface))) ()

isFullScreenMode_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFullScreenMode_super object_ = (isFullScreenMode_impl (javaCast object_ :: FullScreenInterface))

isFullScreenMode_impl :: FullScreenInterface -> IO (Bool)
isFullScreenMode_impl this = javaAbstractMethod "isFullScreenMode"


setFullScreenMode :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullScreenMode object_ a1 = jmethod object_ "setFullScreenMode" (\() -> (setFullScreenMode_impl (javaCast object_ :: FullScreenInterface))) () a1

setFullScreenMode_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullScreenMode_super object_ a1 = (setFullScreenMode_impl (javaCast object_ :: FullScreenInterface)) a1

setFullScreenMode_impl :: FullScreenInterface -> Bool -> IO (())
setFullScreenMode_impl this mode = javaAbstractMethod "setFullScreenMode"


-- throws Exception
stopWaiting :: (JavaObjectClass this_) => this_ -> IO (())
stopWaiting object_ = jmethod object_ "stopWaiting" (\() -> (stopWaiting_impl (javaCast object_ :: FullScreenInterface))) ()

stopWaiting_super :: (JavaObjectClass this_) => this_ -> IO (())
stopWaiting_super object_ = (stopWaiting_impl (javaCast object_ :: FullScreenInterface))

stopWaiting_impl :: FullScreenInterface -> IO (())
stopWaiting_impl this = javaAbstractMethod "stopWaiting"


-- throws Exception
waitOnNotify :: (JavaObjectClass this_) => this_ -> Int -> IO (())
waitOnNotify object_ a1 = jmethod object_ "waitOnNotify" (\() -> (waitOnNotify_impl (javaCast object_ :: FullScreenInterface))) () a1

waitOnNotify_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
waitOnNotify_super object_ a1 = (waitOnNotify_impl (javaCast object_ :: FullScreenInterface)) a1

waitOnNotify_impl :: FullScreenInterface -> Int -> IO (())
waitOnNotify_impl this wait = javaAbstractMethod "waitOnNotify"


