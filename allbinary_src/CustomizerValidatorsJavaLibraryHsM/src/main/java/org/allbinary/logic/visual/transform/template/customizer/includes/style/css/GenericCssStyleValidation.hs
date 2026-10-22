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
-- package org.allbinary.logic.visual.transform.template.customizer.includes.style.css
module GenericCssStyleValidation (module GenericCssStyleValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, logUtil)
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
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StylesData -- org.allbinary.logic.visual.dhtml.style.StylesData
import qualified BodyData -- org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data GenericCssStyleValidation = GenericCssStyleValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull GenericCssStyleValidation where
    javaNull = javaNullRecord "GenericCssStyleValidation"

instance JavaEquals GenericCssStyleValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericCssStyleValidation where
    (==) = jrecordEquals

instance JavaObjectClass GenericCssStyleValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericCssStyleValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = GenericCssStyleValidation header_ base logUtil
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: GenericCssStyleValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO GenericCssStyleValidation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericCssStyleValidation -> IO ()
init_ this = do
        Validation.init_ this.base
        initFields_ this
        pure ()
        pure ()

new_1 :: Document.Document -> IO GenericCssStyleValidation
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: GenericCssStyleValidation -> Document.Document -> IO ()
init_1 this document = do
        Validation.init_ this.base
        initFields_ this
        nodeList <- (Document.getElementsByTagName document (jget ((jio (StylesData.getInstance))).nAME))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO GenericCssStyleValidation
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: GenericCssStyleValidation -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        Validation.init_ this.base
        initFields_ this
        Control.Monad.void (GenericCssStyleValidation.getFormData this hashMap)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: GenericCssStyleValidation))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: GenericCssStyleValidation)) a1

getFormData_impl :: GenericCssStyleValidation -> HashMap.HashMap -> IO (())
getFormData_impl this hashMap = do
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: GenericCssStyleValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: GenericCssStyleValidation))

isValid_impl :: GenericCssStyleValidation -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            let isValid = True
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).iS_VALID))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("End: " ++ javaToString isValid) this (jget ((jget (this).base.commonStrings)).iS_VALID))
            pure (isValid)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: GenericCssStyleValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: GenericCssStyleValidation))

validationInfo_impl :: GenericCssStyleValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: GenericCssStyleValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: GenericCssStyleValidation))

toValidationInfoDoc_impl :: GenericCssStyleValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: GenericCssStyleValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: GenericCssStyleValidation)) a1

toValidationInfoNode_impl :: GenericCssStyleValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericCssStyleValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericCssStyleValidation)) a1

toXmlNode_impl :: GenericCssStyleValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNameValueNodes_3 document (jget ((jio (BodyData.getInstance))).nAME) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure (node)


