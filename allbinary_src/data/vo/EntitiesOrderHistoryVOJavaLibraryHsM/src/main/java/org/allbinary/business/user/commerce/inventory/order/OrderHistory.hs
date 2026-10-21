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
module OrderHistory (module OrderHistory, module Order) where

import Order hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setUserName, setUserName_super, setUserName_impl, setDefaultShippingAddress, setDefaultShippingAddress_super, setDefaultShippingAddress_impl, setBillingAddress, setBillingAddress_super, setBillingAddress_impl, setPaymentInfo, setPaymentInfo_super, setPaymentInfo_impl, setShipDate, setShipDate_super, setShipDate_impl, setOrderDate, setOrderDate_super, setOrderDate_impl, setTransDate, setTransDate_super, setTransDate_impl, setCancelDate, setCancelDate_super, setCancelDate_impl, setStatus, setStatus_super, setStatus_impl, setSubTotal, setSubTotal_super, setSubTotal_impl, setShippingCost, setShippingCost_super, setShippingCost_impl, setTaxes, setTaxes_super, setTaxes_impl, setTotal, setTotal_super, setTotal_impl, getUserName, getUserName_super, getUserName_impl, getShippingAddress, getShippingAddress_super, getShippingAddress_impl, getBillingAddress, getBillingAddress_super, getBillingAddress_impl, getPaymentInfo, getPaymentInfo_super, getPaymentInfo_impl, getShipDate, getShipDate_super, getShipDate_impl, getOrderDate, getOrderDate_super, getOrderDate_impl, getTransDate, getTransDate_super, getTransDate_impl, getCancelDate, getCancelDate_super, getCancelDate_impl, getStatus, getStatus_super, getStatus_impl, getSubTotal, getSubTotal_super, getSubTotal_impl, getShippingCost, getShippingCost_super, getShippingCost_impl, getTaxes, getTaxes_super, getTaxes_impl, getTotal, getTotal_super, getTotal_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, userName, shippingAddress, billingAddress, payment, shipDate, orderDate, transDate, cancelDate, status, subTotal, shippingCost, taxes, total)
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
import qualified OrderData -- same package or java.lang
import qualified OrderHistoryData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Date -- java.util.Date
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified BillingAddressData -- org.allbinary.business.user.address.BillingAddressData
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified Payment -- org.allbinary.business.user.commerce.money.payment.Payment
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified Order
import qualified OrderHistoryInterface

-- implements OrderHistoryInterface
data OrderHistory = OrderHistory
    { header_ :: JavaHeader
    , base :: Order.Order
    , userName :: IORef (String)
    , shippingAddress :: IORef (StreetAddress.StreetAddress)
    , billingAddress :: IORef (StreetAddress.StreetAddress)
    , payment :: IORef (Payment.Payment)
    , shipDate :: IORef (String)
    , orderDate :: IORef (String)
    , transDate :: IORef (String)
    , cancelDate :: IORef (String)
    , status :: IORef (String)
    , subTotal :: IORef (Money.Money)
    , shippingCost :: IORef (Money.Money)
    , taxes :: IORef (Money.Money)
    , total :: IORef (Money.Money)
    }

instance JavaNull OrderHistory where
    javaNull = javaNullRecord "OrderHistory"

instance JavaEquals OrderHistory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistory where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHistory
newRecord_ = do
    base <- Order.newRecord_
    let header_ = base.header_
    userName <- newIORef ""
    shippingAddress <- newIORef javaNull
    billingAddress <- newIORef javaNull
    payment <- newIORef javaNull
    shipDate <- newIORef ""
    orderDate <- newIORef ""
    transDate <- newIORef ""
    cancelDate <- newIORef ""
    status <- newIORef ""
    subTotal <- newIORef javaNull
    shippingCost <- newIORef javaNull
    taxes <- newIORef javaNull
    total <- newIORef javaNull
    let this = OrderHistory header_ base userName shippingAddress billingAddress payment shipDate orderDate transDate cancelDate status subTotal shippingCost taxes total
    jregisterLevel header_ this
    OrderHistoryInterface.registerInterface_ header_
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setDefaultShippingAddress" (\() -> setDefaultShippingAddress_impl this)
    jregisterMethod header_ "setBillingAddress" (\() -> setBillingAddress_impl this)
    jregisterMethod header_ "setPaymentInfo" (\() -> setPaymentInfo_impl this)
    jregisterMethod header_ "setShipDate" (\() -> setShipDate_impl this)
    jregisterMethod header_ "setOrderDate" (\() -> setOrderDate_impl this)
    jregisterMethod header_ "setTransDate" (\() -> setTransDate_impl this)
    jregisterMethod header_ "setCancelDate" (\() -> setCancelDate_impl this)
    jregisterMethod header_ "setStatus" (\() -> setStatus_impl this)
    jregisterMethod header_ "setSubTotal" (\() -> setSubTotal_impl this)
    jregisterMethod header_ "setShippingCost" (\() -> setShippingCost_impl this)
    jregisterMethod header_ "setTaxes" (\() -> setTaxes_impl this)
    jregisterMethod header_ "setTotal" (\() -> setTotal_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getShippingAddress" (\() -> getShippingAddress_impl this)
    jregisterMethod header_ "getBillingAddress" (\() -> getBillingAddress_impl this)
    jregisterMethod header_ "getPaymentInfo" (\() -> getPaymentInfo_impl this)
    jregisterMethod header_ "getShipDate" (\() -> getShipDate_impl this)
    jregisterMethod header_ "getOrderDate" (\() -> getOrderDate_impl this)
    jregisterMethod header_ "getTransDate" (\() -> getTransDate_impl this)
    jregisterMethod header_ "getCancelDate" (\() -> getCancelDate_impl this)
    jregisterMethod header_ "getStatus" (\() -> getStatus_impl this)
    jregisterMethod header_ "getSubTotal" (\() -> getSubTotal_impl this)
    jregisterMethod header_ "getShippingCost" (\() -> getShippingCost_impl this)
    jregisterMethod header_ "getTaxes" (\() -> getTaxes_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: OrderHistory -> IO ()
initFields_ this = do
    jset this.userName (javaNull)
    jset this.shippingAddress (javaNull)
    jset this.billingAddress (javaNull)
    jset this.payment (javaNull)
    jset this.shipDate (javaNull)
    jset this.orderDate (javaNull)
    jset this.transDate (javaNull)
    jset this.cancelDate (javaNull)
    jset this.status (javaNull)
    jset this.subTotal (javaNull)
    jset this.shippingCost (javaNull)
    jset this.taxes (javaNull)
    jset this.total (javaNull)
    pure ()

new_1 :: BasketInterface.BasketInterface -> IO OrderHistory
new_1 basketInterface = do
    this <- newRecord_
    init_1 this basketInterface
    pure this

init_1 :: OrderHistory -> BasketInterface.BasketInterface -> IO ()
init_1 this basketInterface = do
        Order.init_1 this.base (basketInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_2 :: BasketInterface.BasketInterface -> OrderHistory -> IO OrderHistory
new_2 basketInterface orderHistory = do
    this <- newRecord_
    init_2 this basketInterface orderHistory
    pure this

init_2 :: OrderHistory -> BasketInterface.BasketInterface -> OrderHistory -> IO ()
init_2 this basketInterface orderHistory = do
        Order.init_6 this.base (jio (OrderHistory.getStoreName orderHistory)) (basketInterface) (jio (OrderHistory.getId orderHistory)) (jio (OrderHistory.getShippingMethod orderHistory)) (jio (OrderHistory.getSpecial orderHistory)) (jio (OrderHistory.getPaymentMethod orderHistory))
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (OrderHistory.getUserName orderHistory)
        jset (this).userName (assignedValue)
        assignedValue <- (OrderHistory.getShippingAddress orderHistory)
        jset (this).shippingAddress (assignedValue)
        assignedValue <- (OrderHistory.getBillingAddress orderHistory)
        jset (this).billingAddress (assignedValue)
        assignedValue <- (OrderHistory.getPaymentInfo orderHistory)
        jset (this).payment (assignedValue)
        assignedValue <- (OrderHistory.getShipDate orderHistory)
        jset (this).shipDate (assignedValue)
        assignedValue <- (OrderHistory.getOrderDate orderHistory)
        jset (this).orderDate (assignedValue)
        assignedValue <- (OrderHistory.getTransDate orderHistory)
        jset (this).transDate (assignedValue)
        assignedValue <- (OrderHistory.getCancelDate orderHistory)
        jset (this).cancelDate (assignedValue)
        assignedValue <- (OrderHistory.getStatus orderHistory)
        jset (this).status (assignedValue)
        assignedValue <- (OrderHistory.getSubTotal orderHistory)
        jset (this).subTotal (assignedValue)
        assignedValue <- (OrderHistory.getShippingCost orderHistory)
        jset (this).shippingCost (assignedValue)
        assignedValue <- (OrderHistory.getTaxes orderHistory)
        jset (this).taxes (assignedValue)
        assignedValue <- (OrderHistory.getTotal orderHistory)
        jset (this).total (assignedValue)
        Control.Monad.void (Order.setUserComments_super this.base (javaCast (jio (OrderHistory.getUserComments orderHistory)) :: String))
        Control.Monad.void (Order.setUserCancelComments_super this.base (javaCast (jio (OrderHistory.getUserCancelComments orderHistory)) :: String))
        Control.Monad.void (Order.setStoreComments_super this.base (javaCast (jio (OrderHistory.getStoreComments orderHistory)) :: String))
        Control.Monad.void (Order.setStoreCancelComments_super this.base (javaCast (jio (OrderHistory.getStoreCancelComments orderHistory)) :: String))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: BasketInterface.BasketInterface -> HashMap.HashMap -> IO OrderHistory
new_2 basketInterface orderHistoryHashMap = do
    this <- newRecord_
    init_2 this basketInterface orderHistoryHashMap
    pure this

init_2 :: OrderHistory -> BasketInterface.BasketInterface -> HashMap.HashMap -> IO ()
init_2 this basketInterface orderHistoryHashMap = do
        Order.init_6 this.base (javaCast (jio (HashMap.get orderHistoryHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String) (basketInterface) (javaCast (jio (HashMap.get orderHistoryHashMap (OrderData.iD))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingMethodData.nAME))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (jget ((jio (EntryData.getInstance))).sPECIAL))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (PaymentData.mETHOD))) :: String)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (StreetAddress.new_6 (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingAddressData.nAME))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingAddressData.sTREET))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingAddressData.cITY))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingAddressData.sTATE))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingAddressData.cODE))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (ShippingAddressData.cOUNTRY))) :: String))
        jset (this).shippingAddress (assignedValue)
        assignedValue <- (StreetAddress.new_6 (javaCast (jio (HashMap.get orderHistoryHashMap (BillingAddressData.nAME))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (BillingAddressData.sTREET))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (BillingAddressData.cITY))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (BillingAddressData.sTATE))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (BillingAddressData.cODE))) :: String) (javaCast (jio (HashMap.get orderHistoryHashMap (BillingAddressData.cOUNTRY))) :: String))
        jset (this).billingAddress (assignedValue)
        assignedValue <- (Payment.new_1 orderHistoryHashMap)
        jset (this).payment (assignedValue)
        jset (this).userName ((javaCast (jio (HashMap.get orderHistoryHashMap (UserData.uSERNAME))) :: String))
        jset (this).orderDate ((javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.oRDERDATE))) :: String))
        jset (this).shipDate ((javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.sHIPPEDDATE))) :: String))
        jset (this).transDate ((javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.tRANSDATE))) :: String))
        jset (this).cancelDate ((javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.cANCELDATE))) :: String))
        jset (this).status ((javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.sTATUS))) :: String))
        assignedValue <- (Money.new_1 (javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.sUBTOTAL))) :: String))
        jset (this).subTotal (assignedValue)
        assignedValue <- (Money.new_1 (javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.tOTAL))) :: String))
        jset (this).total (assignedValue)
        assignedValue <- (Money.new_1 (javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.sHIPPINGCOST))) :: String))
        jset (this).shippingCost (assignedValue)
        assignedValue <- (Money.new_1 (javaCast (jio (HashMap.get orderHistoryHashMap (OrderHistoryData.tAX))) :: String))
        jset (this).taxes (assignedValue)
        Control.Monad.void (Order.setUserComments_super this.base (javaCast (jio (HashMap.get orderHistoryHashMap (OrderData.cUSTOMERCOMMENT))) :: String))
        Control.Monad.void (Order.setUserCancelComments_super this.base (javaCast (jio (HashMap.get orderHistoryHashMap (OrderData.cUSTOMERCANCELCOMMENT))) :: String))
        Control.Monad.void (Order.setStoreComments_super this.base (javaCast (jio (HashMap.get orderHistoryHashMap (OrderData.sTORECOMMENT))) :: String))
        Control.Monad.void (Order.setStoreCancelComments_super this.base (javaCast (jio (HashMap.get orderHistoryHashMap (OrderData.sTORECANCELCOMMENT))) :: String))
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: OrderHistory))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: OrderHistory)) a1

setUserName_impl :: OrderHistory -> String -> IO (())
setUserName_impl this value = do
        jset (this).userName (value)
        pure ()


setDefaultShippingAddress :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setDefaultShippingAddress object_ a1 = jmethod object_ "setDefaultShippingAddress" (\() -> (setDefaultShippingAddress_impl (javaCast object_ :: OrderHistory))) () a1

setDefaultShippingAddress_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setDefaultShippingAddress_super object_ a1 = (setDefaultShippingAddress_impl (javaCast object_ :: OrderHistory)) a1

setDefaultShippingAddress_impl :: OrderHistory -> StreetAddress.StreetAddress -> IO (())
setDefaultShippingAddress_impl this shippingAddress = do
        jset (this).shippingAddress (shippingAddress)
        pure ()


setBillingAddress :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setBillingAddress object_ a1 = jmethod object_ "setBillingAddress" (\() -> (setBillingAddress_impl (javaCast object_ :: OrderHistory))) () a1

setBillingAddress_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setBillingAddress_super object_ a1 = (setBillingAddress_impl (javaCast object_ :: OrderHistory)) a1

setBillingAddress_impl :: OrderHistory -> StreetAddress.StreetAddress -> IO (())
setBillingAddress_impl this billingAddress = do
        jset (this).billingAddress (billingAddress)
        pure ()


setPaymentInfo :: (JavaObjectClass this_) => this_ -> Payment.Payment -> IO (())
setPaymentInfo object_ a1 = jmethod object_ "setPaymentInfo" (\() -> (setPaymentInfo_impl (javaCast object_ :: OrderHistory))) () a1

setPaymentInfo_super :: (JavaObjectClass this_) => this_ -> Payment.Payment -> IO (())
setPaymentInfo_super object_ a1 = (setPaymentInfo_impl (javaCast object_ :: OrderHistory)) a1

setPaymentInfo_impl :: OrderHistory -> Payment.Payment -> IO (())
setPaymentInfo_impl this payment = do
        jset (this).payment (payment)
        pure ()


setShipDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShipDate object_ a1 = jmethod object_ "setShipDate" (\() -> (setShipDate_impl (javaCast object_ :: OrderHistory))) () a1

setShipDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShipDate_super object_ a1 = (setShipDate_impl (javaCast object_ :: OrderHistory)) a1

setShipDate_impl :: OrderHistory -> String -> IO (())
setShipDate_impl this value = do
        jset (this).shipDate (value)
        pure ()


setOrderDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOrderDate object_ a1 = jmethod object_ "setOrderDate" (\() -> (setOrderDate_impl (javaCast object_ :: OrderHistory))) () a1

setOrderDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOrderDate_super object_ a1 = (setOrderDate_impl (javaCast object_ :: OrderHistory)) a1

setOrderDate_impl :: OrderHistory -> String -> IO (())
setOrderDate_impl this value = do
        jset (this).orderDate (value)
        pure ()


setTransDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTransDate object_ a1 = jmethod object_ "setTransDate" (\() -> (setTransDate_impl (javaCast object_ :: OrderHistory))) () a1

setTransDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTransDate_super object_ a1 = (setTransDate_impl (javaCast object_ :: OrderHistory)) a1

setTransDate_impl :: OrderHistory -> String -> IO (())
setTransDate_impl this value = do
        jset (this).transDate (value)
        pure ()


setCancelDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCancelDate object_ a1 = jmethod object_ "setCancelDate" (\() -> (setCancelDate_impl (javaCast object_ :: OrderHistory))) () a1

setCancelDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCancelDate_super object_ a1 = (setCancelDate_impl (javaCast object_ :: OrderHistory)) a1

setCancelDate_impl :: OrderHistory -> String -> IO (())
setCancelDate_impl this value = do
        jset (this).cancelDate (value)
        pure ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus object_ a1 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderHistory))) () a1

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus_super object_ a1 = (setStatus_impl (javaCast object_ :: OrderHistory)) a1

setStatus_impl :: OrderHistory -> String -> IO (())
setStatus_impl this value = do
        jset (this).status (value)
        pure ()


setSubTotal :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setSubTotal object_ a1 = jmethod object_ "setSubTotal" (\() -> (setSubTotal_impl (javaCast object_ :: OrderHistory))) () a1

setSubTotal_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setSubTotal_super object_ a1 = (setSubTotal_impl (javaCast object_ :: OrderHistory)) a1

setSubTotal_impl :: OrderHistory -> Money.Money -> IO (())
setSubTotal_impl this value = do
        jset (this).subTotal (value)
        pure ()


setShippingCost :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setShippingCost object_ a1 = jmethod object_ "setShippingCost" (\() -> (setShippingCost_impl (javaCast object_ :: OrderHistory))) () a1

setShippingCost_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setShippingCost_super object_ a1 = (setShippingCost_impl (javaCast object_ :: OrderHistory)) a1

setShippingCost_impl :: OrderHistory -> Money.Money -> IO (())
setShippingCost_impl this value = do
        jset (this).shippingCost (value)
        pure ()


setTaxes :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTaxes object_ a1 = jmethod object_ "setTaxes" (\() -> (setTaxes_impl (javaCast object_ :: OrderHistory))) () a1

setTaxes_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTaxes_super object_ a1 = (setTaxes_impl (javaCast object_ :: OrderHistory)) a1

setTaxes_impl :: OrderHistory -> Money.Money -> IO (())
setTaxes_impl this value = do
        jset (this).taxes (value)
        pure ()


setTotal :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTotal object_ a1 = jmethod object_ "setTotal" (\() -> (setTotal_impl (javaCast object_ :: OrderHistory))) () a1

setTotal_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setTotal_super object_ a1 = (setTotal_impl (javaCast object_ :: OrderHistory)) a1

setTotal_impl :: OrderHistory -> Money.Money -> IO (())
setTotal_impl this value = do
        jset (this).total (value)
        pure ()


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: OrderHistory))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: OrderHistory))

getUserName_impl :: OrderHistory -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


getShippingAddress :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress object_ = jmethod object_ "getShippingAddress" (\() -> (getShippingAddress_impl (javaCast object_ :: OrderHistory))) ()

getShippingAddress_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress_super object_ = (getShippingAddress_impl (javaCast object_ :: OrderHistory))

getShippingAddress_impl :: OrderHistory -> IO (StreetAddress.StreetAddress)
getShippingAddress_impl this = do
        pure ((jget (this).shippingAddress))


getBillingAddress :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getBillingAddress object_ = jmethod object_ "getBillingAddress" (\() -> (getBillingAddress_impl (javaCast object_ :: OrderHistory))) ()

getBillingAddress_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getBillingAddress_super object_ = (getBillingAddress_impl (javaCast object_ :: OrderHistory))

getBillingAddress_impl :: OrderHistory -> IO (StreetAddress.StreetAddress)
getBillingAddress_impl this = do
        pure ((jget (this).billingAddress))


getPaymentInfo :: (JavaObjectClass this_) => this_ -> IO (Payment.Payment)
getPaymentInfo object_ = jmethod object_ "getPaymentInfo" (\() -> (getPaymentInfo_impl (javaCast object_ :: OrderHistory))) ()

getPaymentInfo_super :: (JavaObjectClass this_) => this_ -> IO (Payment.Payment)
getPaymentInfo_super object_ = (getPaymentInfo_impl (javaCast object_ :: OrderHistory))

getPaymentInfo_impl :: OrderHistory -> IO (Payment.Payment)
getPaymentInfo_impl this = do
        pure ((jget (this).payment))


getShipDate :: (JavaObjectClass this_) => this_ -> IO (String)
getShipDate object_ = jmethod object_ "getShipDate" (\() -> (getShipDate_impl (javaCast object_ :: OrderHistory))) ()

getShipDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShipDate_super object_ = (getShipDate_impl (javaCast object_ :: OrderHistory))

getShipDate_impl :: OrderHistory -> IO (String)
getShipDate_impl this = do
        pure ((jget (this).shipDate))


getOrderDate :: (JavaObjectClass this_) => this_ -> IO (String)
getOrderDate object_ = jmethod object_ "getOrderDate" (\() -> (getOrderDate_impl (javaCast object_ :: OrderHistory))) ()

getOrderDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOrderDate_super object_ = (getOrderDate_impl (javaCast object_ :: OrderHistory))

getOrderDate_impl :: OrderHistory -> IO (String)
getOrderDate_impl this = do
        pure ((jget (this).orderDate))


getTransDate :: (JavaObjectClass this_) => this_ -> IO (String)
getTransDate object_ = jmethod object_ "getTransDate" (\() -> (getTransDate_impl (javaCast object_ :: OrderHistory))) ()

getTransDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTransDate_super object_ = (getTransDate_impl (javaCast object_ :: OrderHistory))

getTransDate_impl :: OrderHistory -> IO (String)
getTransDate_impl this = do
        pure ((jget (this).transDate))


getCancelDate :: (JavaObjectClass this_) => this_ -> IO (String)
getCancelDate object_ = jmethod object_ "getCancelDate" (\() -> (getCancelDate_impl (javaCast object_ :: OrderHistory))) ()

getCancelDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCancelDate_super object_ = (getCancelDate_impl (javaCast object_ :: OrderHistory))

getCancelDate_impl :: OrderHistory -> IO (String)
getCancelDate_impl this = do
        pure ((jget (this).cancelDate))


getStatus :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus object_ = jmethod object_ "getStatus" (\() -> (getStatus_impl (javaCast object_ :: OrderHistory))) ()

getStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus_super object_ = (getStatus_impl (javaCast object_ :: OrderHistory))

getStatus_impl :: OrderHistory -> IO (String)
getStatus_impl this = do
        pure ((jget (this).status))


getSubTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal object_ = jmethod object_ "getSubTotal" (\() -> (getSubTotal_impl (javaCast object_ :: OrderHistory))) ()

getSubTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal_super object_ = (getSubTotal_impl (javaCast object_ :: OrderHistory))

getSubTotal_impl :: OrderHistory -> IO (Money.Money)
getSubTotal_impl this = do
        pure ((jget (this).subTotal))


getShippingCost :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost object_ = jmethod object_ "getShippingCost" (\() -> (getShippingCost_impl (javaCast object_ :: OrderHistory))) ()

getShippingCost_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost_super object_ = (getShippingCost_impl (javaCast object_ :: OrderHistory))

getShippingCost_impl :: OrderHistory -> IO (Money.Money)
getShippingCost_impl this = do
        pure ((jget (this).shippingCost))


getTaxes :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes object_ = jmethod object_ "getTaxes" (\() -> (getTaxes_impl (javaCast object_ :: OrderHistory))) ()

getTaxes_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes_super object_ = (getTaxes_impl (javaCast object_ :: OrderHistory))

getTaxes_impl :: OrderHistory -> IO (Money.Money)
getTaxes_impl this = do
        pure ((jget (this).taxes))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: OrderHistory))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: OrderHistory))

getTotal_impl :: OrderHistory -> IO (Money.Money)
getTotal_impl this = do
        pure ((jget (this).total))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: OrderHistory))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: OrderHistory))

toHashMap_impl :: OrderHistory -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (UserData.uSERNAME) (jget (this).userName))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.oRDERDATE) (jget (this).orderDate))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.sHIPPEDDATE) (jget (this).shipDate))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.tRANSDATE) (jget (this).transDate))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.cANCELDATE) (jget (this).cancelDate))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.oRDERDATEFORMATTED) (jio (Date.toString ((jio (Date.new_1 (Prelude.fromIntegral ((jget (this).orderDate)) :: Int64)))))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.sHIPPEDDATEFORMATTED) (jio (Date.toString ((jio (Date.new_1 (Prelude.fromIntegral ((jget (this).shipDate)) :: Int64)))))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.tRANSDATEFORMATTED) (jio (Date.toString ((jio (Date.new_1 (Prelude.fromIntegral ((jget (this).transDate)) :: Int64)))))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.cANCELDATEFORMATTED) (jio (Date.toString ((jio (Date.new_1 (Prelude.fromIntegral ((jget (this).cancelDate)) :: Int64)))))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.sTATUS) (jget (this).status))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.sUBTOTAL) (jio (Money.toString ((jget (this).subTotal)))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.tOTAL) (jio (Money.toString ((jget (this).total)))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.sHIPPINGCOST) (jio (Money.toString ((jget (this).shippingCost)))))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.tAX) (jio (Money.toString ((jget (this).taxes)))))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: OrderHistory))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: OrderHistory)) a1

toXmlNode_impl :: OrderHistory -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (OrderHistory.toHashMap this)
        keySet <- (HashMap.keySet hashMap)
        keyArray <- (Set.toArray keySet)
        let size = (jlength keyArray)
        node <- (Document.createElement document (OrderHistoryData.oRDERHISTORY))
        Control.Monad.void (Node.appendChild node (jio (Order.toXmlNode_super this.base document)))
        billingAddressNode <- (Document.createElement document (BillingAddressData.bILLINGADDRESS))
        Control.Monad.void (Node.appendChild billingAddressNode (jio (StreetAddress.toXmlNode ((jget (this).billingAddress)) document)))
        shippingAddressNode <- (Document.createElement document (ShippingAddressData.sHIPPINGADDRESS))
        Control.Monad.void (Node.appendChild shippingAddressNode (jio (StreetAddress.toXmlNode ((jget (this).shippingAddress)) document)))
        Control.Monad.void (Node.appendChild node billingAddressNode)
        Control.Monad.void (Node.appendChild node shippingAddressNode)
        Control.Monad.void (Node.appendChild node (jio (Payment.toXmlNode ((jget (this).payment)) document)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex keyArray (i)) :: String)
            value <- newIORef ((javaCast (jio (HashMap.get hashMap name)) :: String))
            assignedValue <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (jget value))
            jset value (assignedValue)
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document name (jget value))))
        pure (node)


