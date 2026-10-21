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
-- package org.allbinary.business.category.properties
module CategoryPropertiesValidationView (module CategoryPropertiesValidationView, module CategoryPropertiesView) where

import CategoryPropertiesView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil)
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
import qualified CategoryPropertiesInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified CategoryPropertiesView

-- implements ValidationInterface
data CategoryPropertiesValidationView = CategoryPropertiesValidationView
    { header_ :: JavaHeader
    , base :: CategoryPropertiesView.CategoryPropertiesView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CategoryPropertiesValidationView where
    javaNull = javaNullRecord "CategoryPropertiesValidationView"

instance JavaEquals CategoryPropertiesValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryPropertiesValidationView where
    (==) = jrecordEquals

instance JavaObjectClass CategoryPropertiesValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CategoryPropertiesValidationView
newRecord_ = do
    base <- CategoryPropertiesView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = CategoryPropertiesValidationView header_ base logUtil
    jregisterLevel header_ this
    ValidationInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: CategoryPropertiesValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: CategoryPropertiesInterface.CategoryPropertiesInterface -> IO CategoryPropertiesValidationView
new_1 categoryPropertiesInterface = do
    this <- newRecord_
    init_1 this categoryPropertiesInterface
    pure this

init_1 :: CategoryPropertiesValidationView -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO ()
init_1 this categoryPropertiesInterface = do
        CategoryPropertiesView.init_1 this.base (categoryPropertiesInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: CategoryPropertiesValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: CategoryPropertiesValidationView))

isValid_impl :: CategoryPropertiesValidationView -> IO (Bool)
isValid_impl this = do
        (CategoryPropertiesInterface.isValid ((jget (this).base.categoryPropertiesInterface)))


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: CategoryPropertiesValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: CategoryPropertiesValidationView))

validationInfo_impl :: CategoryPropertiesValidationView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation info error" this "validationInfo()" e)
            pure ("Error Validating Data")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (CategoryPropertiesInterface.validationInfo ((jget (this).base.categoryPropertiesInterface)))))
            (StringMaker.toString stringBuffer)


-- throws Exception
toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: CategoryPropertiesValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: CategoryPropertiesValidationView))

toValidationInfoDoc_impl :: CategoryPropertiesValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


-- throws Exception
toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: CategoryPropertiesValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: CategoryPropertiesValidationView)) a1

toValidationInfoNode_impl :: CategoryPropertiesValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


