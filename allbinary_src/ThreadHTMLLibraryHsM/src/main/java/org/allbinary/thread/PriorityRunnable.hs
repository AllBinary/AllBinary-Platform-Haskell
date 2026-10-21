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
-- package org.allbinary.thread
module PriorityRunnable (module PriorityRunnable, module Runnable) where

import Runnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPriority, getPriority_super, getPriority_impl, isDone, isDone_super, isDone_impl, reset, reset_super, reset_impl, toString)
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
import qualified Runnable

-- Java interface: the classes that implement it have these functions
data PriorityRunnable = PriorityRunnable
    { header_ :: JavaHeader
    }

instance JavaNull PriorityRunnable where
    javaNull = javaNullRecord "PriorityRunnable"

instance JavaEquals PriorityRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PriorityRunnable where
    (==) = jrecordEquals

instance JavaObjectClass PriorityRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PriorityRunnable
fromHeader_ header = PriorityRunnable header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PriorityRunnable header)
    Runnable.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPriority :: (JavaObjectClass this_) => this_ -> IO (Int)
getPriority object_ = jmethod object_ "getPriority" (\() -> (getPriority_impl (javaCast object_ :: PriorityRunnable))) ()

getPriority_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPriority_super object_ = (getPriority_impl (javaCast object_ :: PriorityRunnable))

getPriority_impl :: PriorityRunnable -> IO (Int)
getPriority_impl this = javaAbstractMethod "getPriority"


isDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone object_ = jmethod object_ "isDone" (\() -> (isDone_impl (javaCast object_ :: PriorityRunnable))) ()

isDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone_super object_ = (isDone_impl (javaCast object_ :: PriorityRunnable))

isDone_impl :: PriorityRunnable -> IO (Bool)
isDone_impl this = javaAbstractMethod "isDone"


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: PriorityRunnable))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: PriorityRunnable))

reset_impl :: PriorityRunnable -> IO (())
reset_impl this = javaAbstractMethod "reset"


