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
-- III
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.logic.visual.transform.template.customizer.includes.meta
module MetaValidation (module MetaValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, logUtil, label, name, httpEquiv, content)
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
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified HtmlMetaAttributeData -- org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData
import qualified HtmlMetaAttributeDataFactory -- org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory
import qualified HtmlMetaData -- org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data MetaValidation = MetaValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    , label :: IORef (String)
    , name :: IORef (String)
    , httpEquiv :: IORef (String)
    , content :: IORef (String)
    }

instance JavaNull MetaValidation where
    javaNull = javaNullRecord "MetaValidation"

instance JavaEquals MetaValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MetaValidation where
    (==) = jrecordEquals

instance JavaObjectClass MetaValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MetaValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    label <- newIORef ""
    name <- newIORef ""
    httpEquiv <- newIORef ""
    content <- newIORef ""
    let this = MetaValidation header_ base logUtil label name httpEquiv content
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: MetaValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.label (javaNull)
    jset this.name ("")
    jset this.httpEquiv ("")
    jset this.content (javaNull)
    pure ()

new_4 :: HtmlMetaAttributeData.HtmlMetaAttributeData -> String -> String -> String -> IO MetaValidation
new_4 htmlMetaAttributeData label attributeValue contentValue = do
    this <- newRecord_
    init_4 this htmlMetaAttributeData label attributeValue contentValue
    pure this

init_4 :: MetaValidation -> HtmlMetaAttributeData.HtmlMetaAttributeData -> String -> String -> String -> IO ()
init_4 this htmlMetaAttributeData label attributeValue contentValue = do
        Validation.init_ this.base
        initFields_ this
        jset (this).label (label)
        if (jio (HtmlMetaAttributeData.equals htmlMetaAttributeData (jget ((jio (HtmlMetaAttributeDataFactory.getInstance))).hTTP_EQUIV))) then do
            jset (this).httpEquiv (attributeValue)
        else when (jio (HtmlMetaAttributeData.equals htmlMetaAttributeData (jget ((jio (HtmlMetaAttributeDataFactory.getInstance))).nAME))) $ do
            jset (this).name (attributeValue)
        jset (this).content (contentValue)
        pure ()

new_1 :: Document.Document -> IO MetaValidation
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: MetaValidation -> Document.Document -> IO ()
init_1 this document = do
        Validation.init_ this.base
        initFields_ this
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: MetaValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: MetaValidation))

isValid_impl :: MetaValidation -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            let valid = True
            pure (valid)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: MetaValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: MetaValidation))

validationInfo_impl :: MetaValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: MetaValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: MetaValidation))

toValidationInfoDoc_impl :: MetaValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: MetaValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: MetaValidation)) a1

toValidationInfoNode_impl :: MetaValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: MetaValidation))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: MetaValidation))

toHashMap_impl :: MetaValidation -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        htmlMetaAttributeDataFactory <- (HtmlMetaAttributeDataFactory.getInstance)
        Control.Monad.void (HashMap.put hashMap (jget ((jio (HtmlMetaData.getInstance))).lABEL) (jget (this).label))
        Control.Monad.void (HashMap.put hashMap (jio (HtmlMetaAttributeData.toString ((jget (htmlMetaAttributeDataFactory).nAME)))) (jget (this).name))
        Control.Monad.void (HashMap.put hashMap (jio (HtmlMetaAttributeData.toString ((jget (htmlMetaAttributeDataFactory).hTTP_EQUIV)))) (jget (this).httpEquiv))
        Control.Monad.void (HashMap.put hashMap (jio (HtmlMetaAttributeData.toString ((jget (htmlMetaAttributeDataFactory).cONTENT)))) (jget (this).content))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: MetaValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: MetaValidation)) a1

toXmlNode_impl :: MetaValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNameValueNodes_3 document (jget ((jio (HtmlMetaData.getInstance))).nAME) (jio (MetaValidation.toHashMap this)))
        pure (node)


