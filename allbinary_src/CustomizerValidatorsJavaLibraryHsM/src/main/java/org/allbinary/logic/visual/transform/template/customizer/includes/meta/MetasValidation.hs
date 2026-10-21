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
-- II
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.logic.visual.transform.template.customizer.includes.meta
module MetasValidation (module MetasValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, logUtil, storeFrontInterface, metaValidationVector)
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
import qualified MetaValidation -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified HtmlMetaAttributeDataFactory -- org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory
import qualified HtmlMetaAttributeValuesData -- org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData
import qualified HtmlMetasData -- org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data MetasValidation = MetasValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , metaValidationVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull MetasValidation where
    javaNull = javaNullRecord "MetasValidation"

instance JavaEquals MetasValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MetasValidation where
    (==) = jrecordEquals

instance JavaObjectClass MetasValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MetasValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    metaValidationVector <- newIORef javaNull
    let this = MetasValidation header_ base logUtil storeFrontInterface metaValidationVector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: MetasValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.storeFrontInterface (javaNull)
    jset this.metaValidationVector (javaNull)
    pure ()

new_1 :: String -> IO MetasValidation
new_1 storeName = do
    this <- newRecord_
    init_1 this storeName
    pure this

init_1 :: MetasValidation -> String -> IO ()
init_1 this storeName = do
        Validation.init_ this.base
        initFields_ this
        assignedValue <- (StoreFrontFactory.getInstance storeName)
        jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).metaValidationVector (assignedValue)
        let contentValue = ((jio (StoreFrontInterface.getName ((jget (this).storeFrontInterface)))) ++ " E-Commerce Site")
        keywordsMetaValidation <- (MetaValidation.new_4 (jget ((jio (HtmlMetaAttributeDataFactory.getInstance))).nAME) "Keywords" (jget ((jio (HtmlMetaAttributeValuesData.getInstance))).kEYWORDS) contentValue)
        abstractMetaValidation <- (MetaValidation.new_4 (jget ((jio (HtmlMetaAttributeDataFactory.getInstance))).nAME) "Abstract" (jget ((jio (HtmlMetaAttributeValuesData.getInstance))).aBSTRACT) contentValue)
        descriptionMetaValidation <- (MetaValidation.new_4 (jget ((jio (HtmlMetaAttributeDataFactory.getInstance))).nAME) "Description" (jget ((jio (HtmlMetaAttributeValuesData.getInstance))).dESCRIPTION) contentValue)
        Control.Monad.void (BasicArrayList.add ((jget (this).metaValidationVector)) keywordsMetaValidation)
        Control.Monad.void (BasicArrayList.add ((jget (this).metaValidationVector)) abstractMetaValidation)
        Control.Monad.void (BasicArrayList.add ((jget (this).metaValidationVector)) descriptionMetaValidation)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Document.Document -> IO MetasValidation
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: MetasValidation -> Document.Document -> IO ()
init_1 this document = do
        Validation.init_ this.base
        initFields_ this
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: MetasValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: MetasValidation))

isValid_impl :: MetasValidation -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            let valid = True
            pure (valid)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: MetasValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: MetasValidation))

validationInfo_impl :: MetasValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: MetasValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: MetasValidation))

toValidationInfoDoc_impl :: MetasValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: MetasValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: MetasValidation)) a1

toValidationInfoNode_impl :: MetasValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: MetasValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: MetasValidation)) a1

toXmlNode_impl :: MetasValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget ((jio (HtmlMetasData.getInstance))).nAME))
        let metaArray = (javaCast (jio (BasicArrayList.toArrayType ((jget (this).metaValidationVector)) (jnewArray ((jio (BasicArrayList.size ((jget (this).metaValidationVector))))) javaNull))) :: JavaArray (MetaValidation.MetaValidation))
        let size = (jlength metaArray)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let metaValidation = (jindex metaArray (i))
            Control.Monad.void (Node.appendChild node (jio (MetaValidation.toXmlNode metaValidation document)))
        pure (node)


