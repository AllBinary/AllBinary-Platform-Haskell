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
module TransformInfoHttpContext (module TransformInfoHttpContext, module TransformInfoHttp) where

import TransformInfoHttp hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPath, getPath_super, getPath_impl, getTemplateFilePath, getTemplateFilePath_super, getTemplateFilePath_impl, getObjectConfigFilePath, getObjectConfigFilePath_super, getObjectConfigFilePath_impl, getDataFilePath, getDataFilePath_super, getDataFilePath_impl, logUtil)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoHttp

data TransformInfoHttpContext = TransformInfoHttpContext
    { header_ :: JavaHeader
    , base :: TransformInfoHttp.TransformInfoHttp
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformInfoHttpContext where
    javaNull = javaNullRecord "TransformInfoHttpContext"

instance JavaEquals TransformInfoHttpContext where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttpContext where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttpContext where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoHttpContext
newRecord_ = do
    base <- TransformInfoHttp.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = TransformInfoHttpContext header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getTemplateFilePath" (\() -> getTemplateFilePath_impl this)
    jregisterMethod header_ "getObjectConfigFilePath" (\() -> getObjectConfigFilePath_impl this)
    jregisterMethod header_ "getDataFilePath" (\() -> getDataFilePath_impl this)
    pure this

initFields_ :: TransformInfoHttpContext -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_3 :: HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoHttpContext
new_3 databaseHashMap propertiesHashMap pageContext = do
    this <- newRecord_
    init_3 this databaseHashMap propertiesHashMap pageContext
    pure this

init_3 :: TransformInfoHttpContext -> HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_3 this databaseHashMap propertiesHashMap pageContext = do
        TransformInfoHttp.init_3 this.base (databaseHashMap) (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Database HashMap: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (HashMap.toString databaseHashMap)))
            Control.Monad.void (StringMaker.append stringBuffer "\nProperties HashMap: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (HashMap.toString propertiesHashMap)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (TransformInfoHttp.setStoreName this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoHttpContext
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: TransformInfoHttpContext -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TransformInfoHttp.init_2 this.base (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString propertiesHashMap))) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (TransformInfoHttp.setStoreName this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure ()


-- throws Exception
getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: TransformInfoHttpContext))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: TransformInfoHttpContext))

getPath_impl :: TransformInfoHttpContext -> IO (String)
getPath_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).iNSTALLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoHttp.getStoreName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        (StringMaker.toString stringBuffer)


-- throws Exception
getTemplateFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath object_ = jmethod object_ "getTemplateFilePath" (\() -> (getTemplateFilePath_impl (javaCast object_ :: TransformInfoHttpContext))) ()

getTemplateFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath_super object_ = (getTemplateFilePath_impl (javaCast object_ :: TransformInfoHttpContext))

getTemplateFilePath_impl :: TransformInfoHttpContext -> IO (AbPath.AbPath)
getTemplateFilePath_impl this = do
        (AbPath.new_2 (jio (TransformInfoHttpContext.getPath this)) (jio (TransformInfoHttp.getTemplateFile this)))


-- throws Exception
getObjectConfigFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath object_ = jmethod object_ "getObjectConfigFilePath" (\() -> (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfoHttpContext))) ()

getObjectConfigFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath_super object_ = (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfoHttpContext))

getObjectConfigFilePath_impl :: TransformInfoHttpContext -> IO (AbPath.AbPath)
getObjectConfigFilePath_impl this = do
        (AbPath.new_2 (jio (TransformInfoHttpContext.getPath this)) (jio (TransformInfoHttp.getObjectConfigFile this)))


-- throws Exception
getDataFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath object_ = jmethod object_ "getDataFilePath" (\() -> (getDataFilePath_impl (javaCast object_ :: TransformInfoHttpContext))) ()

getDataFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath_super object_ = (getDataFilePath_impl (javaCast object_ :: TransformInfoHttpContext))

getDataFilePath_impl :: TransformInfoHttpContext -> IO (AbPath.AbPath)
getDataFilePath_impl this = do
        (AbPath.new_2 (jio (TransformInfoHttpContext.getPath this)) (jio (TransformInfoHttp.getDataFile this)))


