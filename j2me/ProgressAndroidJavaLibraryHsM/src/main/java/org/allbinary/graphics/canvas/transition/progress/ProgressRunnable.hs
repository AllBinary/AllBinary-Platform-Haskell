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
-- package org.allbinary.graphics.canvas.transition.progress
module ProgressRunnable (module ProgressRunnable, module ARunnable) where

import ARunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, midletActivity, progressCanvas)
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
import qualified ProgressCanvas -- same package or java.lang
import qualified Activity -- android.app.Activity
import qualified MidletActivityBase -- org.allbinary.android.activity.MidletActivityBase
import qualified SimpleProgressActivityInterface -- org.allbinary.android.activity.SimpleProgressActivityInterface
import qualified ARunnable -- org.allbinary.thread.ARunnable

data ProgressRunnable = ProgressRunnable
    { header_ :: JavaHeader
    , base :: ARunnable.ARunnable
    , midletActivity :: IORef (SimpleProgressActivityInterface.SimpleProgressActivityInterface)
    , progressCanvas :: IORef (ProgressCanvas.ProgressCanvas)
    }

instance JavaNull ProgressRunnable where
    javaNull = javaNullRecord "ProgressRunnable"

instance JavaEquals ProgressRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressRunnable where
    (==) = jrecordEquals

instance JavaObjectClass ProgressRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ProgressRunnable
newRecord_ = do
    base <- ARunnable.newRecord_
    let header_ = base.header_
    midletActivity <- newIORef javaNull
    progressCanvas <- newIORef javaNull
    let this = ProgressRunnable header_ base midletActivity progressCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: ProgressRunnable -> IO ()
initFields_ this = do
    jset this.midletActivity (javaNull)
    jset this.progressCanvas (javaNull)
    pure ()

new_2 :: Activity.Activity -> ProgressCanvas.ProgressCanvas -> IO ProgressRunnable
new_2 midletActivity progressCanvas = do
    this <- newRecord_
    init_2 this midletActivity progressCanvas
    pure this

init_2 :: ProgressRunnable -> Activity.Activity -> ProgressCanvas.ProgressCanvas -> IO ()
init_2 this midletActivity progressCanvas = do
        ARunnable.init_ this.base
        initFields_ this
        let midletActivity2 = (javaCast midletActivity :: MidletActivityBase.MidletActivityBase)
        jset (this).midletActivity ((javaCast midletActivity2 :: SimpleProgressActivityInterface.SimpleProgressActivityInterface))
        jset (this).progressCanvas (progressCanvas)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ProgressRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ProgressRunnable))

run_impl :: ProgressRunnable -> IO (())
run_impl this = do
        pure ()


