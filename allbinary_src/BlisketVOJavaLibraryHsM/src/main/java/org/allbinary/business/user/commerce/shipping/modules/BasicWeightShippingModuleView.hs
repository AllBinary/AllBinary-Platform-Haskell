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
module BasicWeightShippingModuleView (module BasicWeightShippingModuleView, module BasicWeightShippingModule) where

import BasicWeightShippingModule hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, toXmlDoc, toXmlDoc_super, toXmlDoc_impl, view, view_super, view_impl, logUtil)
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
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified BasicWeightShippingModule

-- implements DomNodeInterface
data BasicWeightShippingModuleView = BasicWeightShippingModuleView
    { header_ :: JavaHeader
    , base :: BasicWeightShippingModule.BasicWeightShippingModule
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicWeightShippingModuleView where
    javaNull = javaNullRecord "BasicWeightShippingModuleView"

instance JavaEquals BasicWeightShippingModuleView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicWeightShippingModuleView where
    (==) = jrecordEquals

instance JavaObjectClass BasicWeightShippingModuleView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicWeightShippingModuleView
newRecord_ = do
    base <- BasicWeightShippingModule.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = BasicWeightShippingModuleView header_ base logUtil
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: BasicWeightShippingModuleView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO BasicWeightShippingModuleView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicWeightShippingModuleView -> IO ()
init_ this = do
        BasicWeightShippingModule.init_ this.base
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: BasicWeightShippingModuleView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: BasicWeightShippingModuleView))

isValid_impl :: BasicWeightShippingModuleView -> IO (Bool)
isValid_impl this = do
        pure (javaNull)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: BasicWeightShippingModuleView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: BasicWeightShippingModuleView))

toValidationInfoDoc_impl :: BasicWeightShippingModuleView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: BasicWeightShippingModuleView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: BasicWeightShippingModuleView)) a1

toValidationInfoNode_impl :: BasicWeightShippingModuleView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: BasicWeightShippingModuleView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: BasicWeightShippingModuleView))

validationInfo_impl :: BasicWeightShippingModuleView -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicWeightShippingModuleView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicWeightShippingModuleView)) a1

toXmlNode_impl :: BasicWeightShippingModuleView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            shippingMethodNode <- (Document.createElement document (ShippingMethodData.nAME))
            Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodData.nAME) (jio (BasicWeightShippingModule.getName this)))))
            Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodData.dESCRIPTION) (jio (BasicWeightShippingModule.getDescription this)))))
            pure (shippingMethodNode)


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: BasicWeightShippingModuleView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: BasicWeightShippingModuleView))

toXmlDoc_impl :: BasicWeightShippingModuleView -> IO (Document.Document)
toXmlDoc_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "toXmlDoc" e)
            pure (javaNull)
            ) $ do
            document <- (DomDocumentHelper.create)
            pure (document)


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: BasicWeightShippingModuleView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: BasicWeightShippingModuleView))

view_impl :: BasicWeightShippingModuleView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view" e)
            pure (javaNull)
            ) $ do
            pure ((jget ((jget this.base.commonStrings)).nOT_IMPLEMENTED))


