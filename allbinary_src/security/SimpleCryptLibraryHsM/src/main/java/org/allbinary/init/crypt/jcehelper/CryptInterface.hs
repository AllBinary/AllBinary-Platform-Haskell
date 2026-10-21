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
module CryptInterface where

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

-- Java interface: the classes that implement it have these functions
data CryptInterface = CryptInterface
    { header_ :: JavaHeader
    }

instance JavaNull CryptInterface where
    javaNull = javaNullRecord "CryptInterface"

instance JavaEquals CryptInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CryptInterface where
    (==) = jrecordEquals

instance JavaObjectClass CryptInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CryptInterface
fromHeader_ header = CryptInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CryptInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: CryptInterface))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: CryptInterface)) a1

encrypt_impl :: CryptInterface -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = javaAbstractMethod "encrypt"


decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: CryptInterface))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: CryptInterface)) a1

decrypt_impl :: CryptInterface -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = javaAbstractMethod "decrypt"


