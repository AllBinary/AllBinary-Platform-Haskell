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
module TransformInfoHttpSearch (module TransformInfoHttpSearch, module TransformInfoHttp) where

import TransformInfoHttp hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPath, getPath_super, getPath_impl, getTemplateFilePath, getTemplateFilePath_super, getTemplateFilePath_impl, getObjectConfigFilePath, getObjectConfigFilePath_super, getObjectConfigFilePath_impl, getDataFilePath, getDataFilePath_super, getDataFilePath_impl)
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
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoHttp

data TransformInfoHttpSearch = TransformInfoHttpSearch
    { header_ :: JavaHeader
    , base :: TransformInfoHttp.TransformInfoHttp
    }

instance JavaNull TransformInfoHttpSearch where
    javaNull = javaNullRecord "TransformInfoHttpSearch"

instance JavaEquals TransformInfoHttpSearch where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttpSearch where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttpSearch where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoHttpSearch
newRecord_ = do
    base <- TransformInfoHttp.newRecord_
    let header_ = base.header_
    let this = TransformInfoHttpSearch header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getTemplateFilePath" (\() -> getTemplateFilePath_impl this)
    jregisterMethod header_ "getObjectConfigFilePath" (\() -> getObjectConfigFilePath_impl this)
    jregisterMethod header_ "getDataFilePath" (\() -> getDataFilePath_impl this)
    pure this

initFields_ :: TransformInfoHttpSearch -> IO ()
initFields_ this = do
    pure ()

new_1 :: SearchRequest.SearchRequest -> IO TransformInfoHttpSearch
new_1 searchRequest = do
    this <- newRecord_
    init_1 this searchRequest
    pure this

init_1 :: TransformInfoHttpSearch -> SearchRequest.SearchRequest -> IO ()
init_1 this searchRequest = do
        TransformInfoHttp.init_2 this.base (jio (SearchRequest.getPropertiesHashMap searchRequest)) (jio (SearchRequest.getPageContext searchRequest))
        initFields_ this
        pure () -- super(...) is in the record above
        if ((jio (StoreFrontInterface.getName ((jio (SearchRequest.getStoreFront searchRequest))))) /= javaNull) then do
            Control.Monad.void (TransformInfoHttp.setStoreName this (jio (StoreFrontInterface.getName ((jio (SearchRequest.getStoreFront searchRequest))))))
        else do
            Control.Monad.void (TransformInfoHttp.setStoreName this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        dataFileName <- (SearchRequest.getXslFile searchRequest)
        Control.Monad.void (TransformInfoHttp.setTemplateFile this dataFileName)
        pure ()


-- throws Exception
getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: TransformInfoHttpSearch))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: TransformInfoHttpSearch))

getPath_impl :: TransformInfoHttpSearch -> IO (String)
getPath_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoHttp.getStoreName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        (StringMaker.toString stringBuffer)


-- throws Exception
getTemplateFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath object_ = jmethod object_ "getTemplateFilePath" (\() -> (getTemplateFilePath_impl (javaCast object_ :: TransformInfoHttpSearch))) ()

getTemplateFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath_super object_ = (getTemplateFilePath_impl (javaCast object_ :: TransformInfoHttpSearch))

getTemplateFilePath_impl :: TransformInfoHttpSearch -> IO (AbPath.AbPath)
getTemplateFilePath_impl this = do
        (AbPath.new_2 (jio (TransformInfoHttpSearch.getPath this)) (jio (TransformInfoHttp.getTemplateFile this)))


-- throws Exception
getObjectConfigFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath object_ = jmethod object_ "getObjectConfigFilePath" (\() -> (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfoHttpSearch))) ()

getObjectConfigFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath_super object_ = (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfoHttpSearch))

getObjectConfigFilePath_impl :: TransformInfoHttpSearch -> IO (AbPath.AbPath)
getObjectConfigFilePath_impl this = do
        (AbPath.new_2 (jio (TransformInfoHttpSearch.getPath this)) (jio (TransformInfoHttp.getObjectConfigFile this)))


-- throws Exception
getDataFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath object_ = jmethod object_ "getDataFilePath" (\() -> (getDataFilePath_impl (javaCast object_ :: TransformInfoHttpSearch))) ()

getDataFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath_super object_ = (getDataFilePath_impl (javaCast object_ :: TransformInfoHttpSearch))

getDataFilePath_impl :: TransformInfoHttpSearch -> IO (AbPath.AbPath)
getDataFilePath_impl this = do
        (AbPath.new_2 (jio (TransformInfoHttpSearch.getPath this)) (jio (TransformInfoHttp.getDataFile this)))


