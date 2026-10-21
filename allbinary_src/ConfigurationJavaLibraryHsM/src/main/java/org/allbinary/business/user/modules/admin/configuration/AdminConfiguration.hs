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
-- package org.allbinary.business.user.modules.admin.configuration
module AdminConfiguration where

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
import qualified AdminConfigurationData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified ContextConfiguration -- org.allbinary.business.context.configuration.ContextConfiguration
import qualified ContextConfigurationData -- org.allbinary.business.context.configuration.ContextConfigurationData
import qualified ContextConfigurationDomDocumentMapping -- org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping
import qualified ContextConfigurationInterface -- org.allbinary.business.context.configuration.ContextConfigurationInterface
import qualified ContextConfigurationInterfaceFactory -- org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory
import qualified ContextConfigurationPathUtil -- org.allbinary.business.context.configuration.ContextConfigurationPathUtil
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileWriter -- org.allbinary.logic.control.crypt.file.CryptFileWriter
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AdminConfigurationInterface

-- implements AdminConfigurationInterface
data AdminConfiguration = AdminConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , contextConfigurationInterface :: IORef (ContextConfigurationInterface.ContextConfigurationInterface)
    }

instance JavaNull AdminConfiguration where
    javaNull = javaNullRecord "AdminConfiguration"

instance JavaEquals AdminConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdminConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass AdminConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdminConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    contextConfigurationInterface <- newIORef javaNull
    let this = AdminConfiguration header_ logUtil commonStrings contextConfigurationInterface
    jregisterLevel header_ this
    AdminConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "getContextConfigurationInterface" (\() -> getContextConfigurationInterface_impl this)
    jregisterMethod header_ "setContextConfigurationInterface" (\() -> setContextConfigurationInterface_impl this)
    pure this

initFields_ :: AdminConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.contextConfigurationInterface (javaNull)
    pure ()

new_ :: IO AdminConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdminConfiguration -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        assignedValue <- (ContextConfigurationInterfaceFactory.getInstance ((jio (ContextConfigurationInterfaceFactory.getInstance))) (AdminConfigurationData.cONTEXTNAME))
        jset (this).contextConfigurationInterface (assignedValue)
        pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO AdminConfiguration
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: AdminConfiguration -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (AdminConfiguration.getFormData this (jio (RequestParams.toHashMap ((jio (RequestParams.new_1 request))))))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO AdminConfiguration
new_1 storeHashMap = do
    this <- newRecord_
    init_1 this storeHashMap
    pure this

init_1 :: AdminConfiguration -> HashMap.HashMap -> IO ()
init_1 this storeHashMap = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (AdminConfiguration.getFormData this storeHashMap)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: AdminConfiguration))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: AdminConfiguration)) a1

getFormData_impl :: AdminConfiguration -> HashMap.HashMap -> IO (())
getFormData_impl this storeHashMap = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getFormData")
        Control.Monad.void (AdminConfiguration.setContextConfigurationInterface this (javaCast (jio (ContextConfiguration.new_1 storeHashMap)) :: ContextConfigurationInterface.ContextConfigurationInterface))
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: AdminConfiguration))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: AdminConfiguration))

write_impl :: AdminConfiguration -> IO (())
write_impl this = do
        contextConfigurationDomDocumentMapping <- (ContextConfigurationDomDocumentMapping.new_1 (jio (AdminConfiguration.getContextConfigurationInterface this)))
        cryptFileWriter <- (CryptFileWriter.new_2 (jget ((jio (ContextConfigurationData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (ContextConfigurationData.getInstance))).eNCRYPTED_EXTENSION))
        Control.Monad.void (CryptFileWriter.write cryptFileWriter (jio (ContextConfigurationPathUtil.getAbPath (AdminConfigurationData.cONTEXTNAME))) (jio (ContextConfigurationDomDocumentMapping.toXmlDoc contextConfigurationDomDocumentMapping)))
        pure ()


getContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface object_ = jmethod object_ "getContextConfigurationInterface" (\() -> (getContextConfigurationInterface_impl (javaCast object_ :: AdminConfiguration))) ()

getContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_super object_ = (getContextConfigurationInterface_impl (javaCast object_ :: AdminConfiguration))

getContextConfigurationInterface_impl :: AdminConfiguration -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_impl this = do
        pure ((jget (this).contextConfigurationInterface))


setContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface object_ a1 = jmethod object_ "setContextConfigurationInterface" (\() -> (setContextConfigurationInterface_impl (javaCast object_ :: AdminConfiguration))) () a1

setContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_super object_ a1 = (setContextConfigurationInterface_impl (javaCast object_ :: AdminConfiguration)) a1

setContextConfigurationInterface_impl :: AdminConfiguration -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_impl this contextConfigurationInterface = do
        jset (this).contextConfigurationInterface (contextConfigurationInterface)
        pure ()


