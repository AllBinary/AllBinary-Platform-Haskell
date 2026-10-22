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
module AbBasicCrypt where

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
import qualified SunJCE -- same package or java.lang
import qualified KeySpecFactory -- same package or java.lang
import qualified Provider -- java.security.Provider
import qualified Security -- java.security.Security
import qualified KeySpec -- java.security.spec.KeySpec
import qualified Cipher -- javax.crypto.Cipher
import qualified SecretKey -- javax.crypto.SecretKey
import qualified SecretKeyFactory -- javax.crypto.SecretKeyFactory
import qualified CryptInterface -- org.allbinary.init.crypt.jcehelper.CryptInterface
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements CryptInterface
data AbBasicCrypt = AbBasicCrypt
    { header_ :: JavaHeader
    , cipher :: IORef (Cipher.Cipher)
    , secretKey :: IORef (SecretKey.SecretKey)
    , algorithm :: IORef (String)
    , key :: IORef (JavaArray (Int8))
    }

instance JavaNull AbBasicCrypt where
    javaNull = javaNullRecord "AbBasicCrypt"

instance JavaEquals AbBasicCrypt where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbBasicCrypt where
    (==) = jrecordEquals

instance JavaObjectClass AbBasicCrypt where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbBasicCrypt
newRecord_ = do
    header_ <- newJavaHeader
    cipher <- newIORef javaNull
    secretKey <- newIORef javaNull
    algorithm <- newIORef ""
    key <- newIORef javaNull
    let this = AbBasicCrypt header_ cipher secretKey algorithm key
    jregisterLevel header_ this
    CryptInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    pure this

initFields_ :: AbBasicCrypt -> IO ()
initFields_ this = do
    jset this.cipher (javaNull)
    jset this.secretKey (javaNull)
    jset this.algorithm ("")
    jset this.key (javaNull)
    pure ()

new_2 :: String -> String -> IO AbBasicCrypt
new_2 algorithm key = do
    this <- newRecord_
    init_2 this algorithm key
    pure this

init_2 :: AbBasicCrypt -> String -> String -> IO ()
init_2 this algorithm key = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this "AbCrypt(alg,key)" e)
            ) $ do
            jset (this).algorithm (algorithm)
            jset (this).key ((jgetBytes key))
            Control.Monad.void (AbBasicCrypt.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AbBasicCrypt))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AbBasicCrypt))

init_impl :: AbBasicCrypt -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE "init Failed" this (jget (commonStrings).iNIT) e)
            ) $ do
            sunJce <- (fmap (\value_ -> javaCast value_ :: Provider.Provider) (SunJCE.new_))
            Control.Monad.void (Security.addProvider sunJce)
            keySpec <- (fmap (\value_ -> javaCast value_ :: KeySpec.KeySpec) (KeySpecFactory.getInstance_2 ((jio (KeySpecFactory.getInstance))) (jget (this).algorithm) (jget (this).key)))
            keyFactory <- (SecretKeyFactory.getInstance (jget (this).algorithm))
            assignedValue <- (SecretKeyFactory.generateSecret keyFactory keySpec)
            jset (this).secretKey (assignedValue)
            assignedValue <- (Cipher.getInstance (jget (this).algorithm))
            jset (this).cipher (assignedValue)
        pure ()


encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: AbBasicCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: AbBasicCrypt)) a1

encrypt_impl :: AbBasicCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "Encrypt Failed" this "encrypt" e)
            pure (javaNull)
            ) $ do
            Control.Monad.void (Cipher.init ((jget (this).cipher)) (Cipher.eNCRYPT_MODE) (jget this.secretKey))
            ivArray <- (SecretKey.getEncoded ((jget (this).secretKey)))
            encrypted <- (Cipher.doFinal ((jget (this).cipher)) array)
            let result = (jnewArray (((jlength ivArray) + (jlength encrypted))) 0)
            Control.Monad.void (PreLogUtil.put ("ivArray Length: " ++ javaToString (jlength ivArray)) this "encrypt")
            forM_ [0 .. (jlength ivArray) - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex result (index) ((jindex ivArray (index)))
            forM_ [0 .. (jlength encrypted) - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex result ((index + (jlength ivArray))) ((jindex encrypted (index)))
            pure (result)


decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: AbBasicCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: AbBasicCrypt)) a1

decrypt_impl :: AbBasicCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "decrypt Failed" this "decrypt" e)
            pure (javaNull)
            ) $ do
            Control.Monad.void (Cipher.init ((jget (this).cipher)) (Cipher.dECRYPT_MODE) (jget this.secretKey))
            let ivArray = (jnewArray (8) 0)
            forM_ [0 .. 8 - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex ivArray (index) ((jindex array (index)))
            Control.Monad.void (PreLogUtil.put ("ivArray Length: " ++ javaToString (jlength ivArray)) this "encrypt")
            let result = (jnewArray (((jlength array) - (jlength ivArray))) 0)
            forM_ [(jlength ivArray) .. (jlength array) - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex result ((index - (jlength ivArray))) ((jindex array (index)))
            decrypted <- (Cipher.doFinal ((jget (this).cipher)) result)
            pure (result)


