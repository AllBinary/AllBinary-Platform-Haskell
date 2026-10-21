{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.logic.control.crypt.jcehelper
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

data AbCrypt = AbCrypt
    { header_ :: JavaHeader
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
    let this = AbCrypt header_
    jregisterLevel header_ this
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    jregisterMethod header_ "mutilate" (\() -> mutilate_impl this)
    pure this

initFields_ :: AbCrypt -> IO ()
initFields_ this = do
    pure ()

new_2 :: String -> String -> IO AbCrypt
new_2 algorithm key = do
    this <- newRecord_
    init_2 this algorithm key
    pure this

init_2 :: AbCrypt -> String -> String -> IO ()
init_2 this algorithm key = do
        initFields_ this
        pure ()
        pure ()


encrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: AbCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: AbCrypt)) a1

encrypt_impl :: AbCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
encrypt_impl this array = do
        pure (javaNull)


decrypt :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: AbCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: AbCrypt)) a1

decrypt_impl :: AbCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
decrypt_impl this array = do
        pure (javaNull)


mutilate :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate object_ a1 = jmethod object_ "mutilate" (\() -> (mutilate_impl (javaCast object_ :: AbCrypt))) () a1

mutilate_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate_super object_ a1 = (mutilate_impl (javaCast object_ :: AbCrypt)) a1

mutilate_impl :: AbCrypt -> JavaArray (Int8) -> IO (JavaArray (Int8))
mutilate_impl this array = do
        pure (javaNull)


