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
module ShippingHelper (module ShippingHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, setShippingType, setShippingType_super, setShippingType_impl, logUtil, weblisketSession, storeFrontInterface, propertiesHashMap, pageContext, request, shippingType)
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
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TagHelper

data ShippingHelper = ShippingHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , shippingType :: IORef (String)
    }

instance JavaNull ShippingHelper where
    javaNull = javaNullRecord "ShippingHelper"

instance JavaEquals ShippingHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingHelper where
    (==) = jrecordEquals

instance JavaObjectClass ShippingHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    request <- newIORef javaNull
    shippingType <- newIORef ""
    let this = ShippingHelper header_ base logUtil weblisketSession storeFrontInterface propertiesHashMap pageContext request shippingType
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "setShippingType" (\() -> setShippingType_impl this)
    pure this

initFields_ :: ShippingHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    jset this.request (javaNull)
    jset this.shippingType ("")
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO ShippingHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: ShippingHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).pageContext (pageContext)
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        let storeName = (javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        when (storeName /= javaNull) $ do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        Control.Monad.void (ShippingHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: ShippingHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: ShippingHelper))

getFormData_impl :: ShippingHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (ShippingMethodData.nAME))
        jset (this).shippingType (assignedValue)
        pure ()


setShippingType :: (JavaObjectClass this_) => this_ -> IO (String)
setShippingType object_ = jmethod object_ "setShippingType" (\() -> (setShippingType_impl (javaCast object_ :: ShippingHelper))) ()

setShippingType_super :: (JavaObjectClass this_) => this_ -> IO (String)
setShippingType_super object_ = (setShippingType_impl (javaCast object_ :: ShippingHelper))

setShippingType_impl :: ShippingHelper -> IO (String)
setShippingType_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view Shipping Type"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "setShippingType()" e)
            pure (error)
            ) $ do
            let success = "Successfully Set Shipping Type"
            order <- (WeblisketSession.getOrder ((jget (this).weblisketSession)))
            Control.Monad.void (OrderInterface.setShippingMethod order (jget (this).shippingType))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "setShippingType()")
            pure (success)


