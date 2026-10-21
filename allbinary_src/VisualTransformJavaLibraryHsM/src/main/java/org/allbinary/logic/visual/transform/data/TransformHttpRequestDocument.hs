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
-- package org.allbinary.logic.visual.transform.data
module TransformHttpRequestDocument where

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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified AcceptableResponseGenerator -- org.allbinary.logic.communication.http.AcceptableResponseGenerator
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified TransformDocumentInterface

-- implements TransformDocumentInterface
data TransformHttpRequestDocument = TransformHttpRequestDocument
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , baseNode :: IORef (Node.Node)
    , document :: IORef (Document.Document)
    }

instance JavaNull TransformHttpRequestDocument where
    javaNull = javaNullRecord "TransformHttpRequestDocument"

instance JavaEquals TransformHttpRequestDocument where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformHttpRequestDocument where
    (==) = jrecordEquals

instance JavaObjectClass TransformHttpRequestDocument where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

language = "en"

local = "US"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformHttpRequestDocument
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    baseNode <- newIORef javaNull
    document <- newIORef javaNull
    let this = TransformHttpRequestDocument header_ logUtil commonStrings baseNode document
    jregisterLevel header_ this
    TransformDocumentInterface.registerInterface_ header_
    jregisterMethod header_ "getBaseNode" (\() -> getBaseNode_impl this)
    jregisterMethod header_ "getDoc" (\() -> getDoc_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: TransformHttpRequestDocument -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.baseNode (javaNull)
    jset this.document (javaNull)
    pure ()

new_2 :: PageContext.PageContext -> WeblisketSession.WeblisketSession -> IO TransformHttpRequestDocument
new_2 pageContext weblisketSession = do
    this <- newRecord_
    init_2 this pageContext weblisketSession
    pure this

init_2 :: TransformHttpRequestDocument -> PageContext.PageContext -> WeblisketSession.WeblisketSession -> IO ()
init_2 this pageContext weblisketSession = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            contentType <- (AcceptableResponseGenerator.get ((jio (AcceptableResponseGenerator.getInstance))) (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
            assignedValue <- (DomDocumentHelper.create)
            jset (this).document (assignedValue)
            contentTypeNode <- (Document.createElement ((jget (this).document)) contentType)
            languageTypeNode <- (Document.createElement ((jget (this).document)) language)
            localTypeNode <- (Document.createElement ((jget (this).document)) local)
            jset (this).baseNode (localTypeNode)
            Control.Monad.void (Node.appendChild languageTypeNode localTypeNode)
            Control.Monad.void (Node.appendChild contentTypeNode languageTypeNode)
            Control.Monad.void (Document.appendChild ((jget (this).document)) contentTypeNode)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformHttpRequestDocument.log this)) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()

new_1 :: SearchRequest.SearchRequest -> IO TransformHttpRequestDocument
new_1 searchRequest = do
    this <- newRecord_
    init_1 this searchRequest
    pure this

init_1 :: TransformHttpRequestDocument -> SearchRequest.SearchRequest -> IO ()
init_1 this searchRequest = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            contentType <- (SearchRequest.getContentType searchRequest)
            assignedValue <- (DomDocumentHelper.create)
            jset (this).document (assignedValue)
            contentTypeNode <- (Document.createElement ((jget (this).document)) contentType)
            languageTypeNode <- (Document.createElement ((jget (this).document)) language)
            localTypeNode <- (Document.createElement ((jget (this).document)) local)
            jset (this).baseNode (localTypeNode)
            Control.Monad.void (Node.appendChild languageTypeNode localTypeNode)
            Control.Monad.void (Node.appendChild contentTypeNode languageTypeNode)
            Control.Monad.void (Document.appendChild ((jget (this).document)) contentTypeNode)
        pure ()


getBaseNode :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getBaseNode object_ = jmethod object_ "getBaseNode" (\() -> (getBaseNode_impl (javaCast object_ :: TransformHttpRequestDocument))) ()

getBaseNode_super :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getBaseNode_super object_ = (getBaseNode_impl (javaCast object_ :: TransformHttpRequestDocument))

getBaseNode_impl :: TransformHttpRequestDocument -> IO (Node.Node)
getBaseNode_impl this = do
        pure ((jget (this).baseNode))


getDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc object_ = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: TransformHttpRequestDocument))) ()

getDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc_super object_ = (getDoc_impl (javaCast object_ :: TransformHttpRequestDocument))

getDoc_impl :: TransformHttpRequestDocument -> IO (Document.Document)
getDoc_impl this = do
        pure ((jget (this).document))


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TransformHttpRequestDocument))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: TransformHttpRequestDocument))

log_impl :: TransformHttpRequestDocument -> IO (String)
log_impl this = do
        stringBuffer <- (StringMaker.new_)
        if ((jget (this).baseNode) /= javaNull) then do
            Control.Monad.void (StringMaker.append stringBuffer "BaseNode: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (Node.getNodeName ((jget (this).baseNode)))))
        else do
            Control.Monad.void (StringMaker.append stringBuffer "Log-Error: BaseNode is Null")
        Control.Monad.void (StringMaker.append stringBuffer "\nDocument: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (XmlDocumentHelper.toString (jget (this).document))))
        (StringMaker.toString stringBuffer)


