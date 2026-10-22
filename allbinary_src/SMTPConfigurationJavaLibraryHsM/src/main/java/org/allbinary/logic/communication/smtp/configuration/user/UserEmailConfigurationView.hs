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
-- package org.allbinary.logic.communication.smtp.configuration.user
module UserEmailConfigurationView where

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
import qualified UserEmailConfigurationInterface -- same package or java.lang
import qualified UserEmailConfiguration -- same package or java.lang
import qualified UserEmailConfigurationMapping -- same package or java.lang
import qualified UserEmailConfigurationData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventsConfigurationData -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData
import qualified UserEmailEventsConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface
import qualified UserEmailEventsConfigurationView -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data UserEmailConfigurationView = UserEmailConfigurationView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , userEmailConfigurationInterface :: IORef (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
    }

instance JavaNull UserEmailConfigurationView where
    javaNull = javaNullRecord "UserEmailConfigurationView"

instance JavaEquals UserEmailConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    userEmailConfigurationInterface <- newIORef javaNull
    let this = UserEmailConfigurationView header_ logUtil commonStrings userEmailConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getEmailConfigurationInterface" (\() -> getEmailConfigurationInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: UserEmailConfigurationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.userEmailConfigurationInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO UserEmailConfigurationView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: UserEmailConfigurationView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).userEmailConfigurationInterface ((javaCast (jio (UserEmailConfiguration.new_)) :: UserEmailConfigurationInterface.UserEmailConfigurationInterface))
        childNodeList <- (Node.getChildNodes node)
        userEmailEventsConfigurationNode <- (DomSearchHelper.getNodeNoThrow (UserEmailEventsConfigurationData.nAME) childNodeList)
        userEmailEventsConfigurationView <- (UserEmailEventsConfigurationView.new_1 userEmailEventsConfigurationNode)
        Control.Monad.void (UserEmailConfigurationInterface.setUserEmailEventsConfigurationInterface ((jget (this).userEmailConfigurationInterface)) (jio (UserEmailEventsConfigurationView.getUserEmailEventsConfigurationInterface userEmailEventsConfigurationView)))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO UserEmailConfigurationView
new_1 userEmailConfigurationInterface = do
    this <- newRecord_
    init_1 this userEmailConfigurationInterface
    pure this

init_1 :: UserEmailConfigurationView -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO ()
init_1 this userEmailConfigurationInterface = do
        initFields_ this
        jset (this).userEmailConfigurationInterface (userEmailConfigurationInterface)
        pure ()


getEmailConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getEmailConfigurationInterface object_ = jmethod object_ "getEmailConfigurationInterface" (\() -> (getEmailConfigurationInterface_impl (javaCast object_ :: UserEmailConfigurationView))) ()

getEmailConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getEmailConfigurationInterface_super object_ = (getEmailConfigurationInterface_impl (javaCast object_ :: UserEmailConfigurationView))

getEmailConfigurationInterface_impl :: UserEmailConfigurationView -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getEmailConfigurationInterface_impl this = do
        pure ((jget (this).userEmailConfigurationInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: UserEmailConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: UserEmailConfigurationView)) a1

toXmlNode_impl :: UserEmailConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        emailConfigurationMapping <- (UserEmailConfigurationMapping.new_1 (jget (this).userEmailConfigurationInterface))
        hashMap <- (UserEmailConfigurationMapping.toHashMap emailConfigurationMapping)
        node <- (ModDomHelper.createNameValueNodes_3 document (UserEmailConfigurationData.nAME) hashMap)
        userEmailConfigurationInterface <- (UserEmailConfigurationView.getEmailConfigurationInterface this)
        userEmailEventsConfigurationInterface <- (UserEmailConfigurationInterface.getUserEmailEventsConfigurationInterface userEmailConfigurationInterface)
        userEmailEventsConfigurationView <- (UserEmailEventsConfigurationView.new_1 userEmailEventsConfigurationInterface)
        Control.Monad.void (Node.appendChild node (jio (UserEmailEventsConfigurationView.toXmlNode userEmailEventsConfigurationView document)))
        pure (node)


