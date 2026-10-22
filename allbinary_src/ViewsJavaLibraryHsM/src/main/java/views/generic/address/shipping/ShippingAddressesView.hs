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
-- package views.generic.address.shipping
module ShippingAddressesView (module ShippingAddressesView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRequest, getRequest_super, getRequest_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, request, streetAddressList)
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
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
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
data ShippingAddressesView = ShippingAddressesView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , streetAddressList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ShippingAddressesView where
    javaNull = javaNullRecord "ShippingAddressesView"

instance JavaEquals ShippingAddressesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingAddressesView where
    (==) = jrecordEquals

instance JavaObjectClass ShippingAddressesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingAddressesView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    streetAddressList <- newIORef javaNull
    let this = ShippingAddressesView header_ base logUtil request streetAddressList
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getRequest" (\() -> getRequest_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: ShippingAddressesView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.streetAddressList (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO ShippingAddressesView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: ShippingAddressesView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let httpTransformInfoInterface = (javaCast (jio (HttpStoreComponentView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        jset (this).request ((javaCast (jio (TransformInfoHttpInterface.getRequest ((jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


getRequest :: (JavaObjectClass this_) => this_ -> IO (HttpServletRequest.HttpServletRequest)
getRequest object_ = jmethod object_ "getRequest" (\() -> (getRequest_impl (javaCast object_ :: ShippingAddressesView))) ()

getRequest_super :: (JavaObjectClass this_) => this_ -> IO (HttpServletRequest.HttpServletRequest)
getRequest_super object_ = (getRequest_impl (javaCast object_ :: ShippingAddressesView))

getRequest_impl :: ShippingAddressesView -> IO (HttpServletRequest.HttpServletRequest)
getRequest_impl this = do
        pure ((jget (this).request))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ShippingAddressesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ShippingAddressesView)) a1

toXmlNode_impl :: ShippingAddressesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            billingAddressesNode <- (Document.createElement document (ShippingAddressData.mULTIPLE))
            size <- (BasicArrayList.size ((jget (this).streetAddressList)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let streetAddress = (javaCast (jio (BasicArrayList.get ((jget (this).streetAddressList)) index)) :: StreetAddress.StreetAddress)
                Control.Monad.void (Node.appendChild billingAddressesNode (jio (StreetAddress.toXmlNode streetAddress document)))
            Control.Monad.void (Node.appendChild billingAddressesNode (jio (ModDomHelper.createNameValueNodes_3 document (StreetAddressData.nUMBEROFADDRESSES) (javaToString (Prelude.fromIntegral ((jio (BasicArrayList.size ((jget this.streetAddressList))))) :: Int)))))
            pure (billingAddressesNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: ShippingAddressesView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: ShippingAddressesView))

addDomNodeInterfaces_impl :: ShippingAddressesView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: ShippingAddressesView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: ShippingAddressesView))

view_impl :: ShippingAddressesView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (ShippingAddressesView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


