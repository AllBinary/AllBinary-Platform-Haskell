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
-- package org.allbinary.data.tables.user.commerce.money.payment
module PaymentEntityInterface (module PaymentEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLastId, getLastId_super, getLastId_impl, setDefault, setDefault_super, setDefault_impl, getDefault, getDefault_super, getDefault_impl, get, get_super, get_impl, add, add_super, add_impl, remove, remove_super, remove_impl, insert, insert_super, insert_impl, toString)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PaymentInterface -- org.allbinary.business.user.commerce.money.payment.PaymentInterface
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data PaymentEntityInterface = PaymentEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentEntityInterface where
    javaNull = javaNullRecord "PaymentEntityInterface"

instance JavaEquals PaymentEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentEntityInterface
fromHeader_ header = PaymentEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getLastId :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getLastId object_ a1 = jmethod object_ "getLastId" (\() -> (getLastId_impl (javaCast object_ :: PaymentEntityInterface))) () a1

getLastId_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getLastId_super object_ a1 = (getLastId_impl (javaCast object_ :: PaymentEntityInterface)) a1

getLastId_impl :: PaymentEntityInterface -> String -> IO (String)
getLastId_impl this userName = javaAbstractMethod "getLastId"


setDefault :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
setDefault object_ a1 a2 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: PaymentEntityInterface))) () a1 a2

setDefault_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
setDefault_super object_ a1 a2 = (setDefault_impl (javaCast object_ :: PaymentEntityInterface)) a1 a2

setDefault_impl :: PaymentEntityInterface -> String -> Int -> IO (())
setDefault_impl this userName index = javaAbstractMethod "setDefault"


getDefault :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentInterface.PaymentInterface)
getDefault object_ a1 = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: PaymentEntityInterface))) () a1

getDefault_super :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentInterface.PaymentInterface)
getDefault_super object_ a1 = (getDefault_impl (javaCast object_ :: PaymentEntityInterface)) a1

getDefault_impl :: PaymentEntityInterface -> String -> IO (PaymentInterface.PaymentInterface)
getDefault_impl this userName = javaAbstractMethod "getDefault"


get :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: PaymentEntityInterface))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get_super object_ a1 = (get_impl (javaCast object_ :: PaymentEntityInterface)) a1

get_impl :: PaymentEntityInterface -> String -> IO (BasicArrayList.BasicArrayList)
get_impl this userName = javaAbstractMethod "get"


add :: (JavaObjectClass this_) => this_ -> String -> PaymentInterface.PaymentInterface -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PaymentEntityInterface))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> String -> PaymentInterface.PaymentInterface -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: PaymentEntityInterface)) a1 a2

add_impl :: PaymentEntityInterface -> String -> PaymentInterface.PaymentInterface -> IO (())
add_impl this userName paymentInterface = javaAbstractMethod "add"


remove :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: PaymentEntityInterface))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: PaymentEntityInterface)) a1 a2

remove_impl :: PaymentEntityInterface -> String -> Int -> IO (())
remove_impl this userName index = javaAbstractMethod "remove"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: PaymentEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: PaymentEntityInterface)) a1

insert_impl :: PaymentEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


