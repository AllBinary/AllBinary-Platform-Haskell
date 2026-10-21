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
-- package org.allbinary.logic.io
module AbFileInputStream (module AbFileInputStream, module InputStream) where

import InputStream hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, mark, mark_super, mark_impl, markSupported, markSupported_super, markSupported_impl, reset, reset_super, reset_impl, available, available_super, available_impl, close, close_super, close_impl, getChannel, getChannel_super, getChannel_impl, read, read_super, read_impl, read, read_super, read_impl, read, read_super, read_impl, skip, skip_super, skip_impl, fileInputStream)
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
import qualified FileInputStream -- java.io.FileInputStream
import qualified FileNotFoundException -- java.io.FileNotFoundException
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified FileChannel -- java.nio.channels.FileChannel

data AbFileInputStream = AbFileInputStream
    { header_ :: JavaHeader
    , base :: InputStream.InputStream
    , fileInputStream :: IORef (FileInputStream.FileInputStream)
    }

instance JavaNull AbFileInputStream where
    javaNull = javaNullRecord "AbFileInputStream"

instance JavaEquals AbFileInputStream where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileInputStream where
    (==) = jrecordEquals

instance JavaObjectClass AbFileInputStream where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbFileInputStream
newRecord_ = do
    base <- InputStream.newRecord_
    let header_ = base.header_
    fileInputStream <- newIORef javaNull
    let this = AbFileInputStream header_ base fileInputStream
    jregisterLevel header_ this
    jregisterMethod header_ "mark" (\() -> mark_impl this)
    jregisterMethod header_ "markSupported" (\() -> markSupported_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "available" (\() -> available_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "getChannel" (\() -> getChannel_impl this)
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "skip" (\() -> skip_impl this)
    pure this

initFields_ :: AbFileInputStream -> IO ()
initFields_ this = do
    jset this.fileInputStream (javaNull)
    pure ()

new_1 :: FileInputStream.FileInputStream -> IO AbFileInputStream
new_1 fileInputStream = do
    this <- newRecord_
    init_1 this fileInputStream
    pure this

init_1 :: AbFileInputStream -> FileInputStream.FileInputStream -> IO ()
init_1 this fileInputStream = do
        InputStream.init_ this.base
        initFields_ this
        jset (this).fileInputStream (fileInputStream)
        pure ()


mark :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mark object_ a1 = jmethod object_ "mark" (\() -> (mark_impl (javaCast object_ :: AbFileInputStream))) () a1

mark_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mark_super object_ a1 = (mark_impl (javaCast object_ :: AbFileInputStream)) a1

mark_impl :: AbFileInputStream -> Int -> IO (())
mark_impl this readlimit = do
        Control.Monad.void (FileInputStream.mark ((jget (this).fileInputStream)) readlimit)
        pure ()


markSupported :: (JavaObjectClass this_) => this_ -> IO (Bool)
markSupported object_ = jmethod object_ "markSupported" (\() -> (markSupported_impl (javaCast object_ :: AbFileInputStream))) ()

markSupported_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
markSupported_super object_ = (markSupported_impl (javaCast object_ :: AbFileInputStream))

markSupported_impl :: AbFileInputStream -> IO (Bool)
markSupported_impl this = do
        (FileInputStream.markSupported ((jget (this).fileInputStream)))


-- throws IOException
reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: AbFileInputStream))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: AbFileInputStream))

reset_impl :: AbFileInputStream -> IO (())
reset_impl this = do
        Control.Monad.void (FileInputStream.reset ((jget (this).fileInputStream)))
        pure ()


-- throws IOException
available :: (JavaObjectClass this_) => this_ -> IO (Int)
available object_ = jmethod object_ "available" (\() -> (available_impl (javaCast object_ :: AbFileInputStream))) ()

available_super :: (JavaObjectClass this_) => this_ -> IO (Int)
available_super object_ = (available_impl (javaCast object_ :: AbFileInputStream))

available_impl :: AbFileInputStream -> IO (Int)
available_impl this = do
        (FileInputStream.available ((jget (this).fileInputStream)))


-- throws IOException
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: AbFileInputStream))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: AbFileInputStream))

close_impl :: AbFileInputStream -> IO (())
close_impl this = do
        Control.Monad.void (FileInputStream.close ((jget (this).fileInputStream)))
        pure ()


getChannel :: (JavaObjectClass this_) => this_ -> IO (FileChannel.FileChannel)
getChannel object_ = jmethod object_ "getChannel" (\() -> (getChannel_impl (javaCast object_ :: AbFileInputStream))) ()

getChannel_super :: (JavaObjectClass this_) => this_ -> IO (FileChannel.FileChannel)
getChannel_super object_ = (getChannel_impl (javaCast object_ :: AbFileInputStream))

getChannel_impl :: AbFileInputStream -> IO (FileChannel.FileChannel)
getChannel_impl this = do
        (FileInputStream.getChannel ((jget (this).fileInputStream)))


-- throws IOException
read :: (JavaObjectClass this_) => this_ -> IO (Int)
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: AbFileInputStream))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (Int)
read_super object_ = (read_impl (javaCast object_ :: AbFileInputStream))

read_impl :: AbFileInputStream -> IO (Int)
read_impl this = do
        (FileInputStream.read ((jget (this).fileInputStream)))


-- throws IOException
-- Java overload of read with a different parameter count: give it a different name
read :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (Int)
read object_ a1 = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: AbFileInputStream))) () a1

read_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (Int)
read_super object_ a1 = (read_impl (javaCast object_ :: AbFileInputStream)) a1

read_impl :: AbFileInputStream -> JavaArray (Int8) -> IO (Int)
read_impl this b = do
        (FileInputStream.read ((jget (this).fileInputStream)) b)


-- throws IOException
-- Java overload of read with a different parameter count: give it a different name
read :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (Int)
read object_ a1 a2 a3 = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: AbFileInputStream))) () a1 a2 a3

read_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (Int)
read_super object_ a1 a2 a3 = (read_impl (javaCast object_ :: AbFileInputStream)) a1 a2 a3

read_impl :: AbFileInputStream -> JavaArray (Int8) -> Int -> Int -> IO (Int)
read_impl this buffer offset count = do
        (FileInputStream.read ((jget (this).fileInputStream)) buffer offset count)


-- throws IOException
skip :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
skip object_ a1 = jmethod object_ "skip" (\() -> (skip_impl (javaCast object_ :: AbFileInputStream))) () a1

skip_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
skip_super object_ a1 = (skip_impl (javaCast object_ :: AbFileInputStream)) a1

skip_impl :: AbFileInputStream -> Int64 -> IO (Int64)
skip_impl this n = do
        (FileInputStream.skip ((jget (this).fileInputStream)) n)


