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
-- package org.allbinary.game.score.displayable
module HighScoreRunnable (module HighScoreRunnable, module ARunnable) where

import ARunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, highScoresCanvas)
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
import qualified HighScoresCanvas -- same package or java.lang
import qualified RepaintBehavior -- same package or java.lang
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ARunnable -- org.allbinary.thread.ARunnable

data HighScoreRunnable = HighScoreRunnable
    { header_ :: JavaHeader
    , base :: ARunnable.ARunnable
    , highScoresCanvas :: IORef (HighScoresCanvas.HighScoresCanvas)
    }

instance JavaNull HighScoreRunnable where
    javaNull = javaNullRecord "HighScoreRunnable"

instance JavaEquals HighScoreRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreRunnable where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoreRunnable
newRecord_ = do
    base <- ARunnable.newRecord_
    let header_ = base.header_
    highScoresCanvas <- newIORef javaNull
    let this = HighScoreRunnable header_ base highScoresCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: HighScoreRunnable -> IO ()
initFields_ this = do
    jset this.highScoresCanvas (javaNull)
    pure ()

new_1 :: HighScoresCanvas.HighScoresCanvas -> IO HighScoreRunnable
new_1 highScoresCanvas = do
    this <- newRecord_
    init_1 this highScoresCanvas
    pure this

init_1 :: HighScoreRunnable -> HighScoresCanvas.HighScoresCanvas -> IO ()
init_1 this highScoresCanvas = do
        ARunnable.init_ this.base
        initFields_ this
        jset (this).highScoresCanvas (highScoresCanvas)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: HighScoreRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: HighScoreRunnable))

run_impl :: HighScoreRunnable -> IO (())
run_impl this = do
        commonStrings <- (CommonStrings.getInstance)
        logUtil <- (LogUtil.getInstance)
        let highScoresCanvas = (jget (this).highScoresCanvas)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            isHTML <- (J2MEUtil.isHTML)
            when (Prelude.not isHTML) $ do
                fix $ \loop -> when (Prelude.not (jget (highScoresCanvas).hasPainted)) $ javaIteration (loop) $ do
                    pure ()
                jset (highScoresCanvas).hasPainted (False)
            stringMaker <- (StringMaker.new_)
            systemWrapper <- (ABSystemWrapper.getInstance)
            currentTimeMillis <- (ABSystemWrapper.currentTimeMillis systemWrapper)
            Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append stringMaker "HighScoresCanvas - Request repaint to be sure: "))) currentTimeMillis))))) this (jget (commonStrings).rUN))
            Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (highScoresCanvas).base.repaintBehavior)) (javaCast highScoresCanvas))
            when (Prelude.not isHTML) $ do
                fix $ \loop -> when (Prelude.not (jget (highScoresCanvas).hasPainted)) $ javaIteration (loop) $ do
                    pure ()
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append stringMaker "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "))) currentTimeMillis))))) this (jget (commonStrings).rUN))
            Control.Monad.void (HighScoresCanvas.executeUpdate highScoresCanvas)
        pure ()


