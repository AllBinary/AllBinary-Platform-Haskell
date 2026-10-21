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
module TableSearchRequest where

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
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data TableSearchRequest = TableSearchRequest
    { header_ :: JavaHeader
    , xslFile :: IORef (String)
    , pageName :: IORef (String)
    , contentType :: IORef (String)
    , keywords :: IORef (String)
    , searchParams :: IORef (SearchParams.SearchParams)
    }

instance JavaNull TableSearchRequest where
    javaNull = javaNullRecord "TableSearchRequest"

instance JavaEquals TableSearchRequest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TableSearchRequest where
    (==) = jrecordEquals

instance JavaObjectClass TableSearchRequest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TableSearchRequest
newRecord_ = do
    header_ <- newJavaHeader
    xslFile <- newIORef ""
    pageName <- newIORef ""
    contentType <- newIORef ""
    keywords <- newIORef ""
    searchParams <- newIORef javaNull
    let this = TableSearchRequest header_ xslFile pageName contentType keywords searchParams
    jregisterLevel header_ this
    jregisterMethod header_ "setKeywords" (\() -> setKeywords_impl this)
    jregisterMethod header_ "setParams" (\() -> setParams_impl this)
    jregisterMethod header_ "setXslFile" (\() -> setXslFile_impl this)
    jregisterMethod header_ "setFileBaseName" (\() -> setFileBaseName_impl this)
    jregisterMethod header_ "setContentType" (\() -> setContentType_impl this)
    jregisterMethod header_ "getKeywords" (\() -> getKeywords_impl this)
    jregisterMethod header_ "getParams" (\() -> getParams_impl this)
    jregisterMethod header_ "getXslFile" (\() -> getXslFile_impl this)
    jregisterMethod header_ "getFileBaseName" (\() -> getFileBaseName_impl this)
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "getFileBaseNameNode" (\() -> getFileBaseNameNode_impl this)
    pure this

initFields_ :: TableSearchRequest -> IO ()
initFields_ this = do
    jset this.xslFile (javaNull)
    jset this.pageName (javaNull)
    jset this.contentType (javaNull)
    jset this.keywords (javaNull)
    jset this.searchParams (javaNull)
    pure ()

new_4 :: String -> SearchParams.SearchParams -> String -> String -> IO TableSearchRequest
new_4 keywords searchParams xslFile contentType = do
    this <- newRecord_
    init_4 this keywords searchParams xslFile contentType
    pure this

init_4 :: TableSearchRequest -> String -> SearchParams.SearchParams -> String -> String -> IO ()
init_4 this keywords searchParams xslFile contentType = do
        initFields_ this
        jset (this).keywords (keywords)
        jset (this).searchParams (searchParams)
        jset (this).xslFile (xslFile)
        jset (this).pageName ((jget (this).pageName))
        jset (this).contentType (contentType)
        pure ()


setKeywords :: (JavaObjectClass this_) => this_ -> String -> IO (())
setKeywords object_ a1 = jmethod object_ "setKeywords" (\() -> (setKeywords_impl (javaCast object_ :: TableSearchRequest))) () a1

setKeywords_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setKeywords_super object_ a1 = (setKeywords_impl (javaCast object_ :: TableSearchRequest)) a1

setKeywords_impl :: TableSearchRequest -> String -> IO (())
setKeywords_impl this value = do
        jset (this).keywords (value)
        pure ()


setParams :: (JavaObjectClass this_) => this_ -> SearchParams.SearchParams -> IO (())
setParams object_ a1 = jmethod object_ "setParams" (\() -> (setParams_impl (javaCast object_ :: TableSearchRequest))) () a1

setParams_super :: (JavaObjectClass this_) => this_ -> SearchParams.SearchParams -> IO (())
setParams_super object_ a1 = (setParams_impl (javaCast object_ :: TableSearchRequest)) a1

setParams_impl :: TableSearchRequest -> SearchParams.SearchParams -> IO (())
setParams_impl this searchParams = do
        jset (this).searchParams (searchParams)
        pure ()


setXslFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXslFile object_ a1 = jmethod object_ "setXslFile" (\() -> (setXslFile_impl (javaCast object_ :: TableSearchRequest))) () a1

setXslFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXslFile_super object_ a1 = (setXslFile_impl (javaCast object_ :: TableSearchRequest)) a1

setXslFile_impl :: TableSearchRequest -> String -> IO (())
setXslFile_impl this value = do
        jset (this).xslFile (value)
        pure ()


setFileBaseName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileBaseName object_ a1 = jmethod object_ "setFileBaseName" (\() -> (setFileBaseName_impl (javaCast object_ :: TableSearchRequest))) () a1

setFileBaseName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileBaseName_super object_ a1 = (setFileBaseName_impl (javaCast object_ :: TableSearchRequest)) a1

setFileBaseName_impl :: TableSearchRequest -> String -> IO (())
setFileBaseName_impl this value = do
        jset (this).pageName (value)
        pure ()


setContentType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setContentType object_ a1 = jmethod object_ "setContentType" (\() -> (setContentType_impl (javaCast object_ :: TableSearchRequest))) () a1

setContentType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setContentType_super object_ a1 = (setContentType_impl (javaCast object_ :: TableSearchRequest)) a1

setContentType_impl :: TableSearchRequest -> String -> IO (())
setContentType_impl this value = do
        jset (this).contentType (value)
        pure ()


getKeywords :: (JavaObjectClass this_) => this_ -> IO (String)
getKeywords object_ = jmethod object_ "getKeywords" (\() -> (getKeywords_impl (javaCast object_ :: TableSearchRequest))) ()

getKeywords_super :: (JavaObjectClass this_) => this_ -> IO (String)
getKeywords_super object_ = (getKeywords_impl (javaCast object_ :: TableSearchRequest))

getKeywords_impl :: TableSearchRequest -> IO (String)
getKeywords_impl this = do
        pure ((jget (this).keywords))


getParams :: (JavaObjectClass this_) => this_ -> IO (SearchParams.SearchParams)
getParams object_ = jmethod object_ "getParams" (\() -> (getParams_impl (javaCast object_ :: TableSearchRequest))) ()

getParams_super :: (JavaObjectClass this_) => this_ -> IO (SearchParams.SearchParams)
getParams_super object_ = (getParams_impl (javaCast object_ :: TableSearchRequest))

getParams_impl :: TableSearchRequest -> IO (SearchParams.SearchParams)
getParams_impl this = do
        pure ((jget (this).searchParams))


-- throws Exception
getXslFile :: (JavaObjectClass this_) => this_ -> IO (String)
getXslFile object_ = jmethod object_ "getXslFile" (\() -> (getXslFile_impl (javaCast object_ :: TableSearchRequest))) ()

getXslFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getXslFile_super object_ = (getXslFile_impl (javaCast object_ :: TableSearchRequest))

getXslFile_impl :: TableSearchRequest -> IO (String)
getXslFile_impl this = do
        let path = (javaToString ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) ++ (jget (this).xslFile))
        pure (path)


getFileBaseName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileBaseName object_ = jmethod object_ "getFileBaseName" (\() -> (getFileBaseName_impl (javaCast object_ :: TableSearchRequest))) ()

getFileBaseName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileBaseName_super object_ = (getFileBaseName_impl (javaCast object_ :: TableSearchRequest))

getFileBaseName_impl :: TableSearchRequest -> IO (String)
getFileBaseName_impl this = do
        pure ((jget (this).pageName))


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: TableSearchRequest))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: TableSearchRequest))

getContentType_impl :: TableSearchRequest -> IO (String)
getContentType_impl this = do
        pure ((jget (this).contentType))


-- throws Exception
getFileBaseNameNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getFileBaseNameNode object_ a1 = jmethod object_ "getFileBaseNameNode" (\() -> (getFileBaseNameNode_impl (javaCast object_ :: TableSearchRequest))) () a1

getFileBaseNameNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getFileBaseNameNode_super object_ a1 = (getFileBaseNameNode_impl (javaCast object_ :: TableSearchRequest)) a1

getFileBaseNameNode_impl :: TableSearchRequest -> Document.Document -> IO (Node.Node)
getFileBaseNameNode_impl this document = do
        (ModDomHelper.createNameValueNodes document (SearchData.fILENAME) (jio (TableSearchRequest.getFileBaseName this)))


