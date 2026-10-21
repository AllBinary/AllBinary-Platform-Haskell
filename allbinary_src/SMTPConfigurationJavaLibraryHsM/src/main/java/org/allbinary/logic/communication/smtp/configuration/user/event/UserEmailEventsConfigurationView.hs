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
module UserEmailEventsConfigurationView where

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
import qualified UserEmailEventsConfigurationInterface -- same package or java.lang
import qualified UserEmailEventsConfiguration -- same package or java.lang
import qualified UserEmailEventConfigurationData -- same package or java.lang
import qualified UserEmailEventConfigurationView -- same package or java.lang
import qualified UserEmailEventsConfigurationMapping -- same package or java.lang
import qualified UserEmailEventsConfigurationData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified UserEmailEventConfigurationInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data UserEmailEventsConfigurationView = UserEmailEventsConfigurationView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , userEmailEventsConfigurationInterface :: IORef (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
    }

instance JavaNull UserEmailEventsConfigurationView where
    javaNull = javaNullRecord "UserEmailEventsConfigurationView"

instance JavaEquals UserEmailEventsConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventsConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventsConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventsConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    userEmailEventsConfigurationInterface <- newIORef javaNull
    let this = UserEmailEventsConfigurationView header_ logUtil commonStrings userEmailEventsConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getUserEmailEventsConfigurationInterface" (\() -> getUserEmailEventsConfigurationInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: UserEmailEventsConfigurationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.userEmailEventsConfigurationInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO UserEmailEventsConfigurationView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: UserEmailEventsConfigurationView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        jset (this).userEmailEventsConfigurationInterface ((javaCast (jio (UserEmailEventsConfiguration.new_)) :: UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface))
        childNodeList <- (Node.getChildNodes node)
        emailEventConfigurationNodeVector <- (DomSearchHelper.getAllNodesNoThrow (UserEmailEventConfigurationData.nAME) childNodeList)
        size <- (BasicArrayList.size emailEventConfigurationNodeVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userEmailConfigurationNode = (javaCast (jio (BasicArrayList.get emailEventConfigurationNodeVector index)) :: Node.Node)
            userEmailEventConfigurationView <- (UserEmailEventConfigurationView.new_1 userEmailConfigurationNode)
            Control.Monad.void (UserEmailEventsConfigurationInterface.addUserEmailEventConfiguration ((jget (this).userEmailEventsConfigurationInterface)) (jio (UserEmailEventConfigurationView.getUserEmailEventConfigurationInterface userEmailEventConfigurationView)))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO UserEmailEventsConfigurationView
new_1 userEmailEventsConfigurationInterface = do
    this <- newRecord_
    init_1 this userEmailEventsConfigurationInterface
    pure this

init_1 :: UserEmailEventsConfigurationView -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO ()
init_1 this userEmailEventsConfigurationInterface = do
        initFields_ this
        jset (this).userEmailEventsConfigurationInterface (userEmailEventsConfigurationInterface)
        pure ()


getUserEmailEventsConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface object_ = jmethod object_ "getUserEmailEventsConfigurationInterface" (\() -> (getUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailEventsConfigurationView))) ()

getUserEmailEventsConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface_super object_ = (getUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailEventsConfigurationView))

getUserEmailEventsConfigurationInterface_impl :: UserEmailEventsConfigurationView -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface_impl this = do
        pure ((jget (this).userEmailEventsConfigurationInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: UserEmailEventsConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: UserEmailEventsConfigurationView)) a1

toXmlNode_impl :: UserEmailEventsConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        userEmailConfigurationMapping <- (UserEmailEventsConfigurationMapping.new_1 (jget (this).userEmailEventsConfigurationInterface))
        node <- (Document.createElement document (UserEmailEventsConfigurationData.nAME))
        emailEventHashMap <- (UserEmailEventsConfigurationInterface.getEventConfigurationHashMap ((jio (UserEmailEventsConfigurationView.getUserEmailEventsConfigurationInterface this))))
        set <- (HashMap.keySet emailEventHashMap)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Email Events Specified in file: " ++ javaToString (jio (Set.size set))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        eventNameArray <- (Set.toArray set)
        let size = (jlength eventNameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let eventName = (javaCast (jindex eventNameArray (index)) :: String)
            let userEmailEventsConfigurationInterface = (javaCast (jio (HashMap.get emailEventHashMap eventName)) :: UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface)
            userEmailEventConfigurationView <- (UserEmailEventConfigurationView.new_1 userEmailEventsConfigurationInterface)
            Control.Monad.void (Node.appendChild node (jio (UserEmailEventConfigurationView.toXmlNode userEmailEventConfigurationView document)))
        pure (node)


