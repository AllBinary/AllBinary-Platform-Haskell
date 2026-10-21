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
module ARunnable where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified Runnable

-- implements Runnable
data ARunnable = ARunnable
    { header_ :: JavaHeader
    }

instance JavaNull ARunnable where
    javaNull = javaNullRecord "ARunnable"

instance JavaEquals ARunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ARunnable where
    (==) = jrecordEquals

instance JavaObjectClass ARunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ARunnable
newRecord_ = do
    header_ <- newJavaHeader
    let this = ARunnable header_
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: ARunnable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ARunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ARunnable -> IO ()
init_ this = do
    initFields_ this


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ARunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ARunnable))

run_impl :: ARunnable -> IO (())
run_impl this = do
        pure ()


