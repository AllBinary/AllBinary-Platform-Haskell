{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.data.tree.dom.document
module XmlDocumentHelper where

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
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified StringReader -- java.io.StringReader
import qualified StringWriter -- java.io.StringWriter
import qualified Writer -- java.io.Writer
import qualified DocumentBuilderFactory -- javax.xml.parsers.DocumentBuilderFactory
import qualified OutputKeys -- javax.xml.transform.OutputKeys
import qualified Transformer -- javax.xml.transform.Transformer
import qualified TransformerFactory -- javax.xml.transform.TransformerFactory
import qualified DOMSource -- javax.xml.transform.dom.DOMSource
import qualified StreamResult -- javax.xml.transform.stream.StreamResult
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified CharacterSetData -- org.allbinary.logic.java.characters.CharacterSetData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified InputSource -- org.xml.sax.InputSource

data XmlDocumentHelper = XmlDocumentHelper
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , iNDENT_NUMBER :: IORef (String)
    , transformer :: IORef (Transformer.Transformer)
    }

instance JavaNull XmlDocumentHelper where
    javaNull = javaNullRecord "XmlDocumentHelper"

instance JavaEquals XmlDocumentHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlDocumentHelper where
    (==) = jrecordEquals

instance JavaObjectClass XmlDocumentHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO XmlDocumentHelper
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    iNDENT_NUMBER <- newIORef ""
    transformer <- newIORef javaNull
    let this = XmlDocumentHelper header_ logUtil iNDENT_NUMBER transformer
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "format" (\() -> format_impl this)
    pure this

initFields_ :: XmlDocumentHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.iNDENT_NUMBER ("indent-number")
    jset this.transformer (javaNull)
    pure ()


getInstance :: IO (XmlDocumentHelper)
getInstance = do
        pure (XmlDocumentHelper.instance_)

new_ :: IO XmlDocumentHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: XmlDocumentHelper -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (XmlDocumentHelper.init this 4 True)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: XmlDocumentHelper))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: XmlDocumentHelper)) a1 a2

init_impl :: XmlDocumentHelper -> Int -> Bool -> IO (())
init_impl this indent ignoreDeclaration = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iNIT) e)
            ) $ do
            booleanFactory <- (BooleanFactory.getInstance)
            transformerFactory <- (TransformerFactory.newInstance)
            Control.Monad.void (TransformerFactory.setAttribute transformerFactory (jget (this).iNDENT_NUMBER) indent)
            assignedValue <- (TransformerFactory.newTransformer transformerFactory)
            jset (this).transformer (assignedValue)
            Control.Monad.void (Transformer.setOutputProperty ((jget (this).transformer)) (OutputKeys.eNCODING) (jget ((jio (CharacterSetData.getInstance))).uTF_8))
            Control.Monad.void (Transformer.setOutputProperty ((jget (this).transformer)) (OutputKeys.oMIT_XML_DECLARATION) (if ignoreDeclaration then (jget (booleanFactory).yES) else (jget (booleanFactory).nO)))
            Control.Monad.void (Transformer.setOutputProperty ((jget (this).transformer)) (OutputKeys.iNDENT) (jget (booleanFactory).yES))
        pure ()


-- throws Exception
format :: (JavaObjectClass this_) => this_ -> String -> IO (String)
format object_ a1 = jmethod object_ "format" (\() -> (format_impl (javaCast object_ :: XmlDocumentHelper))) () a1

format_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
format_super object_ a1 = (format_impl (javaCast object_ :: XmlDocumentHelper)) a1

format_impl :: XmlDocumentHelper -> String -> IO (String)
format_impl this xmlString = do
        src <- (InputSource.new_1 (jio (StringReader.new_1 xmlString)))
        document <- (DocumentBuilderFactory.parse ((jio (DocumentBuilderFactory.newDocumentBuilder ((jio (DocumentBuilderFactory.newInstance)))))) src)
        out <- (fmap (\value_ -> javaCast value_ :: Writer.Writer) (StringWriter.new_))
        Control.Monad.void (Transformer.transform ((jget (this).transformer)) (jio (DOMSource.new_1 document)) (jio (StreamResult.new_1 out)))
        (Writer.toString out)


-- throws Exception
toString :: Document.Document -> IO (String)
toString document = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            domSource <- (DOMSource.new_1 document)
            byteArrayOutputStream <- (ByteArrayOutputStream.new_)
            streamResult <- (StreamResult.new_1 byteArrayOutputStream)
            copyTransformerFactory <- (TransformerFactory.newInstance)
            copyTransformer <- (TransformerFactory.newTransformer copyTransformerFactory)
            Control.Monad.void (Transformer.transform copyTransformer domSource streamResult)
            (ByteArrayOutputStream.toString byteArrayOutputStream)


