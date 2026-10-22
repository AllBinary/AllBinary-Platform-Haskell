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
-- package org.allbinary.business.user
module UserDomNode where

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
import qualified UserData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data UserDomNode = UserDomNode
    { header_ :: JavaHeader
    , dataMappingInterface :: IORef (TableMappingInterface.TableMappingInterface)
    }

instance JavaNull UserDomNode where
    javaNull = javaNullRecord "UserDomNode"

instance JavaEquals UserDomNode where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserDomNode where
    (==) = jrecordEquals

instance JavaObjectClass UserDomNode where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserDomNode
newRecord_ = do
    header_ <- newJavaHeader
    dataMappingInterface <- newIORef javaNull
    let this = UserDomNode header_ dataMappingInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: UserDomNode -> IO ()
initFields_ this = do
    jset this.dataMappingInterface (javaNull)
    pure ()

new_1 :: TableMappingInterface.TableMappingInterface -> IO UserDomNode
new_1 dataMappingInterface = do
    this <- newRecord_
    init_1 this dataMappingInterface
    pure this

init_1 :: UserDomNode -> TableMappingInterface.TableMappingInterface -> IO ()
init_1 this dataMappingInterface = do
        initFields_ this
        jset (this).dataMappingInterface (dataMappingInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: UserDomNode))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: UserDomNode)) a1

toXmlNode_impl :: UserDomNode -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        hashMap <- (TableMappingInterface.toHashMap ((jget (this).dataMappingInterface)))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED) eMPTY_STRING)
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).eNCRYPTION) eMPTY_STRING)
        Control.Monad.void (HashMap.put hashMap (UserData.pASSWORD) eMPTY_STRING)
        (ModDomHelper.createNameValueNodes_3 document (UserData.nAME) hashMap)


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: UserDomNode))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: UserDomNode))

toXmlDoc_impl :: UserDomNode -> IO (Document.Document)
toXmlDoc_impl this = do
        pure (javaNull)


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: UserDomNode))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: UserDomNode))

view_impl :: UserDomNode -> IO (String)
view_impl this = do
        pure (javaNull)


