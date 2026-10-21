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
-- package org.allbinary.logic.control.search
module SearchRequest (module SearchRequest, module AbContext) where

import AbContext hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStoreFront, setStoreFront_super, setStoreFront_impl, setParams, setParams_super, setParams_impl, setXslFile, setXslFile_super, setXslFile_impl, setFileBaseName, setFileBaseName_super, setFileBaseName_impl, setContentType, setContentType_super, setContentType_impl, getStoreFront, getStoreFront_super, getStoreFront_impl, getParams, getParams_super, getParams_impl, getXslFile, getXslFile_super, getXslFile_impl, getFileBaseName, getFileBaseName_super, getFileBaseName_impl, getContentType, getContentType_super, getContentType_impl, getFileBaseNameNode, getFileBaseNameNode_super, getFileBaseNameNode_impl, xslFile, pageName, contentType, searchParams, storeFront)
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
import qualified SearchParams -- same package or java.lang
import qualified SearchData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AbContext -- org.allbinary.business.context.AbContext
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data SearchRequest = SearchRequest
    { header_ :: JavaHeader
    , base :: AbContext.AbContext
    , xslFile :: IORef (String)
    , pageName :: IORef (String)
    , contentType :: IORef (String)
    , searchParams :: IORef (SearchParams.SearchParams)
    , storeFront :: IORef (StoreFrontInterface.StoreFrontInterface)
    }

instance JavaNull SearchRequest where
    javaNull = javaNullRecord "SearchRequest"

instance JavaEquals SearchRequest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SearchRequest where
    (==) = jrecordEquals

instance JavaObjectClass SearchRequest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SearchRequest
newRecord_ = do
    base <- AbContext.newRecord_
    let header_ = base.header_
    xslFile <- newIORef ""
    pageName <- newIORef ""
    contentType <- newIORef ""
    searchParams <- newIORef javaNull
    storeFront <- newIORef javaNull
    let this = SearchRequest header_ base xslFile pageName contentType searchParams storeFront
    jregisterLevel header_ this
    jregisterMethod header_ "setStoreFront" (\() -> setStoreFront_impl this)
    jregisterMethod header_ "setParams" (\() -> setParams_impl this)
    jregisterMethod header_ "setXslFile" (\() -> setXslFile_impl this)
    jregisterMethod header_ "setFileBaseName" (\() -> setFileBaseName_impl this)
    jregisterMethod header_ "setContentType" (\() -> setContentType_impl this)
    jregisterMethod header_ "getStoreFront" (\() -> getStoreFront_impl this)
    jregisterMethod header_ "getParams" (\() -> getParams_impl this)
    jregisterMethod header_ "getXslFile" (\() -> getXslFile_impl this)
    jregisterMethod header_ "getFileBaseName" (\() -> getFileBaseName_impl this)
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "getFileBaseNameNode" (\() -> getFileBaseNameNode_impl this)
    pure this

initFields_ :: SearchRequest -> IO ()
initFields_ this = do
    jset this.xslFile (javaNull)
    jset this.pageName (javaNull)
    jset this.contentType (javaNull)
    jset this.searchParams (javaNull)
    jset this.storeFront (javaNull)
    pure ()

new_6 :: StoreFrontInterface.StoreFrontInterface -> SearchParams.SearchParams -> String -> String -> HashMap.HashMap -> PageContext.PageContext -> IO SearchRequest
new_6 storeFront searchParams xslFile contentType propertiesHashMap pageContext = do
    this <- newRecord_
    init_6 this storeFront searchParams xslFile contentType propertiesHashMap pageContext
    pure this

init_6 :: SearchRequest -> StoreFrontInterface.StoreFrontInterface -> SearchParams.SearchParams -> String -> String -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_6 this storeFront searchParams xslFile contentType propertiesHashMap pageContext = do
        AbContext.init_2 this.base (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).storeFront (storeFront)
        jset (this).searchParams (searchParams)
        jset (this).xslFile (xslFile)
        jset (this).pageName ((jget (this).pageName))
        jset (this).contentType (contentType)
        pure ()


setStoreFront :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (())
setStoreFront object_ a1 = jmethod object_ "setStoreFront" (\() -> (setStoreFront_impl (javaCast object_ :: SearchRequest))) () a1

setStoreFront_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (())
setStoreFront_super object_ a1 = (setStoreFront_impl (javaCast object_ :: SearchRequest)) a1

setStoreFront_impl :: SearchRequest -> StoreFrontInterface.StoreFrontInterface -> IO (())
setStoreFront_impl this storeFront = do
        jset (this).storeFront (storeFront)
        pure ()


setParams :: (JavaObjectClass this_) => this_ -> SearchParams.SearchParams -> IO (())
setParams object_ a1 = jmethod object_ "setParams" (\() -> (setParams_impl (javaCast object_ :: SearchRequest))) () a1

setParams_super :: (JavaObjectClass this_) => this_ -> SearchParams.SearchParams -> IO (())
setParams_super object_ a1 = (setParams_impl (javaCast object_ :: SearchRequest)) a1

setParams_impl :: SearchRequest -> SearchParams.SearchParams -> IO (())
setParams_impl this searchParams = do
        jset (this).searchParams (searchParams)
        pure ()


setXslFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXslFile object_ a1 = jmethod object_ "setXslFile" (\() -> (setXslFile_impl (javaCast object_ :: SearchRequest))) () a1

setXslFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXslFile_super object_ a1 = (setXslFile_impl (javaCast object_ :: SearchRequest)) a1

setXslFile_impl :: SearchRequest -> String -> IO (())
setXslFile_impl this value = do
        jset (this).xslFile (value)
        pure ()


setFileBaseName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileBaseName object_ a1 = jmethod object_ "setFileBaseName" (\() -> (setFileBaseName_impl (javaCast object_ :: SearchRequest))) () a1

setFileBaseName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileBaseName_super object_ a1 = (setFileBaseName_impl (javaCast object_ :: SearchRequest)) a1

setFileBaseName_impl :: SearchRequest -> String -> IO (())
setFileBaseName_impl this value = do
        jset (this).pageName (value)
        pure ()


setContentType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setContentType object_ a1 = jmethod object_ "setContentType" (\() -> (setContentType_impl (javaCast object_ :: SearchRequest))) () a1

setContentType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setContentType_super object_ a1 = (setContentType_impl (javaCast object_ :: SearchRequest)) a1

setContentType_impl :: SearchRequest -> String -> IO (())
setContentType_impl this value = do
        jset (this).contentType (value)
        pure ()


getStoreFront :: (JavaObjectClass this_) => this_ -> IO (StoreFrontInterface.StoreFrontInterface)
getStoreFront object_ = jmethod object_ "getStoreFront" (\() -> (getStoreFront_impl (javaCast object_ :: SearchRequest))) ()

getStoreFront_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontInterface.StoreFrontInterface)
getStoreFront_super object_ = (getStoreFront_impl (javaCast object_ :: SearchRequest))

getStoreFront_impl :: SearchRequest -> IO (StoreFrontInterface.StoreFrontInterface)
getStoreFront_impl this = do
        pure ((jget (this).storeFront))


getParams :: (JavaObjectClass this_) => this_ -> IO (SearchParams.SearchParams)
getParams object_ = jmethod object_ "getParams" (\() -> (getParams_impl (javaCast object_ :: SearchRequest))) ()

getParams_super :: (JavaObjectClass this_) => this_ -> IO (SearchParams.SearchParams)
getParams_super object_ = (getParams_impl (javaCast object_ :: SearchRequest))

getParams_impl :: SearchRequest -> IO (SearchParams.SearchParams)
getParams_impl this = do
        pure ((jget (this).searchParams))


getXslFile :: (JavaObjectClass this_) => this_ -> IO (String)
getXslFile object_ = jmethod object_ "getXslFile" (\() -> (getXslFile_impl (javaCast object_ :: SearchRequest))) ()

getXslFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getXslFile_super object_ = (getXslFile_impl (javaCast object_ :: SearchRequest))

getXslFile_impl :: SearchRequest -> IO (String)
getXslFile_impl this = do
        pure ((jget (this).xslFile))


getFileBaseName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileBaseName object_ = jmethod object_ "getFileBaseName" (\() -> (getFileBaseName_impl (javaCast object_ :: SearchRequest))) ()

getFileBaseName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileBaseName_super object_ = (getFileBaseName_impl (javaCast object_ :: SearchRequest))

getFileBaseName_impl :: SearchRequest -> IO (String)
getFileBaseName_impl this = do
        pure ((jget (this).pageName))


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: SearchRequest))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: SearchRequest))

getContentType_impl :: SearchRequest -> IO (String)
getContentType_impl this = do
        pure ((jget (this).contentType))


-- throws Exception
getFileBaseNameNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getFileBaseNameNode object_ a1 = jmethod object_ "getFileBaseNameNode" (\() -> (getFileBaseNameNode_impl (javaCast object_ :: SearchRequest))) () a1

getFileBaseNameNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getFileBaseNameNode_super object_ a1 = (getFileBaseNameNode_impl (javaCast object_ :: SearchRequest)) a1

getFileBaseNameNode_impl :: SearchRequest -> Document.Document -> IO (Node.Node)
getFileBaseNameNode_impl this document = do
        (ModDomHelper.createNameValueNodes document (SearchData.fILENAME) (jio (SearchRequest.getFileBaseName this)))


