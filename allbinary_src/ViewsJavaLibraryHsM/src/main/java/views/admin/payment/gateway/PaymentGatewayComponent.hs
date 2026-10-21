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
module PaymentGatewayComponent (module PaymentGatewayComponent, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, paymentGatewayInterface)
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
import qualified PaymentGatewayInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface
import qualified PaymentGatewayDomNodeFactoryInterface -- org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface
import qualified BasicPaymentType -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType
import qualified BasicPaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

data PaymentGatewayComponent = PaymentGatewayComponent
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , paymentGatewayInterface :: IORef (PaymentGatewayInterface.PaymentGatewayInterface)
    }

instance JavaNull PaymentGatewayComponent where
    javaNull = javaNullRecord "PaymentGatewayComponent"

instance JavaEquals PaymentGatewayComponent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayComponent where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayComponent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewayComponent
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    paymentGatewayInterface <- newIORef javaNull
    let this = PaymentGatewayComponent header_ base logUtil paymentGatewayInterface
    jregisterLevel header_ this
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: PaymentGatewayComponent -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.paymentGatewayInterface (javaNull)
    pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> PaymentGatewayInterface.PaymentGatewayInterface -> IO PaymentGatewayComponent
new_2 transformInfoInterface paymentGatewayInterface = do
    this <- newRecord_
    init_2 this transformInfoInterface paymentGatewayInterface
    pure this

init_2 :: PaymentGatewayComponent -> TransformInfoInterface.TransformInfoInterface -> PaymentGatewayInterface.PaymentGatewayInterface -> IO ()
init_2 this transformInfoInterface paymentGatewayInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).paymentGatewayInterface (paymentGatewayInterface)
        pure ()


-- throws Exception
addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: PaymentGatewayComponent))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: PaymentGatewayComponent))

addDomNodeInterfaces_impl :: PaymentGatewayComponent -> IO (())
addDomNodeInterfaces_impl this = do
        paymentType <- (BasicPaymentTypeUtil.get ((jio (BasicPaymentTypeUtil.getInstance))) (jio (PaymentGatewayInterface.getName ((jget (this).paymentGatewayInterface)))))
        paymentGatewayDomNodeFactoryInterface <- (BasicPaymentType.getPaymentGatewayDomNodeFactoryInterface paymentType)
        let domNodeInterface = (javaCast (jio (PaymentGatewayDomNodeFactoryInterface.getInstance paymentGatewayDomNodeFactoryInterface (jget (this).paymentGatewayInterface))) :: DomNodeInterface.DomNodeInterface)
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this domNodeInterface)
        pure ()


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: PaymentGatewayComponent))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: PaymentGatewayComponent))

view_impl :: PaymentGatewayComponent -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view payment gateway"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            pure (error)
            ) $ do
            Control.Monad.void (PaymentGatewayComponent.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


