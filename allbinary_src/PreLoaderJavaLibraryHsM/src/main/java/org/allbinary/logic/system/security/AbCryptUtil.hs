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
-- package org.allbinary.logic.system.security
module AbCryptUtil where

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
import qualified InputStream -- java.io.InputStream
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbCrypt -- org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt
import qualified KeySpecFactory -- org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory

data AbCryptUtil = AbCryptUtil
    { header_ :: JavaHeader
    , streamUtil :: IORef (StreamUtil.StreamUtil)
    }

instance JavaNull AbCryptUtil where
    javaNull = javaNullRecord "AbCryptUtil"

instance JavaEquals AbCryptUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbCryptUtil where
    (==) = jrecordEquals

instance JavaObjectClass AbCryptUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbCryptUtil
newRecord_ = do
    header_ <- newJavaHeader
    streamUtil <- newIORef javaNull
    let this = AbCryptUtil header_ streamUtil
    jregisterLevel header_ this
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    pure this

initFields_ :: AbCryptUtil -> IO ()
initFields_ this = do
    jset this.streamUtil =<< (StreamUtil.getInstance)
    pure ()


getInstance :: IO (AbCryptUtil)
getInstance = do
        pure (AbCryptUtil.instance_)

new_ :: IO AbCryptUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbCryptUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
decrypt :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> String -> IO (JavaArray (Int8))
decrypt object_ a1 a2 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: AbCryptUtil))) () a1 a2

decrypt_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> String -> IO (JavaArray (Int8))
decrypt_super object_ a1 a2 = (decrypt_impl (javaCast object_ :: AbCryptUtil)) a1 a2

decrypt_impl :: AbCryptUtil -> InputStream.InputStream -> String -> IO (JavaArray (Int8))
decrypt_impl this inputStream key = do
        outputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget outputStream)))
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast inputStream))
            ) $ do
            jset outputStream ((javaCast (jio (StreamUtil.get ((jget (this).streamUtil)) inputStream (javaCast (jio (ByteArrayOutputStream.new_))) (jnewArray (16384) 0))) :: ByteArrayOutputStream.ByteArrayOutputStream))
            abCrypt <- (AbCrypt.new_1 (jget ((jio (KeySpecFactory.getInstance))).dESEDE))
            Control.Monad.void (AbCrypt.init abCrypt key)
            (AbCrypt.decrypt abCrypt (jio (ByteArrayOutputStream.toByteArray ((jget outputStream)))))


