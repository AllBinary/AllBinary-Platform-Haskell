{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.thread
module NullPriorityRunnable where

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
import qualified PriorityRunnable

-- implements PriorityRunnable
data NullPriorityRunnable = NullPriorityRunnable
    { header_ :: JavaHeader
    }

instance JavaNull NullPriorityRunnable where
    javaNull = javaNullRecord "NullPriorityRunnable"

instance JavaEquals NullPriorityRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullPriorityRunnable where
    (==) = jrecordEquals

instance JavaObjectClass NullPriorityRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullPriorityRunnable
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullPriorityRunnable header_
    jregisterLevel header_ this
    PriorityRunnable.registerInterface_ header_
    jregisterMethod header_ "getPriority" (\() -> getPriority_impl this)
    jregisterMethod header_ "isDone" (\() -> isDone_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: NullPriorityRunnable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullPriorityRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullPriorityRunnable -> IO ()
init_ this = do
    initFields_ this


getPriority :: (JavaObjectClass this_) => this_ -> IO (Int)
getPriority object_ = jmethod object_ "getPriority" (\() -> (getPriority_impl (javaCast object_ :: NullPriorityRunnable))) ()

getPriority_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPriority_super object_ = (getPriority_impl (javaCast object_ :: NullPriorityRunnable))

getPriority_impl :: NullPriorityRunnable -> IO (Int)
getPriority_impl this = do
        pure (0)


isDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone object_ = jmethod object_ "isDone" (\() -> (isDone_impl (javaCast object_ :: NullPriorityRunnable))) ()

isDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone_super object_ = (isDone_impl (javaCast object_ :: NullPriorityRunnable))

isDone_impl :: NullPriorityRunnable -> IO (Bool)
isDone_impl this = do
        pure (True)


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: NullPriorityRunnable))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: NullPriorityRunnable))

reset_impl :: NullPriorityRunnable -> IO (())
reset_impl this = do
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: NullPriorityRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: NullPriorityRunnable))

run_impl :: NullPriorityRunnable -> IO (())
run_impl this = do
        pure ()


