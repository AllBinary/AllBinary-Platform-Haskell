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
module OrderHistoryRequestHelper (module OrderHistoryRequestHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, setOrderStatus, setOrderStatus_super, setOrderStatus_impl, setOrderStatus_1, setOrderStatus_1_super, setOrderStatus_1_impl, setOrderStatus, logUtil, abeClientInformation, request, id, groupId, status)
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
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified OrderStatusEmail -- org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified OrderItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified TagHelper

data OrderHistoryRequestHelper = OrderHistoryRequestHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , id :: IORef (String)
    , groupId :: IORef (String)
    , status :: IORef (String)
    }

instance JavaNull OrderHistoryRequestHelper where
    javaNull = javaNullRecord "OrderHistoryRequestHelper"

instance JavaEquals OrderHistoryRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHistoryRequestHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    request <- newIORef javaNull
    id <- newIORef ""
    groupId <- newIORef ""
    status <- newIORef ""
    let this = OrderHistoryRequestHelper header_ base logUtil abeClientInformation request id groupId status
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "setOrderStatus" (\() -> setOrderStatus_impl this)
    jregisterMethod header_ "setOrderStatus_1" (\() -> setOrderStatus_1_impl this)
    pure this

initFields_ :: OrderHistoryRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.request (javaNull)
    jset this.id ("")
    jset this.groupId ("")
    jset this.status ("")
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO OrderHistoryRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: OrderHistoryRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (OrderHistoryRequestHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: OrderHistoryRequestHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: OrderHistoryRequestHelper))

getFormData_impl :: OrderHistoryRequestHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.iD))
        jset (this).id (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingMethodData.gROUP))
        jset (this).groupId (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sTATUS))
        jset (this).status (assignedValue)
        pure ()


setOrderStatus :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus object_ = jmethod object_ "setOrderStatus" (\() -> (setOrderStatus_impl (javaCast object_ :: OrderHistoryRequestHelper))) ()

setOrderStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus_super object_ = (setOrderStatus_impl (javaCast object_ :: OrderHistoryRequestHelper))

setOrderStatus_impl :: OrderHistoryRequestHelper -> IO (String)
setOrderStatus_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set order status"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "setOrderStatus()" e)
            pure (error)
            ) $ do
            when ((Prelude.fromEnum (Prelude.compare (jget (this).groupId) (jget ((jio (CommonPhoneStrings.getInstance))).zERO)) - 1) /= 0) $ do
                if (jio (OrderItemsEntity.isEverythingShipped ((jio (OrderItemsEntityFactory.getInstance))) (jget (this).id))) then do
                    jset (this).status (OrderHistoryData.sHIPPED)
                else do
                    jset (this).status (OrderHistoryData.pARTIALLYSHIPPED)
            let success = ("Status successfully set to: " ++ (jget (this).status))
            Control.Monad.void (OrderHistoryEntity.setStatus ((jio (OrderHistoryEntityFactory.getInstance))) (jget (this).id) (jget (this).status))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Success" this "setOrderStatus()")
            pure (success)


setOrderStatus_1 :: (JavaObjectClass this_) => this_ -> String -> IO (String)
setOrderStatus_1 object_ a1 = jmethod object_ "setOrderStatus_1" (\() -> (setOrderStatus_1_impl (javaCast object_ :: OrderHistoryRequestHelper))) () a1

setOrderStatus_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
setOrderStatus_1_super object_ a1 = (setOrderStatus_1_impl (javaCast object_ :: OrderHistoryRequestHelper)) a1

setOrderStatus_1_impl :: OrderHistoryRequestHelper -> String -> IO (String)
setOrderStatus_1_impl this newStatus = do
        newStatus <- newIORef newStatus
        handle (\(e :: JavaException) -> do
            let error = "Failed to view order table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "setOrderStatus(newStatus)" e)
            pure (error)
            ) $ do
            when ((jget newStatus) == javaNull) $ do
                jset newStatus ((jget (this).status))
            let success = ("Status successfully set to: " ++ (jget newStatus))
            Control.Monad.void (OrderHistoryEntity.setStatus ((jio (OrderHistoryEntityFactory.getInstance))) (jget (this).id) (jget newStatus))
            orderHistory <- (OrderHistoryEntity.getOrder ((jio (OrderHistoryEntityFactory.getInstance))) (jget (this).id))
            Control.Monad.void (OrderStatusEmail.process ((jio (OrderStatusEmail.new_2 (jget (this).abeClientInformation) orderHistory))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Success" this "setOrderStatus()")
            pure (success)


