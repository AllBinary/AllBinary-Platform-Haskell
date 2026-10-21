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
module TitleProgressBarSetProgressRunnable (module TitleProgressBarSetProgressRunnable, module ProgressRunnable) where

import ProgressRunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, logUtil)
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
import qualified SimpleProgressActivityInterface -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Activity -- android.app.Activity
import qualified ProgressRunnable

data TitleProgressBarSetProgressRunnable = TitleProgressBarSetProgressRunnable
    { header_ :: JavaHeader
    , base :: ProgressRunnable.ProgressRunnable
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TitleProgressBarSetProgressRunnable where
    javaNull = javaNullRecord "TitleProgressBarSetProgressRunnable"

instance JavaEquals TitleProgressBarSetProgressRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TitleProgressBarSetProgressRunnable where
    (==) = jrecordEquals

instance JavaObjectClass TitleProgressBarSetProgressRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TitleProgressBarSetProgressRunnable
newRecord_ = do
    base <- ProgressRunnable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = TitleProgressBarSetProgressRunnable header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: TitleProgressBarSetProgressRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_2 :: Activity.Activity -> ProgressCanvas.ProgressCanvas -> IO TitleProgressBarSetProgressRunnable
new_2 midletActivity progressCanvas = do
    this <- newRecord_
    init_2 this midletActivity progressCanvas
    pure this

init_2 :: TitleProgressBarSetProgressRunnable -> Activity.Activity -> ProgressCanvas.ProgressCanvas -> IO ()
init_2 this midletActivity progressCanvas = do
        ProgressRunnable.init_2 this.base (midletActivity) (progressCanvas)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: TitleProgressBarSetProgressRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: TitleProgressBarSetProgressRunnable))

run_impl :: TitleProgressBarSetProgressRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            Control.Monad.void (Activity.onSetProgress ((jget (this).base.midletActivity)) (Prelude.truncate (jio (ProgressCanvas.getValue ((jget (this).base.progressCanvas))))) (jio (ProgressCanvas.getText ((jget (this).base.progressCanvas)))))
        pure ()


