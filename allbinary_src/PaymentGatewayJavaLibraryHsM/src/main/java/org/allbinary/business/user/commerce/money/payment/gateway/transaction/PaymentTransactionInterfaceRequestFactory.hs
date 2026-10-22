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
-- package org.allbinary.business.user.commerce.money.payment.gateway.transaction
module PaymentTransactionInterfaceRequestFactory where

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
import qualified PaymentTransactionInterfaceFactory -- same package or java.lang
import qualified PaymentTransactionInterface -- same package or java.lang
import qualified TenderType -- same package or java.lang
import qualified TransactionType -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified Basket -- org.allbinary.business.user.commerce.inventory.basket.Basket
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified Payment -- org.allbinary.business.user.commerce.money.payment.Payment
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified TenderTypeFactory -- org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory
import qualified TransactionTypeFactory -- org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory
import qualified OrderIdGenerator -- org.allbinary.data.generator.OrderIdGenerator
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified OrderHistoryEntityInterface -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PaymentTransactionInterfaceRequestFactory = PaymentTransactionInterfaceRequestFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull PaymentTransactionInterfaceRequestFactory where
    javaNull = javaNullRecord "PaymentTransactionInterfaceRequestFactory"

instance JavaEquals PaymentTransactionInterfaceRequestFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTransactionInterfaceRequestFactory where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTransactionInterfaceRequestFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentTransactionInterfaceRequestFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = PaymentTransactionInterfaceRequestFactory header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    jregisterMethod header_ "generateFromTestData" (\() -> generateFromTestData_impl this)
    pure this

initFields_ :: PaymentTransactionInterfaceRequestFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()


getInstance :: IO (PaymentTransactionInterfaceRequestFactory)
getInstance = do
        pure (PaymentTransactionInterfaceRequestFactory.instance_)

new_ :: IO PaymentTransactionInterfaceRequestFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentTransactionInterfaceRequestFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: PaymentTransactionInterfaceRequestFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: PaymentTransactionInterfaceRequestFactory)) a1

getInstance_1_impl :: PaymentTransactionInterfaceRequestFactory -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
getInstance_1_impl this transformInfoInterface = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getPaymentTransactionInterface()" e)
            javaThrow (e)
            ) $ do
            let httpTransformInfoInterface = (javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            pageContext <- (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)
            let httpServletRequest = (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)
            command <- (HttpServletRequest.getParameter httpServletRequest (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aDMINCOMMAND))
            if ((command /= javaNull) && ((Prelude.fromEnum (Prelude.compare command (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEFORMEVALBODYONERROR)) - 1) == 0)) then do
                javaReturn =<< (PaymentTransactionInterfaceRequestFactory.generateFromTestData this transformInfoInterface)
            else do
                propertiesHashMap <- (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)
                weblisketSession <- (WeblisketSession.new_2 propertiesHashMap pageContext)
                storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName weblisketSession))))
                order <- (WeblisketSession.getOrder weblisketSession)
                orderId <- (OrderInterface.getId order)
                orderHistoryEntityInterface <- (fmap (\value_ -> javaCast value_ :: OrderHistoryEntityInterface.OrderHistoryEntityInterface) (OrderHistoryEntityFactory.getInstance))
                orderReview <- (OrderHistoryEntityInterface.getOrder orderHistoryEntityInterface orderId)
                orderPaymentInfo <- (OrderHistory.getPaymentInfo orderReview)
                Control.Monad.void (Payment.setTransactionType orderPaymentInfo (jio (TransactionType.toString ((jget ((jio (TransactionTypeFactory.getInstance))).sALE)))))
                Control.Monad.void (Payment.setTenderType orderPaymentInfo (jio (TenderType.toString ((jget ((jio (TenderTypeFactory.getInstance))).cREDITCARD)))))
                Control.Monad.void (OrderHistory.setPaymentInfo orderReview orderPaymentInfo)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENT))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (OrderHistory.getId orderReview)) this "getPaymentTransactionInterface()")
                paymentTransactionInterface <- (fmap (\value_ -> javaCast value_ :: PaymentTransactionInterface.PaymentTransactionInterface) (PaymentTransactionInterfaceFactory.getInstance_1 ((jio (PaymentTransactionInterfaceFactory.getInstance))) orderReview))
                javaReturn (paymentTransactionInterface)


-- throws Exception
generateFromTestData :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
generateFromTestData object_ a1 = jmethod object_ "generateFromTestData" (\() -> (generateFromTestData_impl (javaCast object_ :: PaymentTransactionInterfaceRequestFactory))) () a1

generateFromTestData_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
generateFromTestData_super object_ a1 = (generateFromTestData_impl (javaCast object_ :: PaymentTransactionInterfaceRequestFactory)) a1

generateFromTestData_impl :: PaymentTransactionInterfaceRequestFactory -> TransformInfoInterface.TransformInfoInterface -> IO (PaymentTransactionInterface.PaymentTransactionInterface)
generateFromTestData_impl this transformInfoInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "generatePaymentTransactionInterfaceFromTestData()" e)
            javaThrow (e)
            ) $ do
            let httpTransformInfoInterface = (javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            propertiesHashMap <- (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)
            pageContext <- (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)
            weblisketSession <- (WeblisketSession.new_2 propertiesHashMap pageContext)
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName weblisketSession))))
            let httpServletRequest = (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)
            gatewayName <- newIORef ((javaCast (jio (WeblisketSession.getPaymentMethod weblisketSession)) :: String))
            when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget gatewayName))) $ do
                assignedValue <- (HttpServletRequest.getParameter httpServletRequest (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))
                jset gatewayName (assignedValue)
            transactionType <- (HttpServletRequest.getParameter httpServletRequest (PaymentData.tRANSACTIONTYPE))
            tenderType <- (HttpServletRequest.getParameter httpServletRequest (PaymentData.tENDERTYPE))
            payment <- (Payment.new_)
            Control.Monad.void (Payment.setTransactionType payment transactionType)
            Control.Monad.void (Payment.setTenderType payment tenderType)
            orderReview <- (OrderHistory.new_1 (jio (Basket.new_)))
            Control.Monad.void (OrderHistory.setStoreName orderReview (jio (StoreFrontInterface.getName storeFrontInterface)))
            Control.Monad.void (OrderHistory.setPaymentMethod orderReview (jget gatewayName))
            Control.Monad.void (OrderHistory.setUserName orderReview "testing")
            orderId <- newIORef =<< (HttpServletRequest.getParameter httpServletRequest "orderNumber")
            if (((jget orderId) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget orderId) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) == 0)) then do
                assignedValue <- (OrderIdGenerator.getNext ((jio (OrderIdGenerator.new_))))
                jset orderId (assignedValue)
                Control.Monad.void (OrderHistory.setId orderReview (jget orderId))
                account <- (HttpServletRequest.getParameter httpServletRequest "account")
                expirationDate <- (HttpServletRequest.getParameter httpServletRequest "expirationDate")
                checkNumber <- (HttpServletRequest.getParameter httpServletRequest "checkNumber")
                driversLicense <- (HttpServletRequest.getParameter httpServletRequest "driversLicense")
                magneticInkCheckReader <- (HttpServletRequest.getParameter httpServletRequest "magneticInkCheckReader")
                aba <- (HttpServletRequest.getParameter httpServletRequest "aba")
                accountType <- (HttpServletRequest.getParameter httpServletRequest "accountType")
                name <- (HttpServletRequest.getParameter httpServletRequest "name")
                Control.Monad.void (Payment.setName payment name)
                Control.Monad.void (Payment.setNumber payment account)
                Control.Monad.void (Payment.setExpiration payment expirationDate)
                Control.Monad.void (Payment.setCheckNumber payment checkNumber)
                Control.Monad.void (Payment.setDriversLicense payment driversLicense)
                Control.Monad.void (Payment.setMagneticInkCheckReader payment magneticInkCheckReader)
                Control.Monad.void (Payment.setAba payment aba)
                Control.Monad.void (Payment.setAccountType payment accountType)
                street <- (HttpServletRequest.getParameter httpServletRequest "street")
                city <- (HttpServletRequest.getParameter httpServletRequest "city")
                state <- (HttpServletRequest.getParameter httpServletRequest "state")
                zip <- (HttpServletRequest.getParameter httpServletRequest "zip")
                streetAddress <- (StreetAddress.new_)
                Control.Monad.void (StreetAddress.setName streetAddress name)
                Control.Monad.void (StreetAddress.setStreet streetAddress street)
                Control.Monad.void (StreetAddress.setCity streetAddress city)
                Control.Monad.void (StreetAddress.setState streetAddress state)
                Control.Monad.void (StreetAddress.setCode streetAddress zip)
                email <- (HttpServletRequest.getParameter httpServletRequest "email")
                amount <- (HttpServletRequest.getParameter httpServletRequest "amount")
                Control.Monad.void (OrderHistory.setTotal orderReview (jio (Money.new_1 amount)))
                Control.Monad.void (OrderHistory.setBillingAddress orderReview streetAddress)
            else do
                Control.Monad.void (OrderHistory.setId orderReview (jget orderId))
            Control.Monad.void (OrderHistory.setPaymentInfo orderReview payment)
            paymentTransactionInterface <- (fmap (\value_ -> javaCast value_ :: PaymentTransactionInterface.PaymentTransactionInterface) (PaymentTransactionInterfaceFactory.getInstance_1 ((jio (PaymentTransactionInterfaceFactory.getInstance))) orderReview))
            pure (paymentTransactionInterface)


