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
module SimpleTransform where

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
import qualified XslHelper -- same package or java.lang
import qualified StringBufferInputStream -- java.io.StringBufferInputStream
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified AbFileLocalInputStream -- org.allbinary.logic.io.AbFileLocalInputStream
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified Document -- org.w3c.dom.Document

data SimpleTransform = SimpleTransform
    { header_ :: JavaHeader
    , xsltFilePath :: IORef (AbPath.AbPath)
    , dataFilePath :: IORef (AbPath.AbPath)
    }

instance JavaNull SimpleTransform where
    javaNull = javaNullRecord "SimpleTransform"

instance JavaEquals SimpleTransform where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleTransform where
    (==) = jrecordEquals

instance JavaObjectClass SimpleTransform where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimpleTransform
newRecord_ = do
    header_ <- newJavaHeader
    xsltFilePath <- newIORef javaNull
    dataFilePath <- newIORef javaNull
    let this = SimpleTransform header_ xsltFilePath dataFilePath
    jregisterLevel header_ this
    jregisterMethod header_ "transform" (\() -> transform_impl this)
    pure this

initFields_ :: SimpleTransform -> IO ()
initFields_ this = do
    jset this.xsltFilePath (javaNull)
    jset this.dataFilePath (javaNull)
    pure ()

new_2 :: AbPath.AbPath -> AbPath.AbPath -> IO SimpleTransform
new_2 xsltFilePath dataFilePath = do
    this <- newRecord_
    init_2 this xsltFilePath dataFilePath
    pure this

init_2 :: SimpleTransform -> AbPath.AbPath -> AbPath.AbPath -> IO ()
init_2 this xsltFilePath dataFilePath = do
        initFields_ this
        jset (this).xsltFilePath (xsltFilePath)
        jset (this).dataFilePath (dataFilePath)
        pure ()


-- throws Exception
transform :: (JavaObjectClass this_) => this_ -> IO (String)
transform object_ = jmethod object_ "transform" (\() -> (transform_impl (javaCast object_ :: SimpleTransform))) ()

transform_super :: (JavaObjectClass this_) => this_ -> IO (String)
transform_super object_ = (transform_impl (javaCast object_ :: SimpleTransform))

transform_impl :: SimpleTransform -> IO (String)
transform_impl this = do
        inputStream <- (AbFileLocalInputStream.new_1 (jio (AbFile.createAbFileFromAbPath (jget (this).xsltFilePath))))
        document <- (DomDocumentHelper.create_1 (jio (AbFileLocalInputStream.new_1 (jio (AbFile.createAbFileFromAbPath (jget (this).dataFilePath))))))
        result <- (XslHelper.translate_2 ((jio (XslHelper.getInstance))) (jio (StreamSource.new_1 inputStream)) (jio (StreamSource.new_1 (jio (StringBufferInputStream.new_1 (jio (XmlDocumentHelper.toString document)))))))
        pure (result)


