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
-- package org.allbinary.logic.visual.transform.template.customizer.hedges.heading
module HeadingValidation (module HeadingValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, logUtil, title, logo)
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
import qualified HeadingData -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogoData -- org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData
import qualified LogoValidation -- org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation
import qualified TitleData -- org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData
import qualified TitleValidation -- org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data HeadingValidation = HeadingValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    , title :: IORef (TitleValidation.TitleValidation)
    , logo :: IORef (LogoValidation.LogoValidation)
    }

instance JavaNull HeadingValidation where
    javaNull = javaNullRecord "HeadingValidation"

instance JavaEquals HeadingValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HeadingValidation where
    (==) = jrecordEquals

instance JavaObjectClass HeadingValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HeadingValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    title <- newIORef javaNull
    logo <- newIORef javaNull
    let this = HeadingValidation header_ base logUtil title logo
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: HeadingValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.title (javaNull)
    jset this.logo (javaNull)
    pure ()

new_ :: IO HeadingValidation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HeadingValidation -> IO ()
init_ this = do
        Validation.init_ this.base
        initFields_ this
        assignedValue <- (TitleValidation.new_)
        jset (this).title (assignedValue)
        assignedValue <- (LogoValidation.new_)
        jset (this).logo (assignedValue)
        pure ()

new_1 :: Document.Document -> IO HeadingValidation
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: HeadingValidation -> Document.Document -> IO ()
init_1 this document = do
        Validation.init_ this.base
        initFields_ this
        headingNodeList <- (Document.getElementsByTagName document (HeadingData.nAME))
        titleNode <- (DomSearchHelper.getNode (jget ((jio (TitleData.getInstance))).nAME) (jio (NodeList.getChildNodes ((jio (NodeList.item headingNodeList 0))))))
        logoNode <- (DomSearchHelper.getNode (jget ((jio (LogoData.getInstance))).nAME) (jio (NodeList.getChildNodes ((jio (NodeList.item headingNodeList 0))))))
        assignedValue <- (TitleValidation.new_1 titleNode)
        jset (this).title (assignedValue)
        assignedValue <- (LogoValidation.new_1 logoNode)
        jset (this).logo (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO HeadingValidation
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: HeadingValidation -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        Validation.init_ this.base
        initFields_ this
        Control.Monad.void (HeadingValidation.getFormData this hashMap)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: HeadingValidation))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: HeadingValidation)) a1

getFormData_impl :: HeadingValidation -> HashMap.HashMap -> IO (())
getFormData_impl this hashMap = do
        assignedValue <- (TitleValidation.new_1 hashMap)
        jset (this).title (assignedValue)
        assignedValue <- (LogoValidation.new_1 hashMap)
        jset (this).logo (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: HeadingValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: HeadingValidation))

isValid_impl :: HeadingValidation -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            valid <- newIORef (True)
            titleValid <- newIORef (True)
            logoValid <- newIORef (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).iS_VALID))
            when (Prelude.not (jio (TitleValidation.isValid ((jget (this).title))))) $ do
                jset titleValid (False)
            if (Prelude.not (jio (LogoValidation.isValid ((jget (this).logo))))) then do
                jset logoValid (False)
            else do
                Control.Monad.void (LogoValidation.processLogoFile ((jget (this).logo)))
            when ((Prelude.not (jget titleValid)) && (Prelude.not (jget logoValid))) $ do
                jset valid (False)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HeadingValidation: " ++ javaToString (jget valid)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
            pure ((jget valid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: HeadingValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: HeadingValidation))

validationInfo_impl :: HeadingValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            valid <- newIORef (True)
            titleValid <- newIORef (True)
            logoValid <- newIORef (True)
            stringBuffer <- (StringMaker.new_)
            when (Prelude.not (jio (TitleValidation.isValid ((jget (this).title))))) $ do
                jset titleValid (False)
            when (Prelude.not (jio (LogoValidation.isValid ((jget (this).logo))))) $ do
                jset logoValid (False)
            when ((Prelude.not (jget titleValid)) && (Prelude.not (jget logoValid))) $ do
                jset valid (False)
            when (Prelude.not (jget valid)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Include a title and/or logo for the header.")
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: HeadingValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: HeadingValidation))

toValidationInfoDoc_impl :: HeadingValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: HeadingValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: HeadingValidation)) a1

toValidationInfoNode_impl :: HeadingValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: HeadingValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: HeadingValidation)) a1

toXmlNode_impl :: HeadingValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (HeadingData.nAME))
        Control.Monad.void (Node.appendChild node (jio (LogoValidation.toXmlNode ((jget (this).logo)) document)))
        Control.Monad.void (Node.appendChild node (jio (TitleValidation.toXmlNode ((jget (this).title)) document)))
        pure (node)


