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
-- package org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway
module PaymentGatewayDomNodeFactoryInterface where

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
import qualified PaymentGatewayInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface

-- Java interface: the classes that implement it have these functions
data PaymentGatewayDomNodeFactoryInterface = PaymentGatewayDomNodeFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentGatewayDomNodeFactoryInterface where
    javaNull = javaNullRecord "PaymentGatewayDomNodeFactoryInterface"

instance JavaEquals PaymentGatewayDomNodeFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayDomNodeFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayDomNodeFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentGatewayDomNodeFactoryInterface
fromHeader_ header = PaymentGatewayDomNodeFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentGatewayDomNodeFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (DomNodeInterface.DomNodeInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PaymentGatewayDomNodeFactoryInterface))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (DomNodeInterface.DomNodeInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: PaymentGatewayDomNodeFactoryInterface)) a1

getInstance_impl :: PaymentGatewayDomNodeFactoryInterface -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (DomNodeInterface.DomNodeInterface)
getInstance_impl this paymentGatewayInterface = javaAbstractMethod "getInstance"


