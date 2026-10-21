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
module PaymentProcessorInterfaceFactoryInterface where

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
import qualified PaymentProcessorInterface -- same package or java.lang
import qualified PaymentTransactionInterface -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

-- Java interface: the classes that implement it have these functions
data PaymentProcessorInterfaceFactoryInterface = PaymentProcessorInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentProcessorInterfaceFactoryInterface where
    javaNull = javaNullRecord "PaymentProcessorInterfaceFactoryInterface"

instance JavaEquals PaymentProcessorInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentProcessorInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentProcessorInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentProcessorInterfaceFactoryInterface
fromHeader_ header = PaymentProcessorInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentProcessorInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> PaymentTransactionInterface.PaymentTransactionInterface -> IO (PaymentProcessorInterface.PaymentProcessorInterface)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PaymentProcessorInterfaceFactoryInterface))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> PaymentTransactionInterface.PaymentTransactionInterface -> IO (PaymentProcessorInterface.PaymentProcessorInterface)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: PaymentProcessorInterfaceFactoryInterface)) a1 a2

getInstance_impl :: PaymentProcessorInterfaceFactoryInterface -> TransformInfoInterface.TransformInfoInterface -> PaymentTransactionInterface.PaymentTransactionInterface -> IO (PaymentProcessorInterface.PaymentProcessorInterface)
getInstance_impl this transformInfoInterface paymentTransactionInterface = javaAbstractMethod "getInstance"


