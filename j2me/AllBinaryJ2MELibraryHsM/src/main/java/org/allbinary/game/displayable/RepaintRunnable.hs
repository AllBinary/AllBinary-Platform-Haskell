{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.displayable
module RepaintRunnable (module RepaintRunnable, module ARunnable) where

import ARunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, canvas)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ARunnable -- org.allbinary.thread.ARunnable

data RepaintRunnable = RepaintRunnable
    { header_ :: JavaHeader
    , base :: ARunnable.ARunnable
    , canvas :: IORef (Canvas.Canvas)
    }

instance JavaNull RepaintRunnable where
    javaNull = javaNullRecord "RepaintRunnable"

instance JavaEquals RepaintRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RepaintRunnable where
    (==) = jrecordEquals

instance JavaObjectClass RepaintRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RepaintRunnable
newRecord_ = do
    base <- ARunnable.newRecord_
    let header_ = base.header_
    canvas <- newIORef javaNull
    let this = RepaintRunnable header_ base canvas
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: RepaintRunnable -> IO ()
initFields_ this = do
    jset this.canvas (javaNull)
    pure ()

new_1 :: Canvas.Canvas -> IO RepaintRunnable
new_1 canvas = do
    this <- newRecord_
    init_1 this canvas
    pure this

init_1 :: RepaintRunnable -> Canvas.Canvas -> IO ()
init_1 this canvas = do
        ARunnable.init_ this.base
        initFields_ this
        jset (this).canvas (canvas)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: RepaintRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: RepaintRunnable))

run_impl :: RepaintRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            logUtil <- (LogUtil.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            ) $ do
            Control.Monad.void (Canvas.repaint ((jget (this).canvas)))
            Control.Monad.void (DisplayInfoSingleton.process ((jio (DisplayInfoSingleton.getInstance))))
        pure ()


