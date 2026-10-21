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
module GameRunnable where

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
import qualified Thread -- same package or java.lang
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified Runnable

-- implements Runnable
data GameRunnable = GameRunnable
    { header_ :: JavaHeader
    , wAIT :: IORef (Int)
    , fAST :: IORef (Int)
    , waitInMillis :: IORef (Int64)
    }

instance JavaNull GameRunnable where
    javaNull = javaNullRecord "GameRunnable"

instance JavaEquals GameRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameRunnable where
    (==) = jrecordEquals

instance JavaObjectClass GameRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameRunnable
newRecord_ = do
    header_ <- newJavaHeader
    wAIT <- newIORef 0
    fAST <- newIORef 0
    waitInMillis <- newIORef 0
    let this = GameRunnable header_ wAIT fAST waitInMillis
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "processLoopSleep" (\() -> processLoopSleep_impl this)
    pure this

initFields_ :: GameRunnable -> IO ()
initFields_ this = do
    jset this.wAIT (240)
    jset this.fAST (60)
    jset this.waitInMillis ((Prelude.fromIntegral (jget (this).wAIT)))
    pure ()

new_ :: IO GameRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameRunnable -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: GameRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: GameRunnable))

run_impl :: GameRunnable -> IO (())
run_impl this = do
        Control.Monad.void (DisplayInfoSingleton.process ((jio (DisplayInfoSingleton.getInstance))))
        pure ()


-- throws Exception
processLoopSleep :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep object_ = jmethod object_ "processLoopSleep" (\() -> (processLoopSleep_impl (javaCast object_ :: GameRunnable))) ()

processLoopSleep_super :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep_super object_ = (processLoopSleep_impl (javaCast object_ :: GameRunnable))

processLoopSleep_impl :: GameRunnable -> IO (())
processLoopSleep_impl this = do
        Control.Monad.void (threadDelay (Prelude.fromIntegral (jget (this).waitInMillis) * 1000))
        pure ()


