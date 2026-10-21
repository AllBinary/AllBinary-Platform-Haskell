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
-- package org.allbinary.logic.communication.log.config
module LogConfig where

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
import qualified LogConfigData -- same package or java.lang
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified BooleanUtil -- org.allbinary.logic.java.bool.BooleanUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Node -- org.w3c.dom.Node

data LogConfig = LogConfig
    { header_ :: JavaHeader
    , isEnabled :: IORef (Bool)
    , name :: IORef (String)
    , description :: IORef (String)
    , path :: IORef (String)
    , fileName :: IORef (String)
    }

instance JavaNull LogConfig where
    javaNull = javaNullRecord "LogConfig"

instance JavaEquals LogConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfig where
    (==) = jrecordEquals

instance JavaObjectClass LogConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfig
newRecord_ = do
    header_ <- newJavaHeader
    isEnabled <- newIORef False
    name <- newIORef ""
    description <- newIORef ""
    path <- newIORef ""
    fileName <- newIORef ""
    let this = LogConfig header_ isEnabled name description path fileName
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    jregisterMethod header_ "enable" (\() -> enable_impl this)
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "getFileName" (\() -> getFileName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setDescription" (\() -> setDescription_impl this)
    jregisterMethod header_ "setPath" (\() -> setPath_impl this)
    jregisterMethod header_ "setFileName" (\() -> setFileName_impl this)
    jregisterMethod header_ "getTypeVector" (\() -> getTypeVector_impl this)
    pure this

initFields_ :: LogConfig -> IO ()
initFields_ this = do
    jset this.isEnabled (False)
    jset this.name (javaNull)
    jset this.description (javaNull)
    jset this.path (javaNull)
    jset this.fileName (javaNull)
    pure ()

new_4 :: String -> String -> String -> String -> IO LogConfig
new_4 aName aDescription aPath aFileName = do
    this <- newRecord_
    init_4 this aName aDescription aPath aFileName
    pure this

init_4 :: LogConfig -> String -> String -> String -> String -> IO ()
init_4 this aName aDescription aPath aFileName = do
        initFields_ this
        jset (this).isEnabled (False)
        jset (this).name (aName)
        jset (this).description (aDescription)
        jset (this).path (aPath)
        jset (this).fileName (aFileName)
        pure ()

new_1 :: Node.Node -> IO LogConfig
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: LogConfig -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        enabledValueNode <- (DomSearchHelper.getNode (jget ((jio (EntryData.getInstance))).eNABLE) (jio (Node.getChildNodes node)))
        isEnabledString <- (DomNodeHelper.getTextNodeValue enabledValueNode)
        assignedValue <- (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) isEnabledString)
        jset (this).isEnabled (assignedValue)
        logConfigData <- (LogConfigData.getInstance)
        nameValueNode <- (DomSearchHelper.getNode (jget (logConfigData).nAME) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue nameValueNode)
        jset (this).name (assignedValue)
        descriptionValueNode <- (DomSearchHelper.getNode (jget (logConfigData).dESCRIPTION) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue descriptionValueNode)
        jset (this).description (assignedValue)
        fileValueNode <- (DomSearchHelper.getNode (jget (logConfigData).fILE) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue fileValueNode)
        jset (this).fileName (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: LogConfig))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: LogConfig))

getName_impl :: LogConfig -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: LogConfig))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: LogConfig))

isEnabled_impl :: LogConfig -> IO (Bool)
isEnabled_impl this = do
        pure ((jget (this).isEnabled))


enable :: (JavaObjectClass this_) => this_ -> IO (())
enable object_ = jmethod object_ "enable" (\() -> (enable_impl (javaCast object_ :: LogConfig))) ()

enable_super :: (JavaObjectClass this_) => this_ -> IO (())
enable_super object_ = (enable_impl (javaCast object_ :: LogConfig))

enable_impl :: LogConfig -> IO (())
enable_impl this = do
        jset (this).isEnabled (True)
        pure ()


disable :: (JavaObjectClass this_) => this_ -> IO (())
disable object_ = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: LogConfig))) ()

disable_super :: (JavaObjectClass this_) => this_ -> IO (())
disable_super object_ = (disable_impl (javaCast object_ :: LogConfig))

disable_impl :: LogConfig -> IO (())
disable_impl this = do
        jset (this).isEnabled (False)
        pure ()


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: LogConfig))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: LogConfig))

getDescription_impl :: LogConfig -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: LogConfig))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: LogConfig))

getFileName_impl :: LogConfig -> IO (String)
getFileName_impl this = do
        pure ((jget (this).fileName))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: LogConfig))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: LogConfig)) a1

setName_impl :: LogConfig -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: LogConfig))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: LogConfig)) a1

setDescription_impl :: LogConfig -> String -> IO (())
setDescription_impl this value = do
        jset (this).description (value)
        pure ()


setPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath object_ a1 = jmethod object_ "setPath" (\() -> (setPath_impl (javaCast object_ :: LogConfig))) () a1

setPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath_super object_ a1 = (setPath_impl (javaCast object_ :: LogConfig)) a1

setPath_impl :: LogConfig -> String -> IO (())
setPath_impl this value = do
        jset (this).path (value)
        pure ()


setFileName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileName object_ a1 = jmethod object_ "setFileName" (\() -> (setFileName_impl (javaCast object_ :: LogConfig))) () a1

setFileName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileName_super object_ a1 = (setFileName_impl (javaCast object_ :: LogConfig)) a1

setFileName_impl :: LogConfig -> String -> IO (())
setFileName_impl this value = do
        jset (this).fileName (value)
        pure ()


-- throws Exception
getTypeVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTypeVector object_ = jmethod object_ "getTypeVector" (\() -> (getTypeVector_impl (javaCast object_ :: LogConfig))) ()

getTypeVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTypeVector_super object_ = (getTypeVector_impl (javaCast object_ :: LogConfig))

getTypeVector_impl :: LogConfig -> IO (BasicArrayList.BasicArrayList)
getTypeVector_impl this = do
        logKeyVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        pure (logKeyVector)


