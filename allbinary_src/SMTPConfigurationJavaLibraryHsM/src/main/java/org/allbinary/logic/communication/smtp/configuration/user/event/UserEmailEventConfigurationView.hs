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
-- package org.allbinary.logic.communication.smtp.configuration.user.event
module UserEmailEventConfigurationView where

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
import qualified UserEmailEventConfigurationInterface -- same package or java.lang
import qualified UserEmailEventConfigurationData -- same package or java.lang
import qualified UserEmailEventConfiguration -- same package or java.lang
import qualified UserEmailEventConfigurationMapping -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data UserEmailEventConfigurationView = UserEmailEventConfigurationView
    { header_ :: JavaHeader
    , userEmailEventConfigurationInterface :: IORef (UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface)
    }

instance JavaNull UserEmailEventConfigurationView where
    javaNull = javaNullRecord "UserEmailEventConfigurationView"

instance JavaEquals UserEmailEventConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    userEmailEventConfigurationInterface <- newIORef javaNull
    let this = UserEmailEventConfigurationView header_ userEmailEventConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getUserEmailEventConfigurationInterface" (\() -> getUserEmailEventConfigurationInterface_impl this)
    jregisterMethod header_ "setUserEmailEventConfigurationInterface" (\() -> setUserEmailEventConfigurationInterface_impl this)
    pure this

initFields_ :: UserEmailEventConfigurationView -> IO ()
initFields_ this = do
    jset this.userEmailEventConfigurationInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO UserEmailEventConfigurationView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: UserEmailEventConfigurationView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        childNodeList <- (Node.getChildNodes node)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        name <- (DomNodeHelper.getTextNodeValue_2 (UserEmailEventConfigurationData.nAME) childNodeList)
        Control.Monad.void (HashMap.put hashMap (UserEmailEventConfigurationData.nAME) name)
        eventListenerClassPath <- (DomNodeHelper.getTextNodeValue_2 (UserEmailEventConfigurationData.lISTENER_CLASSPATH) childNodeList)
        Control.Monad.void (HashMap.put hashMap (UserEmailEventConfigurationData.lISTENER_CLASSPATH) eventListenerClassPath)
        Control.Monad.void (UserEmailEventConfigurationView.setUserEmailEventConfigurationInterface this (javaCast (jio (UserEmailEventConfiguration.new_1 hashMap)) :: UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO UserEmailEventConfigurationView
new_1 userEmailEventConfigurationInterface = do
    this <- newRecord_
    init_1 this userEmailEventConfigurationInterface
    pure this

init_1 :: UserEmailEventConfigurationView -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO ()
init_1 this userEmailEventConfigurationInterface = do
        initFields_ this
        Control.Monad.void (UserEmailEventConfigurationView.setUserEmailEventConfigurationInterface this userEmailEventConfigurationInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: UserEmailEventConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: UserEmailEventConfigurationView)) a1

toXmlNode_impl :: UserEmailEventConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        userEmailEventConfigurationMapping <- (UserEmailEventConfigurationMapping.new_1 (jio (UserEmailEventConfigurationView.getUserEmailEventConfigurationInterface this)))
        hashMap <- (UserEmailEventConfigurationMapping.toHashMap userEmailEventConfigurationMapping)
        node <- (ModDomHelper.createNameValueNodes_3 document (UserEmailEventConfigurationData.nAME) hashMap)
        pure (node)


getUserEmailEventConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface)
getUserEmailEventConfigurationInterface object_ = jmethod object_ "getUserEmailEventConfigurationInterface" (\() -> (getUserEmailEventConfigurationInterface_impl (javaCast object_ :: UserEmailEventConfigurationView))) ()

getUserEmailEventConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface)
getUserEmailEventConfigurationInterface_super object_ = (getUserEmailEventConfigurationInterface_impl (javaCast object_ :: UserEmailEventConfigurationView))

getUserEmailEventConfigurationInterface_impl :: UserEmailEventConfigurationView -> IO (UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface)
getUserEmailEventConfigurationInterface_impl this = do
        pure ((jget (this).userEmailEventConfigurationInterface))


setUserEmailEventConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
setUserEmailEventConfigurationInterface object_ a1 = jmethod object_ "setUserEmailEventConfigurationInterface" (\() -> (setUserEmailEventConfigurationInterface_impl (javaCast object_ :: UserEmailEventConfigurationView))) () a1

setUserEmailEventConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
setUserEmailEventConfigurationInterface_super object_ a1 = (setUserEmailEventConfigurationInterface_impl (javaCast object_ :: UserEmailEventConfigurationView)) a1

setUserEmailEventConfigurationInterface_impl :: UserEmailEventConfigurationView -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
setUserEmailEventConfigurationInterface_impl this userEmailEventConfigurationInterface = do
        jset (this).userEmailEventConfigurationInterface (userEmailEventConfigurationInterface)
        pure ()


