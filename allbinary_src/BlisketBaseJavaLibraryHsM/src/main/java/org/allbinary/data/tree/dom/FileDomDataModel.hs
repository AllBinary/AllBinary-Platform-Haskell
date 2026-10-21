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
module FileDomDataModel where

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
import qualified FileTableMapping -- same package or java.lang
import qualified ModDomHelper -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified DomNodeInterface

-- implements DomNodeInterface
data FileDomDataModel = FileDomDataModel
    { header_ :: JavaHeader
    , file :: IORef (AbFile.AbFile)
    }

instance JavaNull FileDomDataModel where
    javaNull = javaNullRecord "FileDomDataModel"

instance JavaEquals FileDomDataModel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileDomDataModel where
    (==) = jrecordEquals

instance JavaObjectClass FileDomDataModel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileDomDataModel
newRecord_ = do
    header_ <- newJavaHeader
    file <- newIORef javaNull
    let this = FileDomDataModel header_ file
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: FileDomDataModel -> IO ()
initFields_ this = do
    jset this.file (javaNull)
    pure ()

new_1 :: AbFile.AbFile -> IO FileDomDataModel
new_1 file = do
    this <- newRecord_
    init_1 this file
    pure this

init_1 :: FileDomDataModel -> AbFile.AbFile -> IO ()
init_1 this file = do
        initFields_ this
        jset (this).file (file)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: FileDomDataModel))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: FileDomDataModel)) a1

toXmlNode_impl :: FileDomDataModel -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        let tableMappingInterface = (javaCast (jio (FileTableMapping.new_1 (jget (this).file))) :: TableMappingInterface.TableMappingInterface)
        hashMap <- (TableMappingInterface.toHashMap tableMappingInterface)
        (ModDomHelper.createNodeWithValueNodes document "file" hashMap)


