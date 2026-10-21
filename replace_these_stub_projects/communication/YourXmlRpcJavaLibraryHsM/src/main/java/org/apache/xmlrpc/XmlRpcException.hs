{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.apache.xmlrpc
module XmlRpcException (module XmlRpcException, module Exception) where

import Exception hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified Exception

data XmlRpcException = XmlRpcException
    { header_ :: JavaHeader
    , base :: Exception.Exception
    }

instance JavaNull XmlRpcException where
    javaNull = javaNullRecord "XmlRpcException"

instance JavaEquals XmlRpcException where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlRpcException where
    (==) = jrecordEquals

instance JavaObjectClass XmlRpcException where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO XmlRpcException
newRecord_ = do
    base <- Exception.newRecord_
    let header_ = base.header_
    let this = XmlRpcException header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: XmlRpcException -> IO ()
initFields_ this = do
    pure ()

new_2 :: Int -> String -> IO XmlRpcException
new_2 code message = do
    this <- newRecord_
    init_2 this code message
    pure this

init_2 :: XmlRpcException -> Int -> String -> IO ()
init_2 this code message = do
        Exception.init_1 this.base (message)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


