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
module ShippingAddressView (module ShippingAddressView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRequest, getRequest_super, getRequest_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, request, streetAddress)
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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView
import qualified StatesView -- views.generic.address.StatesView

-- implements DomNodeInterface
data ShippingAddressView = ShippingAddressView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , streetAddress :: IORef (StreetAddress.StreetAddress)
    }

instance JavaNull ShippingAddressView where
    javaNull = javaNullRecord "ShippingAddressView"

instance JavaEquals ShippingAddressView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingAddressView where
    (==) = jrecordEquals

instance JavaObjectClass ShippingAddressView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingAddressView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    streetAddress <- newIORef javaNull
    let this = ShippingAddressView header_ base logUtil request streetAddress
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getRequest" (\() -> getRequest_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: ShippingAddressView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.streetAddress (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO ShippingAddressView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: ShippingAddressView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let httpTransformInfoInterface = (javaCast (jio (HttpStoreComponentView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        jset (this).request ((javaCast (jio (TransformInfoHttpInterface.getRequest ((jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


getRequest :: (JavaObjectClass this_) => this_ -> IO (HttpServletRequest.HttpServletRequest)
getRequest object_ = jmethod object_ "getRequest" (\() -> (getRequest_impl (javaCast object_ :: ShippingAddressView))) ()

getRequest_super :: (JavaObjectClass this_) => this_ -> IO (HttpServletRequest.HttpServletRequest)
getRequest_super object_ = (getRequest_impl (javaCast object_ :: ShippingAddressView))

getRequest_impl :: ShippingAddressView -> IO (HttpServletRequest.HttpServletRequest)
getRequest_impl this = do
        pure ((jget (this).request))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ShippingAddressView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ShippingAddressView)) a1

toXmlNode_impl :: ShippingAddressView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            formNode <- (Document.createElement document (StreetAddressData.fORM))
            Control.Monad.void (Node.appendChild formNode (jio (StreetAddress.toXmlNode ((jget (this).streetAddress)) document)))
            pure (formNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: ShippingAddressView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: ShippingAddressView))

addDomNodeInterfaces_impl :: ShippingAddressView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast (jio (StatesView.new_)) :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: ShippingAddressView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: ShippingAddressView))

view_impl :: ShippingAddressView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (ShippingAddressView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


