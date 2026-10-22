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
-- package org.allbinary.logic.communication.ftp.configuration
module FtpConfigurationView where

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
import qualified FtpConfigurationInterface -- same package or java.lang
import qualified FtpConfiguration -- same package or java.lang
import qualified FtpConfigurationData -- same package or java.lang
import qualified FtpConfigurationMapping -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data FtpConfigurationView = FtpConfigurationView
    { header_ :: JavaHeader
    , ftpConfigurationInterface :: IORef (FtpConfigurationInterface.FtpConfigurationInterface)
    }

instance JavaNull FtpConfigurationView where
    javaNull = javaNullRecord "FtpConfigurationView"

instance JavaEquals FtpConfigurationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FtpConfigurationView where
    (==) = jrecordEquals

instance JavaObjectClass FtpConfigurationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FtpConfigurationView
newRecord_ = do
    header_ <- newJavaHeader
    ftpConfigurationInterface <- newIORef javaNull
    let this = FtpConfigurationView header_ ftpConfigurationInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getFtpConfigurationInterface" (\() -> getFtpConfigurationInterface_impl this)
    jregisterMethod header_ "setFtpConfigurationInterface" (\() -> setFtpConfigurationInterface_impl this)
    pure this

initFields_ :: FtpConfigurationView -> IO ()
initFields_ this = do
    jset this.ftpConfigurationInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO FtpConfigurationView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: FtpConfigurationView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        Control.Monad.void (FtpConfigurationView.setFtpConfigurationInterface this (javaCast (jio (FtpConfiguration.new_)) :: FtpConfigurationInterface.FtpConfigurationInterface))
        chileNodeList <- (Node.getChildNodes node)
        server <- (DomNodeHelper.getTextNodeValue_2 (FtpConfigurationData.sERVER) chileNodeList)
        Control.Monad.void (FtpConfigurationInterface.setServer ((jio (FtpConfigurationView.getFtpConfigurationInterface this))) server)
        userName <- (DomNodeHelper.getTextNodeValue_2 (FtpConfigurationData.uSERNAME) chileNodeList)
        Control.Monad.void (FtpConfigurationInterface.setUserName ((jio (FtpConfigurationView.getFtpConfigurationInterface this))) userName)
        password <- (DomNodeHelper.getTextNodeValue_2 (FtpConfigurationData.pASSWORD) chileNodeList)
        Control.Monad.void (FtpConfigurationInterface.setPassword ((jio (FtpConfigurationView.getFtpConfigurationInterface this))) password)
        path <- (DomNodeHelper.getTextNodeValue_2 (FtpConfigurationData.pATH) chileNodeList)
        Control.Monad.void (FtpConfigurationInterface.setPath ((jio (FtpConfigurationView.getFtpConfigurationInterface this))) path)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: FtpConfigurationInterface.FtpConfigurationInterface -> IO FtpConfigurationView
new_1 ftpConfigurationInterface = do
    this <- newRecord_
    init_1 this ftpConfigurationInterface
    pure this

init_1 :: FtpConfigurationView -> FtpConfigurationInterface.FtpConfigurationInterface -> IO ()
init_1 this ftpConfigurationInterface = do
        initFields_ this
        Control.Monad.void (FtpConfigurationView.setFtpConfigurationInterface this ftpConfigurationInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: FtpConfigurationView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: FtpConfigurationView)) a1

toXmlNode_impl :: FtpConfigurationView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        ftpConfigurationMapping <- (FtpConfigurationMapping.new_1 (jio (FtpConfigurationView.getFtpConfigurationInterface this)))
        hashMap <- (FtpConfigurationMapping.toHashMap ftpConfigurationMapping)
        node <- (ModDomHelper.createNameValueNodes_3 document (FtpConfigurationData.nAME) hashMap)
        pure (node)


getFtpConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (FtpConfigurationInterface.FtpConfigurationInterface)
getFtpConfigurationInterface object_ = jmethod object_ "getFtpConfigurationInterface" (\() -> (getFtpConfigurationInterface_impl (javaCast object_ :: FtpConfigurationView))) ()

getFtpConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (FtpConfigurationInterface.FtpConfigurationInterface)
getFtpConfigurationInterface_super object_ = (getFtpConfigurationInterface_impl (javaCast object_ :: FtpConfigurationView))

getFtpConfigurationInterface_impl :: FtpConfigurationView -> IO (FtpConfigurationInterface.FtpConfigurationInterface)
getFtpConfigurationInterface_impl this = do
        pure ((jget (this).ftpConfigurationInterface))


setFtpConfigurationInterface :: (JavaObjectClass this_) => this_ -> FtpConfigurationInterface.FtpConfigurationInterface -> IO (())
setFtpConfigurationInterface object_ a1 = jmethod object_ "setFtpConfigurationInterface" (\() -> (setFtpConfigurationInterface_impl (javaCast object_ :: FtpConfigurationView))) () a1

setFtpConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> FtpConfigurationInterface.FtpConfigurationInterface -> IO (())
setFtpConfigurationInterface_super object_ a1 = (setFtpConfigurationInterface_impl (javaCast object_ :: FtpConfigurationView)) a1

setFtpConfigurationInterface_impl :: FtpConfigurationView -> FtpConfigurationInterface.FtpConfigurationInterface -> IO (())
setFtpConfigurationInterface_impl this ftpConfigurationInterface = do
        jset (this).ftpConfigurationInterface (ftpConfigurationInterface)
        pure ()


