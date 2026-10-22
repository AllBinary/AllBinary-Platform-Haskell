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
-- package org.allbinary.logic.system.security.crypt.jcehelper
module AbCrypt where

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
import qualified BaseSecretComposite -- same package or java.lang
import qualified KeySpecFactory -- same package or java.lang
import qualified SecretComposite -- same package or java.lang
import qualified Security -- java.security.Security
import qualified KeySpec -- java.security.spec.KeySpec
import qualified Cipher -- javax.crypto.Cipher
import qualified SecretKey -- javax.crypto.SecretKey
import qualified SecretKeyFactory -- javax.crypto.SecretKeyFactory
import qualified TsUtil -- org.allbinary.TsUtil
import qualified CryptInterface -- org.allbinary.init.crypt.jcehelper.CryptInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BouncyCastleProvider -- org.bouncycastle.jce.provider.BouncyCastleProvider

-- implements CryptInterface
data AbCrypt = AbCrypt
    { header_ :: JavaHeader
    , tsUtil :: IORef (TsUtil.TsUtil)
    , secretComposite :: IORef (BaseSecretComposite.BaseSecretComposite)
    , algorithm :: IORef (String)
    }

instance JavaNull AbCrypt where
    javaNull = javaNullRecord "AbCrypt"

instance JavaEquals AbCrypt where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbCrypt where
    (==) = jrecordEquals

instance JavaObjectClass AbCrypt where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbCrypt
newRecord_ = do
    header_ <- newJavaHeader
    tsUtil <- newIORef javaNull
    secretComposite <- newIORef javaNull
    algorithm <- newIORef ""
    let this = AbCrypt header_ tsUtil secretComposite algorithm
    jregisterLevel header_ this
    CryptInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    pure this

initFields_ :: AbCrypt -> IO ()
initFields_ this = do
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.secretComposite (BaseSecretComposite.nULL_SECRET_COMPOSITE)
    jset this.algorithm (javaNull)
    pure ()

new_1 :: String -> IO AbCrypt
new_1 algorithm = do
    this <- newRecord_
    init_1 this algorithm
    pure this

init_1 :: AbCrypt -> String -> IO ()
init_1 this algorithm = do
        initFields_ this
        jset (this).algorithm (algorithm)
        pure ()


init :: (JavaObjectClass this_) => this_ -> String -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AbCrypt))) () a1

init_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: AbCrypt)) a1

init_impl :: AbCrypt -> String -> IO (())
init_impl this keyAsString = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "init Failed" this (jget (commonStrings).iNIT) e)
            ) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iNIT) e)
                ) $ do
                Control.Monad.void (Security.addProvider (jio (BouncyCastleProvider.new_)))
            key <- (TsUtil.getByteArray ((jget (this).tsUtil)) keyAsString)
            keySpec <- (fmap (\value_ -> javaCast value_ :: KeySpec.KeySpec) (KeySpecFactory.getInstance_2 ((jio (KeySpecFactory.getInstance))) (jget (this).algorithm) key))
            keyFactory <- (SecretKeyFactory.getInstance (jget (this).algorithm))
            secretKey <- (SecretKeyFactory.generateSecret keyFactory keySpec)
            cipher <- (Cipher.getInstance (jget (this).algorithm))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BaseSecretComposite.BaseSecretComposite) (SecretComposite.new_3 secretKey cipher key))
            jset (this).secretComposite (assignedValue)
        pure ()


encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: AbCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: AbCrypt)) a1

encrypt_impl :: AbCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "Encrypt Failed" this "encrypt" e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))
            ) $ do
            (BaseSecretComposite.encrypt ((jget (this).secretComposite)) array)


decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: AbCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: AbCrypt)) a1

decrypt_impl :: AbCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "decrypt Failed" this "decrypt" e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))
            ) $ do
            (BaseSecretComposite.decrypt ((jget (this).secretComposite)) array)


