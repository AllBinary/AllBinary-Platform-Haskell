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
-- package org.allbinary.input.automation.configuration
module InputAutomationConfiguration where

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
import qualified File -- java.io.File
import qualified List -- java.util.List
import qualified JAXBContext -- javax.xml.bind.JAXBContext
import qualified Marshaller -- javax.xml.bind.Marshaller
import qualified XmlAccessType -- javax.xml.bind.annotation.XmlAccessType
import qualified XmlAccessorType -- javax.xml.bind.annotation.XmlAccessorType
import qualified XmlElement -- javax.xml.bind.annotation.XmlElement
import qualified XmlRootElement -- javax.xml.bind.annotation.XmlRootElement
import qualified XmlType -- javax.xml.bind.annotation.XmlType
import qualified DomDocumentFileHelper -- org.allbinary.data.tree.dom.document.DomDocumentFileHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified InputAutomationModuleConfiguration -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified FileWrapperUtil -- org.allbinary.logic.io.file.FileWrapperUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Document -- org.w3c.dom.Document

data InputAutomationConfiguration = InputAutomationConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , installed :: IORef (Bool)
    , inputAutomationModuleConfigurationList :: IORef (List.List)
    }

instance JavaNull InputAutomationConfiguration where
    javaNull = javaNullRecord "InputAutomationConfiguration"

instance JavaEquals InputAutomationConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fILENAME = "InputAutomationConfig.xml"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    installed <- newIORef False
    inputAutomationModuleConfigurationList <- newIORef javaNull
    let this = InputAutomationConfiguration header_ logUtil installed inputAutomationModuleConfigurationList
    jregisterLevel header_ this
    jregisterMethod header_ "isInstalled" (\() -> isInstalled_impl this)
    jregisterMethod header_ "setInstalled" (\() -> setInstalled_impl this)
    jregisterMethod header_ "getInputAutomationModuleConfigurationList" (\() -> getInputAutomationModuleConfigurationList_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: InputAutomationConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.installed (False)
    jset this.inputAutomationModuleConfigurationList (javaNull)
    pure ()

new_ :: IO InputAutomationConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationConfiguration -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getFile :: IO (File.File)
getFile = do
        (File.new_1 fILENAME)


isInstalled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInstalled object_ = jmethod object_ "isInstalled" (\() -> (isInstalled_impl (javaCast object_ :: InputAutomationConfiguration))) ()

isInstalled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInstalled_super object_ = (isInstalled_impl (javaCast object_ :: InputAutomationConfiguration))

isInstalled_impl :: InputAutomationConfiguration -> IO (Bool)
isInstalled_impl this = do
        pure ((jget (this).installed))


setInstalled :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInstalled object_ a1 = jmethod object_ "setInstalled" (\() -> (setInstalled_impl (javaCast object_ :: InputAutomationConfiguration))) () a1

setInstalled_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInstalled_super object_ a1 = (setInstalled_impl (javaCast object_ :: InputAutomationConfiguration)) a1

setInstalled_impl :: InputAutomationConfiguration -> Bool -> IO (())
setInstalled_impl this installed = do
        jset (this).installed (installed)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Installed: " ++ javaToString installed) this "setIntalled")
        pure ()


getInputAutomationModuleConfigurationList :: (JavaObjectClass this_) => this_ -> IO (List.List)
getInputAutomationModuleConfigurationList object_ = jmethod object_ "getInputAutomationModuleConfigurationList" (\() -> (getInputAutomationModuleConfigurationList_impl (javaCast object_ :: InputAutomationConfiguration))) ()

getInputAutomationModuleConfigurationList_super :: (JavaObjectClass this_) => this_ -> IO (List.List)
getInputAutomationModuleConfigurationList_super object_ = (getInputAutomationModuleConfigurationList_impl (javaCast object_ :: InputAutomationConfiguration))

getInputAutomationModuleConfigurationList_impl :: InputAutomationConfiguration -> IO (List.List)
getInputAutomationModuleConfigurationList_impl this = do
        pure ((jget (this).inputAutomationModuleConfigurationList))


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> IO (())
save object_ = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: InputAutomationConfiguration))) ()

save_super :: (JavaObjectClass this_) => this_ -> IO (())
save_super object_ = (save_impl (javaCast object_ :: InputAutomationConfiguration))

save_impl :: InputAutomationConfiguration -> IO (())
save_impl this = do
        document <- (DomDocumentHelper.create)
        file <- (File.new_1 fILENAME)
        Control.Monad.void (FileUtil.copy ((jio (FileUtil.getInstance))) (jio (AbPath.new_2 (jio (File.getAbsolutePath file)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))) (jio (AbPath.new_2 (javaToString (jio (File.getAbsolutePath file)) ++ ".bak.xml") (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))))
        jaxbContext <- (JAXBContext.newInstance ("InputAutomationConfiguration"))
        marshaller <- (JAXBContext.createMarshaller jaxbContext)
        Control.Monad.void (Marshaller.setProperty marshaller (Marshaller.jAXB_FORMATTED_OUTPUT) True)
        Control.Monad.void (Marshaller.marshal marshaller this document)
        Control.Monad.void (DomDocumentFileHelper.save (jio (FileWrapperUtil.wrapFile file)) document)
        pure ()


