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
-- package org.allbinary.android.activity
module SimpleProgressActivityInterface where

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

-- Java interface: the classes that implement it have these functions
data SimpleProgressActivityInterface = SimpleProgressActivityInterface
    { header_ :: JavaHeader
    }

instance JavaNull SimpleProgressActivityInterface where
    javaNull = javaNullRecord "SimpleProgressActivityInterface"

instance JavaEquals SimpleProgressActivityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleProgressActivityInterface where
    (==) = jrecordEquals

instance JavaObjectClass SimpleProgressActivityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SimpleProgressActivityInterface
fromHeader_ header = SimpleProgressActivityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SimpleProgressActivityInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


runOnUiThread :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread object_ a1 = jmethod object_ "runOnUiThread" (\() -> (runOnUiThread_impl (javaCast object_ :: SimpleProgressActivityInterface))) () a1

runOnUiThread_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread_super object_ a1 = (runOnUiThread_impl (javaCast object_ :: SimpleProgressActivityInterface)) a1

runOnUiThread_impl :: SimpleProgressActivityInterface -> Runnable.Runnable -> IO (())
runOnUiThread_impl this action = javaAbstractMethod "runOnUiThread"


-- throws Exception
onSetProgress :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
onSetProgress object_ a1 a2 = jmethod object_ "onSetProgress" (\() -> (onSetProgress_impl (javaCast object_ :: SimpleProgressActivityInterface))) () a1 a2

onSetProgress_super :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
onSetProgress_super object_ a1 a2 = (onSetProgress_impl (javaCast object_ :: SimpleProgressActivityInterface)) a1 a2

onSetProgress_impl :: SimpleProgressActivityInterface -> Int -> String -> IO (())
onSetProgress_impl this value text = javaAbstractMethod "onSetProgress"


-- throws Exception
onDismissProgress :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
onDismissProgress object_ a1 = jmethod object_ "onDismissProgress" (\() -> (onDismissProgress_impl (javaCast object_ :: SimpleProgressActivityInterface))) () a1

onDismissProgress_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
onDismissProgress_super object_ a1 = (onDismissProgress_impl (javaCast object_ :: SimpleProgressActivityInterface)) a1

onDismissProgress_impl :: SimpleProgressActivityInterface -> JavaArray (Int) -> IO (())
onDismissProgress_impl this animationSequence = javaAbstractMethod "onDismissProgress"


-- throws Exception
onShowProgress :: (JavaObjectClass this_) => this_ -> Bool -> JavaArray (Int) -> IO (())
onShowProgress object_ a1 a2 = jmethod object_ "onShowProgress" (\() -> (onShowProgress_impl (javaCast object_ :: SimpleProgressActivityInterface))) () a1 a2

onShowProgress_super :: (JavaObjectClass this_) => this_ -> Bool -> JavaArray (Int) -> IO (())
onShowProgress_super object_ a1 a2 = (onShowProgress_impl (javaCast object_ :: SimpleProgressActivityInterface)) a1 a2

onShowProgress_impl :: SimpleProgressActivityInterface -> Bool -> JavaArray (Int) -> IO (())
onShowProgress_impl this indeterminate animationSequence = javaAbstractMethod "onShowProgress"


