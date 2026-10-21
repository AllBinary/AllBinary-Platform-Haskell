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
module DomDocumentFileHelper where

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
import qualified DomDocumentHelper -- same package or java.lang
import qualified Transformer -- javax.xml.transform.Transformer
import qualified TransformerFactory -- javax.xml.transform.TransformerFactory
import qualified DOMSource -- javax.xml.transform.dom.DOMSource
import qualified StreamResult -- javax.xml.transform.stream.StreamResult
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified Document -- org.w3c.dom.Document

data DomDocumentFileHelper = DomDocumentFileHelper
    { header_ :: JavaHeader
    }

instance JavaNull DomDocumentFileHelper where
    javaNull = javaNullRecord "DomDocumentFileHelper"

instance JavaEquals DomDocumentFileHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomDocumentFileHelper where
    (==) = jrecordEquals

instance JavaObjectClass DomDocumentFileHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DomDocumentFileHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = DomDocumentFileHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: DomDocumentFileHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DomDocumentFileHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DomDocumentFileHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createDocument :: AbFile.AbFile -> IO (Document.Document)
createDocument xmlFile = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            (DomDocumentHelper.create (jio (AbFileInputStream.new_1 xmlFile)))


-- throws Exception
save :: AbFile.AbFile -> Document.Document -> IO (())
save file document = do
        dataOutputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget dataOutputStream))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            copyTransformerFactory <- (TransformerFactory.newInstance)
            copyTransformer <- (TransformerFactory.newTransformer copyTransformerFactory)
            domSource <- (DOMSource.new_1 document)
            when (jio (AbFile.isFile file)) $ do
                Control.Monad.void (AbFile.delete file)
            Control.Monad.void (AbFile.createNewFile file)
            assignedValue <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) file)
            jset dataOutputStream (assignedValue)
            streamResult <- (StreamResult.new_1 (jget dataOutputStream))
            Control.Monad.void (Transformer.transform copyTransformer domSource streamResult)
            Control.Monad.void (AbDataOutputStream.flush ((jget dataOutputStream)))
        pure ()


