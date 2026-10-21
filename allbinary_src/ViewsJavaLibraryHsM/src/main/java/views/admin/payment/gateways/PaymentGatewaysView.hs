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
-- package views.admin.payment.gateways
module PaymentGatewaysView (module PaymentGatewaysView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, paymentGatewayVector)
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
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified PaymentGatewaysData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData
import qualified BasicPaymentType -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType
import qualified PaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data PaymentGatewaysView = PaymentGatewaysView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , paymentGatewayVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull PaymentGatewaysView where
    javaNull = javaNullRecord "PaymentGatewaysView"

instance JavaEquals PaymentGatewaysView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewaysView where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewaysView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewaysView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    paymentGatewayVector <- newIORef javaNull
    let this = PaymentGatewaysView header_ base logUtil paymentGatewayVector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: PaymentGatewaysView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.paymentGatewayVector (javaNull)
    pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> BasicArrayList.BasicArrayList -> IO PaymentGatewaysView
new_2 transformInfoInterface gatewayVector = do
    this <- newRecord_
    init_2 this transformInfoInterface gatewayVector
    pure this

init_2 :: PaymentGatewaysView -> TransformInfoInterface.TransformInfoInterface -> BasicArrayList.BasicArrayList -> IO ()
init_2 this transformInfoInterface gatewayVector = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).paymentGatewayVector (gatewayVector)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: PaymentGatewaysView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: PaymentGatewaysView)) a1

toXmlNode_impl :: PaymentGatewaysView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            storeName <- (TransformInfoInterface.getStoreName ((jio (HttpStoreComponentView.getTransformInfoInterface this))))
            paymentGatewaysNode <- (Document.createElement document (jget PaymentGatewaysData.nAME))
            size <- (BasicArrayList.size ((jget (this).paymentGatewayVector)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let paymentType = (javaCast (jio (BasicArrayList.get ((jget (this).paymentGatewayVector)) index)) :: BasicPaymentType.BasicPaymentType)
                hashMap <- (BasicPaymentType.toHashMap paymentType)
                Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).dEFAULT) (jio (BasicPaymentType.getName ((jio (PaymentType.getBasicPaymentType ((jio (PaymentTypeUtil.getDefault ((jio (PaymentTypeUtil.getInstance))) storeName)))))))))
                paymentGatewayNode <- (ModDomHelper.createNodeWithValueNodes document (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) hashMap)
                Control.Monad.void (Node.appendChild paymentGatewaysNode paymentGatewayNode)
            pure (paymentGatewaysNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: PaymentGatewaysView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: PaymentGatewaysView))

addDomNodeInterfaces_impl :: PaymentGatewaysView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: PaymentGatewaysView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: PaymentGatewaysView))

view_impl :: PaymentGatewaysView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view payment gateways"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            pure (error)
            ) $ do
            Control.Monad.void (PaymentGatewaysView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


