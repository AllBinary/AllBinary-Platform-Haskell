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
module NullReader (module NullReader, module Reader) where

import Reader hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, read, read_super, read_impl, read_3, read_3_super, read_3_impl, read, ready, ready_super, ready_impl, skip, skip_super, skip_impl, close, close_super, close_impl, nULL_READER)
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
import qualified Reader -- java.io.Reader

data NullReader = NullReader
    { header_ :: JavaHeader
    , base :: Reader.Reader
    }

instance JavaNull NullReader where
    javaNull = javaNullRecord "NullReader"

instance JavaEquals NullReader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullReader where
    (==) = jrecordEquals

instance JavaObjectClass NullReader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_READER :: NullReader
{-# NOINLINE nULL_READER #-}
nULL_READER = unsafePerformIO ((new_))

newRecord_ :: IO NullReader
newRecord_ = do
    base <- Reader.newRecord_
    let header_ = base.header_
    let this = NullReader header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "read_3" (\() -> read_3_impl this)
    jregisterMethod header_ "ready" (\() -> ready_impl this)
    jregisterMethod header_ "skip" (\() -> skip_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: NullReader -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullReader
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullReader -> IO ()
init_ this = do
    Reader.init_ this.base
    initFields_ this


-- throws IOException
read :: (JavaObjectClass this_) => this_ -> IO (Int)
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: NullReader))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (Int)
read_super object_ = (read_impl (javaCast object_ :: NullReader))

read_impl :: NullReader -> IO (Int)
read_impl this = do
        pure ((Prelude.negate 1))


-- throws IOException
read_3 :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (Int)
read_3 object_ a1 a2 a3 = jmethod object_ "read_3" (\() -> (read_3_impl (javaCast object_ :: NullReader))) () a1 a2 a3

read_3_super :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (Int)
read_3_super object_ a1 a2 a3 = (read_3_impl (javaCast object_ :: NullReader)) a1 a2 a3

read_3_impl :: NullReader -> JavaArray (Char) -> Int -> Int -> IO (Int)
read_3_impl this cbuf off len = do
        pure ((Prelude.negate 1))


-- throws IOException
ready :: (JavaObjectClass this_) => this_ -> IO (Bool)
ready object_ = jmethod object_ "ready" (\() -> (ready_impl (javaCast object_ :: NullReader))) ()

ready_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
ready_super object_ = (ready_impl (javaCast object_ :: NullReader))

ready_impl :: NullReader -> IO (Bool)
ready_impl this = do
        pure (False)


-- throws IOException
skip :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
skip object_ a1 = jmethod object_ "skip" (\() -> (skip_impl (javaCast object_ :: NullReader))) () a1

skip_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
skip_super object_ a1 = (skip_impl (javaCast object_ :: NullReader)) a1

skip_impl :: NullReader -> Int64 -> IO (Int64)
skip_impl this n = do
        pure (0)


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: NullReader))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: NullReader))

close_impl :: NullReader -> IO (())
close_impl this = do
        pure ()


