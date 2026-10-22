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
-- package org.allbinary.data.tree.dom
module XslHelper where

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
import qualified File -- java.io.File
import qualified OutputStream -- java.io.OutputStream
import qualified StringBufferInputStream -- java.io.StringBufferInputStream
import qualified Transformer -- javax.xml.transform.Transformer
import qualified TransformerFactory -- javax.xml.transform.TransformerFactory
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified StreamResult -- javax.xml.transform.stream.StreamResult
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified Document -- org.w3c.dom.Document

data XslHelper = XslHelper
    { header_ :: JavaHeader
    }

instance JavaNull XslHelper where
    javaNull = javaNullRecord "XslHelper"

instance JavaEquals XslHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XslHelper where
    (==) = jrecordEquals

instance JavaObjectClass XslHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO XslHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = XslHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "translate_overload1" (\() -> translate_overload1_impl this)
    jregisterMethod header_ "translate_4" (\() -> translate_4_impl this)
    jregisterMethod header_ "translate_2_overload1" (\() -> translate_2_overload1_impl this)
    jregisterMethod header_ "translate_2_overload2" (\() -> translate_2_overload2_impl this)
    jregisterMethod header_ "translate_overload2" (\() -> translate_overload2_impl this)
    jregisterMethod header_ "export" (\() -> export_impl this)
    pure this

initFields_ :: XslHelper -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (XslHelper)
getInstance = do
        pure (XslHelper.instance_)

new_ :: IO XslHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: XslHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of translate: calls the overload for the types of the arguments
translate :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o3) => this_ -> o1 -> StreamSource.StreamSource -> o3 -> IO (OutputStream.OutputStream)
translate this a1 a2 a3
    | jisInstanceOf a1 (javaNull :: StreamSource.StreamSource) && jisInstanceOf a3 (javaNull :: StreamResult.StreamResult) = translate_overload1 this (javaCast a1 :: StreamSource.StreamSource) a2 (javaCast a3 :: StreamResult.StreamResult)
    | jisInstanceOf a1 (javaNull :: URIResolver.URIResolver) && jisInstanceOf a3 (javaNull :: StreamSource.StreamSource) = translate_overload2 this (javaCast a1 :: URIResolver.URIResolver) a2 (javaCast a3 :: StreamSource.StreamSource)
    | otherwise = translate_overload2 this (javaCast a1 :: URIResolver.URIResolver) a2 (javaCast a3 :: StreamSource.StreamSource)

-- throws Exception
translate_overload1 :: (JavaObjectClass this_) => this_ -> StreamSource.StreamSource -> StreamSource.StreamSource -> StreamResult.StreamResult -> IO (OutputStream.OutputStream)
translate_overload1 object_ a1 a2 a3 = jmethod object_ "translate_overload1" (\() -> (translate_overload1_impl (javaCast object_ :: XslHelper))) () a1 a2 a3

translate_overload1_super :: (JavaObjectClass this_) => this_ -> StreamSource.StreamSource -> StreamSource.StreamSource -> StreamResult.StreamResult -> IO (OutputStream.OutputStream)
translate_overload1_super object_ a1 a2 a3 = (translate_overload1_impl (javaCast object_ :: XslHelper)) a1 a2 a3

translate_overload1_impl :: XslHelper -> StreamSource.StreamSource -> StreamSource.StreamSource -> StreamResult.StreamResult -> IO (OutputStream.OutputStream)
translate_overload1_impl this xsltStreamSource xmlStreamSource streamResult = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            transformerFactory <- (TransformerFactory.newInstance)
            transformer <- (TransformerFactory.newTransformer transformerFactory xsltStreamSource)
            Control.Monad.void (Transformer.transform transformer xmlStreamSource streamResult)
            (StreamResult.getOutputStream streamResult)


-- throws Exception
translate_4 :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> StreamSource.StreamSource -> StreamSource.StreamSource -> StreamResult.StreamResult -> IO (OutputStream.OutputStream)
translate_4 object_ a1 a2 a3 a4 = jmethod object_ "translate_4" (\() -> (translate_4_impl (javaCast object_ :: XslHelper))) () a1 a2 a3 a4

translate_4_super :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> StreamSource.StreamSource -> StreamSource.StreamSource -> StreamResult.StreamResult -> IO (OutputStream.OutputStream)
translate_4_super object_ a1 a2 a3 a4 = (translate_4_impl (javaCast object_ :: XslHelper)) a1 a2 a3 a4

translate_4_impl :: XslHelper -> URIResolver.URIResolver -> StreamSource.StreamSource -> StreamSource.StreamSource -> StreamResult.StreamResult -> IO (OutputStream.OutputStream)
translate_4_impl this resolver xsltStreamSource xmlStreamSource streamResult = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            tFactory <- (TransformerFactory.newInstance)
            Control.Monad.void (TransformerFactory.setURIResolver tFactory resolver)
            transformer <- (TransformerFactory.newTransformer tFactory xsltStreamSource)
            Control.Monad.void (Transformer.transform transformer xmlStreamSource streamResult)
            (StreamResult.getOutputStream streamResult)


-- Java overloads of translate: calls the overload for the types of the arguments
translate_2 :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> StreamSource.StreamSource -> o2 -> IO (String)
translate_2 this a1 a2
    | jisInstanceOf a2 (javaNull :: Document.Document) = translate_2_overload1 this a1 (javaCast a2 :: Document.Document)
    | jisInstanceOf a2 (javaNull :: StreamSource.StreamSource) = translate_2_overload2 this a1 (javaCast a2 :: StreamSource.StreamSource)
    | otherwise = translate_2_overload2 this a1 (javaCast a2 :: StreamSource.StreamSource)

-- throws Exception
translate_2_overload1 :: (JavaObjectClass this_) => this_ -> StreamSource.StreamSource -> Document.Document -> IO (String)
translate_2_overload1 object_ a1 a2 = jmethod object_ "translate_2_overload1" (\() -> (translate_2_overload1_impl (javaCast object_ :: XslHelper))) () a1 a2

translate_2_overload1_super :: (JavaObjectClass this_) => this_ -> StreamSource.StreamSource -> Document.Document -> IO (String)
translate_2_overload1_super object_ a1 a2 = (translate_2_overload1_impl (javaCast object_ :: XslHelper)) a1 a2

translate_2_overload1_impl :: XslHelper -> StreamSource.StreamSource -> Document.Document -> IO (String)
translate_2_overload1_impl this xsltStreamSource xmlDocument = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            outputStream <- (ByteArrayOutputStream.new_)
            (OutputStream.toString ((jio (XslHelper.translate this xsltStreamSource (jio (StreamSource.new_1 (jio (StringBufferInputStream.new_1 (jio (XmlDocumentHelper.toString xmlDocument)))))) (jio (StreamResult.new_1 outputStream))))))


-- throws Exception
translate_2_overload2 :: (JavaObjectClass this_) => this_ -> StreamSource.StreamSource -> StreamSource.StreamSource -> IO (String)
translate_2_overload2 object_ a1 a2 = jmethod object_ "translate_2_overload2" (\() -> (translate_2_overload2_impl (javaCast object_ :: XslHelper))) () a1 a2

translate_2_overload2_super :: (JavaObjectClass this_) => this_ -> StreamSource.StreamSource -> StreamSource.StreamSource -> IO (String)
translate_2_overload2_super object_ a1 a2 = (translate_2_overload2_impl (javaCast object_ :: XslHelper)) a1 a2

translate_2_overload2_impl :: XslHelper -> StreamSource.StreamSource -> StreamSource.StreamSource -> IO (String)
translate_2_overload2_impl this xsltStreamSource xmlStreamSource = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            outputStream <- (ByteArrayOutputStream.new_)
            (OutputStream.toString ((jio (XslHelper.translate this xsltStreamSource xmlStreamSource (jio (StreamResult.new_1 outputStream))))))


-- throws Exception
translate_overload2 :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> StreamSource.StreamSource -> StreamSource.StreamSource -> IO (String)
translate_overload2 object_ a1 a2 a3 = jmethod object_ "translate_overload2" (\() -> (translate_overload2_impl (javaCast object_ :: XslHelper))) () a1 a2 a3

translate_overload2_super :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> StreamSource.StreamSource -> StreamSource.StreamSource -> IO (String)
translate_overload2_super object_ a1 a2 a3 = (translate_overload2_impl (javaCast object_ :: XslHelper)) a1 a2 a3

translate_overload2_impl :: XslHelper -> URIResolver.URIResolver -> StreamSource.StreamSource -> StreamSource.StreamSource -> IO (String)
translate_overload2_impl this resolver xsltStreamSource xmlStreamSource = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            outputStream <- (ByteArrayOutputStream.new_)
            (OutputStream.toString ((jio (XslHelper.translate_4 this resolver xsltStreamSource xmlStreamSource (jio (StreamResult.new_1 outputStream))))))


-- throws Exception
export :: (JavaObjectClass this_) => this_ -> File.File -> String -> Document.Document -> IO (())
export object_ a1 a2 a3 = jmethod object_ "export" (\() -> (export_impl (javaCast object_ :: XslHelper))) () a1 a2 a3

export_super :: (JavaObjectClass this_) => this_ -> File.File -> String -> Document.Document -> IO (())
export_super object_ a1 a2 a3 = (export_impl (javaCast object_ :: XslHelper)) a1 a2 a3

export_impl :: XslHelper -> File.File -> String -> Document.Document -> IO (())
export_impl this outputFile xsltFilePath xmlDocument = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (File.createNewFile outputFile)
            Control.Monad.void (XslHelper.translate this (jio (StreamSource.new_1 xsltFilePath)) (jio (StreamSource.new_1 (jio (StringBufferInputStream.new_1 (jio (XmlDocumentHelper.toString xmlDocument)))))) (jio (StreamResult.new_1 outputFile)))
        pure ()


