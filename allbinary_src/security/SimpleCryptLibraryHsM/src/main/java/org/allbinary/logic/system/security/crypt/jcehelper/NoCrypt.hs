{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module NoCrypt where

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
import qualified CryptInterface -- org.allbinary.init.crypt.jcehelper.CryptInterface

-- implements CryptInterface
data NoCrypt = NoCrypt
    { header_ :: JavaHeader
    }

instance JavaNull NoCrypt where
    javaNull = javaNullRecord "NoCrypt"

instance JavaEquals NoCrypt where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoCrypt where
    (==) = jrecordEquals

instance JavaObjectClass NoCrypt where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoCrypt
newRecord_ = do
    header_ <- newJavaHeader
    let this = NoCrypt header_
    jregisterLevel header_ this
    CryptInterface.registerInterface_ header_
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    pure this

initFields_ :: NoCrypt -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoCrypt
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoCrypt -> IO ()
init_ this = do
    initFields_ this


encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: NoCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: NoCrypt)) a1

encrypt_impl :: NoCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = do
        pure (array)


decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: NoCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: NoCrypt)) a1

decrypt_impl :: NoCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = do
        pure (array)


