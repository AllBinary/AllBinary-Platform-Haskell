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
-- package taghelpers
module OrderHistoryHelper (module OrderHistoryHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, setOrderStatus, setOrderStatus_super, setOrderStatus_impl, logUtil, weblisketSession, storeFrontInterface, propertiesHashMap, pageContext, request, streetAddress, id, groupId, status, newStatus)
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
import qualified TagHelper -- admin.taghelpers.TagHelper
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified OrderHistoryFactory -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory
import qualified OrderHistoryInterface -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified OrderHistoryEntityInterface -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data OrderHistoryHelper = OrderHistoryHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , streetAddress :: IORef (StreetAddress.StreetAddress)
    , id :: IORef (String)
    , groupId :: IORef (String)
    , status :: IORef (String)
    , newStatus :: IORef (String)
    }

instance JavaNull OrderHistoryHelper where
    javaNull = javaNullRecord "OrderHistoryHelper"

instance JavaEquals OrderHistoryHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryHelper where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHistoryHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    request <- newIORef javaNull
    streetAddress <- newIORef javaNull
    id <- newIORef ""
    groupId <- newIORef ""
    status <- newIORef ""
    newStatus <- newIORef ""
    let this = OrderHistoryHelper header_ base logUtil weblisketSession storeFrontInterface propertiesHashMap pageContext request streetAddress id groupId status newStatus
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "setOrderStatus" (\() -> setOrderStatus_impl this)
    pure this

initFields_ :: OrderHistoryHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    jset this.request (javaNull)
    jset this.streetAddress (javaNull)
    jset this.id ("")
    jset this.groupId ("")
    jset this.status ("")
    jset this.newStatus (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO OrderHistoryHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: OrderHistoryHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).propertiesHashMap (propertiesHashMap)
        jset (this).pageContext (pageContext)
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        let storeName = (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        jset (this).newStatus ((javaCast (jio (HashMap.get propertiesHashMap (OrderHistoryData.sTATUS))) :: String))
        when (storeName /= javaNull) $ do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
        Control.Monad.void (OrderHistoryHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: OrderHistoryHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: OrderHistoryHelper))

getFormData_impl :: OrderHistoryHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.iD))
        jset (this).id (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingMethodData.gROUP))
        jset (this).groupId (assignedValue)
        when ((jget (this).newStatus) == javaNull) $ do
            assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sTATUS))
            jset (this).newStatus (assignedValue)
        pure ()


setOrderStatus :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus object_ = jmethod object_ "setOrderStatus" (\() -> (setOrderStatus_impl (javaCast object_ :: OrderHistoryHelper))) ()

setOrderStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus_super object_ = (setOrderStatus_impl (javaCast object_ :: OrderHistoryHelper))

setOrderStatus_impl :: OrderHistoryHelper -> IO (String)
setOrderStatus_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set order status"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "setOrderStatus()" e)
            pure (((((error ++ "<br/>") ++ "Exception: ") ++ javaToString e) ++ "<br/>"))
            ) $ do
            let success = ("Status successfully set to: " ++ (jget (this).status))
            orderReviewInterface <- (fmap (\value_ -> javaCast value_ :: OrderHistoryInterface.OrderHistoryInterface) (OrderHistoryFactory.getInstance (jget (this).id)))
            status <- (OrderHistoryInterface.getStatus orderReviewInterface)
            if ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.cANCELLED)) - 1) == 0) then do
                javaReturn ((("Order " ++ (jget (this).id)) ++ " Already Cancelled<br/>"))
            else if ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.sHIPPED)) - 1) == 0) then do
                javaReturn ((("Order " ++ (jget (this).id)) ++ " Already Shipped. You can't cancel a shipped order.<br/>"))
            else if ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.pREPROCESSING)) - 1) == 0) then do
                javaReturn ((("Order " ++ (jget (this).id)) ++ " has been cancelled.<br/>"))
            else if ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.pARTIALLYSHIPPED)) - 1) == 0) then do
                javaReturn ((("Order " ++ (jget (this).id)) ++ " Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>"))
            else when ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.pROCESSING)) - 1) == 0) $ do
                orderHistoryEntityInterface <- (fmap (\value_ -> javaCast value_ :: OrderHistoryEntityInterface.OrderHistoryEntityInterface) (OrderHistoryEntityFactory.getInstance))
                Control.Monad.void (OrderHistoryEntityInterface.setStatus orderHistoryEntityInterface (jget (this).id) (jget (this).newStatus))
                javaReturn ((("Order " ++ (jget (this).id)) ++ " has been cancelled.<br/>"))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "setOrderStatus()")
            pure ("Error Setting Order Status")


