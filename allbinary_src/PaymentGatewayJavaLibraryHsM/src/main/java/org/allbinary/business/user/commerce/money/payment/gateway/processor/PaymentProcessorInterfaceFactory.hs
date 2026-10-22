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
-- package org.allbinary.business.user.commerce.money.payment.gateway.processor
module PaymentProcessorInterfaceFactory where

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
import qualified PaymentProcessorInterfaceFactoryInterface -- same package or java.lang
import qualified PaymentProcessorInterface -- same package or java.lang
import qualified PaymentTransactionInterface -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface
import qualified PaymentTransactionInterfaceRequestFactory -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory
import qualified PaymentType -- org.allbinary.business.user.commerce.money.payment.types.PaymentType
import qualified PaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PaymentProcessorInterfaceFactory = PaymentProcessorInterfaceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PaymentProcessorInterfaceFactory where
    javaNull = javaNullRecord "PaymentProcessorInterfaceFactory"

instance JavaEquals PaymentProcessorInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentProcessorInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass PaymentProcessorInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentProcessorInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = PaymentProcessorInterfaceFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: PaymentProcessorInterfaceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (PaymentProcessorInterfaceFactory)
getInstance = do
        pure (PaymentProcessorInterfaceFactory.instance_)

new_ :: IO PaymentProcessorInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentProcessorInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentProcessorInterface.PaymentProcessorInterface)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: PaymentProcessorInterfaceFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentProcessorInterface.PaymentProcessorInterface)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: PaymentProcessorInterfaceFactory)) a1

getInstance_1_impl :: PaymentProcessorInterfaceFactory -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentProcessorInterface.PaymentProcessorInterface)
getInstance_1_impl this transformInfoInterface = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            paymentTransactionInterface <- (fmap (\value_ -> javaCast value_ :: PaymentTransactionInterface.PaymentTransactionInterface) (PaymentTransactionInterfaceRequestFactory.getInstance_1 ((jio (PaymentTransactionInterfaceRequestFactory.getInstance))) transformInfoInterface))
            gatewayName <- (PaymentTransactionInterface.getPaymentMethod ((jio (PaymentTransactionInterface.getOrderHistory paymentTransactionInterface))))
            when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) gatewayName))) $ do
                paymentType <- (PaymentTypeUtil.get ((jio (PaymentTypeUtil.getInstance))) gatewayName)
                paymentProcessorInterfaceFactoryInterface <- (PaymentType.getPaymentProcessorInterfaceFactoryInterface paymentType)
                javaReturn ((javaCast (jio (PaymentProcessorInterfaceFactoryInterface.getInstance paymentProcessorInterfaceFactoryInterface transformInfoInterface paymentTransactionInterface)) :: PaymentProcessorInterface.PaymentProcessorInterface))
            javaThrow ((JavaException "Exception" "Error Getting PaymentProcessorInterface"))


