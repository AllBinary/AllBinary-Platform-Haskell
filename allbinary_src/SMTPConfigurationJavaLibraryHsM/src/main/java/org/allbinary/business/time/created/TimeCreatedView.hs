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
-- package org.allbinary.business.time.created
module TimeCreatedView where

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
import qualified TimeCreated -- same package or java.lang
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data TimeCreatedView = TimeCreatedView
    { header_ :: JavaHeader
    , timeCreated :: IORef (TimeCreated.TimeCreated)
    }

instance JavaNull TimeCreatedView where
    javaNull = javaNullRecord "TimeCreatedView"

instance JavaEquals TimeCreatedView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeCreatedView where
    (==) = jrecordEquals

instance JavaObjectClass TimeCreatedView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeCreatedView
newRecord_ = do
    header_ <- newJavaHeader
    timeCreated <- newIORef javaNull
    let this = TimeCreatedView header_ timeCreated
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getTimeCreated" (\() -> getTimeCreated_impl this)
    jregisterMethod header_ "setTimeCreated" (\() -> setTimeCreated_impl this)
    pure this

initFields_ :: TimeCreatedView -> IO ()
initFields_ this = do
    jset this.timeCreated (javaNull)
    pure ()

new_1 :: TimeCreated.TimeCreated -> IO TimeCreatedView
new_1 timeCreated = do
    this <- newRecord_
    init_1 this timeCreated
    pure this

init_1 :: TimeCreatedView -> TimeCreated.TimeCreated -> IO ()
init_1 this timeCreated = do
        initFields_ this
        Control.Monad.void (TimeCreatedView.setTimeCreated this timeCreated)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Node.Node -> IO TimeCreatedView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: TimeCreatedView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        Control.Monad.void (TimeCreatedView.setTimeCreated this (jio (TimeCreated.new_1 (jio (DomNodeHelper.getTextNodeValue node)))))
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: TimeCreatedView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: TimeCreatedView)) a1

toXmlNode_impl :: TimeCreatedView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        (ModDomHelper.createTextNode document (jget ((jio (EntryData.getInstance))).tIMECREATED) (jio (TimeCreated.toString ((jio (TimeCreatedView.getTimeCreated this))))))


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (TimeCreated.TimeCreated)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: TimeCreatedView))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (TimeCreated.TimeCreated)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: TimeCreatedView))

getTimeCreated_impl :: TimeCreatedView -> IO (TimeCreated.TimeCreated)
getTimeCreated_impl this = do
        pure ((jget (this).timeCreated))


setTimeCreated :: (JavaObjectClass this_) => this_ -> TimeCreated.TimeCreated -> IO (())
setTimeCreated object_ a1 = jmethod object_ "setTimeCreated" (\() -> (setTimeCreated_impl (javaCast object_ :: TimeCreatedView))) () a1

setTimeCreated_super :: (JavaObjectClass this_) => this_ -> TimeCreated.TimeCreated -> IO (())
setTimeCreated_super object_ a1 = (setTimeCreated_impl (javaCast object_ :: TimeCreatedView)) a1

setTimeCreated_impl :: TimeCreatedView -> TimeCreated.TimeCreated -> IO (())
setTimeCreated_impl this timeCreated = do
        jset (this).timeCreated (timeCreated)
        pure ()


