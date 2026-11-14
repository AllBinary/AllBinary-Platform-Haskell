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
-- package org.allbinary.logic.io
module NullOutputStream (module NullOutputStream, module OutputStream) where

import OutputStream hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, write, write_super, write_impl, write_3, write_3_super, write_3_impl, write, close, close_super, close_impl, nULL_OUTPUT_STREAM)
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
import qualified IOException -- java.io.IOException
import qualified OutputStream -- java.io.OutputStream

data NullOutputStream = NullOutputStream
    { header_ :: JavaHeader
    , base :: OutputStream.OutputStream
    }

instance JavaNull NullOutputStream where
    javaNull = javaNullRecord "NullOutputStream"

instance JavaEquals NullOutputStream where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullOutputStream where
    (==) = jrecordEquals

instance JavaObjectClass NullOutputStream where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_OUTPUT_STREAM :: NullOutputStream
{-# NOINLINE nULL_OUTPUT_STREAM #-}
nULL_OUTPUT_STREAM = unsafePerformIO ((new_))

newRecord_ :: IO NullOutputStream
newRecord_ = do
    base <- OutputStream.newRecord_
    let header_ = base.header_
    let this = NullOutputStream header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "write_3" (\() -> write_3_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: NullOutputStream -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullOutputStream
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullOutputStream -> IO ()
init_ this = do
    OutputStream.init_ this.base
    initFields_ this


-- throws IOException
write :: (JavaObjectClass this_) => this_ -> Int -> IO (())
write object_ a1 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: NullOutputStream))) () a1

write_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
write_super object_ a1 = (write_impl (javaCast object_ :: NullOutputStream)) a1

write_impl :: NullOutputStream -> Int -> IO (())
write_impl this b = do
        pure ()


-- throws IOException
write_3 :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (())
write_3 object_ a1 a2 a3 = jmethod object_ "write_3" (\() -> (write_3_impl (javaCast object_ :: NullOutputStream))) () a1 a2 a3

write_3_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (())
write_3_super object_ a1 a2 a3 = (write_3_impl (javaCast object_ :: NullOutputStream)) a1 a2 a3

write_3_impl :: NullOutputStream -> JavaArray (Int8) -> Int -> Int -> IO (())
write_3_impl this b off len = do
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: NullOutputStream))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: NullOutputStream))

close_impl :: NullOutputStream -> IO (())
close_impl this = do
        pure ()


