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
module ProgressActivityInterface where

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
data ProgressActivityInterface = ProgressActivityInterface
    { header_ :: JavaHeader
    }

instance JavaNull ProgressActivityInterface where
    javaNull = javaNullRecord "ProgressActivityInterface"

instance JavaEquals ProgressActivityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressActivityInterface where
    (==) = jrecordEquals

instance JavaObjectClass ProgressActivityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ProgressActivityInterface
fromHeader_ header = ProgressActivityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ProgressActivityInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


runOnUiThread :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread object_ a1 = jmethod object_ "runOnUiThread" (\() -> (runOnUiThread_impl (javaCast object_ :: ProgressActivityInterface))) () a1

runOnUiThread_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread_super object_ a1 = (runOnUiThread_impl (javaCast object_ :: ProgressActivityInterface)) a1

runOnUiThread_impl :: ProgressActivityInterface -> Runnable.Runnable -> IO (())
runOnUiThread_impl this action = javaAbstractMethod "runOnUiThread"


onDismissTitleProgressBar :: (JavaObjectClass this_) => this_ -> IO (())
onDismissTitleProgressBar object_ = jmethod object_ "onDismissTitleProgressBar" (\() -> (onDismissTitleProgressBar_impl (javaCast object_ :: ProgressActivityInterface))) ()

onDismissTitleProgressBar_super :: (JavaObjectClass this_) => this_ -> IO (())
onDismissTitleProgressBar_super object_ = (onDismissTitleProgressBar_impl (javaCast object_ :: ProgressActivityInterface))

onDismissTitleProgressBar_impl :: ProgressActivityInterface -> IO (())
onDismissTitleProgressBar_impl this = javaAbstractMethod "onDismissTitleProgressBar"


onShowTitleProgressBar :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
onShowTitleProgressBar object_ a1 a2 = jmethod object_ "onShowTitleProgressBar" (\() -> (onShowTitleProgressBar_impl (javaCast object_ :: ProgressActivityInterface))) () a1 a2

onShowTitleProgressBar_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
onShowTitleProgressBar_super object_ a1 a2 = (onShowTitleProgressBar_impl (javaCast object_ :: ProgressActivityInterface)) a1 a2

onShowTitleProgressBar_impl :: ProgressActivityInterface -> Int -> Bool -> IO (())
onShowTitleProgressBar_impl this value indeterminate = javaAbstractMethod "onShowTitleProgressBar"


onTitleProgressBarSetProgress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onTitleProgressBarSetProgress object_ a1 = jmethod object_ "onTitleProgressBarSetProgress" (\() -> (onTitleProgressBarSetProgress_impl (javaCast object_ :: ProgressActivityInterface))) () a1

onTitleProgressBarSetProgress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onTitleProgressBarSetProgress_super object_ a1 = (onTitleProgressBarSetProgress_impl (javaCast object_ :: ProgressActivityInterface)) a1

onTitleProgressBarSetProgress_impl :: ProgressActivityInterface -> Int -> IO (())
onTitleProgressBarSetProgress_impl this value = javaAbstractMethod "onTitleProgressBarSetProgress"


