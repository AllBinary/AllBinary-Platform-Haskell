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
-- package org.allbinary.logic.io.file
module SimpleFileUtil where

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
import qualified CharSequence -- same package or java.lang
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified Reader -- java.io.Reader
import qualified Writer -- java.io.Writer
import qualified CharBuffer -- java.nio.CharBuffer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data SimpleFileUtil = SimpleFileUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , nULL_WRITER :: IORef (Writer.Writer)
    , nULL_READER :: IORef (Reader.Reader)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , nullUtil :: IORef (NullUtil.NullUtil)
    , streamUtil :: IORef (StreamUtil.StreamUtil)
    }

instance JavaNull SimpleFileUtil where
    javaNull = javaNullRecord "SimpleFileUtil"

instance JavaEquals SimpleFileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleFileUtil where
    (==) = jrecordEquals

instance JavaObjectClass SimpleFileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimpleFileUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    nULL_WRITER <- newIORef javaNull
    nULL_READER <- newIORef javaNull
    commonStrings <- newIORef javaNull
    nullUtil <- newIORef javaNull
    streamUtil <- newIORef javaNull
    let this = SimpleFileUtil header_ logUtil nULL_WRITER nULL_READER commonStrings nullUtil streamUtil
    jregisterLevel header_ this
    jregisterMethod header_ "loadFileAsList" (\() -> loadFileAsList_impl this)
    jregisterMethod header_ "loadFileAsListReturnLine" (\() -> loadFileAsListReturnLine_impl this)
    jregisterMethod header_ "createStringFromArrayOfStrings" (\() -> createStringFromArrayOfStrings_impl this)
    pure this

initFields_ :: SimpleFileUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nULL_WRITER =<< (SimpleFileUtil.nullWriter)
    jset this.nULL_READER =<< (SimpleFileUtil.nullReader)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.nullUtil =<< (NullUtil.getInstance)
    jset this.streamUtil =<< (StreamUtil.getInstance)
    pure ()

new_ :: IO SimpleFileUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SimpleFileUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SimpleFileUtil)
getInstance = do
        pure (SimpleFileUtil.instance_)


nullOutputStream :: IO (OutputStream.OutputStream)
nullOutputStream = do
        (OutputStream.new_ {- Java anonymous class body: implement it as a record of functions
            -- write
            -- write
            -- close
-})


nullWriter :: IO (Writer.Writer)
nullWriter = do
        (Writer.new_ {- Java anonymous class body: implement it as a record of functions
            jset this.closed (False)
            -- append
            -- append
            -- append
            -- write
            -- write
            -- write
            -- write
            -- flush
            -- close
-})


nullReader :: IO (Reader.Reader)
nullReader = do
        (Reader.new_ {- Java anonymous class body: implement it as a record of functions
            -- read
            -- read
            -- read
            -- ready
            -- skip
            -- close
-})


loadFileAsList :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList object_ a1 a2 a3 = jmethod object_ "loadFileAsList" (\() -> (loadFileAsList_impl (javaCast object_ :: SimpleFileUtil))) () a1 a2 a3

loadFileAsList_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList_super object_ a1 a2 a3 = (loadFileAsList_impl (javaCast object_ :: SimpleFileUtil)) a1 a2 a3

loadFileAsList_impl :: SimpleFileUtil -> InputStream.InputStream -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList_impl this inputStream max byteArray1 = do
        (SimpleFileUtil.loadFileAsListReturnLine this inputStream max byteArray1 0)


loadFileAsListReturnLine :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> Int -> JavaArray (Int8) -> Int -> IO (BasicArrayList.BasicArrayList)
loadFileAsListReturnLine object_ a1 a2 a3 a4 = jmethod object_ "loadFileAsListReturnLine" (\() -> (loadFileAsListReturnLine_impl (javaCast object_ :: SimpleFileUtil))) () a1 a2 a3 a4

loadFileAsListReturnLine_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> Int -> JavaArray (Int8) -> Int -> IO (BasicArrayList.BasicArrayList)
loadFileAsListReturnLine_super object_ a1 a2 a3 a4 = (loadFileAsListReturnLine_impl (javaCast object_ :: SimpleFileUtil)) a1 a2 a3 a4

loadFileAsListReturnLine_impl :: SimpleFileUtil -> InputStream.InputStream -> Int -> JavaArray (Int8) -> Int -> IO (BasicArrayList.BasicArrayList)
loadFileAsListReturnLine_impl this inputStream max byteArray1 includeReturnLine = do
    javaCatchReturn $ do
        stringList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        when (inputStream == javaNull) $ do
            javaReturn (stringList)
        byteArray <- newIORef ((jget ((jget (this).nullUtil)).nULL_BYTE_ARRAY))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast inputStream))
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).aDD) e)
            ) $ do
            outputStream2 <- (ByteArrayOutputStream.new_1 max)
            assignedValue <- (StreamUtil.getByteArray ((jget (this).streamUtil)) inputStream outputStream2 byteArray1)
            jset byteArray (assignedValue)
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast inputStream))
        when ((jget byteArray) == javaNull) $ do
            javaReturn (stringList)
        let size = (jlength (jget byteArray))
        index <- newIORef (0)
        startIndex <- newIORef (0)
        returnLine <- newIORef (0)
        fix $ \loop -> when ((jget index) < size) $ javaIteration (loop) $ do
            jset startIndex ((jget index))
            fix $ \loop -> when (((jget index) < (size - 1)) && ((jindex ((jget byteArray)) ((jget index))) /= (Prelude.fromIntegral (Prelude.fromEnum ('\n' :: Char))))) $ javaIteration (loop) $ do
                jset index ((jget index) + 1)
            when (includeReturnLine == 0) $ do
                if (((jget index) > 0) && ((jindex ((jget byteArray)) (((jget index) - 1))) == (Prelude.fromIntegral (Prelude.fromEnum ('\r' :: Char))))) then do
                    jset returnLine (1)
                else do
                    jset returnLine (0)
            s <- (jnewStringRange (jget byteArray) (jget startIndex) (((((jget index) + includeReturnLine) - (jget returnLine)) - (jget startIndex))))
            Control.Monad.void (BasicArrayList.add stringList s)
            jset index ((jget index) + 1)
        pure (stringList)


createStringFromArrayOfStrings :: (JavaObjectClass this_) => this_ -> JavaArray (String) -> IO (String)
createStringFromArrayOfStrings object_ a1 = jmethod object_ "createStringFromArrayOfStrings" (\() -> (createStringFromArrayOfStrings_impl (javaCast object_ :: SimpleFileUtil))) () a1

createStringFromArrayOfStrings_super :: (JavaObjectClass this_) => this_ -> JavaArray (String) -> IO (String)
createStringFromArrayOfStrings_super object_ a1 = (createStringFromArrayOfStrings_impl (javaCast object_ :: SimpleFileUtil)) a1

createStringFromArrayOfStrings_impl :: SimpleFileUtil -> JavaArray (String) -> IO (String)
createStringFromArrayOfStrings_impl this stringArray = do
        stringMaker <- (StringMaker.new_)
        let size = (jlength stringArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringMaker (jindex stringArray (index)))
        (StringMaker.toString stringMaker)


