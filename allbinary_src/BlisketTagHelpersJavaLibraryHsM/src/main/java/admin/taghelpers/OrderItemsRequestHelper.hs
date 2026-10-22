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
module OrderItemsRequestHelper (module OrderItemsRequestHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, setOrderStatus, setOrderStatus_super, setOrderStatus_impl, setOrderStatus_0, setOrderStatus_0_super, setOrderStatus_0_impl, setOrderStatus, logUtil, request, id, groupId, status)
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
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified OrderItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TagHelper

data OrderItemsRequestHelper = OrderItemsRequestHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , id :: IORef (String)
    , groupId :: IORef (String)
    , status :: IORef (String)
    }

instance JavaNull OrderItemsRequestHelper where
    javaNull = javaNullRecord "OrderItemsRequestHelper"

instance JavaEquals OrderItemsRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderItemsRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass OrderItemsRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderItemsRequestHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    id <- newIORef ""
    groupId <- newIORef ""
    status <- newIORef ""
    let this = OrderItemsRequestHelper header_ base logUtil request id groupId status
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "setOrderStatus" (\() -> setOrderStatus_impl this)
    jregisterMethod header_ "setOrderStatus_0" (\() -> setOrderStatus_0_impl this)
    pure this

initFields_ :: OrderItemsRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.id ("")
    jset this.groupId ("")
    jset this.status ("")
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO OrderItemsRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: OrderItemsRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (OrderItemsRequestHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: OrderItemsRequestHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: OrderItemsRequestHelper))

getFormData_impl :: OrderItemsRequestHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.iD))
        jset (this).id (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingMethodData.gROUP))
        jset (this).groupId (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sTATUS))
        jset (this).status (assignedValue)
        pure ()


setOrderStatus :: (JavaObjectClass this_) => this_ -> String -> IO (String)
setOrderStatus object_ a1 = jmethod object_ "setOrderStatus" (\() -> (setOrderStatus_impl (javaCast object_ :: OrderItemsRequestHelper))) () a1

setOrderStatus_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
setOrderStatus_super object_ a1 = (setOrderStatus_impl (javaCast object_ :: OrderItemsRequestHelper)) a1

setOrderStatus_impl :: OrderItemsRequestHelper -> String -> IO (String)
setOrderStatus_impl this newStatus = do
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
            Control.Monad.void (OrderItemsEntity.setStatus ((jio (OrderItemsEntityFactory.getInstance))) (jget (this).id) (jget (this).groupId) (jget newStatus))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "setOrderStatus(newStatus)")
            pure (success)


setOrderStatus_0 :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus_0 object_ = jmethod object_ "setOrderStatus_0" (\() -> (setOrderStatus_0_impl (javaCast object_ :: OrderItemsRequestHelper))) ()

setOrderStatus_0_super :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus_0_super object_ = (setOrderStatus_0_impl (javaCast object_ :: OrderItemsRequestHelper))

setOrderStatus_0_impl :: OrderItemsRequestHelper -> IO (String)
setOrderStatus_0_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view order table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "setOrderStatus(newStatus)" e)
            pure (error)
            ) $ do
            let success = ("Status successfully set to: " ++ (jget (this).status))
            Control.Monad.void (OrderItemsEntity.setStatus ((jio (OrderItemsEntityFactory.getInstance))) (jget (this).id) (jget (this).groupId) (jget (this).status))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "setOrderStatus(newStatus)")
            pure (success)


