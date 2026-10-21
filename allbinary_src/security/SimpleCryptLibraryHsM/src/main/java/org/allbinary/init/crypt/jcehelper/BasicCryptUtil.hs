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
-- package org.allbinary.init.crypt.jcehelper
module BasicCryptUtil where

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
import qualified CryptInterface -- same package or java.lang
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified InputStream -- java.io.InputStream
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data BasicCryptUtil = BasicCryptUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , xML_START :: IORef (String)
    }

instance JavaNull BasicCryptUtil where
    javaNull = javaNullRecord "BasicCryptUtil"

instance JavaEquals BasicCryptUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicCryptUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicCryptUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicCryptUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    xML_START <- newIORef ""
    let this = BasicCryptUtil header_ logUtil tsUtil xML_START
    jregisterLevel header_ this
    jregisterMethod header_ "getDecryptedInputStream" (\() -> getDecryptedInputStream_impl this)
    pure this

initFields_ :: BasicCryptUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.xML_START ("<?xml")
    pure ()

new_ :: IO BasicCryptUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicCryptUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicCryptUtil)
getInstance = do
        pure (BasicCryptUtil.instance_)


-- throws Exception
getDecryptedInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> CryptInterface.CryptInterface -> IO (InputStream.InputStream)
getDecryptedInputStream object_ a1 a2 = jmethod object_ "getDecryptedInputStream" (\() -> (getDecryptedInputStream_impl (javaCast object_ :: BasicCryptUtil))) () a1 a2

getDecryptedInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> CryptInterface.CryptInterface -> IO (InputStream.InputStream)
getDecryptedInputStream_super object_ a1 a2 = (getDecryptedInputStream_impl (javaCast object_ :: BasicCryptUtil)) a1 a2

getDecryptedInputStream_impl :: BasicCryptUtil -> InputStream.InputStream -> CryptInterface.CryptInterface -> IO (InputStream.InputStream)
getDecryptedInputStream_impl this inputStream cryptInterface = do
        buffer <- (ByteArrayOutputStream.new_)
        ch <- newIORef (0)
        fix $ \loop -> when True $ javaIteration (loop) $ do
            assignedValue <- (InputStream.read inputStream)
            jset ch (assignedValue)
            when ((jget ch) == (Prelude.negate 1)) $ do
                throwIO JavaBreak
            Control.Monad.void (ByteArrayOutputStream.write buffer (jget ch))
        decrypted <- (CryptInterface.decrypt cryptInterface (jio (ByteArrayOutputStream.toByteArray buffer)))
        decryptedString <- newIORef =<< (jnewString decrypted)
        let index = (jstringIndexOf (jget decryptedString) (jget (this).xML_START) 0)
        when (index > 0) $ do
            jset decryptedString ((Prelude.drop index (jget decryptedString)))
        (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (ByteArrayInputStream.new_1 (jio (TsUtil.getByteArray ((jget (this).tsUtil)) (jget decryptedString)))))


