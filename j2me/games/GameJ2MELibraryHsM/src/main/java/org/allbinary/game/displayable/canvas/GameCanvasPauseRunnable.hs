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
module GameCanvasPauseRunnable (module GameCanvasPauseRunnable, module GameRunnable) where

import GameRunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, processLoopSleep, processLoopSleep_super, processLoopSleep_impl, logUtil, allBinaryGameCanvas)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GameRunnable

data GameCanvasPauseRunnable = GameCanvasPauseRunnable
    { header_ :: JavaHeader
    , base :: GameRunnable.GameRunnable
    , logUtil :: IORef (LogUtil.LogUtil)
    , allBinaryGameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    }

instance JavaNull GameCanvasPauseRunnable where
    javaNull = javaNullRecord "GameCanvasPauseRunnable"

instance JavaEquals GameCanvasPauseRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameCanvasPauseRunnable where
    (==) = jrecordEquals

instance JavaObjectClass GameCanvasPauseRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameCanvasPauseRunnable
newRecord_ = do
    base <- GameRunnable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    allBinaryGameCanvas <- newIORef javaNull
    let this = GameCanvasPauseRunnable header_ base logUtil allBinaryGameCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "processLoopSleep" (\() -> processLoopSleep_impl this)
    pure this

initFields_ :: GameCanvasPauseRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.allBinaryGameCanvas (javaNull)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO GameCanvasPauseRunnable
new_1 allBinaryGameCanvas = do
    this <- newRecord_
    init_1 this allBinaryGameCanvas
    pure this

init_1 :: GameCanvasPauseRunnable -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this allBinaryGameCanvas = do
        GameRunnable.init_ this.base
        initFields_ this
        jset (this).allBinaryGameCanvas (allBinaryGameCanvas)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: GameCanvasPauseRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: GameCanvasPauseRunnable))

run_impl :: GameCanvasPauseRunnable -> IO (())
run_impl this = do
        pure ()


-- throws Exception
processLoopSleep :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep object_ = jmethod object_ "processLoopSleep" (\() -> (processLoopSleep_impl (javaCast object_ :: GameCanvasPauseRunnable))) ()

processLoopSleep_super :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep_super object_ = (processLoopSleep_impl (javaCast object_ :: GameCanvasPauseRunnable))

processLoopSleep_impl :: GameCanvasPauseRunnable -> IO (())
processLoopSleep_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            features <- (Features.getInstance)
            isOpenGL <- (Features.isDefault features (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))
            when isOpenGL $ do
                Control.Monad.void (AllBinaryGameCanvas.processSleep ((jget (this).allBinaryGameCanvas)))
        pure ()


