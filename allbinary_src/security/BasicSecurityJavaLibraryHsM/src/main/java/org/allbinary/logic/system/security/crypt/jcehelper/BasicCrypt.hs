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
module BasicCrypt where

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
import qualified TsUtil -- org.allbinary.TsUtil
import qualified CryptInterface -- org.allbinary.init.crypt.jcehelper.CryptInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified ByteUtil -- org.allbinary.logic.java.byteutil.ByteUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements CryptInterface
data BasicCrypt = BasicCrypt
    { header_ :: JavaHeader
    , byteUtil :: IORef (ByteUtil.ByteUtil)
    , key :: IORef (JavaArray (Int8))
    }

instance JavaNull BasicCrypt where
    javaNull = javaNullRecord "BasicCrypt"

instance JavaEquals BasicCrypt where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicCrypt where
    (==) = jrecordEquals

instance JavaObjectClass BasicCrypt where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicCrypt
newRecord_ = do
    header_ <- newJavaHeader
    byteUtil <- newIORef javaNull
    key <- newIORef javaNull
    let this = BasicCrypt header_ byteUtil key
    jregisterLevel header_ this
    CryptInterface.registerInterface_ header_
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    jregisterMethod header_ "mutilate" (\() -> mutilate_impl this)
    pure this

initFields_ :: BasicCrypt -> IO ()
initFields_ this = do
    jset this.byteUtil =<< (ByteUtil.getInstance)
    jset this.key (javaNull)
    pure ()

new_1 :: String -> IO BasicCrypt
new_1 keyAsString = do
    this <- newRecord_
    init_1 this keyAsString
    pure this

init_1 :: BasicCrypt -> String -> IO ()
init_1 this keyAsString = do
        initFields_ this
        key <- newIORef ((jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this "AbCrypt(alg,key)" e)
            ) $ do
            assignedValue <- (TsUtil.getByteArray ((jio (TsUtil.getInstance))) keyAsString)
            jset key (assignedValue)
        jset (this).key ((jget key))
        pure ()


encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: BasicCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: BasicCrypt)) a1

encrypt_impl :: BasicCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "Encrypt Failed" this "encrypt" e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))
            ) $ do
            (BasicCrypt.mutilate this array)


decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: BasicCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: BasicCrypt)) a1

decrypt_impl :: BasicCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "decrypt Failed" this "decrypt" e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))
            ) $ do
            (BasicCrypt.mutilate this array)


mutilate :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate object_ a1 = jmethod object_ "mutilate" (\() -> (mutilate_impl (javaCast object_ :: BasicCrypt))) () a1

mutilate_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate_super object_ a1 = (mutilate_impl (javaCast object_ :: BasicCrypt)) a1

mutilate_impl :: BasicCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate_impl this array = do
        array <- newIORef array
        value <- newIORef (0)
        forM_ [0 .. (jlength (jget (this).key)) - 1] $ \index -> javaIteration (pure ()) $ do
            jset value ((jindex ((jget (this).key)) (index)))
            assignedValue <- (ByteUtil.xor ((jget (this).byteUtil)) (jget array) (jget value))
            jset array (assignedValue)
        pure ((jget array))


