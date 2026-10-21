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
-- package views.admin.payment
module PaymentProcessorComponent (module PaymentProcessorComponent, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil)
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
import qualified PaymentProcessorInterface -- org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface
import qualified PaymentProcessorInterfaceFactory -- org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

data PaymentProcessorComponent = PaymentProcessorComponent
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PaymentProcessorComponent where
    javaNull = javaNullRecord "PaymentProcessorComponent"

instance JavaEquals PaymentProcessorComponent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentProcessorComponent where
    (==) = jrecordEquals

instance JavaObjectClass PaymentProcessorComponent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentProcessorComponent
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PaymentProcessorComponent header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: PaymentProcessorComponent -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO PaymentProcessorComponent
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: PaymentProcessorComponent -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: PaymentProcessorComponent))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: PaymentProcessorComponent))

addDomNodeInterfaces_impl :: PaymentProcessorComponent -> IO (())
addDomNodeInterfaces_impl this = do
        paymentProcessorInterface <- (fmap (\value_ -> javaCast value_ :: PaymentProcessorInterface.PaymentProcessorInterface) (PaymentProcessorInterfaceFactory.getInstance ((jio (PaymentProcessorInterfaceFactory.getInstance))) (jio (HttpStoreComponentView.getTransformInfoInterface this))))
        Control.Monad.void (PaymentProcessorInterface.process paymentProcessorInterface)
        let httpTransformInfoInterface = (javaCast (jio (HttpStoreComponentView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        Control.Monad.void (TransformInfoHttpInterface.removeBasket ((jio (TransformInfoHttpInterface.getWeblisketSession httpTransformInfoInterface))))
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast paymentProcessorInterface :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: PaymentProcessorComponent))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: PaymentProcessorComponent))

view_impl :: PaymentProcessorComponent -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (PaymentProcessorComponent.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


