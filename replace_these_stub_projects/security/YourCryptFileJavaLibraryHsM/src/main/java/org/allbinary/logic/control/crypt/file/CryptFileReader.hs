{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.control.crypt.file
module CryptFileReader where

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
import qualified InputStream -- java.io.InputStream
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

data CryptFileReader = CryptFileReader
    { header_ :: JavaHeader
    }

instance JavaNull CryptFileReader where
    javaNull = javaNullRecord "CryptFileReader"

instance JavaEquals CryptFileReader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CryptFileReader where
    (==) = jrecordEquals

instance JavaObjectClass CryptFileReader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CryptFileReader
newRecord_ = do
    header_ <- newJavaHeader
    let this = CryptFileReader header_
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getInputStream" (\() -> getInputStream_impl this)
    pure this

initFields_ :: CryptFileReader -> IO ()
initFields_ this = do
    pure ()

new_2 :: String -> String -> IO CryptFileReader
new_2 decryptedExtension encryptedExtension = do
    this <- newRecord_
    init_2 this decryptedExtension encryptedExtension
    pure this

init_2 :: CryptFileReader -> String -> String -> IO ()
init_2 this decryptedExtension encryptedExtension = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: CryptFileReader))) () a1

get_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
get_super object_ a1 = (get_impl (javaCast object_ :: CryptFileReader)) a1

get_impl :: CryptFileReader -> AbPath.AbPath -> IO (String)
get_impl this fileAbPath = do
        pure (javaNull)


-- throws Exception
getInputStream :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (InputStream.InputStream)
getInputStream object_ a1 = jmethod object_ "getInputStream" (\() -> (getInputStream_impl (javaCast object_ :: CryptFileReader))) () a1

getInputStream_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (InputStream.InputStream)
getInputStream_super object_ a1 = (getInputStream_impl (javaCast object_ :: CryptFileReader)) a1

getInputStream_impl :: CryptFileReader -> AbPath.AbPath -> IO (InputStream.InputStream)
getInputStream_impl this fileAbPath = do
        pure (javaNull)


