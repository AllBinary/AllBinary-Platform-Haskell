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
-- package admin.taghelpers
module UpdateOrderHelper (module UpdateOrderHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, update, update_super, update_impl, logUtil, request, entryId, orderId, userName, storeName, shipDate, orderDate, transDate, cancelDate, status, paymentMethod, name, type_, expiration, number, encryption, billingName, billingStreet, billingCity, billingState, billingCode, billingCountry, shippingName, shippingStreet, shippingCity, shippingState, shippingCode, shippingCountry, shippingMethodName, subTotal, shippingCost, tax, total, special, userComment, userCancelComment, storeComment, storeCancelComment)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified BillingAddressData -- org.allbinary.business.user.address.BillingAddressData
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TagHelper

data UpdateOrderHelper = UpdateOrderHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , entryId :: IORef (String)
    , orderId :: IORef (String)
    , userName :: IORef (String)
    , storeName :: IORef (String)
    , shipDate :: IORef (String)
    , orderDate :: IORef (String)
    , transDate :: IORef (String)
    , cancelDate :: IORef (String)
    , status :: IORef (String)
    , paymentMethod :: IORef (String)
    , name :: IORef (String)
    , type_ :: IORef (String)
    , expiration :: IORef (String)
    , number :: IORef (String)
    , encryption :: IORef (String)
    , billingName :: IORef (String)
    , billingStreet :: IORef (String)
    , billingCity :: IORef (String)
    , billingState :: IORef (String)
    , billingCode :: IORef (String)
    , billingCountry :: IORef (String)
    , shippingName :: IORef (String)
    , shippingStreet :: IORef (String)
    , shippingCity :: IORef (String)
    , shippingState :: IORef (String)
    , shippingCode :: IORef (String)
    , shippingCountry :: IORef (String)
    , shippingMethodName :: IORef (String)
    , subTotal :: IORef (String)
    , shippingCost :: IORef (String)
    , tax :: IORef (String)
    , total :: IORef (String)
    , special :: IORef (String)
    , userComment :: IORef (String)
    , userCancelComment :: IORef (String)
    , storeComment :: IORef (String)
    , storeCancelComment :: IORef (String)
    }

instance JavaNull UpdateOrderHelper where
    javaNull = javaNullRecord "UpdateOrderHelper"

instance JavaEquals UpdateOrderHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpdateOrderHelper where
    (==) = jrecordEquals

instance JavaObjectClass UpdateOrderHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UpdateOrderHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    entryId <- newIORef ""
    orderId <- newIORef ""
    userName <- newIORef ""
    storeName <- newIORef ""
    shipDate <- newIORef ""
    orderDate <- newIORef ""
    transDate <- newIORef ""
    cancelDate <- newIORef ""
    status <- newIORef ""
    paymentMethod <- newIORef ""
    name <- newIORef ""
    type_ <- newIORef ""
    expiration <- newIORef ""
    number <- newIORef ""
    encryption <- newIORef ""
    billingName <- newIORef ""
    billingStreet <- newIORef ""
    billingCity <- newIORef ""
    billingState <- newIORef ""
    billingCode <- newIORef ""
    billingCountry <- newIORef ""
    shippingName <- newIORef ""
    shippingStreet <- newIORef ""
    shippingCity <- newIORef ""
    shippingState <- newIORef ""
    shippingCode <- newIORef ""
    shippingCountry <- newIORef ""
    shippingMethodName <- newIORef ""
    subTotal <- newIORef ""
    shippingCost <- newIORef ""
    tax <- newIORef ""
    total <- newIORef ""
    special <- newIORef ""
    userComment <- newIORef ""
    userCancelComment <- newIORef ""
    storeComment <- newIORef ""
    storeCancelComment <- newIORef ""
    let this = UpdateOrderHelper header_ base logUtil request entryId orderId userName storeName shipDate orderDate transDate cancelDate status paymentMethod name type_ expiration number encryption billingName billingStreet billingCity billingState billingCode billingCountry shippingName shippingStreet shippingCity shippingState shippingCode shippingCountry shippingMethodName subTotal shippingCost tax total special userComment userCancelComment storeComment storeCancelComment
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: UpdateOrderHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.entryId ("")
    jset this.orderId ("")
    jset this.userName ("")
    jset this.storeName ("")
    jset this.shipDate ("")
    jset this.orderDate ("")
    jset this.transDate ("")
    jset this.cancelDate ("")
    jset this.status ("")
    jset this.paymentMethod ("")
    jset this.name ("")
    jset this.type_ ("")
    jset this.expiration ("")
    jset this.number ("")
    jset this.encryption ("")
    jset this.billingName ("")
    jset this.billingStreet ("")
    jset this.billingCity ("")
    jset this.billingState ("")
    jset this.billingCode ("")
    jset this.billingCountry ("")
    jset this.shippingName ("")
    jset this.shippingStreet ("")
    jset this.shippingCity ("")
    jset this.shippingState ("")
    jset this.shippingCode ("")
    jset this.shippingCountry ("")
    jset this.shippingMethodName ("")
    jset this.subTotal ("")
    jset this.shippingCost ("")
    jset this.tax ("")
    jset this.total ("")
    jset this.special ("")
    jset this.userComment ("")
    jset this.userCancelComment ("")
    jset this.storeComment ("")
    jset this.storeCancelComment ("")
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO UpdateOrderHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: UpdateOrderHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (UpdateOrderHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: UpdateOrderHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: UpdateOrderHelper))

getFormData_impl :: UpdateOrderHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (EntryData.getInstance))).iD))
        jset (this).entryId (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.iD))
        jset (this).orderId (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (UserData.uSERNAME))
        jset (this).userName (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (StoreFrontData.getInstance))).nAME))
        jset (this).storeName (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sHIPPEDDATE))
        jset (this).shipDate (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.oRDERDATE))
        jset (this).orderDate (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tRANSDATE))
        jset (this).transDate (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.cANCELDATE))
        jset (this).cancelDate (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sTATUS))
        jset (this).status (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (PaymentData.mETHOD))
        jset (this).paymentMethod (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (PaymentData.nAME))
        jset (this).name (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (PaymentData.tYPE))
        jset (this).type_ (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (PaymentData.eXPIRATION))
        jset (this).expiration (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (PaymentData.nUMBER))
        jset (this).number (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (EntryData.getInstance))).eNCRYPTION))
        jset (this).encryption (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BillingAddressData.nAME))
        jset (this).billingName (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BillingAddressData.sTREET))
        jset (this).billingStreet (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BillingAddressData.cITY))
        jset (this).billingCity (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BillingAddressData.sTATE))
        jset (this).billingState (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BillingAddressData.cODE))
        jset (this).billingCode (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BillingAddressData.cOUNTRY))
        jset (this).billingCountry (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingAddressData.nAME))
        jset (this).shippingName (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingAddressData.sTREET))
        jset (this).shippingStreet (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingAddressData.cITY))
        jset (this).shippingCity (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingAddressData.sTATE))
        jset (this).shippingState (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingAddressData.cODE))
        jset (this).shippingCode (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingAddressData.cOUNTRY))
        jset (this).shippingCountry (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingMethodData.nAME))
        jset (this).shippingMethodName (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sUBTOTAL))
        jset (this).subTotal (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sHIPPINGCOST))
        jset (this).shippingCost (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tAX))
        jset (this).tax (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tOTAL))
        jset (this).total (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (EntryData.getInstance))).sPECIAL))
        jset (this).special (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.cUSTOMERCOMMENT))
        jset (this).userComment (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.cUSTOMERCANCELCOMMENT))
        jset (this).userCancelComment (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.sTORECOMMENT))
        jset (this).storeComment (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.sTORECANCELCOMMENT))
        jset (this).storeCancelComment (assignedValue)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: UpdateOrderHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: UpdateOrderHelper))

update_impl :: UpdateOrderHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to update order table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "Successful update"
            orderHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            whereHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            Control.Monad.void (HashMap.put orderHashMap (jget ((jio (EntryData.getInstance))).iD) (jget (this).entryId))
            Control.Monad.void (HashMap.put orderHashMap (OrderData.iD) (jget (this).orderId))
            Control.Monad.void (HashMap.put orderHashMap (UserData.uSERNAME) (jget this.userName))
            Control.Monad.void (HashMap.put orderHashMap (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.sHIPPEDDATE) (jget this.shipDate))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.oRDERDATE) (jget this.orderDate))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.tRANSDATE) (jget this.transDate))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.cANCELDATE) (jget this.cancelDate))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.sTATUS) (jget this.status))
            Control.Monad.void (HashMap.put orderHashMap (PaymentData.mETHOD) (jget this.paymentMethod))
            Control.Monad.void (HashMap.put orderHashMap (PaymentData.nAME) (jget this.name))
            Control.Monad.void (HashMap.put orderHashMap (PaymentData.tYPE) (jget this.type_))
            Control.Monad.void (HashMap.put orderHashMap (PaymentData.eXPIRATION) (jget this.expiration))
            Control.Monad.void (HashMap.put orderHashMap (BillingAddressData.nAME) (jget this.billingName))
            Control.Monad.void (HashMap.put orderHashMap (BillingAddressData.sTREET) (jget this.billingStreet))
            Control.Monad.void (HashMap.put orderHashMap (BillingAddressData.cITY) (jget this.billingCity))
            Control.Monad.void (HashMap.put orderHashMap (BillingAddressData.sTATE) (jget this.billingState))
            Control.Monad.void (HashMap.put orderHashMap (BillingAddressData.cODE) (jget this.billingCode))
            Control.Monad.void (HashMap.put orderHashMap (BillingAddressData.cOUNTRY) (jget this.billingCountry))
            Control.Monad.void (HashMap.put orderHashMap (ShippingAddressData.nAME) (jget this.shippingName))
            Control.Monad.void (HashMap.put orderHashMap (ShippingAddressData.sTREET) (jget this.shippingStreet))
            Control.Monad.void (HashMap.put orderHashMap (ShippingAddressData.cITY) (jget this.shippingCity))
            Control.Monad.void (HashMap.put orderHashMap (ShippingAddressData.sTATE) (jget this.shippingState))
            Control.Monad.void (HashMap.put orderHashMap (ShippingAddressData.cODE) (jget this.shippingCode))
            Control.Monad.void (HashMap.put orderHashMap (ShippingAddressData.cOUNTRY) (jget this.shippingCountry))
            Control.Monad.void (HashMap.put orderHashMap (ShippingMethodData.nAME) (jget (this).shippingMethodName))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.sUBTOTAL) (jget (this).subTotal))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.sHIPPINGCOST) (jget (this).shippingCost))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.tAX) (jget (this).tax))
            Control.Monad.void (HashMap.put orderHashMap (OrderHistoryData.tOTAL) (jget (this).total))
            Control.Monad.void (HashMap.put orderHashMap (jget ((jio (EntryData.getInstance))).sPECIAL) (jget (this).special))
            Control.Monad.void (HashMap.put orderHashMap (OrderData.cUSTOMERCOMMENT) (jget (this).userComment))
            Control.Monad.void (HashMap.put orderHashMap (OrderData.cUSTOMERCANCELCOMMENT) (jget (this).userCancelComment))
            Control.Monad.void (HashMap.put orderHashMap (OrderData.sTORECOMMENT) (jget (this).storeComment))
            Control.Monad.void (HashMap.put orderHashMap (OrderData.sTORECANCELCOMMENT) (jget (this).storeCancelComment))
            Control.Monad.void (HashMap.put whereHashMap (OrderData.iD) (jget this.orderId))
            Control.Monad.void (OrderHistoryEntity.update ((jio (OrderHistoryEntityFactory.getInstance))) whereHashMap orderHashMap)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "update()")
            pure (success)


