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
-- package org.allbinary.input.automation.module.configuration
module InputAutomationModuleConfigurations where

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
import qualified InputAutomationModuleConfiguration -- same package or java.lang
import qualified File -- java.io.File
import qualified FileInputStream -- java.io.FileInputStream
import qualified HashMap -- java.util.HashMap
import qualified List -- java.util.List
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified InputAutomationModuleData -- org.allbinary.input.automation.module.InputAutomationModuleData
import qualified NewInputAutomationModulesData -- org.allbinary.input.automation.module.NewInputAutomationModulesData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data InputAutomationModuleConfigurations = InputAutomationModuleConfigurations
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , hashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull InputAutomationModuleConfigurations where
    javaNull = javaNullRecord "InputAutomationModuleConfigurations"

instance JavaEquals InputAutomationModuleConfigurations where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleConfigurations where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleConfigurations where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleConfigurations
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    hashMap <- newIORef javaNull
    let this = InputAutomationModuleConfigurations header_ logUtil hashMap
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "getHashMap" (\() -> getHashMap_impl this)
    jregisterMethod header_ "setHashMap" (\() -> setHashMap_impl this)
    pure this

initFields_ :: InputAutomationModuleConfigurations -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hashMap (javaNull)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> File.File -> IO InputAutomationModuleConfigurations
new_2 abeClientInformation file = do
    this <- newRecord_
    init_2 this abeClientInformation file
    pure this

init_2 :: InputAutomationModuleConfigurations -> AbeClientInformationInterface.AbeClientInformationInterface -> File.File -> IO ()
init_2 this abeClientInformation file = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfigurations.setHashMap this (jio (HashMap.new_)))
        let bytes = (jnewArray (100000) 0)
        idFile <- (FileInputStream.new_1 file)
        length <- (FileInputStream.read idFile bytes)
        data_ <- (jnewString bytes)
        let endIndex = (jstringLastIndexOf data_ '>')
        document <- (DomDocumentHelper.create_1 (Prelude.take (((endIndex + 1)) - (0)) (Prelude.drop (0) data_)))
        nodeList <- (Document.getElementsByTagName document (jget NewInputAutomationModulesData.nAME))
        when ((jio (NodeList.getLength nodeList)) > 0) $ do
            nameNodeList <- (Document.getElementsByTagName document (jget InputAutomationModuleData.nAME))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Module(s) Specified: " ++ javaToString (jio (NodeList.getLength nameNodeList))) this "Contructor")
            forM_ [0 .. (jio (NodeList.getLength nameNodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                node <- (NodeList.item nameNodeList index)
                Control.Monad.void (InputAutomationModuleConfigurations.add this (jio (InputAutomationModuleConfiguration.new_2 abeClientInformation node)))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> Document.Document -> IO InputAutomationModuleConfigurations
new_2 abeClientInformation document = do
    this <- newRecord_
    init_2 this abeClientInformation document
    pure this

init_2 :: InputAutomationModuleConfigurations -> AbeClientInformationInterface.AbeClientInformationInterface -> Document.Document -> IO ()
init_2 this abeClientInformation document = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfigurations.setHashMap this (jio (HashMap.new_)))
        nameNodeList <- (Document.getElementsByTagName document (jget InputAutomationModuleData.nAME))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Module(s) Specified: " ++ javaToString (jio (NodeList.getLength nameNodeList))) this "Contructor")
        forM_ [0 .. (jio (NodeList.getLength nameNodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nameNodeList index)
            Control.Monad.void (InputAutomationModuleConfigurations.add this (jio (InputAutomationModuleConfiguration.new_2 abeClientInformation node)))
        pure ()

new_1 :: List.List -> IO InputAutomationModuleConfigurations
new_1 inputAutomationModuleConfigurationList = do
    this <- newRecord_
    init_1 this inputAutomationModuleConfigurationList
    pure this

init_1 :: InputAutomationModuleConfigurations -> List.List -> IO ()
init_1 this inputAutomationModuleConfigurationList = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfigurations.setHashMap this (jio (HashMap.new_)))
        size <- (List.size inputAutomationModuleConfigurationList)
        inputAutomationModuleConfiguration <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (List.get inputAutomationModuleConfigurationList index)
            jset inputAutomationModuleConfiguration (assignedValue)
            Control.Monad.void (InputAutomationModuleConfigurations.add this (jget inputAutomationModuleConfiguration))
        pure ()

new_ :: IO InputAutomationModuleConfigurations
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationModuleConfigurations -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfigurations.setHashMap this (jio (HashMap.new_)))
        pure ()


add :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InputAutomationModuleConfigurations))) () a1

add_super :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: InputAutomationModuleConfigurations)) a1

add_impl :: InputAutomationModuleConfigurations -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
add_impl this inputAutomationModuleConfiguration = do
        Control.Monad.void (HashMap.put ((jio (InputAutomationModuleConfigurations.getHashMap this))) (jio (InputAutomationModuleConfiguration.getClassName inputAutomationModuleConfiguration)) inputAutomationModuleConfiguration)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: InputAutomationModuleConfigurations))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: InputAutomationModuleConfigurations)) a1

remove_impl :: InputAutomationModuleConfigurations -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
remove_impl this inputAutomationModuleConfiguration = do
        Control.Monad.void (HashMap.remove ((jio (InputAutomationModuleConfigurations.getHashMap this))) (jio (InputAutomationModuleConfiguration.getClassName inputAutomationModuleConfiguration)))
        pure ()


getHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getHashMap object_ = jmethod object_ "getHashMap" (\() -> (getHashMap_impl (javaCast object_ :: InputAutomationModuleConfigurations))) ()

getHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getHashMap_super object_ = (getHashMap_impl (javaCast object_ :: InputAutomationModuleConfigurations))

getHashMap_impl :: InputAutomationModuleConfigurations -> IO (HashMap.HashMap)
getHashMap_impl this = do
        pure ((jget (this).hashMap))


setHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setHashMap object_ a1 = jmethod object_ "setHashMap" (\() -> (setHashMap_impl (javaCast object_ :: InputAutomationModuleConfigurations))) () a1

setHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setHashMap_super object_ a1 = (setHashMap_impl (javaCast object_ :: InputAutomationModuleConfigurations)) a1

setHashMap_impl :: InputAutomationModuleConfigurations -> HashMap.HashMap -> IO (())
setHashMap_impl this hashMap = do
        jset (this).hashMap (hashMap)
        pure ()


