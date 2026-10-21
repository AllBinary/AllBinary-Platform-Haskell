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
module AppUrlGlobals (module AppUrlGlobals, module UrlGlobalsInterface) where

import UrlGlobalsInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isTestingMode, isTestingMode_super, isTestingMode_impl, getWebappPath, getWebappPath_super, getWebappPath_impl, setWebappPath, setWebappPath_super, setWebappPath_impl, getTestHtmlPath, getTestHtmlPath_super, getTestHtmlPath_impl, getMainPath, getMainPath_super, getMainPath_impl, nULL_APP_URL_GLOBALS, path)
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
import qualified UrlGlobalsInterface

data AppUrlGlobals = AppUrlGlobals
    { header_ :: JavaHeader
    , base :: UrlGlobalsInterface.UrlGlobalsInterface
    , path :: IORef (String)
    }

instance JavaNull AppUrlGlobals where
    javaNull = javaNullRecord "AppUrlGlobals"

instance JavaEquals AppUrlGlobals where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AppUrlGlobals where
    (==) = jrecordEquals

instance JavaObjectClass AppUrlGlobals where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_APP_URL_GLOBALS #-}
nULL_APP_URL_GLOBALS = unsafePerformIO ((new_))

newRecord_ :: IO AppUrlGlobals
newRecord_ = do
    base <- UrlGlobalsInterface.newRecord_
    let header_ = base.header_
    path <- newIORef ""
    let this = AppUrlGlobals header_ base path
    jregisterLevel header_ this
    jregisterMethod header_ "isTestingMode" (\() -> isTestingMode_impl this)
    jregisterMethod header_ "getWebappPath" (\() -> getWebappPath_impl this)
    jregisterMethod header_ "setWebappPath" (\() -> setWebappPath_impl this)
    jregisterMethod header_ "getTestHtmlPath" (\() -> getTestHtmlPath_impl this)
    jregisterMethod header_ "getMainPath" (\() -> getMainPath_impl this)
    pure this

initFields_ :: AppUrlGlobals -> IO ()
initFields_ this = do
    jset this.path ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_ :: IO AppUrlGlobals
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AppUrlGlobals -> IO ()
init_ this = do
    UrlGlobalsInterface.init_ this.base
    initFields_ this


isTestingMode :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTestingMode object_ = jmethod object_ "isTestingMode" (\() -> (isTestingMode_impl (javaCast object_ :: AppUrlGlobals))) ()

isTestingMode_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTestingMode_super object_ = (isTestingMode_impl (javaCast object_ :: AppUrlGlobals))

isTestingMode_impl :: AppUrlGlobals -> IO (Bool)
isTestingMode_impl this = do
        pure (False)


getWebappPath :: (JavaObjectClass this_) => this_ -> IO (String)
getWebappPath object_ = jmethod object_ "getWebappPath" (\() -> (getWebappPath_impl (javaCast object_ :: AppUrlGlobals))) ()

getWebappPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWebappPath_super object_ = (getWebappPath_impl (javaCast object_ :: AppUrlGlobals))

getWebappPath_impl :: AppUrlGlobals -> IO (String)
getWebappPath_impl this = do
        pure ((jget (this).path))


setWebappPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWebappPath object_ a1 = jmethod object_ "setWebappPath" (\() -> (setWebappPath_impl (javaCast object_ :: AppUrlGlobals))) () a1

setWebappPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWebappPath_super object_ a1 = (setWebappPath_impl (javaCast object_ :: AppUrlGlobals)) a1

setWebappPath_impl :: AppUrlGlobals -> String -> IO (())
setWebappPath_impl this path = do
        jset (this).path (path)
        when (Prelude.not (((Data.List.isSuffixOf "\\" (jget (this).path)) || (Data.List.isSuffixOf "/" (jget (this).path))))) $ do
            jset (this).path (((jget (this).path) ++ "\\"))
        pure ()


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: AppUrlGlobals))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: AppUrlGlobals))

getTestHtmlPath_impl :: AppUrlGlobals -> IO (String)
getTestHtmlPath_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
getMainPath :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath object_ = jmethod object_ "getMainPath" (\() -> (getMainPath_impl (javaCast object_ :: AppUrlGlobals))) ()

getMainPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath_super object_ = (getMainPath_impl (javaCast object_ :: AppUrlGlobals))

getMainPath_impl :: AppUrlGlobals -> IO (String)
getMainPath_impl this = do
        pure ((jget (this).path))


