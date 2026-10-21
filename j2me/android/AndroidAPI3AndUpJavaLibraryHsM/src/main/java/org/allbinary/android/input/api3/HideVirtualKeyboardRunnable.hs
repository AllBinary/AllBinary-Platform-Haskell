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
module HideVirtualKeyboardRunnable where

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
import qualified IBinder -- android.os.IBinder
import qualified View -- android.view.View
import qualified InputMethodManager -- android.view.inputmethod.InputMethodManager
import qualified ViewCompositeInterface -- org.allbinary.android.activity.ViewCompositeInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Runnable

-- implements Runnable
data HideVirtualKeyboardRunnable = HideVirtualKeyboardRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , activity :: IORef (Activity.Activity)
    }

instance JavaNull HideVirtualKeyboardRunnable where
    javaNull = javaNullRecord "HideVirtualKeyboardRunnable"

instance JavaEquals HideVirtualKeyboardRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HideVirtualKeyboardRunnable where
    (==) = jrecordEquals

instance JavaObjectClass HideVirtualKeyboardRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HideVirtualKeyboardRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    activity <- newIORef javaNull
    let this = HideVirtualKeyboardRunnable header_ logUtil activity
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: HideVirtualKeyboardRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.activity (javaNull)
    pure ()

new_1 :: Activity.Activity -> IO HideVirtualKeyboardRunnable
new_1 activity = do
    this <- newRecord_
    init_1 this activity
    pure this

init_1 :: HideVirtualKeyboardRunnable -> Activity.Activity -> IO ()
init_1 this activity = do
        initFields_ this
        jset (this).activity (activity)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: HideVirtualKeyboardRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: HideVirtualKeyboardRunnable))

run_impl :: HideVirtualKeyboardRunnable -> IO (())
run_impl this = do
    javaCatchReturn $ do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            let inputMethodManager = (javaCast (jio (Activity.getSystemService ((jget (this).activity)) (Context.iNPUT_METHOD_SERVICE))) :: InputMethodManager.InputMethodManager)
            let viewCompositeInterface = (javaCast (jget (this).activity) :: ViewCompositeInterface.ViewCompositeInterface)
            when (viewCompositeInterface == javaNull) $ do
                Control.Monad.void (ForcedLogUtil.log "Activity Null" this)
            view <- (ViewCompositeInterface.getView viewCompositeInterface)
            when ((jio (View.getWindowToken view)) == javaNull) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Unable to hide virtual keyboard as window token is null - This usually happens during loading when the view is not attached to a window" this (jget (commonStrings).rUN))
                javaReturn (())
            token <- (View.getWindowToken view)
            Control.Monad.void (InputMethodManager.hideSoftInputFromWindow inputMethodManager token 0)
    pure ()


