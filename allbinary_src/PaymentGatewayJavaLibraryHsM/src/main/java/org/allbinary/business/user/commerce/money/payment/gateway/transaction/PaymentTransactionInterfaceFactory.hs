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
module PaymentTransactionInterfaceFactory where

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
import qualified PaymentTransactionInterfaceFactoryInterface -- same package or java.lang
import qualified PaymentTransactionInterface -- same package or java.lang
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified PaymentType -- org.allbinary.business.user.commerce.money.payment.types.PaymentType
import qualified PaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PaymentTransactionInterfaceFactory = PaymentTransactionInterfaceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PaymentTransactionInterfaceFactory where
    javaNull = javaNullRecord "PaymentTransactionInterfaceFactory"

instance JavaEquals PaymentTransactionInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTransactionInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTransactionInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentTransactionInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = PaymentTransactionInterfaceFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: PaymentTransactionInterfaceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (PaymentTransactionInterfaceFactory)
getInstance = do
        pure (PaymentTransactionInterfaceFactory.instance_)

new_ :: IO PaymentTransactionInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentTransactionInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> OrderHistory.OrderHistory -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PaymentTransactionInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> OrderHistory.OrderHistory -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: PaymentTransactionInterfaceFactory)) a1

getInstance_impl :: PaymentTransactionInterfaceFactory -> OrderHistory.OrderHistory -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_impl this orderReview = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate test data" this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            gatewayName <- (OrderHistory.getPaymentMethod orderReview)
            when (gatewayName /= javaNull) $ do
                paymentType <- (PaymentTypeUtil.get ((jio (PaymentTypeUtil.getInstance))) gatewayName)
                paymentTransactionInterfaceFactoryInterface <- (PaymentType.getPaymentTransactionInterfaceFactoryInterface paymentType)
                paymentTransactionInterface <- (PaymentTransactionInterfaceFactoryInterface.getInstance paymentTransactionInterfaceFactoryInterface orderReview)
                javaReturn (paymentTransactionInterface)
            javaThrow ((JavaException "Exception" (("Failed to create PaymentTransactionInterface: " ++ "GatewayName is: ") ++ gatewayName)))


