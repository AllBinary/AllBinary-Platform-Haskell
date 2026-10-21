{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.control.crypt.file
module CryptFileWriter where

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
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified Document -- org.w3c.dom.Document

data CryptFileWriter = CryptFileWriter
    { header_ :: JavaHeader
    }

instance JavaNull CryptFileWriter where
    javaNull = javaNullRecord "CryptFileWriter"

instance JavaEquals CryptFileWriter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CryptFileWriter where
    (==) = jrecordEquals

instance JavaObjectClass CryptFileWriter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CryptFileWriter
newRecord_ = do
    header_ <- newJavaHeader
    let this = CryptFileWriter header_
    jregisterLevel header_ this
    jregisterMethod header_ "write" (\() -> write_impl this)
    pure this

initFields_ :: CryptFileWriter -> IO ()
initFields_ this = do
    pure ()

new_2 :: String -> String -> IO CryptFileWriter
new_2 decryptedExtension encryptedExtension = do
    this <- newRecord_
    init_2 this decryptedExtension encryptedExtension
    pure this

init_2 :: CryptFileWriter -> String -> String -> IO ()
init_2 this decryptedExtension encryptedExtension = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> Document.Document -> IO (())
write object_ a1 a2 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: CryptFileWriter))) () a1 a2

write_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> Document.Document -> IO (())
write_super object_ a1 a2 = (write_impl (javaCast object_ :: CryptFileWriter)) a1 a2

write_impl :: CryptFileWriter -> AbPath.AbPath -> Document.Document -> IO (())
write_impl this fileAbPath document = do
        pure ()


