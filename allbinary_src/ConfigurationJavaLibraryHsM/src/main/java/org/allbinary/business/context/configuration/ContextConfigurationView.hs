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
-- package org.allbinary.business.context.configuration
module ContextConfigurationView where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified ContextConfigurationInterface -- same package or java.lang
import qualified ContextConfiguration -- same package or java.lang
import qualified ContextConfigurationData -- same package or java.lang
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified EmailServerConfigurationData -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData
import qualified EmailServerConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface
import qualified EmailServerConfigurationView -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data ContextConfigurationView = ContextConfigurationView
    { header_ :: JavaHeader
    , contextConfigurationInterface :: IORef (ContextConfigurationInterface.ContextConfigurationInterface)
    }

instance JavaNull ContextConfigurationView where
    javaNull = javaNullRecord "ContextConfigurationView"

instance JavaEquals ContextConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass ContextConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO ContextConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    contextConfigurationInterface <- newIORef javaNull
    let this = ContextConfigurationView header_ contextConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getContextConfigurationInterface" (\() -> getContextConfigurationInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: ContextConfigurationView -> IO ()
initFields_ this = do
    jset this.contextConfigurationInterface (javaNull)
    pure ()

-- Java overloaded constructors with 1 parameters: call the overload for the types of the arguments
new_1 :: (JavaObjectClass o1) => o1 -> IO ContextConfigurationView
new_1 a1
    | jisInstanceOf a1 (javaNull :: Node.Node) = new_1_overload1 (javaCast a1 :: Node.Node)
    | jisInstanceOf a1 (javaNull :: ContextConfigurationInterface.ContextConfigurationInterface) = new_1_overload2 (javaCast a1 :: ContextConfigurationInterface.ContextConfigurationInterface)
    | otherwise = new_1_overload2 (javaCast a1 :: ContextConfigurationInterface.ContextConfigurationInterface)

init_1 :: (JavaObjectClass o1) => ContextConfigurationView -> o1 -> IO ()
init_1 this a1
    | jisInstanceOf a1 (javaNull :: Node.Node) = init_1_overload1 this (javaCast a1 :: Node.Node)
    | jisInstanceOf a1 (javaNull :: ContextConfigurationInterface.ContextConfigurationInterface) = init_1_overload2 this (javaCast a1 :: ContextConfigurationInterface.ContextConfigurationInterface)
    | otherwise = init_1_overload2 this (javaCast a1 :: ContextConfigurationInterface.ContextConfigurationInterface)


new_1_overload1 :: Node.Node -> IO ContextConfigurationView
new_1_overload1 node = do
    this <- newRecord_
    init_1_overload1 this node
    pure this

init_1_overload1 :: ContextConfigurationView -> Node.Node -> IO ()
init_1_overload1 this node = do
        initFields_ this
        childNodeList <- (Node.getChildNodes node)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: ContextConfigurationInterface.ContextConfigurationInterface) (ContextConfiguration.new_))
        jset (this).contextConfigurationInterface (assignedValue)
        emailConfigurationNode <- (DomSearchHelper.getNode (EmailServerConfigurationData.nAME) childNodeList)
        emailServerConfigurationView <- (EmailServerConfigurationView.new_1 emailConfigurationNode)
        Control.Monad.void (ContextConfigurationInterface.setEmailServerConfigurationInterface ((jget (this).contextConfigurationInterface)) (javaCast (jio (EmailServerConfigurationView.getEmailConfigurationInterface emailServerConfigurationView)) :: EmailServerConfigurationInterface.EmailServerConfigurationInterface))
        pure ()

new_1_overload2 :: ContextConfigurationInterface.ContextConfigurationInterface -> IO ContextConfigurationView
new_1_overload2 contextConfigurationInterface = do
    this <- newRecord_
    init_1_overload2 this contextConfigurationInterface
    pure this

init_1_overload2 :: ContextConfigurationView -> ContextConfigurationInterface.ContextConfigurationInterface -> IO ()
init_1_overload2 this contextConfigurationInterface = do
        initFields_ this
        jset (this).contextConfigurationInterface (contextConfigurationInterface)
        pure ()


getContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface object_ = jmethod object_ "getContextConfigurationInterface" (\() -> (getContextConfigurationInterface_impl (javaCast object_ :: ContextConfigurationView))) ()

getContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_super object_ = (getContextConfigurationInterface_impl (javaCast object_ :: ContextConfigurationView))

getContextConfigurationInterface_impl :: ContextConfigurationView -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_impl this = do
        pure ((jget (this).contextConfigurationInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ContextConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ContextConfigurationView)) a1

toXmlNode_impl :: ContextConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget ((jio (ContextConfigurationData.getInstance))).nAME))
        emailServerConfigurationView <- (EmailServerConfigurationView.new_1 (jio (ContextConfigurationInterface.getEmailServerConfigurationInterface ((jio (ContextConfigurationView.getContextConfigurationInterface this))))))
        Control.Monad.void (Node.appendChild node (jio (EmailServerConfigurationView.toXmlNode emailServerConfigurationView document)))
        pure (node)


