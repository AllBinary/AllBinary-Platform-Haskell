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
-- package org.allbinary.game.displayable.canvas
module SaveHighScoreRunnable where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified HighScoreTextBox -- org.allbinary.game.score.displayable.HighScoreTextBox
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Runnable

-- implements Runnable
data SaveHighScoreRunnable = SaveHighScoreRunnable
    { header_ :: JavaHeader
    , progressCanvas :: IORef (ProgressCanvas.ProgressCanvas)
    , isLast :: IORef (Bool)
    , textBox :: IORef (HighScoreTextBox.HighScoreTextBox)
    }

instance JavaNull SaveHighScoreRunnable where
    javaNull = javaNullRecord "SaveHighScoreRunnable"

instance JavaEquals SaveHighScoreRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SaveHighScoreRunnable where
    (==) = jrecordEquals

instance JavaObjectClass SaveHighScoreRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO SaveHighScoreRunnable
newRecord_ = do
    header_ <- newJavaHeader
    progressCanvas <- newIORef javaNull
    isLast <- newIORef False
    textBox <- newIORef javaNull
    let this = SaveHighScoreRunnable header_ progressCanvas isLast textBox
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: SaveHighScoreRunnable -> IO ()
initFields_ this = do
    jset this.progressCanvas =<< (ProgressCanvasFactory.getInstance)
    jset this.isLast (False)
    jset this.textBox (javaNull)
    pure ()

new_2 :: Bool -> HighScoreTextBox.HighScoreTextBox -> IO SaveHighScoreRunnable
new_2 isLast textBox = do
    this <- newRecord_
    init_2 this isLast textBox
    pure this

init_2 :: SaveHighScoreRunnable -> Bool -> HighScoreTextBox.HighScoreTextBox -> IO ()
init_2 this isLast textBox = do
        initFields_ this
        jset (this).isLast (isLast)
        jset (this).textBox (textBox)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SaveHighScoreRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SaveHighScoreRunnable))

run_impl :: SaveHighScoreRunnable -> IO (())
run_impl this = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this "run" e)
            Control.Monad.void (ProgressCanvas.end ((jget (this).progressCanvas)))
            ) $ do
            if (jget (this).isLast) then do
                Control.Monad.void (HighScoreTextBox.submit ((jget (this).textBox)))
            else do
                Control.Monad.void (HighScoreTextBox.saveHighScore ((jget (this).textBox)))
        pure ()


