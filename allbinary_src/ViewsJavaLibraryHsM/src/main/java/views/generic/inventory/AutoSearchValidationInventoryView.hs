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
-- package views.generic.inventory
module AutoSearchValidationInventoryView (module AutoSearchValidationInventoryView, module InventorySearch) where

import InventorySearch hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl)
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
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified InventorySearch

data AutoSearchValidationInventoryView = AutoSearchValidationInventoryView
    { header_ :: JavaHeader
    , base :: InventorySearch.InventorySearch
    }

instance JavaNull AutoSearchValidationInventoryView where
    javaNull = javaNullRecord "AutoSearchValidationInventoryView"

instance JavaEquals AutoSearchValidationInventoryView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AutoSearchValidationInventoryView where
    (==) = jrecordEquals

instance JavaObjectClass AutoSearchValidationInventoryView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AutoSearchValidationInventoryView
newRecord_ = do
    base <- InventorySearch.newRecord_
    let header_ = base.header_
    let this = AutoSearchValidationInventoryView header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: AutoSearchValidationInventoryView -> IO ()
initFields_ this = do
    pure ()

new_1 :: SearchRequest.SearchRequest -> IO AutoSearchValidationInventoryView
new_1 searchRequest = do
    this <- newRecord_
    init_1 this searchRequest
    pure this

init_1 :: AutoSearchValidationInventoryView -> SearchRequest.SearchRequest -> IO ()
init_1 this searchRequest = do
        InventorySearch.init_1 this.base (searchRequest)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AutoSearchValidationInventoryView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: AutoSearchValidationInventoryView))

isValid_impl :: AutoSearchValidationInventoryView -> IO (Bool)
isValid_impl this = do
        pure (True)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: AutoSearchValidationInventoryView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: AutoSearchValidationInventoryView))

toValidationInfoDoc_impl :: AutoSearchValidationInventoryView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: AutoSearchValidationInventoryView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: AutoSearchValidationInventoryView)) a1

toValidationInfoNode_impl :: AutoSearchValidationInventoryView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: AutoSearchValidationInventoryView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: AutoSearchValidationInventoryView))

validationInfo_impl :: AutoSearchValidationInventoryView -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


