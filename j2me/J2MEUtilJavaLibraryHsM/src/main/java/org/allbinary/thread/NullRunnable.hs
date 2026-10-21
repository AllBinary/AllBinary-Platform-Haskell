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
-- package org.allbinary.thread
module NullRunnable (module NullRunnable, module ARunnable) where

import ARunnable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified ARunnable

data NullRunnable = NullRunnable
    { header_ :: JavaHeader
    , base :: ARunnable.ARunnable
    }

instance JavaNull NullRunnable where
    javaNull = javaNullRecord "NullRunnable"

instance JavaEquals NullRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRunnable where
    (==) = jrecordEquals

instance JavaObjectClass NullRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO NullRunnable
newRecord_ = do
    base <- ARunnable.newRecord_
    let header_ = base.header_
    let this = NullRunnable header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: NullRunnable -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (NullRunnable)
getInstance = do
        pure (NullRunnable.instance_)

new_ :: IO NullRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullRunnable -> IO ()
init_ this = do
        ARunnable.init_ this.base
        initFields_ this
        pure ()
        pure ()


