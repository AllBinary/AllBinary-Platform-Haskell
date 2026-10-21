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
-- package org.allbinary.data.tables.user.commerce.money.payment.gateway
module PaymentGatewayEntityInterface (module PaymentGatewayEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPaymentGatewayInterface, getPaymentGatewayInterface_super, getPaymentGatewayInterface_impl, findPaymentTypeVectorByStore, findPaymentTypeVectorByStore_super, findPaymentTypeVectorByStore_impl, remove, remove_super, remove_impl, add, add_super, add_impl, update, update_super, update_impl, toString)
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
import qualified PaymentGatewayInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface
import qualified BasicPaymentType -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data PaymentGatewayEntityInterface = PaymentGatewayEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentGatewayEntityInterface where
    javaNull = javaNullRecord "PaymentGatewayEntityInterface"

instance JavaEquals PaymentGatewayEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentGatewayEntityInterface
fromHeader_ header = PaymentGatewayEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentGatewayEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPaymentGatewayInterface :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface object_ a1 a2 = jmethod object_ "getPaymentGatewayInterface" (\() -> (getPaymentGatewayInterface_impl (javaCast object_ :: PaymentGatewayEntityInterface))) () a1 a2

getPaymentGatewayInterface_super :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface_super object_ a1 a2 = (getPaymentGatewayInterface_impl (javaCast object_ :: PaymentGatewayEntityInterface)) a1 a2

getPaymentGatewayInterface_impl :: PaymentGatewayEntityInterface -> String -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface_impl this storeName paymentType = javaAbstractMethod "getPaymentGatewayInterface"


findPaymentTypeVectorByStore :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
findPaymentTypeVectorByStore object_ a1 = jmethod object_ "findPaymentTypeVectorByStore" (\() -> (findPaymentTypeVectorByStore_impl (javaCast object_ :: PaymentGatewayEntityInterface))) () a1

findPaymentTypeVectorByStore_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
findPaymentTypeVectorByStore_super object_ a1 = (findPaymentTypeVectorByStore_impl (javaCast object_ :: PaymentGatewayEntityInterface)) a1

findPaymentTypeVectorByStore_impl :: PaymentGatewayEntityInterface -> String -> IO (BasicArrayList.BasicArrayList)
findPaymentTypeVectorByStore_impl this storeName = javaAbstractMethod "findPaymentTypeVectorByStore"


remove :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: PaymentGatewayEntityInterface))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: PaymentGatewayEntityInterface)) a1 a2

remove_impl :: PaymentGatewayEntityInterface -> String -> BasicPaymentType.BasicPaymentType -> IO (())
remove_impl this storeName paymentType = javaAbstractMethod "remove"


add :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PaymentGatewayEntityInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PaymentGatewayEntityInterface)) a1

add_impl :: PaymentGatewayEntityInterface -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
add_impl this paymentGatewayInterface = javaAbstractMethod "add"


update :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PaymentGatewayEntityInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: PaymentGatewayEntityInterface)) a1

update_impl :: PaymentGatewayEntityInterface -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
update_impl this paymentGatewayInterface = javaAbstractMethod "update"


