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
-- package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail
module EditCssStyleValidation (module EditCssStyleValidation, module CssStyleValidation) where

import CssStyleValidation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toXmlNode, toXmlNode_super, toXmlNode_impl)
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
import qualified BasicArrayList -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified StyleData -- org.allbinary.logic.visual.dhtml.style.StyleData
import qualified StylesData -- org.allbinary.logic.visual.dhtml.style.StylesData
import qualified ColorsView -- org.allbinary.logic.visual.dhtml.style.color.ColorsView
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified CssStyleValidation

-- implements ValidationInterface
-- implements DomNodeInterface
data EditCssStyleValidation = EditCssStyleValidation
    { header_ :: JavaHeader
    , base :: CssStyleValidation.CssStyleValidation
    }

instance JavaNull EditCssStyleValidation where
    javaNull = javaNullRecord "EditCssStyleValidation"

instance JavaEquals EditCssStyleValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EditCssStyleValidation where
    (==) = jrecordEquals

instance JavaObjectClass EditCssStyleValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EditCssStyleValidation
newRecord_ = do
    base <- CssStyleValidation.newRecord_
    let header_ = base.header_
    let this = EditCssStyleValidation header_ base
    jregisterLevel header_ this
    ValidationInterface.registerInterface_ header_
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: EditCssStyleValidation -> IO ()
initFields_ this = do
    pure ()

new_ :: IO EditCssStyleValidation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EditCssStyleValidation -> IO ()
init_ this = do
        CssStyleValidation.init_ this.base
        initFields_ this
        pure ()
        pure ()

new_1 :: Document.Document -> IO EditCssStyleValidation
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: EditCssStyleValidation -> Document.Document -> IO ()
init_1 this document = do
        CssStyleValidation.init_1 this.base (document)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO EditCssStyleValidation
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: EditCssStyleValidation -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        CssStyleValidation.init_1 this.base (hashMap)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: EditCssStyleValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: EditCssStyleValidation))

isValid_impl :: EditCssStyleValidation -> IO (Bool)
isValid_impl this = do
        (CssStyleValidation.isValid_super this.base)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: EditCssStyleValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: EditCssStyleValidation))

validationInfo_impl :: EditCssStyleValidation -> IO (String)
validationInfo_impl this = do
        (CssStyleValidation.validationInfo_super this.base)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: EditCssStyleValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: EditCssStyleValidation))

toValidationInfoDoc_impl :: EditCssStyleValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: EditCssStyleValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: EditCssStyleValidation)) a1

toValidationInfoNode_impl :: EditCssStyleValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: EditCssStyleValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: EditCssStyleValidation)) a1

toXmlNode_impl :: EditCssStyleValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget ((jio (StylesData.getInstance))).nAME))
        styleNode <- (Document.createElement document (jget ((jio (StyleData.getInstance))).nAME))
        Control.Monad.void (Node.appendChild node styleNode)
        Control.Monad.void (Node.appendChild styleNode (jio (ColorsView.toXmlNode ((jio (ColorsView.new_))) document)))
        size <- (BasicArrayList.size ((jget (this).base.cssStyleElementVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let styleDomNodeInterface = (javaCast (jio (BasicArrayList.get ((jget this.base.cssStyleElementVector)) i)) :: DomNodeInterface.DomNodeInterface)
            Control.Monad.void (Node.appendChild styleNode (jio (DomNodeInterface.toXmlNode styleDomNodeInterface document)))
        pure (node)


