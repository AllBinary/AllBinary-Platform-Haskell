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
-- package org.allbinary.android.activity
module NullProgressActivity where

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
import qualified ProgressActivityInterface

-- implements ProgressActivityInterface
data NullProgressActivity = NullProgressActivity
    { header_ :: JavaHeader
    }

instance JavaNull NullProgressActivity where
    javaNull = javaNullRecord "NullProgressActivity"

instance JavaEquals NullProgressActivity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullProgressActivity where
    (==) = jrecordEquals

instance JavaObjectClass NullProgressActivity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PROGRESS_ACTIVITY #-}
nULL_PROGRESS_ACTIVITY = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullProgressActivity
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullProgressActivity header_
    jregisterLevel header_ this
    ProgressActivityInterface.registerInterface_ header_
    jregisterMethod header_ "runOnUiThread" (\() -> runOnUiThread_impl this)
    jregisterMethod header_ "onDismissTitleProgressBar" (\() -> onDismissTitleProgressBar_impl this)
    jregisterMethod header_ "onShowTitleProgressBar" (\() -> onShowTitleProgressBar_impl this)
    jregisterMethod header_ "onTitleProgressBarSetProgress" (\() -> onTitleProgressBarSetProgress_impl this)
    pure this

initFields_ :: NullProgressActivity -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullProgressActivity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullProgressActivity -> IO ()
init_ this = do
    initFields_ this


runOnUiThread :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread object_ a1 = jmethod object_ "runOnUiThread" (\() -> (runOnUiThread_impl (javaCast object_ :: NullProgressActivity))) () a1

runOnUiThread_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread_super object_ a1 = (runOnUiThread_impl (javaCast object_ :: NullProgressActivity)) a1

runOnUiThread_impl :: NullProgressActivity -> Runnable.Runnable -> IO (())
runOnUiThread_impl this action = do
        pure ()


onDismissTitleProgressBar :: (JavaObjectClass this_) => this_ -> IO (())
onDismissTitleProgressBar object_ = jmethod object_ "onDismissTitleProgressBar" (\() -> (onDismissTitleProgressBar_impl (javaCast object_ :: NullProgressActivity))) ()

onDismissTitleProgressBar_super :: (JavaObjectClass this_) => this_ -> IO (())
onDismissTitleProgressBar_super object_ = (onDismissTitleProgressBar_impl (javaCast object_ :: NullProgressActivity))

onDismissTitleProgressBar_impl :: NullProgressActivity -> IO (())
onDismissTitleProgressBar_impl this = do
        pure ()


onShowTitleProgressBar :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
onShowTitleProgressBar object_ a1 a2 = jmethod object_ "onShowTitleProgressBar" (\() -> (onShowTitleProgressBar_impl (javaCast object_ :: NullProgressActivity))) () a1 a2

onShowTitleProgressBar_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
onShowTitleProgressBar_super object_ a1 a2 = (onShowTitleProgressBar_impl (javaCast object_ :: NullProgressActivity)) a1 a2

onShowTitleProgressBar_impl :: NullProgressActivity -> Int -> Bool -> IO (())
onShowTitleProgressBar_impl this value indeterminate = do
        pure ()


onTitleProgressBarSetProgress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onTitleProgressBarSetProgress object_ a1 = jmethod object_ "onTitleProgressBarSetProgress" (\() -> (onTitleProgressBarSetProgress_impl (javaCast object_ :: NullProgressActivity))) () a1

onTitleProgressBarSetProgress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onTitleProgressBarSetProgress_super object_ a1 = (onTitleProgressBarSetProgress_impl (javaCast object_ :: NullProgressActivity)) a1

onTitleProgressBarSetProgress_impl :: NullProgressActivity -> Int -> IO (())
onTitleProgressBarSetProgress_impl this value = do
        pure ()


