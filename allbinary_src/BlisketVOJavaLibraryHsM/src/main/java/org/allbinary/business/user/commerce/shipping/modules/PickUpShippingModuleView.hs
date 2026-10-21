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
-- package org.allbinary.business.user.commerce.shipping.modules
module PickUpShippingModuleView (module PickUpShippingModuleView, module PickUpShippingModule) where

import PickUpShippingModule hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toXmlDoc, toXmlDoc_super, toXmlDoc_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, validationInfo, validationInfo_super, validationInfo_impl, view, view_super, view_impl, logUtil)
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
import qualified Document -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Node -- org.w3c.dom.Node
import qualified PickUpShippingModule

-- implements DomNodeInterface
data PickUpShippingModuleView = PickUpShippingModuleView
    { header_ :: JavaHeader
    , base :: PickUpShippingModule.PickUpShippingModule
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PickUpShippingModuleView where
    javaNull = javaNullRecord "PickUpShippingModuleView"

instance JavaEquals PickUpShippingModuleView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickUpShippingModuleView where
    (==) = jrecordEquals

instance JavaObjectClass PickUpShippingModuleView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PickUpShippingModuleView
newRecord_ = do
    base <- PickUpShippingModule.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PickUpShippingModuleView header_ base logUtil
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: PickUpShippingModuleView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO PickUpShippingModuleView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PickUpShippingModuleView -> IO ()
init_ this = do
        PickUpShippingModule.init_ this.base
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PickUpShippingModuleView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: PickUpShippingModuleView))

isValid_impl :: PickUpShippingModuleView -> IO (Bool)
isValid_impl this = do
        pure (javaNull)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: PickUpShippingModuleView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: PickUpShippingModuleView))

toValidationInfoDoc_impl :: PickUpShippingModuleView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: PickUpShippingModuleView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: PickUpShippingModuleView)) a1

toValidationInfoNode_impl :: PickUpShippingModuleView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: PickUpShippingModuleView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: PickUpShippingModuleView))

toXmlDoc_impl :: PickUpShippingModuleView -> IO (Document.Document)
toXmlDoc_impl this = do
        pure (javaNull)


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: PickUpShippingModuleView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: PickUpShippingModuleView)) a1

toXmlNode_impl :: PickUpShippingModuleView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            shippingMethodNode <- (Document.createElement document (ShippingMethodData.nAME))
            Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes document (ShippingMethodData.nAME) (jio (PickUpShippingModule.getName this)))))
            Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes document (ShippingMethodData.dESCRIPTION) (jio (PickUpShippingModule.getDescription this)))))
            pure (shippingMethodNode)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: PickUpShippingModuleView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: PickUpShippingModuleView))

validationInfo_impl :: PickUpShippingModuleView -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: PickUpShippingModuleView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: PickUpShippingModuleView))

view_impl :: PickUpShippingModuleView -> IO (String)
view_impl this = do
        pure (javaNull)


