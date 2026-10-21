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
module AndroidTitleProgressBar (module AndroidTitleProgressBar, module ProgressCanvas) where

import ProgressCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isInitialized, isInitialized_super, isInitialized_impl, start, start_super, start_impl, end, end_super, end_impl, addPortion, addPortion_super, addPortion_impl, addNormalPortion, addNormalPortion_super, addNormalPortion_impl, setValue, setValue_super, setValue_impl, waitUntilDisplayed, waitUntilDisplayed_super, waitUntilDisplayed_impl, paint, paint_super, paint_impl, showTitleProgressBarRunnable, dismissTitleProgressBarRunnable, progressDialogPortionSetProgressRunnable, progressDialogSetProgressRunnable, progressActivity, portion)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullProgressActivity -- org.allbinary.android.activity.NullProgressActivity
import qualified ProgressActivityInterface -- org.allbinary.android.activity.ProgressActivityInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ProgressCanvas

data AndroidTitleProgressBar = AndroidTitleProgressBar
    { header_ :: JavaHeader
    , base :: ProgressCanvas.ProgressCanvas
    , showTitleProgressBarRunnable :: IORef (ShowTitleProgressBarRunnable.ShowTitleProgressBarRunnable)
    , dismissTitleProgressBarRunnable :: IORef (DismissTitleProgressBarRunnable.DismissTitleProgressBarRunnable)
    , progressDialogPortionSetProgressRunnable :: IORef (TitleProgressBarPortionSetProgressRunnable.TitleProgressBarPortionSetProgressRunnable)
    , progressDialogSetProgressRunnable :: IORef (TitleProgressBarSetProgressRunnable.TitleProgressBarSetProgressRunnable)
    , progressActivity :: IORef (ProgressActivityInterface.ProgressActivityInterface)
    , portion :: IORef (Int)
    }

instance JavaNull AndroidTitleProgressBar where
    javaNull = javaNullRecord "AndroidTitleProgressBar"

instance JavaEquals AndroidTitleProgressBar where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidTitleProgressBar where
    (==) = jrecordEquals

instance JavaObjectClass AndroidTitleProgressBar where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AndroidTitleProgressBar
newRecord_ = do
    base <- ProgressCanvas.newRecord_
    let header_ = base.header_
    showTitleProgressBarRunnable <- newIORef javaNull
    dismissTitleProgressBarRunnable <- newIORef javaNull
    progressDialogPortionSetProgressRunnable <- newIORef javaNull
    progressDialogSetProgressRunnable <- newIORef javaNull
    progressActivity <- newIORef javaNull
    portion <- newIORef 0
    let this = AndroidTitleProgressBar header_ base showTitleProgressBarRunnable dismissTitleProgressBarRunnable progressDialogPortionSetProgressRunnable progressDialogSetProgressRunnable progressActivity portion
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    jregisterMethod header_ "addPortion" (\() -> addPortion_impl this)
    jregisterMethod header_ "addNormalPortion" (\() -> addNormalPortion_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "waitUntilDisplayed" (\() -> waitUntilDisplayed_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: AndroidTitleProgressBar -> IO ()
initFields_ this = do
    jset this.showTitleProgressBarRunnable =<< (ShowTitleProgressBarRunnable.new_1 this)
    jset this.dismissTitleProgressBarRunnable =<< (DismissTitleProgressBarRunnable.new_1 this)
    jset this.progressDialogPortionSetProgressRunnable =<< (TitleProgressBarPortionSetProgressRunnable.new_1 this)
    jset this.progressDialogSetProgressRunnable =<< (TitleProgressBarSetProgressRunnable.new_1 this)
    jset this.progressActivity ((javaCast NullProgressActivity.nULL_PROGRESS_ACTIVITY :: ProgressActivityInterface.ProgressActivityInterface))
    jset this.portion (0)
    pure ()

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO AndroidTitleProgressBar
new_3 title backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this title backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: AndroidTitleProgressBar -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this title backgroundBasicColor foregroundBasicColor = do
        ProgressCanvas.init_3 this.base (title) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


init :: (JavaObjectClass this_) => this_ -> ProgressActivityInterface.ProgressActivityInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AndroidTitleProgressBar))) () a1

init_super :: (JavaObjectClass this_) => this_ -> ProgressActivityInterface.ProgressActivityInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: AndroidTitleProgressBar)) a1

init_impl :: AndroidTitleProgressBar -> ProgressActivityInterface.ProgressActivityInterface -> IO (())
init_impl this activity = do
        jset (this).progressActivity (activity)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: AndroidTitleProgressBar))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: AndroidTitleProgressBar))

isInitialized_impl :: AndroidTitleProgressBar -> IO (Bool)
isInitialized_impl this = do
    javaCatchReturn $ do
        if ((jtoObject (jget (this).progressActivity)) /= (jtoObject NullProgressActivity.nULL_PROGRESS_ACTIVITY)) then do
            javaReturn (True)
        else do
            javaReturn (False)


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: AndroidTitleProgressBar))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: AndroidTitleProgressBar))

start_impl :: AndroidTitleProgressBar -> IO (())
start_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).sTART_METHOD_NAME) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).sTART_METHOD_NAME))
            Control.Monad.void (ProgressCanvas.start_super this.base)
            Control.Monad.void (ProgressActivityInterface.runOnUiThread ((jget (this).progressActivity)) (jget (this).showTitleProgressBarRunnable))
        pure ()


end :: (JavaObjectClass this_) => this_ -> IO (())
end object_ = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: AndroidTitleProgressBar))) ()

end_super :: (JavaObjectClass this_) => this_ -> IO (())
end_super object_ = (end_impl (javaCast object_ :: AndroidTitleProgressBar))

end_impl :: AndroidTitleProgressBar -> IO (())
end_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).eND_METHOD_NAME) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).eND_METHOD_NAME))
            Control.Monad.void (ProgressActivityInterface.runOnUiThread ((jget (this).progressActivity)) (jget (this).dismissTitleProgressBarRunnable))
            Control.Monad.void (ProgressCanvas.end_super this.base)
        pure ()


addPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addPortion object_ a1 a2 a3 = jmethod object_ "addPortion" (\() -> (addPortion_impl (javaCast object_ :: AndroidTitleProgressBar))) () a1 a2 a3

addPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addPortion_super object_ a1 a2 a3 = (addPortion_impl (javaCast object_ :: AndroidTitleProgressBar)) a1 a2 a3

addPortion_impl :: AndroidTitleProgressBar -> Int -> String -> Int -> IO (())
addPortion_impl this value text index = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget (this).base.aDD_PORTION) e)
            ) $ do
            Control.Monad.void (ProgressCanvas.addPortion_super this.base value text index)
            jset (this).portion (value)
            Control.Monad.void (ProgressActivityInterface.runOnUiThread ((jget (this).progressActivity)) (jget (this).progressDialogPortionSetProgressRunnable))
        pure ()


addNormalPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
addNormalPortion object_ a1 a2 = jmethod object_ "addNormalPortion" (\() -> (addNormalPortion_impl (javaCast object_ :: AndroidTitleProgressBar))) () a1 a2

addNormalPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
addNormalPortion_super object_ a1 a2 = (addNormalPortion_impl (javaCast object_ :: AndroidTitleProgressBar)) a1 a2

addNormalPortion_impl :: AndroidTitleProgressBar -> Int -> String -> IO (())
addNormalPortion_impl this value text = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget (this).base.aDD_PORTION) e)
            ) $ do
            Control.Monad.void (ProgressCanvas.addNormalPortion_super this.base value text)
            jset (this).portion (value)
            Control.Monad.void (ProgressActivityInterface.runOnUiThread ((jget (this).progressActivity)) (jget (this).progressDialogPortionSetProgressRunnable))
        pure ()


setValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: AndroidTitleProgressBar))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: AndroidTitleProgressBar)) a1

setValue_impl :: AndroidTitleProgressBar -> Int -> IO (())
setValue_impl this value = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "setValue" e)
            ) $ do
            Control.Monad.void (ProgressCanvas.setValue_super this.base value)
            Control.Monad.void (ProgressActivityInterface.runOnUiThread ((jget (this).progressActivity)) (jget (this).progressDialogSetProgressRunnable))
        pure ()


waitUntilDisplayed :: (JavaObjectClass this_) => this_ -> IO (())
waitUntilDisplayed object_ = jmethod object_ "waitUntilDisplayed" (\() -> (waitUntilDisplayed_impl (javaCast object_ :: AndroidTitleProgressBar))) ()

waitUntilDisplayed_super :: (JavaObjectClass this_) => this_ -> IO (())
waitUntilDisplayed_super object_ = (waitUntilDisplayed_impl (javaCast object_ :: AndroidTitleProgressBar))

waitUntilDisplayed_impl :: AndroidTitleProgressBar -> IO (())
waitUntilDisplayed_impl this = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AndroidTitleProgressBar))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AndroidTitleProgressBar)) a1

paint_impl :: AndroidTitleProgressBar -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()

-- Java nested class TitleProgressBarSetProgressRunnable: move it to its own module TitleProgressBarSetProgressRunnable
-- Java nested class TitleProgressBarPortionSetProgressRunnable: move it to its own module TitleProgressBarPortionSetProgressRunnable
-- Java nested class ShowTitleProgressBarRunnable: move it to its own module ShowTitleProgressBarRunnable
-- Java nested class DismissTitleProgressBarRunnable: move it to its own module DismissTitleProgressBarRunnable

