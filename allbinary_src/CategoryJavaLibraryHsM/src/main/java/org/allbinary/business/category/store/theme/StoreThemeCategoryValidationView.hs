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
-- package org.allbinary.business.category.store.theme
module StoreThemeCategoryValidationView (module StoreThemeCategoryValidationView, module StoreThemeCategoryView) where

import StoreThemeCategoryView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl)
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
import qualified StoreThemeCategoryInterface -- same package or java.lang
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified StoreThemeCategoryView

-- implements ValidationInterface
data StoreThemeCategoryValidationView = StoreThemeCategoryValidationView
    { header_ :: JavaHeader
    , base :: StoreThemeCategoryView.StoreThemeCategoryView
    }

instance JavaNull StoreThemeCategoryValidationView where
    javaNull = javaNullRecord "StoreThemeCategoryValidationView"

instance JavaEquals StoreThemeCategoryValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategoryValidationView where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategoryValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreThemeCategoryValidationView
newRecord_ = do
    base <- StoreThemeCategoryView.newRecord_
    let header_ = base.header_
    let this = StoreThemeCategoryValidationView header_ base
    jregisterLevel header_ this
    ValidationInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: StoreThemeCategoryValidationView -> IO ()
initFields_ this = do
    pure ()

new_1 :: StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO StoreThemeCategoryValidationView
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: StoreThemeCategoryValidationView -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO ()
init_1 this categoryInterface = do
        StoreThemeCategoryView.init_1 this.base (javaCast categoryInterface :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: StoreThemeCategoryValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: StoreThemeCategoryValidationView))

isValid_impl :: StoreThemeCategoryValidationView -> IO (Bool)
isValid_impl this = do
        pure (True)


-- throws Exception
toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: StoreThemeCategoryValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: StoreThemeCategoryValidationView))

toValidationInfoDoc_impl :: StoreThemeCategoryValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


-- throws Exception
toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: StoreThemeCategoryValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: StoreThemeCategoryValidationView)) a1

toValidationInfoNode_impl :: StoreThemeCategoryValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: StoreThemeCategoryValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: StoreThemeCategoryValidationView))

validationInfo_impl :: StoreThemeCategoryValidationView -> IO (String)
validationInfo_impl this = do
        pure ("Error")


