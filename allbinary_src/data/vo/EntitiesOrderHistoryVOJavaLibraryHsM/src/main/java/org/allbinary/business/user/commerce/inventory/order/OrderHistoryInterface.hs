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
-- package org.allbinary.business.user.commerce.inventory.order
module OrderHistoryInterface where

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
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified Payment -- org.allbinary.business.user.commerce.money.payment.Payment

-- Java interface: the classes that implement it have these functions
data OrderHistoryInterface = OrderHistoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull OrderHistoryInterface where
    javaNull = javaNullRecord "OrderHistoryInterface"

instance JavaEquals OrderHistoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OrderHistoryInterface
fromHeader_ header = OrderHistoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OrderHistoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: OrderHistoryInterface)) a1

setUserName_impl :: OrderHistoryInterface -> String -> IO (())
setUserName_impl this value = javaAbstractMethod "setUserName"


setDefaultShippingAddress :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setDefaultShippingAddress object_ a1 = jmethod object_ "setDefaultShippingAddress" (\() -> (setDefaultShippingAddress_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setDefaultShippingAddress_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setDefaultShippingAddress_super object_ a1 = (setDefaultShippingAddress_impl (javaCast object_ :: OrderHistoryInterface)) a1

setDefaultShippingAddress_impl :: OrderHistoryInterface -> StreetAddress.StreetAddress -> IO (())
setDefaultShippingAddress_impl this shippingAddress = javaAbstractMethod "setDefaultShippingAddress"


setBillingAddress :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setBillingAddress object_ a1 = jmethod object_ "setBillingAddress" (\() -> (setBillingAddress_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setBillingAddress_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setBillingAddress_super object_ a1 = (setBillingAddress_impl (javaCast object_ :: OrderHistoryInterface)) a1

setBillingAddress_impl :: OrderHistoryInterface -> StreetAddress.StreetAddress -> IO (())
setBillingAddress_impl this billingAddress = javaAbstractMethod "setBillingAddress"


setPaymentInfo :: (JavaObjectClass this_) => this_ -> Payment.Payment -> IO (())
setPaymentInfo object_ a1 = jmethod object_ "setPaymentInfo" (\() -> (setPaymentInfo_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setPaymentInfo_super :: (JavaObjectClass this_) => this_ -> Payment.Payment -> IO (())
setPaymentInfo_super object_ a1 = (setPaymentInfo_impl (javaCast object_ :: OrderHistoryInterface)) a1

setPaymentInfo_impl :: OrderHistoryInterface -> Payment.Payment -> IO (())
setPaymentInfo_impl this payment = javaAbstractMethod "setPaymentInfo"


setShipDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShipDate object_ a1 = jmethod object_ "setShipDate" (\() -> (setShipDate_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setShipDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShipDate_super object_ a1 = (setShipDate_impl (javaCast object_ :: OrderHistoryInterface)) a1

setShipDate_impl :: OrderHistoryInterface -> String -> IO (())
setShipDate_impl this value = javaAbstractMethod "setShipDate"


setOrderDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOrderDate object_ a1 = jmethod object_ "setOrderDate" (\() -> (setOrderDate_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setOrderDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOrderDate_super object_ a1 = (setOrderDate_impl (javaCast object_ :: OrderHistoryInterface)) a1

setOrderDate_impl :: OrderHistoryInterface -> String -> IO (())
setOrderDate_impl this value = javaAbstractMethod "setOrderDate"


setTransDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTransDate object_ a1 = jmethod object_ "setTransDate" (\() -> (setTransDate_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setTransDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTransDate_super object_ a1 = (setTransDate_impl (javaCast object_ :: OrderHistoryInterface)) a1

setTransDate_impl :: OrderHistoryInterface -> String -> IO (())
setTransDate_impl this value = javaAbstractMethod "setTransDate"


setCancelDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCancelDate object_ a1 = jmethod object_ "setCancelDate" (\() -> (setCancelDate_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setCancelDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCancelDate_super object_ a1 = (setCancelDate_impl (javaCast object_ :: OrderHistoryInterface)) a1

setCancelDate_impl :: OrderHistoryInterface -> String -> IO (())
setCancelDate_impl this value = javaAbstractMethod "setCancelDate"


setStatus :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus object_ a1 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus_super object_ a1 = (setStatus_impl (javaCast object_ :: OrderHistoryInterface)) a1

setStatus_impl :: OrderHistoryInterface -> String -> IO (())
setStatus_impl this value = javaAbstractMethod "setStatus"


setSubTotal :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setSubTotal object_ a1 = jmethod object_ "setSubTotal" (\() -> (setSubTotal_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setSubTotal_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setSubTotal_super object_ a1 = (setSubTotal_impl (javaCast object_ :: OrderHistoryInterface)) a1

setSubTotal_impl :: OrderHistoryInterface -> Money.Money -> IO (())
setSubTotal_impl this value = javaAbstractMethod "setSubTotal"


setShippingCost :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setShippingCost object_ a1 = jmethod object_ "setShippingCost" (\() -> (setShippingCost_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setShippingCost_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setShippingCost_super object_ a1 = (setShippingCost_impl (javaCast object_ :: OrderHistoryInterface)) a1

setShippingCost_impl :: OrderHistoryInterface -> Money.Money -> IO (())
setShippingCost_impl this value = javaAbstractMethod "setShippingCost"


setTaxes :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTaxes object_ a1 = jmethod object_ "setTaxes" (\() -> (setTaxes_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setTaxes_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTaxes_super object_ a1 = (setTaxes_impl (javaCast object_ :: OrderHistoryInterface)) a1

setTaxes_impl :: OrderHistoryInterface -> Money.Money -> IO (())
setTaxes_impl this value = javaAbstractMethod "setTaxes"


setTotal :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTotal object_ a1 = jmethod object_ "setTotal" (\() -> (setTotal_impl (javaCast object_ :: OrderHistoryInterface))) () a1

setTotal_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTotal_super object_ a1 = (setTotal_impl (javaCast object_ :: OrderHistoryInterface)) a1

setTotal_impl :: OrderHistoryInterface -> Money.Money -> IO (())
setTotal_impl this value = javaAbstractMethod "setTotal"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: OrderHistoryInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: OrderHistoryInterface))

getUserName_impl :: OrderHistoryInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getShippingAddress :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress object_ = jmethod object_ "getShippingAddress" (\() -> (getShippingAddress_impl (javaCast object_ :: OrderHistoryInterface))) ()

getShippingAddress_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress_super object_ = (getShippingAddress_impl (javaCast object_ :: OrderHistoryInterface))

getShippingAddress_impl :: OrderHistoryInterface -> IO (StreetAddress.StreetAddress)
getShippingAddress_impl this = javaAbstractMethod "getShippingAddress"


getBillingAddress :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getBillingAddress object_ = jmethod object_ "getBillingAddress" (\() -> (getBillingAddress_impl (javaCast object_ :: OrderHistoryInterface))) ()

getBillingAddress_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getBillingAddress_super object_ = (getBillingAddress_impl (javaCast object_ :: OrderHistoryInterface))

getBillingAddress_impl :: OrderHistoryInterface -> IO (StreetAddress.StreetAddress)
getBillingAddress_impl this = javaAbstractMethod "getBillingAddress"


getPaymentInfo :: (JavaObjectClass this_) => this_ -> IO (Payment.Payment)
getPaymentInfo object_ = jmethod object_ "getPaymentInfo" (\() -> (getPaymentInfo_impl (javaCast object_ :: OrderHistoryInterface))) ()

getPaymentInfo_super :: (JavaObjectClass this_) => this_ -> IO (Payment.Payment)
getPaymentInfo_super object_ = (getPaymentInfo_impl (javaCast object_ :: OrderHistoryInterface))

getPaymentInfo_impl :: OrderHistoryInterface -> IO (Payment.Payment)
getPaymentInfo_impl this = javaAbstractMethod "getPaymentInfo"


getShipDate :: (JavaObjectClass this_) => this_ -> IO (String)
getShipDate object_ = jmethod object_ "getShipDate" (\() -> (getShipDate_impl (javaCast object_ :: OrderHistoryInterface))) ()

getShipDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShipDate_super object_ = (getShipDate_impl (javaCast object_ :: OrderHistoryInterface))

getShipDate_impl :: OrderHistoryInterface -> IO (String)
getShipDate_impl this = javaAbstractMethod "getShipDate"


getOrderDate :: (JavaObjectClass this_) => this_ -> IO (String)
getOrderDate object_ = jmethod object_ "getOrderDate" (\() -> (getOrderDate_impl (javaCast object_ :: OrderHistoryInterface))) ()

getOrderDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOrderDate_super object_ = (getOrderDate_impl (javaCast object_ :: OrderHistoryInterface))

getOrderDate_impl :: OrderHistoryInterface -> IO (String)
getOrderDate_impl this = javaAbstractMethod "getOrderDate"


getTransDate :: (JavaObjectClass this_) => this_ -> IO (String)
getTransDate object_ = jmethod object_ "getTransDate" (\() -> (getTransDate_impl (javaCast object_ :: OrderHistoryInterface))) ()

getTransDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTransDate_super object_ = (getTransDate_impl (javaCast object_ :: OrderHistoryInterface))

getTransDate_impl :: OrderHistoryInterface -> IO (String)
getTransDate_impl this = javaAbstractMethod "getTransDate"


getCancelDate :: (JavaObjectClass this_) => this_ -> IO (String)
getCancelDate object_ = jmethod object_ "getCancelDate" (\() -> (getCancelDate_impl (javaCast object_ :: OrderHistoryInterface))) ()

getCancelDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCancelDate_super object_ = (getCancelDate_impl (javaCast object_ :: OrderHistoryInterface))

getCancelDate_impl :: OrderHistoryInterface -> IO (String)
getCancelDate_impl this = javaAbstractMethod "getCancelDate"


getStatus :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus object_ = jmethod object_ "getStatus" (\() -> (getStatus_impl (javaCast object_ :: OrderHistoryInterface))) ()

getStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus_super object_ = (getStatus_impl (javaCast object_ :: OrderHistoryInterface))

getStatus_impl :: OrderHistoryInterface -> IO (String)
getStatus_impl this = javaAbstractMethod "getStatus"


getSubTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal object_ = jmethod object_ "getSubTotal" (\() -> (getSubTotal_impl (javaCast object_ :: OrderHistoryInterface))) ()

getSubTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal_super object_ = (getSubTotal_impl (javaCast object_ :: OrderHistoryInterface))

getSubTotal_impl :: OrderHistoryInterface -> IO (Money.Money)
getSubTotal_impl this = javaAbstractMethod "getSubTotal"


getShippingCost :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost object_ = jmethod object_ "getShippingCost" (\() -> (getShippingCost_impl (javaCast object_ :: OrderHistoryInterface))) ()

getShippingCost_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost_super object_ = (getShippingCost_impl (javaCast object_ :: OrderHistoryInterface))

getShippingCost_impl :: OrderHistoryInterface -> IO (Money.Money)
getShippingCost_impl this = javaAbstractMethod "getShippingCost"


getTaxes :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes object_ = jmethod object_ "getTaxes" (\() -> (getTaxes_impl (javaCast object_ :: OrderHistoryInterface))) ()

getTaxes_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes_super object_ = (getTaxes_impl (javaCast object_ :: OrderHistoryInterface))

getTaxes_impl :: OrderHistoryInterface -> IO (Money.Money)
getTaxes_impl this = javaAbstractMethod "getTaxes"


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: OrderHistoryInterface))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: OrderHistoryInterface))

getTotal_impl :: OrderHistoryInterface -> IO (Money.Money)
getTotal_impl this = javaAbstractMethod "getTotal"


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: OrderHistoryInterface))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: OrderHistoryInterface))

getPaymentMethod_impl :: OrderHistoryInterface -> IO (String)
getPaymentMethod_impl this = javaAbstractMethod "getPaymentMethod"


