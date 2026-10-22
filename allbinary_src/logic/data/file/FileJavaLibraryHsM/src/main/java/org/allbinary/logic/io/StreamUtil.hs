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
module StreamUtil where

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
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified Closeable -- java.io.Closeable
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StreamUtil = StreamUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StreamUtil where
    javaNull = javaNullRecord "StreamUtil"

instance JavaEquals StreamUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StreamUtil where
    (==) = jrecordEquals

instance JavaObjectClass StreamUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StreamUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StreamUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getByteArray" (\() -> getByteArray_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: StreamUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (StreamUtil)
getInstance = do
        pure (StreamUtil.instance_)

new_ :: IO StreamUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StreamUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> OutputStream.OutputStream -> JavaArray (Int8) -> IO (OutputStream.OutputStream)
get object_ a1 a2 a3 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: StreamUtil))) () a1 a2 a3

get_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> OutputStream.OutputStream -> JavaArray (Int8) -> IO (OutputStream.OutputStream)
get_super object_ a1 a2 a3 = (get_impl (javaCast object_ :: StreamUtil)) a1 a2 a3

get_impl :: StreamUtil -> InputStream.InputStream -> OutputStream.OutputStream -> JavaArray (Int8) -> IO (OutputStream.OutputStream)
get_impl this inputStream outputStream buffer = do
        len <- newIORef (0)
        fix $ \loop -> when True $ javaIteration (loop) $ do
            assignedValue <- (InputStream.read inputStream buffer 0 (jlength buffer))
            jset len (assignedValue)
            if ((jget len) /= (Prelude.negate 1)) then do
                pure ()
            else do
                throwIO JavaBreak
            Control.Monad.void (OutputStream.write outputStream buffer 0 (jget len))
        pure (outputStream)


-- throws Exception
getByteArray :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> ByteArrayOutputStream.ByteArrayOutputStream -> JavaArray (Int8) -> IO (JavaArray (Int8))
getByteArray object_ a1 a2 a3 = jmethod object_ "getByteArray" (\() -> (getByteArray_impl (javaCast object_ :: StreamUtil))) () a1 a2 a3

getByteArray_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> ByteArrayOutputStream.ByteArrayOutputStream -> JavaArray (Int8) -> IO (JavaArray (Int8))
getByteArray_super object_ a1 a2 a3 = (getByteArray_impl (javaCast object_ :: StreamUtil)) a1 a2 a3

getByteArray_impl :: StreamUtil -> InputStream.InputStream -> ByteArrayOutputStream.ByteArrayOutputStream -> JavaArray (Int8) -> IO (JavaArray (Int8))
getByteArray_impl this inputStream outputStream2 byteArray = do
        let outputStream = outputStream2
        flip finally (do
            Control.Monad.void (StreamUtil.close this (javaCast outputStream))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (StreamUtil.get this inputStream (javaCast outputStream) byteArray)
            (ByteArrayOutputStream.toByteArray outputStream)


close :: (JavaObjectClass this_) => this_ -> Closeable.Closeable -> IO (Bool)
close object_ a1 = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: StreamUtil))) () a1

close_super :: (JavaObjectClass this_) => this_ -> Closeable.Closeable -> IO (Bool)
close_super object_ a1 = (close_impl (javaCast object_ :: StreamUtil)) a1

close_impl :: StreamUtil -> Closeable.Closeable -> IO (Bool)
close_impl this closeable = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cLOSE) e)
            pure (False)
            ) $ do
            when (closeable /= javaNull) $ do
                Control.Monad.void (Closeable.close closeable)
            pure (True)


