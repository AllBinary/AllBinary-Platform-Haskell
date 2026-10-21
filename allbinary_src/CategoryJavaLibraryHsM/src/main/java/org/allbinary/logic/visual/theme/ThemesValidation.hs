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
-- package org.allbinary.logic.visual.theme
module ThemesValidation (module ThemesValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, themeVector)
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
import qualified ThemesData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data ThemesValidation = ThemesValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , themeVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ThemesValidation where
    javaNull = javaNullRecord "ThemesValidation"

instance JavaEquals ThemesValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThemesValidation where
    (==) = jrecordEquals

instance JavaObjectClass ThemesValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ThemesValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    themeVector <- newIORef javaNull
    let this = ThemesValidation header_ base themeVector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: ThemesValidation -> IO ()
initFields_ this = do
    jset this.themeVector (javaNull)
    pure ()

new_ :: IO ThemesValidation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThemesValidation -> IO ()
init_ this = do
        Validation.init_ this.base
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).themeVector (assignedValue)
        pure ()

new_1 :: Node.Node -> IO ThemesValidation
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: ThemesValidation -> Node.Node -> IO ()
init_1 this node = do
        Validation.init_ this.base
        initFields_ this
        pure ()
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO ThemesValidation
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: ThemesValidation -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        Validation.init_ this.base
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: ThemesValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: ThemesValidation))

isValid_impl :: ThemesValidation -> IO (Bool)
isValid_impl this = do
        pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: ThemesValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: ThemesValidation))

validationInfo_impl :: ThemesValidation -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: ThemesValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: ThemesValidation))

toValidationInfoDoc_impl :: ThemesValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: ThemesValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: ThemesValidation)) a1

toValidationInfoNode_impl :: ThemesValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ThemesValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ThemesValidation)) a1

toXmlNode_impl :: ThemesValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget ((jio (ThemesData.getInstance))).nAME))
        size <- (BasicArrayList.size ((jget (this).themeVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let themeDomNodeInterface = (javaCast (jio (BasicArrayList.get ((jget (this).themeVector)) i)) :: DomNodeInterface.DomNodeInterface)
            Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode themeDomNodeInterface document)))
        pure (node)


