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
-- package views.business.context.modules.storefront.customizer.bodies.generic
module GenericBodyCustomizerView (module GenericBodyCustomizerView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, view, view_super, view_impl, logUtil, body, nAME)
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
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified PageData -- org.allbinary.business.page.PageData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified StoreTransformer -- org.allbinary.logic.visual.transform.StoreTransformer
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified GenericBodyValidation -- org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation
import qualified TransformTemplateCustomizerUtil -- org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil
import qualified StringEscapeUtils -- org.apache.commons.lang3.StringEscapeUtils
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data GenericBodyCustomizerView = GenericBodyCustomizerView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , body :: IORef (GenericBodyValidation.GenericBodyValidation)
    }

instance JavaNull GenericBodyCustomizerView where
    javaNull = javaNullRecord "GenericBodyCustomizerView"

instance JavaEquals GenericBodyCustomizerView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericBodyCustomizerView where
    (==) = jrecordEquals

instance JavaObjectClass GenericBodyCustomizerView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "None"

newRecord_ :: IO GenericBodyCustomizerView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    body <- newIORef javaNull
    let this = GenericBodyCustomizerView header_ base logUtil body
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: GenericBodyCustomizerView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.body (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO GenericBodyCustomizerView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: GenericBodyCustomizerView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: GenericBodyCustomizerView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: GenericBodyCustomizerView))

addDomNodeInterfaces_impl :: GenericBodyCustomizerView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast (jget (this).body) :: DomNodeInterface.DomNodeInterface))
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericBodyCustomizerView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericBodyCustomizerView)) a1

toXmlNode_impl :: GenericBodyCustomizerView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        pageName <- newIORef =<< (TransformTemplateCustomizerUtil.getPageNameHack ((jio (TransformTemplateCustomizerUtil.getInstance))) (jio (TransformInfoInterface.getName ((jio (HttpStoreComponentView.getTransformInfoInterface this))))) (jio (WeblisketSession.getStoreName ((jio (HttpStoreComponentView.getWeblisketSession this))))))
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget pageName))) $ do
            jset pageName (GenericBodyCustomizerView.nAME)
        (ModDomHelper.createNameValueNodes_3 document (jget ((jio (PageData.getInstance))).nAME) (jget pageName))


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: GenericBodyCustomizerView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: GenericBodyCustomizerView))

view_impl :: GenericBodyCustomizerView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (GenericBodyCustomizerView.addDomNodeInterfaces this)
            success <- (XmlDocumentHelper.toString (jio (HttpStoreComponentView.getDoc this)))
            result <- (StoreTransformer.translate ((jio (StoreTransformer.new_2 (jget (this).base.base.abeClientInformation) (jio (HttpStoreComponentView.getTransformInfoInterface this))))) success)
            (StringEscapeUtils.unescapeHtml3 result)


