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
-- package org.allbinary.logic.communication.smtp.configuration.server
module EmailServerConfigurationView where

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
import qualified EmailServerConfigurationInterface -- same package or java.lang
import qualified EmailServerConfigurationData -- same package or java.lang
import qualified EmailServerConfiguration -- same package or java.lang
import qualified EmailServerConfigurationMapping -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data EmailServerConfigurationView = EmailServerConfigurationView
    { header_ :: JavaHeader
    , emailServerConfigurationInterface :: IORef (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
    }

instance JavaNull EmailServerConfigurationView where
    javaNull = javaNullRecord "EmailServerConfigurationView"

instance JavaEquals EmailServerConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailServerConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass EmailServerConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EmailServerConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    emailServerConfigurationInterface <- newIORef javaNull
    let this = EmailServerConfigurationView header_ emailServerConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getEmailConfigurationInterface" (\() -> getEmailConfigurationInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: EmailServerConfigurationView -> IO ()
initFields_ this = do
    jset this.emailServerConfigurationInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO EmailServerConfigurationView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: EmailServerConfigurationView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        childNodeList <- (Node.getChildNodes node)
        server <- (DomNodeHelper.getTextNodeValue (EmailServerConfigurationData.sERVER) childNodeList)
        accountName <- (DomNodeHelper.getTextNodeValue (EmailServerConfigurationData.aCCOUNT) childNodeList)
        password <- (DomNodeHelper.getTextNodeValue (EmailServerConfigurationData.pASSWORD) childNodeList)
        jset (this).emailServerConfigurationInterface ((javaCast (jio (EmailServerConfiguration.new_3 accountName password server)) :: EmailServerConfigurationInterface.EmailServerConfigurationInterface))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO EmailServerConfigurationView
new_1 emailServerConfigurationInterface = do
    this <- newRecord_
    init_1 this emailServerConfigurationInterface
    pure this

init_1 :: EmailServerConfigurationView -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO ()
init_1 this emailServerConfigurationInterface = do
        initFields_ this
        jset (this).emailServerConfigurationInterface (emailServerConfigurationInterface)
        pure ()


getEmailConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailConfigurationInterface object_ = jmethod object_ "getEmailConfigurationInterface" (\() -> (getEmailConfigurationInterface_impl (javaCast object_ :: EmailServerConfigurationView))) ()

getEmailConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailConfigurationInterface_super object_ = (getEmailConfigurationInterface_impl (javaCast object_ :: EmailServerConfigurationView))

getEmailConfigurationInterface_impl :: EmailServerConfigurationView -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailConfigurationInterface_impl this = do
        pure ((jget (this).emailServerConfigurationInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: EmailServerConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: EmailServerConfigurationView)) a1

toXmlNode_impl :: EmailServerConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        emailConfigurationMapping <- (EmailServerConfigurationMapping.new_1 (jget (this).emailServerConfigurationInterface))
        hashMap <- (EmailServerConfigurationMapping.toHashMap emailConfigurationMapping)
        node <- (ModDomHelper.createNodeWithValueNodes document (EmailServerConfigurationData.nAME) hashMap)
        pure (node)


