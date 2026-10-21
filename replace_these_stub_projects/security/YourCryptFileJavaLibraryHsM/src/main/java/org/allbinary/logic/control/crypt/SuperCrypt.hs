{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.control.crypt
module SuperCrypt where

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

data SuperCrypt = SuperCrypt
    { header_ :: JavaHeader
    }

instance JavaNull SuperCrypt where
    javaNull = javaNullRecord "SuperCrypt"

instance JavaEquals SuperCrypt where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SuperCrypt where
    (==) = jrecordEquals

instance JavaObjectClass SuperCrypt where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE kEYMAX #-}
kEYMAX = unsafePerformIO (newIORef (0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SuperCrypt
newRecord_ = do
    header_ <- newJavaHeader
    let this = SuperCrypt header_
    jregisterLevel header_ this
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    pure this

initFields_ :: SuperCrypt -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO SuperCrypt
new_1 key = do
    this <- newRecord_
    init_1 this key
    pure this

init_1 :: SuperCrypt -> Int -> IO ()
init_1 this key = do
        initFields_ this
        pure ()
        pure ()


encrypt :: (JavaObjectClass this_) => this_ -> String -> IO (String)
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: SuperCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: SuperCrypt)) a1

encrypt_impl :: SuperCrypt -> String -> IO (String)
encrypt_impl this value = do
        pure (javaNull)


decrypt :: (JavaObjectClass this_) => this_ -> String -> IO (String)
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: SuperCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: SuperCrypt)) a1

decrypt_impl :: SuperCrypt -> String -> IO (String)
decrypt_impl this value = do
        pure (javaNull)


