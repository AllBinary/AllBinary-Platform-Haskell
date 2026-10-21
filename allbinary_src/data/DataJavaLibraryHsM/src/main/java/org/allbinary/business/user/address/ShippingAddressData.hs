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
module ShippingAddressData where

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

data ShippingAddressData = ShippingAddressData
    { header_ :: JavaHeader
    }

instance JavaNull ShippingAddressData where
    javaNull = javaNullRecord "ShippingAddressData"

instance JavaEquals ShippingAddressData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingAddressData where
    (==) = jrecordEquals

instance JavaObjectClass ShippingAddressData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sETTOBILLINGADDRESS = "Set To Billing Address"

sELECT = "Select Shipping Address"

sELECTNAME = "SELECTSHIPPINGADDRESS"

mULTIPLE = "SHIPPINGADDRESSES"

sHIPPINGADDRESSES = "SHIPPINGADDRESSES"

sHIPPINGADDRESS = "SHIPPINGADDRESS"

iD = "SHIPPINGADDRESS_ID"

aDDRESS = "SHIPPINGADDRESS_ADDRESS"

nAME = "SHIPPINGADDRESS_NAME"

sTREET = "SHIPPINGADDRESS_STREET"

cITY = "SHIPPINGADDRESS_CITY"

sTATE = "SHIPPINGADDRESS_STATE"

cODE = "SHIPPINGADDRESS_CODE"

cOUNTRY = "SHIPPINGADDRESS_COUNTRY"

tAX = "SHIPPINGADDRESS_TAX"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShippingAddressData
newRecord_ = do
    header_ <- newJavaHeader
    let this = ShippingAddressData header_
    jregisterLevel header_ this
    pure this

initFields_ :: ShippingAddressData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ShippingAddressData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShippingAddressData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


