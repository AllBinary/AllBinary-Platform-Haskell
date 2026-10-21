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
-- package org.allbinary.business.user.commerce.money.payment.gateway
module PaymentGatewayPageData where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data PaymentGatewayPageData = PaymentGatewayPageData
    { header_ :: JavaHeader
    , mAKEPAYMENT :: IORef (String)
    , cHECKOUT :: IORef (String)
    , sHIPPING :: IORef (String)
    , sHIPPINGADDRESS :: IORef (String)
    , sHIPPINGADDRESSACTION :: IORef (String)
    , bILLINGADDRESS :: IORef (String)
    , pAYMENT :: IORef (String)
    , aUTHORIZE :: IORef (String)
    , fINISH :: IORef (String)
    }

instance JavaNull PaymentGatewayPageData where
    javaNull = javaNullRecord "PaymentGatewayPageData"

instance JavaEquals PaymentGatewayPageData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayPageData where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayPageData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

eXTENSION = ".jsp"

nAME = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)

fORWARDMAKEPAYMENT = "MakePayment.jsp"

pAYMENTOPTIONS = ("PaymentOptions" ++ javaToString PaymentGatewayPageData.eXTENSION)

sTARTCHECKOUT = ("StartCheckout" ++ javaToString PaymentGatewayPageData.eXTENSION)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentGatewayPageData
newRecord_ = do
    header_ <- newJavaHeader
    mAKEPAYMENT <- newIORef ""
    cHECKOUT <- newIORef ""
    sHIPPING <- newIORef ""
    sHIPPINGADDRESS <- newIORef ""
    sHIPPINGADDRESSACTION <- newIORef ""
    bILLINGADDRESS <- newIORef ""
    pAYMENT <- newIORef ""
    aUTHORIZE <- newIORef ""
    fINISH <- newIORef ""
    let this = PaymentGatewayPageData header_ mAKEPAYMENT cHECKOUT sHIPPING sHIPPINGADDRESS sHIPPINGADDRESSACTION bILLINGADDRESS pAYMENT aUTHORIZE fINISH
    jregisterLevel header_ this
    pure this

initFields_ :: PaymentGatewayPageData -> IO ()
initFields_ this = do
    jset this.mAKEPAYMENT (javaNull)
    jset this.cHECKOUT (javaNull)
    jset this.sHIPPING (javaNull)
    jset this.sHIPPINGADDRESS (javaNull)
    jset this.sHIPPINGADDRESSACTION (javaNull)
    jset this.bILLINGADDRESS (javaNull)
    jset this.pAYMENT (javaNull)
    jset this.aUTHORIZE (javaNull)
    jset this.fINISH (javaNull)
    pure ()

new_2 :: String -> String -> IO PaymentGatewayPageData
new_2 location paymentMethod = do
    this <- newRecord_
    init_2 this location paymentMethod
    pure this

init_2 :: PaymentGatewayPageData -> String -> String -> IO ()
init_2 this location paymentMethod = do
        initFields_ this
        let paymentMethodString = (javaToString PaymentGatewayPageData.nAME ++ paymentMethod)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer location)
        Control.Monad.void (StringMaker.append stringBuffer "MakePayment")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.mAKEPAYMENT (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "Checkout")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.cHECKOUT (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "Shipping")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.sHIPPING (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "ShippingAddress")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.sHIPPINGADDRESS (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "ShippingAddressAction")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.sHIPPINGADDRESSACTION (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "BillingAddress")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.bILLINGADDRESS (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "Payment")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.pAYMENT (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "Authorize")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.aUTHORIZE (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer paymentMethodString)
        Control.Monad.void (StringMaker.append stringBuffer "PaymentFinish")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentGatewayPageData.eXTENSION))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset this.fINISH (assignedValue)
        pure ()


