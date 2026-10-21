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
-- package org.allbinary.globals
module UrlGlobalsInterface where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data UrlGlobalsInterface = UrlGlobalsInterface
    { header_ :: JavaHeader
    }

instance JavaNull UrlGlobalsInterface where
    javaNull = javaNullRecord "UrlGlobalsInterface"

instance JavaEquals UrlGlobalsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UrlGlobalsInterface where
    (==) = jrecordEquals

instance JavaObjectClass UrlGlobalsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UrlGlobalsInterface
newRecord_ = do
    header_ <- newJavaHeader
    let this = UrlGlobalsInterface header_
    jregisterLevel header_ this
    jregisterMethod header_ "getMainPath" (\() -> getMainPath_impl this)
    jregisterMethod header_ "getTestHtmlPath" (\() -> getTestHtmlPath_impl this)
    jregisterMethod header_ "getWebappPath" (\() -> getWebappPath_impl this)
    jregisterMethod header_ "isTestingMode" (\() -> isTestingMode_impl this)
    pure this

initFields_ :: UrlGlobalsInterface -> IO ()
initFields_ this = do
    pure ()

new_ :: IO UrlGlobalsInterface
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UrlGlobalsInterface -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getMainPath :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath object_ = jmethod object_ "getMainPath" (\() -> (getMainPath_impl (javaCast object_ :: UrlGlobalsInterface))) ()

getMainPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath_super object_ = (getMainPath_impl (javaCast object_ :: UrlGlobalsInterface))

getMainPath_impl :: UrlGlobalsInterface -> IO (String)
getMainPath_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: UrlGlobalsInterface))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: UrlGlobalsInterface))

getTestHtmlPath_impl :: UrlGlobalsInterface -> IO (String)
getTestHtmlPath_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getWebappPath :: (JavaObjectClass this_) => this_ -> IO (String)
getWebappPath object_ = jmethod object_ "getWebappPath" (\() -> (getWebappPath_impl (javaCast object_ :: UrlGlobalsInterface))) ()

getWebappPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWebappPath_super object_ = (getWebappPath_impl (javaCast object_ :: UrlGlobalsInterface))

getWebappPath_impl :: UrlGlobalsInterface -> IO (String)
getWebappPath_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


isTestingMode :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTestingMode object_ = jmethod object_ "isTestingMode" (\() -> (isTestingMode_impl (javaCast object_ :: UrlGlobalsInterface))) ()

isTestingMode_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTestingMode_super object_ = (isTestingMode_impl (javaCast object_ :: UrlGlobalsInterface))

isTestingMode_impl :: UrlGlobalsInterface -> IO (Bool)
isTestingMode_impl this = do
        pure (False)


