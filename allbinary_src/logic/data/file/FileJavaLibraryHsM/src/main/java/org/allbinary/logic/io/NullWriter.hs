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
module NullWriter (module NullWriter, module Writer) where

import Writer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, write_overload1, write_overload1_super, write_overload1_impl, write, write_3_overload1, write_3_overload1_super, write_3_overload1_impl, write, write_3, write_overload2, write_overload2_super, write_overload2_impl, write, write_3_overload2, write_3_overload2_super, write_3_overload2_impl, write, write_3, flush, flush_super, flush_impl, close, close_super, close_impl, nULL_WRITER)
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
import qualified Writer -- java.io.Writer

data NullWriter = NullWriter
    { header_ :: JavaHeader
    , base :: Writer.Writer
    }

instance JavaNull NullWriter where
    javaNull = javaNullRecord "NullWriter"

instance JavaEquals NullWriter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullWriter where
    (==) = jrecordEquals

instance JavaObjectClass NullWriter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_WRITER :: NullWriter
{-# NOINLINE nULL_WRITER #-}
nULL_WRITER = unsafePerformIO ((new_))

newRecord_ :: IO NullWriter
newRecord_ = do
    base <- Writer.newRecord_
    let header_ = base.header_
    let this = NullWriter header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "write_overload1" (\() -> write_overload1_impl this)
    jregisterMethod header_ "write_3_overload1" (\() -> write_3_overload1_impl this)
    jregisterMethod header_ "write_overload2" (\() -> write_overload2_impl this)
    jregisterMethod header_ "write_3_overload2" (\() -> write_3_overload2_impl this)
    jregisterMethod header_ "flush" (\() -> flush_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: NullWriter -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullWriter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullWriter -> IO ()
init_ this = do
    Writer.init_ this.base
    initFields_ this


-- Java overloads of write: calls the overload for the types of the arguments
write :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
write this a1
    | jisInstanceOf a1 (javaNull :: Int) = write_overload1 this (javaCast a1 :: Int)
    | jisInstanceOf a1 (javaNull :: String) = write_overload2 this (javaCast a1 :: String)
    | otherwise = write_overload2 this (javaCast a1 :: String)

-- throws IOException
write_overload1 :: (JavaObjectClass this_) => this_ -> Int -> IO (())
write_overload1 object_ a1 = jmethod object_ "write_overload1" (\() -> (write_overload1_impl (javaCast object_ :: NullWriter))) () a1

write_overload1_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
write_overload1_super object_ a1 = (write_overload1_impl (javaCast object_ :: NullWriter)) a1

write_overload1_impl :: NullWriter -> Int -> IO (())
write_overload1_impl this c = do
        pure ()


-- Java overloads of write: calls the overload for the types of the arguments
write_3 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> Int -> IO (())
write_3 this a1 a2 a3
    | jisInstanceOf a1 (javaNull :: JavaArray (Char)) = write_3_overload1 this (javaCast a1 :: JavaArray (Char)) a2 a3
    | jisInstanceOf a1 (javaNull :: String) = write_3_overload2 this (javaCast a1 :: String) a2 a3
    | otherwise = write_3_overload2 this (javaCast a1 :: String) a2 a3

-- throws IOException
write_3_overload1 :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (())
write_3_overload1 object_ a1 a2 a3 = jmethod object_ "write_3_overload1" (\() -> (write_3_overload1_impl (javaCast object_ :: NullWriter))) () a1 a2 a3

write_3_overload1_super :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (())
write_3_overload1_super object_ a1 a2 a3 = (write_3_overload1_impl (javaCast object_ :: NullWriter)) a1 a2 a3

write_3_overload1_impl :: NullWriter -> JavaArray (Char) -> Int -> Int -> IO (())
write_3_overload1_impl this cbuf off len = do
        pure ()


-- throws IOException
write_overload2 :: (JavaObjectClass this_) => this_ -> String -> IO (())
write_overload2 object_ a1 = jmethod object_ "write_overload2" (\() -> (write_overload2_impl (javaCast object_ :: NullWriter))) () a1

write_overload2_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
write_overload2_super object_ a1 = (write_overload2_impl (javaCast object_ :: NullWriter)) a1

write_overload2_impl :: NullWriter -> String -> IO (())
write_overload2_impl this str = do
        pure ()


-- throws IOException
write_3_overload2 :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (())
write_3_overload2 object_ a1 a2 a3 = jmethod object_ "write_3_overload2" (\() -> (write_3_overload2_impl (javaCast object_ :: NullWriter))) () a1 a2 a3

write_3_overload2_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (())
write_3_overload2_super object_ a1 a2 a3 = (write_3_overload2_impl (javaCast object_ :: NullWriter)) a1 a2 a3

write_3_overload2_impl :: NullWriter -> String -> Int -> Int -> IO (())
write_3_overload2_impl this str off len = do
        pure ()


-- throws IOException
flush :: (JavaObjectClass this_) => this_ -> IO (())
flush object_ = jmethod object_ "flush" (\() -> (flush_impl (javaCast object_ :: NullWriter))) ()

flush_super :: (JavaObjectClass this_) => this_ -> IO (())
flush_super object_ = (flush_impl (javaCast object_ :: NullWriter))

flush_impl :: NullWriter -> IO (())
flush_impl this = do
        pure ()


-- throws IOException
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: NullWriter))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: NullWriter))

close_impl :: NullWriter -> IO (())
close_impl this = do
        pure ()


