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
-- package views.admin.payment.gateway
module PaymentGatewayViewAbstract (module PaymentGatewayViewAbstract, module TransformInfoHttpComposite) where

import TransformInfoHttpComposite hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, getPaymentGatewayPrimaryKey, getPaymentGatewayPrimaryKey_super, getPaymentGatewayPrimaryKey_impl, setPaymentGatewayPrimaryKey, setPaymentGatewayPrimaryKey_super, setPaymentGatewayPrimaryKey_impl, paymentGatewayPrimaryKey)
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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified PaymentGatewayPrimaryKey -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey
import qualified TransformInfoHttpComposite -- org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

data PaymentGatewayViewAbstract = PaymentGatewayViewAbstract
    { header_ :: JavaHeader
    , base :: TransformInfoHttpComposite.TransformInfoHttpComposite
    , paymentGatewayPrimaryKey :: IORef (PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey)
    }

instance JavaNull PaymentGatewayViewAbstract where
    javaNull = javaNullRecord "PaymentGatewayViewAbstract"

instance JavaEquals PaymentGatewayViewAbstract where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayViewAbstract where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayViewAbstract where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewayViewAbstract
newRecord_ = do
    base <- TransformInfoHttpComposite.newRecord_
    let header_ = base.header_
    paymentGatewayPrimaryKey <- newIORef javaNull
    let this = PaymentGatewayViewAbstract header_ base paymentGatewayPrimaryKey
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "getPaymentGatewayPrimaryKey" (\() -> getPaymentGatewayPrimaryKey_impl this)
    jregisterMethod header_ "setPaymentGatewayPrimaryKey" (\() -> setPaymentGatewayPrimaryKey_impl this)
    pure this

initFields_ :: PaymentGatewayViewAbstract -> IO ()
initFields_ this = do
    jset this.paymentGatewayPrimaryKey (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO PaymentGatewayViewAbstract
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: PaymentGatewayViewAbstract -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        TransformInfoHttpComposite.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (PaymentGatewayViewAbstract.getFormData this (javaCast (jio (PageContext.getRequest ((jio (TransformInfoHttpComposite.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: PaymentGatewayViewAbstract))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: PaymentGatewayViewAbstract)) a1

getFormData_impl :: PaymentGatewayViewAbstract -> HttpServletRequest.HttpServletRequest -> IO (())
getFormData_impl this request = do
        storeName <- (WeblisketSession.getStoreName ((jio (TransformInfoHttpComposite.getWeblisketSession this))))
        gatewayName <- (HttpServletRequest.getParameter request (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))
        Control.Monad.void (PaymentGatewayViewAbstract.setPaymentGatewayPrimaryKey this (jio (PaymentGatewayPrimaryKey.new_2 storeName gatewayName)))
        pure ()


getPaymentGatewayPrimaryKey :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey)
getPaymentGatewayPrimaryKey object_ = jmethod object_ "getPaymentGatewayPrimaryKey" (\() -> (getPaymentGatewayPrimaryKey_impl (javaCast object_ :: PaymentGatewayViewAbstract))) ()

getPaymentGatewayPrimaryKey_super :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey)
getPaymentGatewayPrimaryKey_super object_ = (getPaymentGatewayPrimaryKey_impl (javaCast object_ :: PaymentGatewayViewAbstract))

getPaymentGatewayPrimaryKey_impl :: PaymentGatewayViewAbstract -> IO (PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey)
getPaymentGatewayPrimaryKey_impl this = do
        pure ((jget (this).paymentGatewayPrimaryKey))


setPaymentGatewayPrimaryKey :: (JavaObjectClass this_) => this_ -> PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey -> IO (())
setPaymentGatewayPrimaryKey object_ a1 = jmethod object_ "setPaymentGatewayPrimaryKey" (\() -> (setPaymentGatewayPrimaryKey_impl (javaCast object_ :: PaymentGatewayViewAbstract))) () a1

setPaymentGatewayPrimaryKey_super :: (JavaObjectClass this_) => this_ -> PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey -> IO (())
setPaymentGatewayPrimaryKey_super object_ a1 = (setPaymentGatewayPrimaryKey_impl (javaCast object_ :: PaymentGatewayViewAbstract)) a1

setPaymentGatewayPrimaryKey_impl :: PaymentGatewayViewAbstract -> PaymentGatewayPrimaryKey.PaymentGatewayPrimaryKey -> IO (())
setPaymentGatewayPrimaryKey_impl this paymentGatewayPrimaryKey = do
        jset (this).paymentGatewayPrimaryKey (paymentGatewayPrimaryKey)
        pure ()


