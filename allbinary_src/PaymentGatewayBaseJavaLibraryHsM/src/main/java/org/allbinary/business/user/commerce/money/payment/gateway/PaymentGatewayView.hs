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
-- package org.allbinary.business.user.commerce.money.payment.gateway
module PaymentGatewayView where

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
import qualified PaymentGatewayInterface -- same package or java.lang
import qualified PaymentGatewayMapping -- same package or java.lang
import qualified PaymentGatewayData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data PaymentGatewayView = PaymentGatewayView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , paymentGatewayInterface :: IORef (PaymentGatewayInterface.PaymentGatewayInterface)
    }

instance JavaNull PaymentGatewayView where
    javaNull = javaNullRecord "PaymentGatewayView"

instance JavaEquals PaymentGatewayView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayView where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentGatewayView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    paymentGatewayInterface <- newIORef javaNull
    let this = PaymentGatewayView header_ logUtil commonStrings paymentGatewayInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getPaymentGatewayInterface" (\() -> getPaymentGatewayInterface_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: PaymentGatewayView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.paymentGatewayInterface (javaNull)
    pure ()

new_1 :: PaymentGatewayInterface.PaymentGatewayInterface -> IO PaymentGatewayView
new_1 paymentGatewayInterface = do
    this <- newRecord_
    init_1 this paymentGatewayInterface
    pure this

init_1 :: PaymentGatewayView -> PaymentGatewayInterface.PaymentGatewayInterface -> IO ()
init_1 this paymentGatewayInterface = do
        initFields_ this
        jset (this).paymentGatewayInterface (paymentGatewayInterface)
        pure ()


getPaymentGatewayInterface :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface object_ = jmethod object_ "getPaymentGatewayInterface" (\() -> (getPaymentGatewayInterface_impl (javaCast object_ :: PaymentGatewayView))) ()

getPaymentGatewayInterface_super :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface_super object_ = (getPaymentGatewayInterface_impl (javaCast object_ :: PaymentGatewayView))

getPaymentGatewayInterface_impl :: PaymentGatewayView -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface_impl this = do
        pure ((jget (this).paymentGatewayInterface))


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: PaymentGatewayView))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: PaymentGatewayView))

toHashMap_impl :: PaymentGatewayView -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: PaymentGatewayView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: PaymentGatewayView)) a1

toXmlNode_impl :: PaymentGatewayView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "toXmlNode")
            hashMap <- (PaymentGatewayMapping.toHashMap ((jio (PaymentGatewayMapping.new_1 (jget (this).paymentGatewayInterface)))))
            Control.Monad.void (HashMap.putAll hashMap (jio (PaymentGatewayView.toHashMap this)))
            paymentGatewayNode <- (ModDomHelper.createNodeWithValueNodes document (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) hashMap)
            pure (paymentGatewayNode)


