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
-- package views.generic.address.billing
module BillingAddressesView (module BillingAddressesView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRequest, getRequest_super, getRequest_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, request, streetAddresses)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified BillingAddressData -- org.allbinary.business.user.address.BillingAddressData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data BillingAddressesView = BillingAddressesView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , streetAddresses :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BillingAddressesView where
    javaNull = javaNullRecord "BillingAddressesView"

instance JavaEquals BillingAddressesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BillingAddressesView where
    (==) = jrecordEquals

instance JavaObjectClass BillingAddressesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BillingAddressesView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    streetAddresses <- newIORef javaNull
    let this = BillingAddressesView header_ base logUtil request streetAddresses
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getRequest" (\() -> getRequest_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: BillingAddressesView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.streetAddresses (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO BillingAddressesView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: BillingAddressesView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let httpTransformInfoInterface = (javaCast (jio (HttpStoreComponentView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        jset (this).request ((javaCast (jio (TransformInfoHttpInterface.getRequest ((jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


getRequest :: (JavaObjectClass this_) => this_ -> IO (HttpServletRequest.HttpServletRequest)
getRequest object_ = jmethod object_ "getRequest" (\() -> (getRequest_impl (javaCast object_ :: BillingAddressesView))) ()

getRequest_super :: (JavaObjectClass this_) => this_ -> IO (HttpServletRequest.HttpServletRequest)
getRequest_super object_ = (getRequest_impl (javaCast object_ :: BillingAddressesView))

getRequest_impl :: BillingAddressesView -> IO (HttpServletRequest.HttpServletRequest)
getRequest_impl this = do
        pure ((jget (this).request))


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BillingAddressesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BillingAddressesView)) a1

toXmlNode_impl :: BillingAddressesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            billingAddressesNode <- (Document.createElement document (BillingAddressData.mULTIPLE))
            size <- (BasicArrayList.size ((jget (this).streetAddresses)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let streetAddress = (javaCast (jio (BasicArrayList.get ((jget (this).streetAddresses)) index)) :: StreetAddress.StreetAddress)
                Control.Monad.void (Node.appendChild billingAddressesNode (jio (StreetAddress.toXmlNode streetAddress document)))
            Control.Monad.void (Node.appendChild billingAddressesNode (jio (ModDomHelper.createNameValueNodes_3 document (StreetAddressData.nUMBEROFADDRESSES) (javaToString (Prelude.fromIntegral ((jio (BasicArrayList.size ((jget this.streetAddresses))))) :: Int)))))
            pure (billingAddressesNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: BillingAddressesView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: BillingAddressesView))

addDomNodeInterfaces_impl :: BillingAddressesView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: BillingAddressesView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: BillingAddressesView))

view_impl :: BillingAddressesView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (BillingAddressesView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


