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
module AbFileOutputStream (module AbFileOutputStream, module OutputStream) where

import OutputStream hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFromAbFile, createFromAbFile_super, createFromAbFile_impl, createFromAbFileAppend, createFromAbFileAppend_super, createFromAbFileAppend_impl, createFromFilePath, createFromFilePath_super, createFromFilePath_impl, createFromFilePathAppend, createFromFilePathAppend_super, createFromFilePathAppend_impl, close, close_super, close_impl, getChannel, getChannel_super, getChannel_impl, write_overload1, write_overload1_super, write_overload1_impl, write, write, write_super, write_impl, write_overload2, write_overload2_super, write_overload2_impl, write, fileOutputStream)
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
import qualified FileNotFoundException -- java.io.FileNotFoundException
import qualified FileOutputStream -- java.io.FileOutputStream
import qualified IOException -- java.io.IOException
import qualified OutputStream -- java.io.OutputStream
import qualified FileChannel -- java.nio.channels.FileChannel
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil

data AbFileOutputStream = AbFileOutputStream
    { header_ :: JavaHeader
    , base :: OutputStream.OutputStream
    , fileOutputStream :: IORef (FileOutputStream.FileOutputStream)
    }

instance JavaNull AbFileOutputStream where
    javaNull = javaNullRecord "AbFileOutputStream"

instance JavaEquals AbFileOutputStream where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileOutputStream where
    (==) = jrecordEquals

instance JavaObjectClass AbFileOutputStream where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbFileOutputStream
newRecord_ = do
    base <- OutputStream.newRecord_
    let header_ = base.header_
    fileOutputStream <- newIORef javaNull
    let this = AbFileOutputStream header_ base fileOutputStream
    jregisterLevel header_ this
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "getChannel" (\() -> getChannel_impl this)
    jregisterMethod header_ "write_overload1" (\() -> write_overload1_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "write_overload2" (\() -> write_overload2_impl this)
    pure this

initFields_ :: AbFileOutputStream -> IO ()
initFields_ this = do
    jset this.fileOutputStream (javaNull)
    pure ()


-- throws FileNotFoundException
createFromAbFile :: AbFile.AbFile -> IO (AbFileOutputStream)
createFromAbFile file = do
        (new_1 (jio (FileOutputStream.new_1 (jio (AbFileNativeUtil.get file)))))


-- throws FileNotFoundException
createFromAbFileAppend :: AbFile.AbFile -> Bool -> IO (AbFileOutputStream)
createFromAbFileAppend file append = do
        (new_1 (jio (FileOutputStream.new_1 (jio (AbFile.getPath file)))))


-- throws FileNotFoundException
createFromFilePath :: String -> IO (AbFileOutputStream)
createFromFilePath name = do
        (new_1 (jio (FileOutputStream.new_1 name)))


-- throws FileNotFoundException
createFromFilePathAppend :: String -> Bool -> IO (AbFileOutputStream)
createFromFilePathAppend name append = do
        (new_1 (jio (FileOutputStream.new_1 name)))

new_1 :: FileOutputStream.FileOutputStream -> IO AbFileOutputStream
new_1 fileOutputStream = do
    this <- newRecord_
    init_1 this fileOutputStream
    pure this

init_1 :: AbFileOutputStream -> FileOutputStream.FileOutputStream -> IO ()
init_1 this fileOutputStream = do
        OutputStream.init_ this.base
        initFields_ this
        jset (this).fileOutputStream (fileOutputStream)
        pure ()


-- throws IOException
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: AbFileOutputStream))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: AbFileOutputStream))

close_impl :: AbFileOutputStream -> IO (())
close_impl this = do
        Control.Monad.void (FileOutputStream.close ((jget (this).fileOutputStream)))
        pure ()


getChannel :: (JavaObjectClass this_) => this_ -> IO (FileChannel.FileChannel)
getChannel object_ = jmethod object_ "getChannel" (\() -> (getChannel_impl (javaCast object_ :: AbFileOutputStream))) ()

getChannel_super :: (JavaObjectClass this_) => this_ -> IO (FileChannel.FileChannel)
getChannel_super object_ = (getChannel_impl (javaCast object_ :: AbFileOutputStream))

getChannel_impl :: AbFileOutputStream -> IO (FileChannel.FileChannel)
getChannel_impl this = do
        (FileOutputStream.getChannel ((jget (this).fileOutputStream)))


-- Java overloads of write: calls the overload for the types of the arguments
write :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
write this a1
    | jisInstanceOf a1 (javaNull :: JavaArray (Int8)) = write_overload1 this (javaCast a1 :: JavaArray (Int8))
    | jisInstanceOf a1 (javaNull :: Int) = write_overload2 this (javaCast a1 :: Int)
    | otherwise = write_overload2 this (javaCast a1 :: Int)

-- throws IOException
write_overload1 :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (())
write_overload1 object_ a1 = jmethod object_ "write_overload1" (\() -> (write_overload1_impl (javaCast object_ :: AbFileOutputStream))) () a1

write_overload1_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (())
write_overload1_super object_ a1 = (write_overload1_impl (javaCast object_ :: AbFileOutputStream)) a1

write_overload1_impl :: AbFileOutputStream -> JavaArray (Int8) -> IO (())
write_overload1_impl this buffer = do
        Control.Monad.void (FileOutputStream.write ((jget (this).fileOutputStream)) buffer)
        pure ()


-- throws IOException
-- Java overload of write with a different parameter count: give it a different name
write :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (())
write object_ a1 a2 a3 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: AbFileOutputStream))) () a1 a2 a3

write_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (())
write_super object_ a1 a2 a3 = (write_impl (javaCast object_ :: AbFileOutputStream)) a1 a2 a3

write_impl :: AbFileOutputStream -> JavaArray (Int8) -> Int -> Int -> IO (())
write_impl this buffer offset count = do
        Control.Monad.void (FileOutputStream.write ((jget (this).fileOutputStream)) buffer offset count)
        pure ()


-- throws IOException
-- Java overload of write with a different parameter count: give it a different name
write_overload2 :: (JavaObjectClass this_) => this_ -> Int -> IO (())
write_overload2 object_ a1 = jmethod object_ "write_overload2" (\() -> (write_overload2_impl (javaCast object_ :: AbFileOutputStream))) () a1

write_overload2_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
write_overload2_super object_ a1 = (write_overload2_impl (javaCast object_ :: AbFileOutputStream)) a1

write_overload2_impl :: AbFileOutputStream -> Int -> IO (())
write_overload2_impl this b = do
        Control.Monad.void (FileOutputStream.write ((jget (this).fileOutputStream)) b)
        pure ()


