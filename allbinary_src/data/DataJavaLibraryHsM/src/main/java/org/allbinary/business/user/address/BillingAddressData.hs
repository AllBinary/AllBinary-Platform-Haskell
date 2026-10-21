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
-- package org.allbinary.business.user.address
module BillingAddressData where

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

data BillingAddressData = BillingAddressData
    { header_ :: JavaHeader
    }

instance JavaNull BillingAddressData where
    javaNull = javaNullRecord "BillingAddressData"

instance JavaEquals BillingAddressData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BillingAddressData where
    (==) = jrecordEquals

instance JavaObjectClass BillingAddressData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAX = 255

mIN = 0

mULTIPLE = "BILLINGADDRESSES"

sTATES = "BILLINGADDRESS_STATES"

sETTOSHIPPINGADDRESS = "Set To Shipping Address"

sELECT = "Select Billing Address"

sETTOSHIPPINGADDRESSNAME = "SETTOSHIPPINGADDRESS"

bILLINGADDRESSES = "BILLINGADDRESSES"

bILLINGADDRESS = "BILLINGADDRESS"

iD = "BILLINGADDRESS_ID"

aDDRESS = "BILLINGADDRESS_ADDRESS"

nAME = "BILLINGADDRESS_NAME"

sTREET = "BILLINGADDRESS_STREET"

cITY = "BILLINGADDRESS_CITY"

sTATE = "BILLINGADDRESS_STATE"

cODE = "BILLINGADDRESS_CODE"

cOUNTRY = "BILLINGADDRESS_COUNTRY"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BillingAddressData
newRecord_ = do
    header_ <- newJavaHeader
    let this = BillingAddressData header_
    jregisterLevel header_ this
    pure this

initFields_ :: BillingAddressData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BillingAddressData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BillingAddressData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


