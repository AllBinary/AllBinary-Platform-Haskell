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
module TransformDocument where

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
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified TransformDocumentInterface

-- implements TransformDocumentInterface
data TransformDocument = TransformDocument
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , baseNode :: IORef (Node.Node)
    , document :: IORef (Document.Document)
    }

instance JavaNull TransformDocument where
    javaNull = javaNullRecord "TransformDocument"

instance JavaEquals TransformDocument where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformDocument where
    (==) = jrecordEquals

instance JavaObjectClass TransformDocument where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformDocument
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    baseNode <- newIORef javaNull
    document <- newIORef javaNull
    let this = TransformDocument header_ logUtil commonStrings baseNode document
    jregisterLevel header_ this
    TransformDocumentInterface.registerInterface_ header_
    jregisterMethod header_ "getBaseNode" (\() -> getBaseNode_impl this)
    jregisterMethod header_ "getDoc" (\() -> getDoc_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: TransformDocument -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.baseNode (javaNull)
    jset this.document (javaNull)
    pure ()

new_ :: IO TransformDocument
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformDocument -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            assignedValue <- (DomDocumentHelper.create)
            jset (this).document (assignedValue)
            allbinaryNode <- (Document.createElement ((jget (this).document)) "allbinary")
            jset (this).baseNode (allbinaryNode)
            Control.Monad.void (Document.appendChild ((jget (this).document)) (jget (this).baseNode))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformDocument.log this)) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


getBaseNode :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getBaseNode object_ = jmethod object_ "getBaseNode" (\() -> (getBaseNode_impl (javaCast object_ :: TransformDocument))) ()

getBaseNode_super :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getBaseNode_super object_ = (getBaseNode_impl (javaCast object_ :: TransformDocument))

getBaseNode_impl :: TransformDocument -> IO (Node.Node)
getBaseNode_impl this = do
        pure ((jget (this).baseNode))


getDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc object_ = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: TransformDocument))) ()

getDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc_super object_ = (getDoc_impl (javaCast object_ :: TransformDocument))

getDoc_impl :: TransformDocument -> IO (Document.Document)
getDoc_impl this = do
        pure ((jget (this).document))


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TransformDocument))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: TransformDocument))

log_impl :: TransformDocument -> IO (String)
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


