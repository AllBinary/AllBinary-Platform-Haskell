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
-- package org.allbinary.business.time.modified
module TimeLastModifiedView where

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
import qualified TimeLastModified -- same package or java.lang
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data TimeLastModifiedView = TimeLastModifiedView
    { header_ :: JavaHeader
    , timeLastModified :: IORef (TimeLastModified.TimeLastModified)
    }

instance JavaNull TimeLastModifiedView where
    javaNull = javaNullRecord "TimeLastModifiedView"

instance JavaEquals TimeLastModifiedView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeLastModifiedView where
    (==) = jrecordEquals

instance JavaObjectClass TimeLastModifiedView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeLastModifiedView
newRecord_ = do
    header_ <- newJavaHeader
    timeLastModified <- newIORef javaNull
    let this = TimeLastModifiedView header_ timeLastModified
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getTimeLastModified" (\() -> getTimeLastModified_impl this)
    jregisterMethod header_ "setTimeLastModified" (\() -> setTimeLastModified_impl this)
    pure this

initFields_ :: TimeLastModifiedView -> IO ()
initFields_ this = do
    jset this.timeLastModified (javaNull)
    pure ()

new_1 :: TimeLastModified.TimeLastModified -> IO TimeLastModifiedView
new_1 timeLastModified = do
    this <- newRecord_
    init_1 this timeLastModified
    pure this

init_1 :: TimeLastModifiedView -> TimeLastModified.TimeLastModified -> IO ()
init_1 this timeLastModified = do
        initFields_ this
        Control.Monad.void (TimeLastModifiedView.setTimeLastModified this timeLastModified)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Node.Node -> IO TimeLastModifiedView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: TimeLastModifiedView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        Control.Monad.void (TimeLastModifiedView.setTimeLastModified this (jio (TimeLastModified.new_1 (jio (DomNodeHelper.getTextNodeValue node)))))
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: TimeLastModifiedView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: TimeLastModifiedView)) a1

toXmlNode_impl :: TimeLastModifiedView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        (ModDomHelper.createTextNode document (jget ((jio (EntryData.getInstance))).tIMECREATED) (jio (TimeLastModified.toString ((jio (TimeLastModifiedView.getTimeLastModified this))))))


getTimeLastModified :: (JavaObjectClass this_) => this_ -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified object_ = jmethod object_ "getTimeLastModified" (\() -> (getTimeLastModified_impl (javaCast object_ :: TimeLastModifiedView))) ()

getTimeLastModified_super :: (JavaObjectClass this_) => this_ -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified_super object_ = (getTimeLastModified_impl (javaCast object_ :: TimeLastModifiedView))

getTimeLastModified_impl :: TimeLastModifiedView -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified_impl this = do
        pure ((jget (this).timeLastModified))


setTimeLastModified :: (JavaObjectClass this_) => this_ -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified object_ a1 = jmethod object_ "setTimeLastModified" (\() -> (setTimeLastModified_impl (javaCast object_ :: TimeLastModifiedView))) () a1

setTimeLastModified_super :: (JavaObjectClass this_) => this_ -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified_super object_ a1 = (setTimeLastModified_impl (javaCast object_ :: TimeLastModifiedView)) a1

setTimeLastModified_impl :: TimeLastModifiedView -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified_impl this timeLastModified = do
        jset (this).timeLastModified (timeLastModified)
        pure ()


