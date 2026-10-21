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
-- package org.allbinary.business.user.commerce.money.payment
module PaymentData where

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

data PaymentData = PaymentData
    { header_ :: JavaHeader
    }

instance JavaNull PaymentData where
    javaNull = javaNullRecord "PaymentData"

instance JavaEquals PaymentData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentData where
    (==) = jrecordEquals

instance JavaObjectClass PaymentData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mIN = 4

mAX = 19

aDDNEW = "Add New Payment"

vIEW = "View Payment"

sELECT = "Select Payment"

cHANGE = "Change Payment"

pAYMENT = "PAYMENT"

mETHOD = "PAYMENT_METHOD"

iD = "PAYMENT_ID"

nUMBER = "PAYMENT_NUMBER"

nAME = "PAYMENT_NAME"

tYPE = "PAYMENT_TYPE"

eXPIRATION = "PAYMENT_EXPIRATION"

tENDERTYPE = "PAYMENT_TENDERTYPE"

tRANSACTIONTYPE = "PAYMENT_TRANSACTIONTYPE"

aBA = "PAYMENT_ABA"

aCCOUNT = "PAYMENT_ACCOUNT"

aCCOUNTTYPE = "PAYMENT_ACCOUNTTYPE"

aUTHORIZATIONCODE = "PAYMENT_AUTHORIZATIONCODE"

cHECKNUMBER = "PAYMENT_CHECKNUMBER"

cHECKTYPE = "PAYMENT_CHECKTYPE"

dRIVERSLICENSE = "PAYMENT_DRIVERSLICENSE"

mAGNETICINKCHECKREADER = "PAYMENT_MAGNETICINKCHECKREADER"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentData
newRecord_ = do
    header_ <- newJavaHeader
    let this = PaymentData header_
    jregisterLevel header_ this
    pure this

initFields_ :: PaymentData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PaymentData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentData -> IO ()
init_ this = do
    initFields_ this


