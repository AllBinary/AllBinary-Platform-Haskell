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
-- package org.allbinary.business.user.modules.configuration
module UserConfigurationView where

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
import qualified UserConfigurationInterface -- same package or java.lang
import qualified UserConfiguration -- same package or java.lang
import qualified UserConfigurationData -- same package or java.lang
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified TimeCreatedView -- org.allbinary.business.time.created.TimeCreatedView
import qualified TimeLastModifiedView -- org.allbinary.business.time.modified.TimeLastModifiedView
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified UserEmailConfigurationData -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData
import qualified UserEmailConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface
import qualified UserEmailConfigurationView -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data UserConfigurationView = UserConfigurationView
    { header_ :: JavaHeader
    , userConfigurationInterface :: IORef (UserConfigurationInterface.UserConfigurationInterface)
    }

instance JavaNull UserConfigurationView where
    javaNull = javaNullRecord "UserConfigurationView"

instance JavaEquals UserConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass UserConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    userConfigurationInterface <- newIORef javaNull
    let this = UserConfigurationView header_ userConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getUserConfigurationInterface" (\() -> getUserConfigurationInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: UserConfigurationView -> IO ()
initFields_ this = do
    jset this.userConfigurationInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO UserConfigurationView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: UserConfigurationView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        jset (this).userConfigurationInterface ((javaCast (jio (UserConfiguration.new_)) :: UserConfigurationInterface.UserConfigurationInterface))
        childNodeList <- (Node.getChildNodes node)
        emailConfigurationNode <- (DomSearchHelper.getNode (UserEmailConfigurationData.nAME) childNodeList)
        userEmailConfigurationView <- (UserEmailConfigurationView.new_1 emailConfigurationNode)
        let userEmailConfigurationInterface = (javaCast (jio (UserEmailConfigurationView.getEmailConfigurationInterface userEmailConfigurationView)) :: UserEmailConfigurationInterface.UserEmailConfigurationInterface)
        Control.Monad.void (UserConfigurationInterface.setUserEmailConfigurationInterface ((jget (this).userConfigurationInterface)) userEmailConfigurationInterface)
        timeCreatedNode <- (DomSearchHelper.getNode (jget ((jio (EntryData.getInstance))).tIMECREATED) childNodeList)
        timeCreatedView <- (TimeCreatedView.new_1 timeCreatedNode)
        Control.Monad.void (UserConfigurationInterface.setTimeCreated ((jget (this).userConfigurationInterface)) (jio (TimeCreatedView.getTimeCreated timeCreatedView)))
        timeLastModifiedNode <- (DomSearchHelper.getNode (jget ((jio (EntryData.getInstance))).lASTMODIFIED) childNodeList)
        timeLastModifiedView <- (TimeLastModifiedView.new_1 timeLastModifiedNode)
        Control.Monad.void (UserConfigurationInterface.setTimeLastModified ((jget (this).userConfigurationInterface)) (jio (TimeLastModifiedView.getTimeLastModified timeLastModifiedView)))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: UserConfigurationInterface.UserConfigurationInterface -> IO UserConfigurationView
new_1 userConfigurationInterface = do
    this <- newRecord_
    init_1 this userConfigurationInterface
    pure this

init_1 :: UserConfigurationView -> UserConfigurationInterface.UserConfigurationInterface -> IO ()
init_1 this userConfigurationInterface = do
        initFields_ this
        jset (this).userConfigurationInterface (userConfigurationInterface)
        pure ()


getUserConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface object_ = jmethod object_ "getUserConfigurationInterface" (\() -> (getUserConfigurationInterface_impl (javaCast object_ :: UserConfigurationView))) ()

getUserConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface_super object_ = (getUserConfigurationInterface_impl (javaCast object_ :: UserConfigurationView))

getUserConfigurationInterface_impl :: UserConfigurationView -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface_impl this = do
        pure ((jget (this).userConfigurationInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: UserConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: UserConfigurationView)) a1

toXmlNode_impl :: UserConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (UserConfigurationData.nAME))
        userEmailConfigurationView <- (UserEmailConfigurationView.new_1 (jio (UserConfigurationInterface.getUserEmailConfigurationInterface ((jget (this).userConfigurationInterface)))))
        Control.Monad.void (Node.appendChild node (jio (UserEmailConfigurationView.toXmlNode userEmailConfigurationView document)))
        timeCreatedView <- (TimeCreatedView.new_1 (jio (UserConfigurationInterface.getTimeCreated ((jget (this).userConfigurationInterface)))))
        Control.Monad.void (Node.appendChild node (jio (TimeCreatedView.toXmlNode timeCreatedView document)))
        timeLastModifiedView <- (TimeLastModifiedView.new_1 (jio (UserConfigurationInterface.getTimeLastModified ((jget (this).userConfigurationInterface)))))
        Control.Monad.void (Node.appendChild node (jio (TimeLastModifiedView.toXmlNode timeLastModifiedView document)))
        pure (node)


