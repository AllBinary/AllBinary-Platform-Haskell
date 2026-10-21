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
-- package org.allbinary.business.user.commerce.money.payment.gateway.transaction
module PaymentTransactionKeys where

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

data PaymentTransactionKeys = PaymentTransactionKeys
    { header_ :: JavaHeader
    , key :: IORef (String)
    }

instance JavaNull PaymentTransactionKeys where
    javaNull = javaNullRecord "PaymentTransactionKeys"

instance JavaEquals PaymentTransactionKeys where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTransactionKeys where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTransactionKeys where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentTransactionKeys
newRecord_ = do
    header_ <- newJavaHeader
    key <- newIORef ""
    let this = PaymentTransactionKeys header_ key
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PaymentTransactionKeys -> IO ()
initFields_ this = do
    jset this.key (javaNull)
    pure ()

new_1 :: String -> IO PaymentTransactionKeys
new_1 value = do
    this <- newRecord_
    init_1 this value
    pure this

init_1 :: PaymentTransactionKeys -> String -> IO ()
init_1 this value = do
        initFields_ this
        jset (this).key (value)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PaymentTransactionKeys))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PaymentTransactionKeys))

toString_impl :: PaymentTransactionKeys -> IO (String)
toString_impl this = do
        pure ((jget (this).key))


