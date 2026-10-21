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
-- package org.allbinary.data.tables.user.commerce.money.payment.transaction
module TransactionResultEntityInterface (module TransactionResultEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTransactionResultInterface, getTransactionResultInterface_super, getTransactionResultInterface_impl, remove, remove_super, remove_impl, add, add_super, add_impl, toString)
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
import qualified TransactionResultInterface -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data TransactionResultEntityInterface = TransactionResultEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransactionResultEntityInterface where
    javaNull = javaNullRecord "TransactionResultEntityInterface"

instance JavaEquals TransactionResultEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionResultEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransactionResultEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransactionResultEntityInterface
fromHeader_ header = TransactionResultEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransactionResultEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTransactionResultInterface :: (JavaObjectClass this_) => this_ -> String -> IO (TransactionResultInterface.TransactionResultInterface)
getTransactionResultInterface object_ a1 = jmethod object_ "getTransactionResultInterface" (\() -> (getTransactionResultInterface_impl (javaCast object_ :: TransactionResultEntityInterface))) () a1

getTransactionResultInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (TransactionResultInterface.TransactionResultInterface)
getTransactionResultInterface_super object_ a1 = (getTransactionResultInterface_impl (javaCast object_ :: TransactionResultEntityInterface)) a1

getTransactionResultInterface_impl :: TransactionResultEntityInterface -> String -> IO (TransactionResultInterface.TransactionResultInterface)
getTransactionResultInterface_impl this orderNumber = javaAbstractMethod "getTransactionResultInterface"


remove :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: TransactionResultEntityInterface))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: TransactionResultEntityInterface)) a1 a2

remove_impl :: TransactionResultEntityInterface -> String -> String -> IO (())
remove_impl this userName orderNumber = javaAbstractMethod "remove"


add :: (JavaObjectClass this_) => this_ -> String -> String -> TransactionResultInterface.TransactionResultInterface -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: TransactionResultEntityInterface))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> String -> String -> TransactionResultInterface.TransactionResultInterface -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: TransactionResultEntityInterface)) a1 a2 a3

add_impl :: TransactionResultEntityInterface -> String -> String -> TransactionResultInterface.TransactionResultInterface -> IO (())
add_impl this userName orderNumber resultInterface = javaAbstractMethod "add"


