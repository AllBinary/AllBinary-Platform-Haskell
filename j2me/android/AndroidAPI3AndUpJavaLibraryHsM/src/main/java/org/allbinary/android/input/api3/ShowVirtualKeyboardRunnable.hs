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
module ShowVirtualKeyboardRunnable where

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
import qualified Activity -- android.app.Activity
import qualified Context -- android.content.Context
import qualified View -- android.view.View
import qualified InputMethodManager -- android.view.inputmethod.InputMethodManager
import qualified ViewCompositeInterface -- org.allbinary.android.activity.ViewCompositeInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Runnable

-- implements Runnable
data ShowVirtualKeyboardRunnable = ShowVirtualKeyboardRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , activity :: IORef (Activity.Activity)
    }

instance JavaNull ShowVirtualKeyboardRunnable where
    javaNull = javaNullRecord "ShowVirtualKeyboardRunnable"

instance JavaEquals ShowVirtualKeyboardRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShowVirtualKeyboardRunnable where
    (==) = jrecordEquals

instance JavaObjectClass ShowVirtualKeyboardRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShowVirtualKeyboardRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    activity <- newIORef javaNull
    let this = ShowVirtualKeyboardRunnable header_ logUtil activity
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: ShowVirtualKeyboardRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.activity (javaNull)
    pure ()

new_1 :: Activity.Activity -> IO ShowVirtualKeyboardRunnable
new_1 activity = do
    this <- newRecord_
    init_1 this activity
    pure this

init_1 :: ShowVirtualKeyboardRunnable -> Activity.Activity -> IO ()
init_1 this activity = do
        initFields_ this
        jset (this).activity (activity)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ShowVirtualKeyboardRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ShowVirtualKeyboardRunnable))

run_impl :: ShowVirtualKeyboardRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            let inputMethodManager = (javaCast (jio (Activity.getSystemService ((jget (this).activity)) (Context.iNPUT_METHOD_SERVICE))) :: InputMethodManager.InputMethodManager)
            let viewCompositeInterface = (javaCast (jget (this).activity) :: ViewCompositeInterface.ViewCompositeInterface)
            when (viewCompositeInterface == javaNull) $ do
                Control.Monad.void (ForcedLogUtil.log "Activity Null" this)
            view <- (ViewCompositeInterface.getView viewCompositeInterface)
            Control.Monad.void (InputMethodManager.toggleSoftInputFromWindow inputMethodManager (jio (View.getWindowToken view)) (InputMethodManager.sHOW_FORCED) 0)
        pure ()


