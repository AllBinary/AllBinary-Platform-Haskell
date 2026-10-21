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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoProperties where

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

data TransformInfoProperties = TransformInfoProperties
    { header_ :: JavaHeader
    , name :: IORef (String)
    , label :: IORef (String)
    , description :: IORef (String)
    , objectFileName :: IORef (String)
    , objectConfigFileName :: IORef (String)
    , templateFileName :: IORef (String)
    }

instance JavaNull TransformInfoProperties where
    javaNull = javaNullRecord "TransformInfoProperties"

instance JavaEquals TransformInfoProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoProperties where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoProperties
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    label <- newIORef ""
    description <- newIORef ""
    objectFileName <- newIORef ""
    objectConfigFileName <- newIORef ""
    templateFileName <- newIORef ""
    let this = TransformInfoProperties header_ name label description objectFileName objectConfigFileName templateFileName
    jregisterLevel header_ this
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setDescription" (\() -> setDescription_impl this)
    jregisterMethod header_ "setViewFile" (\() -> setViewFile_impl this)
    jregisterMethod header_ "setTemplateFile" (\() -> setTemplateFile_impl this)
    jregisterMethod header_ "setObjectConfigFile" (\() -> setObjectConfigFile_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getLabel" (\() -> getLabel_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "getViewFile" (\() -> getViewFile_impl this)
    jregisterMethod header_ "getTemplateFile" (\() -> getTemplateFile_impl this)
    jregisterMethod header_ "getObjectConfigFile" (\() -> getObjectConfigFile_impl this)
    pure this

initFields_ :: TransformInfoProperties -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.label (javaNull)
    jset this.description (javaNull)
    jset this.objectFileName (javaNull)
    jset this.objectConfigFileName (javaNull)
    jset this.templateFileName (javaNull)
    pure ()

new_6 :: String -> String -> String -> String -> String -> String -> IO TransformInfoProperties
new_6 name label description objectFileName objectConfigFileName templateFileName = do
    this <- newRecord_
    init_6 this name label description objectFileName objectConfigFileName templateFileName
    pure this

init_6 :: TransformInfoProperties -> String -> String -> String -> String -> String -> String -> IO ()
init_6 this name label description objectFileName objectConfigFileName templateFileName = do
        initFields_ this
        jset (this).name (name)
        jset (this).label (label)
        jset (this).description (description)
        jset (this).objectFileName (objectFileName)
        jset (this).templateFileName (templateFileName)
        jset (this).objectConfigFileName (objectConfigFileName)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: TransformInfoProperties))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: TransformInfoProperties)) a1

setName_impl :: TransformInfoProperties -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: TransformInfoProperties))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: TransformInfoProperties)) a1

setDescription_impl :: TransformInfoProperties -> String -> IO (())
setDescription_impl this value = do
        jset (this).description (value)
        pure ()


setViewFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setViewFile object_ a1 = jmethod object_ "setViewFile" (\() -> (setViewFile_impl (javaCast object_ :: TransformInfoProperties))) () a1

setViewFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setViewFile_super object_ a1 = (setViewFile_impl (javaCast object_ :: TransformInfoProperties)) a1

setViewFile_impl :: TransformInfoProperties -> String -> IO (())
setViewFile_impl this value = do
        jset (this).objectFileName (value)
        pure ()


setTemplateFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile object_ a1 = jmethod object_ "setTemplateFile" (\() -> (setTemplateFile_impl (javaCast object_ :: TransformInfoProperties))) () a1

setTemplateFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile_super object_ a1 = (setTemplateFile_impl (javaCast object_ :: TransformInfoProperties)) a1

setTemplateFile_impl :: TransformInfoProperties -> String -> IO (())
setTemplateFile_impl this value = do
        jset (this).templateFileName (value)
        pure ()


setObjectConfigFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile object_ a1 = jmethod object_ "setObjectConfigFile" (\() -> (setObjectConfigFile_impl (javaCast object_ :: TransformInfoProperties))) () a1

setObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile_super object_ a1 = (setObjectConfigFile_impl (javaCast object_ :: TransformInfoProperties)) a1

setObjectConfigFile_impl :: TransformInfoProperties -> String -> IO (())
setObjectConfigFile_impl this value = do
        jset (this).objectConfigFileName (value)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfoProperties))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfoProperties))

getName_impl :: TransformInfoProperties -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getLabel :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel object_ = jmethod object_ "getLabel" (\() -> (getLabel_impl (javaCast object_ :: TransformInfoProperties))) ()

getLabel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel_super object_ = (getLabel_impl (javaCast object_ :: TransformInfoProperties))

getLabel_impl :: TransformInfoProperties -> IO (String)
getLabel_impl this = do
        pure ((jget (this).label))


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: TransformInfoProperties))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: TransformInfoProperties))

getDescription_impl :: TransformInfoProperties -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


getViewFile :: (JavaObjectClass this_) => this_ -> IO (String)
getViewFile object_ = jmethod object_ "getViewFile" (\() -> (getViewFile_impl (javaCast object_ :: TransformInfoProperties))) ()

getViewFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getViewFile_super object_ = (getViewFile_impl (javaCast object_ :: TransformInfoProperties))

getViewFile_impl :: TransformInfoProperties -> IO (String)
getViewFile_impl this = do
        pure ((jget (this).objectFileName))


getTemplateFile :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile object_ = jmethod object_ "getTemplateFile" (\() -> (getTemplateFile_impl (javaCast object_ :: TransformInfoProperties))) ()

getTemplateFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile_super object_ = (getTemplateFile_impl (javaCast object_ :: TransformInfoProperties))

getTemplateFile_impl :: TransformInfoProperties -> IO (String)
getTemplateFile_impl this = do
        pure ((jget (this).templateFileName))


getObjectConfigFile :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectConfigFile object_ = jmethod object_ "getObjectConfigFile" (\() -> (getObjectConfigFile_impl (javaCast object_ :: TransformInfoProperties))) ()

getObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectConfigFile_super object_ = (getObjectConfigFile_impl (javaCast object_ :: TransformInfoProperties))

getObjectConfigFile_impl :: TransformInfoProperties -> IO (String)
getObjectConfigFile_impl this = do
        pure ((jget (this).objectConfigFileName))


