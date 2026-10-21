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
module PaymentTransactionInterfaceFactoryInterface where

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
import qualified PaymentTransactionInterface -- same package or java.lang
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified TenderType -- org.allbinary.business.user.commerce.money.payment.types.TenderType

-- Java interface: the classes that implement it have these functions
data PaymentTransactionInterfaceFactoryInterface = PaymentTransactionInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentTransactionInterfaceFactoryInterface where
    javaNull = javaNullRecord "PaymentTransactionInterfaceFactoryInterface"

instance JavaEquals PaymentTransactionInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTransactionInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTransactionInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentTransactionInterfaceFactoryInterface
fromHeader_ header = PaymentTransactionInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentTransactionInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> OrderHistory.OrderHistory -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> OrderHistory.OrderHistory -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getInstance_impl :: PaymentTransactionInterfaceFactoryInterface -> OrderHistory.OrderHistory -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_impl this orderHistory = javaAbstractMethod "getInstance"


-- throws Exception
getSaleTransaction :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getSaleTransaction object_ a1 = jmethod object_ "getSaleTransaction" (\() -> (getSaleTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getSaleTransaction_super :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getSaleTransaction_super object_ a1 = (getSaleTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getSaleTransaction_impl :: PaymentTransactionInterfaceFactoryInterface -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getSaleTransaction_impl this tenderType = javaAbstractMethod "getSaleTransaction"


-- throws Exception
getCreditTransaction :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getCreditTransaction object_ a1 = jmethod object_ "getCreditTransaction" (\() -> (getCreditTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getCreditTransaction_super :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getCreditTransaction_super object_ a1 = (getCreditTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getCreditTransaction_impl :: PaymentTransactionInterfaceFactoryInterface -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getCreditTransaction_impl this tenderType = javaAbstractMethod "getCreditTransaction"


-- throws Exception
getAuthorizationTransaction :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getAuthorizationTransaction object_ a1 = jmethod object_ "getAuthorizationTransaction" (\() -> (getAuthorizationTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getAuthorizationTransaction_super :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getAuthorizationTransaction_super object_ a1 = (getAuthorizationTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getAuthorizationTransaction_impl :: PaymentTransactionInterfaceFactoryInterface -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getAuthorizationTransaction_impl this tenderType = javaAbstractMethod "getAuthorizationTransaction"


-- throws Exception
getCaptureDelayedTransaction :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getCaptureDelayedTransaction object_ a1 = jmethod object_ "getCaptureDelayedTransaction" (\() -> (getCaptureDelayedTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getCaptureDelayedTransaction_super :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getCaptureDelayedTransaction_super object_ a1 = (getCaptureDelayedTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getCaptureDelayedTransaction_impl :: PaymentTransactionInterfaceFactoryInterface -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getCaptureDelayedTransaction_impl this tenderType = javaAbstractMethod "getCaptureDelayedTransaction"


-- throws Exception
getVoidTransaction :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getVoidTransaction object_ a1 = jmethod object_ "getVoidTransaction" (\() -> (getVoidTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getVoidTransaction_super :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getVoidTransaction_super object_ a1 = (getVoidTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getVoidTransaction_impl :: PaymentTransactionInterfaceFactoryInterface -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getVoidTransaction_impl this tenderType = javaAbstractMethod "getVoidTransaction"


-- throws Exception
getInquiryTransaction :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInquiryTransaction object_ a1 = jmethod object_ "getInquiryTransaction" (\() -> (getInquiryTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface))) () a1

getInquiryTransaction_super :: (JavaObjectClass this_) => this_ -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInquiryTransaction_super object_ a1 = (getInquiryTransaction_impl (javaCast object_ :: PaymentTransactionInterfaceFactoryInterface)) a1

getInquiryTransaction_impl :: PaymentTransactionInterfaceFactoryInterface -> TenderType.TenderType -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInquiryTransaction_impl this tenderType = javaAbstractMethod "getInquiryTransaction"


