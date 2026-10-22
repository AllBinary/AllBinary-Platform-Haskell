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
-- package org.allbinary.data.tree.dom.document
module DomDocumentHelper where

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
import qualified InputStream -- java.io.InputStream
import qualified StringBufferInputStream -- java.io.StringBufferInputStream
import qualified DocumentBuilder -- javax.xml.parsers.DocumentBuilder
import qualified DocumentBuilderFactory -- javax.xml.parsers.DocumentBuilderFactory
import qualified Document -- org.w3c.dom.Document

data DomDocumentHelper = DomDocumentHelper
    { header_ :: JavaHeader
    }

instance JavaNull DomDocumentHelper where
    javaNull = javaNullRecord "DomDocumentHelper"

instance JavaEquals DomDocumentHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomDocumentHelper where
    (==) = jrecordEquals

instance JavaObjectClass DomDocumentHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DomDocumentHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = DomDocumentHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: DomDocumentHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DomDocumentHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DomDocumentHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: IO (())
init = do
        Control.Monad.void (System.setProperty "jdk.xml.maxElementDepth" "0")
        Control.Monad.void (System.setProperty "jdk.xml.xpathExprOpLimit" "0")
        Control.Monad.void (System.setProperty "jdk.xml.xpathTotalOpLimit" "0")
        let lIMIT = "500000"
        Control.Monad.void (System.setProperty "jdk.xml.maxGeneralEntitySizeLimit" lIMIT)
        Control.Monad.void (System.setProperty "jdk.xml.totalEntitySizeLimit" lIMIT)
        pure ()


create :: IO (Document.Document)
create = do
        handle (\(e :: JavaException) -> do
            pure (javaNull)
            ) $ do
            factory <- (DocumentBuilderFactory.newInstance)
            builder <- (DocumentBuilderFactory.newDocumentBuilder factory)
            document <- (DocumentBuilder.newDocument builder)
            pure (document)


-- Java overloads of create: calls the overload for the types of the arguments
create_1 :: (JavaObjectClass o1) => o1 -> IO (Document.Document)
create_1 a1
    | jisInstanceOf a1 (javaNull :: InputStream.InputStream) = create_1_overload1 (javaCast a1 :: InputStream.InputStream)
    | jisInstanceOf a1 (javaNull :: String) = create_1_overload2 (javaCast a1 :: String)
    | otherwise = create_1_overload2 (javaCast a1 :: String)

-- throws Exception
create_1_overload1 :: InputStream.InputStream -> IO (Document.Document)
create_1_overload1 inputStream = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            factory <- (DocumentBuilderFactory.newInstance)
            builder <- (DocumentBuilderFactory.newDocumentBuilder factory)
            document <- (DocumentBuilder.parse builder inputStream)
            pure (document)


-- throws Exception
create_1_overload2 :: String -> IO (Document.Document)
create_1_overload2 xmlString = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            factory <- (DocumentBuilderFactory.newInstance)
            builder <- (DocumentBuilderFactory.newDocumentBuilder factory)
            document <- (DocumentBuilder.parse builder (jio (StringBufferInputStream.new_1 xmlString)))
            pure (document)


