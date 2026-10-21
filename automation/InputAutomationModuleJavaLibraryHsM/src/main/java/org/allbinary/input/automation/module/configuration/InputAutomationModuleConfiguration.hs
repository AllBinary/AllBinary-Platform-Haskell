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
module InputAutomationModuleConfiguration where

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
import qualified Class -- same package or java.lang
import qualified XmlAccessType -- javax.xml.bind.annotation.XmlAccessType
import qualified XmlAccessorType -- javax.xml.bind.annotation.XmlAccessorType
import qualified XmlElement -- javax.xml.bind.annotation.XmlElement
import qualified XmlRootElement -- javax.xml.bind.annotation.XmlRootElement
import qualified XmlType -- javax.xml.bind.annotation.XmlType
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified InputAutomationData -- org.allbinary.input.automation.InputAutomationData
import qualified InputAutomationModuleData -- org.allbinary.input.automation.module.InputAutomationModuleData
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data InputAutomationModuleConfiguration = InputAutomationModuleConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , className :: IORef (String)
    , name :: IORef (String)
    , inputAutomationModuleInterface :: IORef (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
    }

instance JavaNull InputAutomationModuleConfiguration where
    javaNull = javaNullRecord "InputAutomationModuleConfiguration"

instance JavaEquals InputAutomationModuleConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    className <- newIORef ""
    name <- newIORef ""
    inputAutomationModuleInterface <- newIORef javaNull
    let this = InputAutomationModuleConfiguration header_ logUtil commonStrings className name inputAutomationModuleInterface
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "toDomNode" (\() -> toDomNode_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getClassName" (\() -> getClassName_impl this)
    jregisterMethod header_ "setClassName" (\() -> setClassName_impl this)
    jregisterMethod header_ "getInputAutomationModuleInterface" (\() -> getInputAutomationModuleInterface_impl this)
    jregisterMethod header_ "setInputAutomationModuleInterface" (\() -> setInputAutomationModuleInterface_impl this)
    pure this

initFields_ :: InputAutomationModuleConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.className ("")
    jset this.name ("")
    jset this.inputAutomationModuleInterface (javaNull)
    pure ()

new_ :: IO InputAutomationModuleConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationModuleConfiguration -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> Node.Node -> IO InputAutomationModuleConfiguration
new_2 abeClientInformation node = do
    this <- newRecord_
    init_2 this abeClientInformation node
    pure this

init_2 :: InputAutomationModuleConfiguration -> AbeClientInformationInterface.AbeClientInformationInterface -> Node.Node -> IO ()
init_2 this abeClientInformation node = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfiguration.init this abeClientInformation node)
        pure ()

new_3 :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> IO InputAutomationModuleConfiguration
new_3 abeClientInformation name className = do
    this <- newRecord_
    init_3 this abeClientInformation name className
    pure this

init_3 :: InputAutomationModuleConfiguration -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> IO ()
init_3 this abeClientInformation name className = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfiguration.setName this name)
        Control.Monad.void (InputAutomationModuleConfiguration.setClassName this className)
        Control.Monad.void (InputAutomationModuleConfiguration.init this abeClientInformation)
        pure ()

new_1 :: InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface -> IO InputAutomationModuleConfiguration
new_1 inputAutomationModuleInterface = do
    this <- newRecord_
    init_1 this inputAutomationModuleInterface
    pure this

init_1 :: InputAutomationModuleConfiguration -> InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface -> IO ()
init_1 this inputAutomationModuleInterface = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleConfiguration.setInputAutomationModuleInterface this inputAutomationModuleInterface)
        Control.Monad.void (InputAutomationModuleConfiguration.setClassName this (jio (Class.getName ((jio (jobjectGetClass (jget (this).inputAutomationModuleInterface)))))))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Node.Node -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationModuleConfiguration))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Node.Node -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: InputAutomationModuleConfiguration)) a1 a2

init_impl :: InputAutomationModuleConfiguration -> AbeClientInformationInterface.AbeClientInformationInterface -> Node.Node -> IO (())
init_impl this abeClientInformation node = do
        nodeList <- (Node.getChildNodes node)
        if (nodeList /= javaNull) then do
            classNameNode <- (DomSearchHelper.getNode (DynamicObjectData.nAME) nodeList)
            if (classNameNode /= javaNull) then do
                Control.Monad.void (InputAutomationModuleConfiguration.setClassName this (jio (DomNodeHelper.getTextNodeValue classNameNode)))
                Control.Monad.void (InputAutomationModuleConfiguration.init this abeClientInformation)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Class Node Null" this (jget ((jget (this).commonStrings)).iNIT))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget InputAutomationData.nAME) ++ " Node Has No Children") this "Contructor")
        pure ()


-- Java overload of init with a different parameter count: give it a different name
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationModuleConfiguration))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: InputAutomationModuleConfiguration)) a1

init_impl :: InputAutomationModuleConfiguration -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_impl this abeClientInformation = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Name: " ++ (jio (InputAutomationModuleConfiguration.getName this))) this (jget ((jget (this).commonStrings)).iNIT))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("ClassName: " ++ (jget this.className)) this (jget ((jget (this).commonStrings)).iNIT))
            Control.Monad.void (InputAutomationModuleConfiguration.setInputAutomationModuleInterface this (javaCast (jio (AbeFactory.getInstance ((jio (AbeFactory.getInstance ((jio (AbeFactory.getInstance)))))) abeClientInformation (jio (InputAutomationModuleConfiguration.getClassName this)))) :: InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
        pure ()


-- throws Exception
toDomNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toDomNode object_ a1 = jmethod object_ "toDomNode" (\() -> (toDomNode_impl (javaCast object_ :: InputAutomationModuleConfiguration))) () a1

toDomNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toDomNode_super object_ a1 = (toDomNode_impl (javaCast object_ :: InputAutomationModuleConfiguration)) a1

toDomNode_impl :: InputAutomationModuleConfiguration -> Document.Document -> IO (Node.Node)
toDomNode_impl this document = do
        node <- (Document.createElement document (jget InputAutomationModuleData.nAME))
        classNameNode <- (ModDomHelper.createTextNode document (DynamicObjectData.nAME) (jio (InputAutomationModuleConfiguration.getClassName this)))
        Control.Monad.void (Node.appendChild node classNameNode)
        pure (node)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: InputAutomationModuleConfiguration))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: InputAutomationModuleConfiguration))

getName_impl :: InputAutomationModuleConfiguration -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: InputAutomationModuleConfiguration))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: InputAutomationModuleConfiguration)) a1

setName_impl :: InputAutomationModuleConfiguration -> String -> IO (())
setName_impl this name = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Name: " ++ name) this "setName")
        jset (this).name (name)
        pure ()


getClassName :: (JavaObjectClass this_) => this_ -> IO (String)
getClassName object_ = jmethod object_ "getClassName" (\() -> (getClassName_impl (javaCast object_ :: InputAutomationModuleConfiguration))) ()

getClassName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getClassName_super object_ = (getClassName_impl (javaCast object_ :: InputAutomationModuleConfiguration))

getClassName_impl :: InputAutomationModuleConfiguration -> IO (String)
getClassName_impl this = do
        pure ((jget (this).className))


setClassName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setClassName object_ a1 = jmethod object_ "setClassName" (\() -> (setClassName_impl (javaCast object_ :: InputAutomationModuleConfiguration))) () a1

setClassName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setClassName_super object_ a1 = (setClassName_impl (javaCast object_ :: InputAutomationModuleConfiguration)) a1

setClassName_impl :: InputAutomationModuleConfiguration -> String -> IO (())
setClassName_impl this className = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("ClassName : " ++ className) this "setClassName")
        jset (this).className (className)
        pure ()


getInputAutomationModuleInterface :: (JavaObjectClass this_) => this_ -> IO (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
getInputAutomationModuleInterface object_ = jmethod object_ "getInputAutomationModuleInterface" (\() -> (getInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleConfiguration))) ()

getInputAutomationModuleInterface_super :: (JavaObjectClass this_) => this_ -> IO (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
getInputAutomationModuleInterface_super object_ = (getInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleConfiguration))

getInputAutomationModuleInterface_impl :: InputAutomationModuleConfiguration -> IO (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
getInputAutomationModuleInterface_impl this = do
        pure ((jget (this).inputAutomationModuleInterface))


setInputAutomationModuleInterface :: (JavaObjectClass this_) => this_ -> InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface -> IO (())
setInputAutomationModuleInterface object_ a1 = jmethod object_ "setInputAutomationModuleInterface" (\() -> (setInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleConfiguration))) () a1

setInputAutomationModuleInterface_super :: (JavaObjectClass this_) => this_ -> InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface -> IO (())
setInputAutomationModuleInterface_super object_ a1 = (setInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleConfiguration)) a1

setInputAutomationModuleInterface_impl :: InputAutomationModuleConfiguration -> InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface -> IO (())
setInputAutomationModuleInterface_impl this inputAutomationModuleInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("InputAutomationModuleFactoryInterface : " ++ javaToString inputAutomationModuleInterface) this "setInputAutomationModuleInterface")
        jset (this).inputAutomationModuleInterface (inputAutomationModuleInterface)
        Control.Monad.void (InputAutomationModuleConfiguration.setName this (jio (InputAutomationModuleFactoryInterface.getName ((jget (this).inputAutomationModuleInterface)))))
        pure ()


