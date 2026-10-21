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
module OrderHelper (module OrderHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setPaymentGateway, setPaymentGateway_super, setPaymentGateway_impl, process, process_super, process_impl, logUtil, weblisketSession, storeFrontInterface, propertiesHashMap, pageContext, request)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified Order -- org.allbinary.business.user.commerce.inventory.order.Order
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified OrderProcessorUtil -- org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified PaymentGatewayInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface
import qualified BasicPaymentType -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType
import qualified PaymentGatewayEntity -- org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity
import qualified PaymentGatewayEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TagHelper

data OrderHelper = OrderHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    }

instance JavaNull OrderHelper where
    javaNull = javaNullRecord "OrderHelper"

instance JavaEquals OrderHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHelper where
    (==) = jrecordEquals

instance JavaObjectClass OrderHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    request <- newIORef javaNull
    let this = OrderHelper header_ base logUtil weblisketSession storeFrontInterface propertiesHashMap pageContext request
    jregisterLevel header_ this
    jregisterMethod header_ "setPaymentGateway" (\() -> setPaymentGateway_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: OrderHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    jset this.request (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO OrderHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: OrderHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).propertiesHashMap (propertiesHashMap)
        jset (this).pageContext (pageContext)
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        let storeName = (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) storeName))) $ do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (WeblisketSession.new_2 (jget (this).propertiesHashMap) (jget (this).pageContext))
        jset (this).weblisketSession (assignedValue)
        pure ()


setPaymentGateway :: (JavaObjectClass this_) => this_ -> IO (Bool)
setPaymentGateway object_ = jmethod object_ "setPaymentGateway" (\() -> (setPaymentGateway_impl (javaCast object_ :: OrderHelper))) ()

setPaymentGateway_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
setPaymentGateway_super object_ = (setPaymentGateway_impl (javaCast object_ :: OrderHelper))

setPaymentGateway_impl :: OrderHelper -> IO (Bool)
setPaymentGateway_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Failed to set PaymentGateway for Order: ")
                handle (\(ex :: JavaException) -> do
                    Control.Monad.void (StringMaker.append stringBuffer " Exception Getting")
                    ) $ do
                    orderInterface <- (WeblisketSession.getOrder ((jget (this).weblisketSession)))
                    when (orderInterface /= javaNull) $ do
                        Control.Monad.void (StringMaker.append stringBuffer (jio (OrderInterface.getId orderInterface)))
                        Control.Monad.void (StringMaker.append stringBuffer " to: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (OrderInterface.getPaymentMethod orderInterface)))
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "setPaymentGateway()" e)
            pure (False)
            ) $ do
            paymentGatewayBoolean <- newIORef (False)
            orderInterface <- (WeblisketSession.getOrder ((jget (this).weblisketSession)))
            let requestPaymentGateway = (javaCast (jio (HttpServletRequest.getParameter ((jget (this).request)) (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))) :: String)
            when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) requestPaymentGateway))) $ do
                Control.Monad.void (WeblisketSession.setPaymentMethod ((jget (this).weblisketSession)) requestPaymentGateway)
                Control.Monad.void (OrderInterface.setPaymentMethod orderInterface requestPaymentGateway)
                jset paymentGatewayBoolean (True)
            let paymentGatewayEntityInterface = (javaCast (jio (PaymentGatewayEntityFactory.getInstance)) :: PaymentGatewayEntity.PaymentGatewayEntity)
            paymentTypeVector <- (PaymentGatewayEntity.findPaymentTypeVectorByStore paymentGatewayEntityInterface (jio (WeblisketSession.getStoreName ((jget (this).weblisketSession)))))
            when ((jio (BasicArrayList.size paymentTypeVector)) == 1) $ do
                let paymentType = (javaCast (jio (BasicArrayList.get paymentTypeVector 0)) :: BasicPaymentType.BasicPaymentType)
                let paymentGatewayInterface = (javaCast (jio (PaymentGatewayEntity.getPaymentGatewayInterface paymentGatewayEntityInterface (jio (WeblisketSession.getStoreName ((jget (this).weblisketSession)))) paymentType)) :: PaymentGatewayInterface.PaymentGatewayInterface)
                paymentGateway <- (PaymentGatewayInterface.getName paymentGatewayInterface)
                Control.Monad.void (WeblisketSession.setPaymentMethod ((jget (this).weblisketSession)) paymentGateway)
                Control.Monad.void (OrderInterface.setPaymentMethod orderInterface paymentGateway)
                jset paymentGatewayBoolean (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Successfully set PaymentGateway Order: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (OrderInterface.getId orderInterface)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (OrderInterface.getPaymentMethod orderInterface)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "setPaymentGateway()")
            pure ((jget paymentGatewayBoolean))


process :: (JavaObjectClass this_) => this_ -> IO (String)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OrderHelper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (String)
process_super object_ = (process_impl (javaCast object_ :: OrderHelper))

process_impl :: OrderHelper -> IO (String)
process_impl this = do
        handle (\(e :: JavaException) -> do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Failed to Process Order: ")
            handle (\(ex :: JavaException) -> do
                Control.Monad.void (StringMaker.append stringBuffer " Exception Getting Id")
                ) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jio (OrderInterface.getId ((jio (WeblisketSession.getOrder ((jget (this).weblisketSession))))))))
            error <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).pROCESS) e)
            pure (error)
            ) $ do
            order <- (WeblisketSession.getOrder ((jget (this).weblisketSession)))
            Control.Monad.void (OrderInterface.setStoreName order (jio (StoreFrontInterface.getName ((jget (this).storeFrontInterface)))))
            result <- (OrderProcessorUtil.process ((jio (OrderProcessorUtil.getInstance))) (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))) (javaCast order :: Order.Order))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Successfully Processed Order: " ++ result) this "processOrder()")
            pure (result)


