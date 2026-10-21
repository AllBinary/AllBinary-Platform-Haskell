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
module TransformInfoHttp (module TransformInfoHttp, module TransformInfo) where

import TransformInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, getWeblisketSession, getWeblisketSession_super, getWeblisketSession_impl, getPageContext, getPageContext_super, getPageContext_impl, getPropertiesHashMap, getPropertiesHashMap_super, getPropertiesHashMap_impl, getTemplateFilePath, getTemplateFilePath_super, getTemplateFilePath_impl, getObjectConfigFilePath, getObjectConfigFilePath_super, getObjectConfigFilePath_impl, getDataFilePath, getDataFilePath_super, getDataFilePath_impl, logUtil, abContext)
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
import qualified TransformInfoData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AbContext -- org.allbinary.business.context.AbContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlData -- org.allbinary.logic.communication.sql.AbSqlData
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoObjectConfig -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig
import qualified TransformInfo
import qualified TransformInfoHttpInterface

-- implements TransformInfoHttpInterface
data TransformInfoHttp = TransformInfoHttp
    { header_ :: JavaHeader
    , base :: TransformInfo.TransformInfo
    , logUtil :: IORef (LogUtil.LogUtil)
    , abContext :: IORef (AbContext.AbContext)
    }

instance JavaNull TransformInfoHttp where
    javaNull = javaNullRecord "TransformInfoHttp"

instance JavaEquals TransformInfoHttp where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttp where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttp where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoHttp
newRecord_ = do
    base <- TransformInfo.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abContext <- newIORef javaNull
    let this = TransformInfoHttp header_ base logUtil abContext
    jregisterLevel header_ this
    TransformInfoHttpInterface.registerInterface_ header_
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "getWeblisketSession" (\() -> getWeblisketSession_impl this)
    jregisterMethod header_ "getPageContext" (\() -> getPageContext_impl this)
    jregisterMethod header_ "getPropertiesHashMap" (\() -> getPropertiesHashMap_impl this)
    jregisterMethod header_ "getTemplateFilePath" (\() -> getTemplateFilePath_impl this)
    jregisterMethod header_ "getObjectConfigFilePath" (\() -> getObjectConfigFilePath_impl this)
    jregisterMethod header_ "getDataFilePath" (\() -> getDataFilePath_impl this)
    pure this

initFields_ :: TransformInfoHttp -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abContext (javaNull)
    pure ()

new_3 :: HashMap.HashMap -> PageContext.PageContext -> Bool -> IO TransformInfoHttp
new_3 propertiesHashMap pageContext crud = do
    this <- newRecord_
    init_3 this propertiesHashMap pageContext crud
    pure this

init_3 :: TransformInfoHttp -> HashMap.HashMap -> PageContext.PageContext -> Bool -> IO ()
init_3 this propertiesHashMap pageContext crud = do
        TransformInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (AbContext.new_2 propertiesHashMap pageContext)
        jset (this).abContext (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString propertiesHashMap))) this "Constructor(HashMap, PageContext, boolean)")
        Control.Monad.void (TransformInfo.override this propertiesHashMap)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_3 :: HttpServletRequest.HttpServletRequest -> HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoHttp
new_3 request propertiesHashMap pageContext = do
    this <- newRecord_
    init_3 this request propertiesHashMap pageContext
    pure this

init_3 :: TransformInfoHttp -> HttpServletRequest.HttpServletRequest -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_3 this request propertiesHashMap pageContext = do
        TransformInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (AbContext.new_2 propertiesHashMap pageContext)
        jset (this).abContext (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString propertiesHashMap))) this "Constructor(HttpServletRequest, HashMap, PageContext)")
        Control.Monad.void (TransformInfoHttp.set this (jio (RequestParams.toHashMap ((jio (RequestParams.new_1 (javaCast request :: HttpServletRequest.HttpServletRequest)))))))
        Control.Monad.void (TransformInfo.override this propertiesHashMap)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_3 :: HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoHttp
new_3 databaseHashMap propertiesHashMap pageContext = do
    this <- newRecord_
    init_3 this databaseHashMap propertiesHashMap pageContext
    pure this

init_3 :: TransformInfoHttp -> HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_3 this databaseHashMap propertiesHashMap pageContext = do
        TransformInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (AbContext.new_2 propertiesHashMap pageContext)
        jset (this).abContext (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString propertiesHashMap))) this "Constructor(HashMap, HashMap, PageContext)")
        Control.Monad.void (TransformInfoHttp.set this databaseHashMap)
        pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoHttp
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: TransformInfoHttp -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TransformInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (AbContext.new_2 propertiesHashMap pageContext)
        jset (this).abContext (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString propertiesHashMap))) this "Constructor(HashMap, PageContext)")
        Control.Monad.void (TransformInfoHttp.set this propertiesHashMap)
        pure ()

new_1 :: TransformInfoHttp -> IO TransformInfoHttp
new_1 parentViewOfThisTransformInfoInterface = do
    this <- newRecord_
    init_1 this parentViewOfThisTransformInfoInterface
    pure this

init_1 :: TransformInfoHttp -> TransformInfoHttp -> IO ()
init_1 this parentViewOfThisTransformInfoInterface = do
        TransformInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (AbContext.new_2 (jio (TransformInfoHttp.getPropertiesHashMap parentViewOfThisTransformInfoInterface)) (jio (TransformInfoHttp.getPageContext parentViewOfThisTransformInfoInterface)))
        jset (this).abContext (assignedValue)
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: TransformInfoHttp))) () a1

set_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: TransformInfoHttp)) a1

set_impl :: TransformInfoHttp -> HashMap.HashMap -> IO (())
set_impl this hashMap = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString hashMap))) this "set()")
        transformInfoData <- (TransformInfoData.getInstance)
        Control.Monad.void (TransformInfo.setName this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).nAME))) :: String))
        Control.Monad.void (TransformInfo.setStoreName this (javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))
        Control.Monad.void (TransformInfo.setObjectFile this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTFILENAME))) :: String))
        Control.Monad.void (TransformInfo.setObject this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECT))) :: String))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        let objectConfigString = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIG))) :: String)
        if (jio (StringValidationUtil.isValidRequired stringValidationUtil objectConfigString 10 (AbSqlData.mAXBLOB))) then do
            Control.Monad.void (TransformInfo.setObjectConfig this objectConfigString)
        else do
            Control.Monad.void (TransformInfo.setObjectConfig this (jio (TransformInfoObjectConfig.toString ((jio (TransformInfoObjectConfig.new_1 this))))))
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIGFILENAME))) :: String)))) $ do
            Control.Monad.void (TransformInfo.setObjectConfigFile this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIGFILENAME))) :: String))
        Control.Monad.void (TransformInfo.setTemplateFile this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).tEMPLATEFILENAME))) :: String))
        Control.Monad.void (TransformInfo.setTemplate this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).tEMPLATE))) :: String))
        Control.Monad.void (TransformInfo.setDataFile this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).dATAFILENAME))) :: String))
        Control.Monad.void (TransformInfo.setData this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).dATA))) :: String))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformInfo.log this)) this "set()")
        pure ()


getWeblisketSession :: (JavaObjectClass this_) => this_ -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession object_ = jmethod object_ "getWeblisketSession" (\() -> (getWeblisketSession_impl (javaCast object_ :: TransformInfoHttp))) ()

getWeblisketSession_super :: (JavaObjectClass this_) => this_ -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession_super object_ = (getWeblisketSession_impl (javaCast object_ :: TransformInfoHttp))

getWeblisketSession_impl :: TransformInfoHttp -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession_impl this = do
        (AbContext.getWeblisketSession ((jget (this).abContext)))


getPageContext :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext object_ = jmethod object_ "getPageContext" (\() -> (getPageContext_impl (javaCast object_ :: TransformInfoHttp))) ()

getPageContext_super :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext_super object_ = (getPageContext_impl (javaCast object_ :: TransformInfoHttp))

getPageContext_impl :: TransformInfoHttp -> IO (PageContext.PageContext)
getPageContext_impl this = do
        (AbContext.getPageContext ((jget (this).abContext)))


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: TransformInfoHttp))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: TransformInfoHttp))

getPropertiesHashMap_impl :: TransformInfoHttp -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = do
        (AbContext.getPropertiesHashMap ((jget (this).abContext)))


-- throws Exception
getTemplateFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath object_ = jmethod object_ "getTemplateFilePath" (\() -> (getTemplateFilePath_impl (javaCast object_ :: TransformInfoHttp))) ()

getTemplateFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath_super object_ = (getTemplateFilePath_impl (javaCast object_ :: TransformInfoHttp))

getTemplateFilePath_impl :: TransformInfoHttp -> IO (AbPath.AbPath)
getTemplateFilePath_impl this = do
        (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) (jio (TransformInfo.getTemplateFile this)))


-- throws Exception
getObjectConfigFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath object_ = jmethod object_ "getObjectConfigFilePath" (\() -> (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfoHttp))) ()

getObjectConfigFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath_super object_ = (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfoHttp))

getObjectConfigFilePath_impl :: TransformInfoHttp -> IO (AbPath.AbPath)
getObjectConfigFilePath_impl this = do
        (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) (jio (TransformInfo.getObjectConfigFile this)))


-- throws Exception
getDataFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath object_ = jmethod object_ "getDataFilePath" (\() -> (getDataFilePath_impl (javaCast object_ :: TransformInfoHttp))) ()

getDataFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath_super object_ = (getDataFilePath_impl (javaCast object_ :: TransformInfoHttp))

getDataFilePath_impl :: TransformInfoHttp -> IO (AbPath.AbPath)
getDataFilePath_impl this = do
        (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) (jio (TransformInfo.getDataFile this)))


