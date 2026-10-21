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
-- package org.allbinary.business.user.commerce.money.payment.types
module TransactionType where

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

data TransactionType = TransactionType
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull TransactionType where
    javaNull = javaNullRecord "TransactionType"

instance JavaEquals TransactionType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionType where
    (==) = jrecordEquals

instance JavaObjectClass TransactionType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransactionType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = TransactionType header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "isEqual" (\() -> isEqual_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TransactionType -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO TransactionType
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: TransactionType -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        pure ()


isEqual :: (JavaObjectClass this_) => this_ -> TransactionType -> IO (Bool)
isEqual object_ a1 = jmethod object_ "isEqual" (\() -> (isEqual_impl (javaCast object_ :: TransactionType))) () a1

isEqual_super :: (JavaObjectClass this_) => this_ -> TransactionType -> IO (Bool)
isEqual_super object_ a1 = (isEqual_impl (javaCast object_ :: TransactionType)) a1

isEqual_impl :: TransactionType -> TransactionType -> IO (Bool)
isEqual_impl this transactionType = do
        if ((Prelude.fromEnum (Prelude.compare (jio (TransactionType.toString this)) (jio (TransactionType.toString transactionType))) - 1) == 0) then do
            pure (True)
        else do
            pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TransactionType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TransactionType))

toString_impl :: TransactionType -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


