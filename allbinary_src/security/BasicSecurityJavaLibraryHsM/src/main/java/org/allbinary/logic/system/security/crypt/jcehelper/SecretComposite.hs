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
-- package org.allbinary.logic.system.security.crypt.jcehelper
module SecretComposite (module SecretComposite, module BaseSecretComposite) where

import BaseSecretComposite hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, encrypt, encrypt_super, encrypt_impl, decrypt, decrypt_super, decrypt_impl, mutilate, mutilate_super, mutilate_impl, byteUtil, cipher, secretKey, key)
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
import qualified Cipher -- javax.crypto.Cipher
import qualified SecretKey -- javax.crypto.SecretKey
import qualified ByteUtil -- org.allbinary.logic.java.byteutil.ByteUtil
import qualified BaseSecretComposite

data SecretComposite = SecretComposite
    { header_ :: JavaHeader
    , base :: BaseSecretComposite.BaseSecretComposite
    , byteUtil :: IORef (ByteUtil.ByteUtil)
    , cipher :: IORef (Cipher.Cipher)
    , secretKey :: IORef (SecretKey.SecretKey)
    , key :: IORef (JavaArray (Int8))
    }

instance JavaNull SecretComposite where
    javaNull = javaNullRecord "SecretComposite"

instance JavaEquals SecretComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SecretComposite where
    (==) = jrecordEquals

instance JavaObjectClass SecretComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SecretComposite
newRecord_ = do
    base <- BaseSecretComposite.newRecord_
    let header_ = base.header_
    byteUtil <- newIORef javaNull
    cipher <- newIORef javaNull
    secretKey <- newIORef javaNull
    key <- newIORef javaNull
    let this = SecretComposite header_ base byteUtil cipher secretKey key
    jregisterLevel header_ this
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    jregisterMethod header_ "mutilate" (\() -> mutilate_impl this)
    pure this

initFields_ :: SecretComposite -> IO ()
initFields_ this = do
    jset this.byteUtil =<< (ByteUtil.getInstance)
    jset this.cipher (javaNull)
    jset this.secretKey (javaNull)
    jset this.key (javaNull)
    pure ()

new_3 :: SecretKey.SecretKey -> Cipher.Cipher -> JavaArray (Int8) -> IO SecretComposite
new_3 secretKey cipher key = do
    this <- newRecord_
    init_3 this secretKey cipher key
    pure this

init_3 :: SecretComposite -> SecretKey.SecretKey -> Cipher.Cipher -> JavaArray (Int8) -> IO ()
init_3 this secretKey cipher key = do
        BaseSecretComposite.init_ this.base
        initFields_ this
        jset (this).secretKey (secretKey)
        jset (this).cipher (cipher)
        jset (this).key (key)
        pure ()


-- throws Exception
encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: SecretComposite))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: SecretComposite)) a1

encrypt_impl :: SecretComposite -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = do
        array <- newIORef array
        assignedValue <- (SecretComposite.mutilate this (jget array))
        jset array (assignedValue)
        Control.Monad.void (Cipher.init ((jget (this).cipher)) (Cipher.eNCRYPT_MODE) (jget (this).secretKey))
        (Cipher.doFinal ((jget (this).cipher)) (jget array))


-- throws Exception
decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: SecretComposite))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: SecretComposite)) a1

decrypt_impl :: SecretComposite -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = do
        Control.Monad.void (Cipher.init ((jget (this).cipher)) (Cipher.dECRYPT_MODE) (jget (this).secretKey))
        (SecretComposite.mutilate this (jio (Cipher.doFinal ((jget (this).cipher)) array)))


mutilate :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate object_ a1 = jmethod object_ "mutilate" (\() -> (mutilate_impl (javaCast object_ :: SecretComposite))) () a1

mutilate_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate_super object_ a1 = (mutilate_impl (javaCast object_ :: SecretComposite)) a1

mutilate_impl :: SecretComposite -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate_impl this array = do
        array <- newIORef array
        forM_ [0 .. (jlength (jget (this).key)) - 1] $ \index -> javaIteration (pure ()) $ do
            let value = (jindex ((jget (this).key)) (index))
            when (((Prelude.fromIntegral value) < 8) && ((Prelude.fromIntegral value) > 0)) $ do
                assignedValue <- (ByteUtil.xorByte ((jget (this).byteUtil)) (jget array) (Prelude.fromIntegral value))
                jset array (assignedValue)
        pure ((jget array))


