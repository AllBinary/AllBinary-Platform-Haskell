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
module InputAutomationConfigurationFactory where

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
import qualified InputAutomationConfiguration -- same package or java.lang
import qualified File -- java.io.File
import qualified FileInputStream -- java.io.FileInputStream
import qualified List -- java.util.List
import qualified JAXBContext -- javax.xml.bind.JAXBContext
import qualified JAXBElement -- javax.xml.bind.JAXBElement
import qualified Unmarshaller -- javax.xml.bind.Unmarshaller
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified InputAutomationModuleConfiguration -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InputAutomationConfigurationFactory = InputAutomationConfigurationFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , inputAutomationConfiguration :: IORef (InputAutomationConfiguration.InputAutomationConfiguration)
    }

instance JavaNull InputAutomationConfigurationFactory where
    javaNull = javaNullRecord "InputAutomationConfigurationFactory"

instance JavaEquals InputAutomationConfigurationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationConfigurationFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationConfigurationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationConfigurationFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    inputAutomationConfiguration <- newIORef javaNull
    let this = InputAutomationConfigurationFactory header_ logUtil inputAutomationConfiguration
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: InputAutomationConfigurationFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.inputAutomationConfiguration (javaNull)
    pure ()


getInstance :: IO (InputAutomationConfigurationFactory)
getInstance = do
        pure (InputAutomationConfigurationFactory.instance_)

new_ :: IO InputAutomationConfigurationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationConfigurationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationConfigurationFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: InputAutomationConfigurationFactory)) a1

init_impl :: InputAutomationConfigurationFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_impl this abeClientInformation = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        let iNPUT_AUTOMATION_CONFIGURATION = "InputAutomationConfiguration"
        file <- (InputAutomationConfiguration.getFile)
        if (jio (File.isFile file)) then do
            Control.Monad.void (LogUtil.putF logUtil "LoadingConfiguration" iNPUT_AUTOMATION_CONFIGURATION (jget (commonStrings).iNIT))
            jaxbContext <- (JAXBContext.newInstance ("InputAutomationConfiguration"))
            unmarshaller <- (JAXBContext.createUnmarshaller jaxbContext)
            root <- (Unmarshaller.unmarshal unmarshaller (jio (StreamSource.new_1 (jio (FileInputStream.new_1 file)))) ("InputAutomationConfiguration"))
            jset (this).inputAutomationConfiguration ((javaCast (jio (JAXBElement.getValue root)) :: InputAutomationConfiguration.InputAutomationConfiguration))
            inputAutomationModuleConfigurationList <- (InputAutomationConfiguration.getInputAutomationModuleConfigurationList ((jget (this).inputAutomationConfiguration)))
            Control.Monad.void (LogUtil.putF logUtil ((("isInstalled: " ++ javaToString (jio (InputAutomationConfiguration.isInstalled ((jget (this).inputAutomationConfiguration))))) ++ " inputAutomationModuleConfigurationList: ") ++ javaToString inputAutomationModuleConfigurationList) iNPUT_AUTOMATION_CONFIGURATION (jget (commonStrings).iNIT))
            when (inputAutomationModuleConfigurationList /= javaNull) $ do
                size <- (List.size inputAutomationModuleConfigurationList)
                inputAutomationModuleConfiguration <- newIORef (javaNull)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    assignedValue <- (List.get inputAutomationModuleConfigurationList index)
                    jset inputAutomationModuleConfiguration (assignedValue)
                    Control.Monad.void (InputAutomationModuleConfiguration.init_1 ((jget inputAutomationModuleConfiguration)) abeClientInformation)
            Control.Monad.void (LogUtil.putF logUtil "LoadedConfiguration" iNPUT_AUTOMATION_CONFIGURATION (jget (commonStrings).iNIT))
        else do
            Control.Monad.void (LogUtil.putF logUtil "New Configuration" iNPUT_AUTOMATION_CONFIGURATION (jget (commonStrings).iNIT))
            assignedValue <- (InputAutomationConfiguration.new_)
            jset (this).inputAutomationConfiguration (assignedValue)
        pure ()


