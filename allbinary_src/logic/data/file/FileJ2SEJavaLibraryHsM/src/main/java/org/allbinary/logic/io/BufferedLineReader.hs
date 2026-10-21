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
module BufferedLineReader where

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
import qualified BufferedReader -- java.io.BufferedReader
import qualified FileReader -- java.io.FileReader
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil

data BufferedLineReader = BufferedLineReader
    { header_ :: JavaHeader
    , tmpIn :: IORef (BufferedReader.BufferedReader)
    }

instance JavaNull BufferedLineReader where
    javaNull = javaNullRecord "BufferedLineReader"

instance JavaEquals BufferedLineReader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedLineReader where
    (==) = jrecordEquals

instance JavaObjectClass BufferedLineReader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BufferedLineReader
newRecord_ = do
    header_ <- newJavaHeader
    tmpIn <- newIORef javaNull
    let this = BufferedLineReader header_ tmpIn
    jregisterLevel header_ this
    jregisterMethod header_ "readUpToLines" (\() -> readUpToLines_impl this)
    jregisterMethod header_ "readLine" (\() -> readLine_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getCurrent" (\() -> getCurrent_impl this)
    pure this

initFields_ :: BufferedLineReader -> IO ()
initFields_ this = do
    jset this.tmpIn (javaNull)
    pure ()

new_1 :: AbFile.AbFile -> IO BufferedLineReader
new_1 file = do
    this <- newRecord_
    init_1 this file
    pure this

init_1 :: BufferedLineReader -> AbFile.AbFile -> IO ()
init_1 this file = do
        initFields_ this
        assignedValue <- (BufferedReader.new_1 (jio (FileReader.new_1 (jio (AbFileNativeUtil.get file)))))
        jset (this).tmpIn (assignedValue)
        pure ()


readUpToLines :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
readUpToLines object_ a1 = jmethod object_ "readUpToLines" (\() -> (readUpToLines_impl (javaCast object_ :: BufferedLineReader))) () a1

readUpToLines_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
readUpToLines_super object_ a1 = (readUpToLines_impl (javaCast object_ :: BufferedLineReader)) a1

readUpToLines_impl :: BufferedLineReader -> Int64 -> IO (())
readUpToLines_impl this readAheadIndex = do
        pure ()


-- throws Exception
readLine :: (JavaObjectClass this_) => this_ -> IO (String)
readLine object_ = jmethod object_ "readLine" (\() -> (readLine_impl (javaCast object_ :: BufferedLineReader))) ()

readLine_super :: (JavaObjectClass this_) => this_ -> IO (String)
readLine_super object_ = (readLine_impl (javaCast object_ :: BufferedLineReader))

readLine_impl :: BufferedLineReader -> IO (String)
readLine_impl this = do
        (BufferedReader.readLine ((jget (this).tmpIn)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: BufferedLineReader))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSize_super object_ = (getSize_impl (javaCast object_ :: BufferedLineReader))

getSize_impl :: BufferedLineReader -> IO (Int64)
getSize_impl this = do
        pure (0)


getCurrent :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrent object_ = jmethod object_ "getCurrent" (\() -> (getCurrent_impl (javaCast object_ :: BufferedLineReader))) ()

getCurrent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrent_super object_ = (getCurrent_impl (javaCast object_ :: BufferedLineReader))

getCurrent_impl :: BufferedLineReader -> IO (Int)
getCurrent_impl this = do
        pure (0)


