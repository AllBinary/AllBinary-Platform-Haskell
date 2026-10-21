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
-- package org.allbinary.input.automation.module
module InputAutomationModuleFactoryFactory where

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
import qualified DefaultListModelHelper -- same package or java.lang
import qualified InputAutomationModuleFactoryInterface -- same package or java.lang
import qualified Collection -- java.util.Collection
import qualified HashMap -- java.util.HashMap
import qualified Iterator -- java.util.Iterator
import qualified HelpSet -- javax.help.HelpSet
import qualified HelpSetEvent -- javax.help.event.HelpSetEvent
import qualified HelpSetListener -- javax.help.event.HelpSetListener
import qualified ListModel -- javax.swing.ListModel
import qualified InputAutomationModuleConfiguration -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration
import qualified InputAutomationModuleConfigurations -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified JavaHelpSetNotifier -- org.allbinary.logic.java.help.JavaHelpSetNotifier
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InputAutomationModuleFactoryFactory = InputAutomationModuleFactoryFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , hashMap :: IORef (HashMap.HashMap)
    , defaultListModelHelper :: IORef (DefaultListModelHelper.DefaultListModelHelper)
    , helpSetListenerInterface :: IORef (HelpSetListener.HelpSetListener)
    }

instance JavaNull InputAutomationModuleFactoryFactory where
    javaNull = javaNullRecord "InputAutomationModuleFactoryFactory"

instance JavaEquals InputAutomationModuleFactoryFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleFactoryFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleFactoryFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleFactoryFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    hashMap <- newIORef javaNull
    defaultListModelHelper <- newIORef javaNull
    helpSetListenerInterface <- newIORef javaNull
    let this = InputAutomationModuleFactoryFactory header_ logUtil hashMap defaultListModelHelper helpSetListenerInterface
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getListModel" (\() -> getListModel_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: InputAutomationModuleFactoryFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hashMap (javaNull)
    jset this.defaultListModelHelper (javaNull)
    jset this.helpSetListenerInterface (javaNull)
    pure ()

new_2 :: InputAutomationModuleConfigurations.InputAutomationModuleConfigurations -> HelpSetListener.HelpSetListener -> IO InputAutomationModuleFactoryFactory
new_2 inputAutomationModuleConfigurations helpSetListenerInterface = do
    this <- newRecord_
    init_2 this inputAutomationModuleConfigurations helpSetListenerInterface
    pure this

init_2 :: InputAutomationModuleFactoryFactory -> InputAutomationModuleConfigurations.InputAutomationModuleConfigurations -> HelpSetListener.HelpSetListener -> IO ()
init_2 this inputAutomationModuleConfigurations helpSetListenerInterface = do
        initFields_ this
        jset (this).helpSetListenerInterface (helpSetListenerInterface)
        assignedValue <- (DefaultListModelHelper.new_)
        jset (this).defaultListModelHelper (assignedValue)
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).hashMap (assignedValue)
        collection <- (HashMap.values ((jio (InputAutomationModuleConfigurations.getHashMap inputAutomationModuleConfigurations))))
        iterator <- (Collection.iterator collection)
        inputAutomationModuleConfiguration <- newIORef (javaNull)
        fix $ \loop -> when (jio (Iterator.hasNext iterator)) $ javaIteration (loop) $ do
            jset inputAutomationModuleConfiguration ((javaCast (jio (Iterator.next iterator)) :: InputAutomationModuleConfiguration.InputAutomationModuleConfiguration))
            Control.Monad.void (InputAutomationModuleFactoryFactory.add this (jget inputAutomationModuleConfiguration))
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jget (this).defaultListModelHelper)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((("Loaded " ++ javaToString (jio (HashMap.size ((jget (this).hashMap))))) ++ "/") ++ javaToString (jio (ListModel.getSize ((jio (DefaultListModelHelper.getListModel ((jget (this).defaultListModelHelper)))))))) ++ " Input Automation Modules") this "Contructor")
        pure ()


add :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InputAutomationModuleFactoryFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: InputAutomationModuleFactoryFactory)) a1

add_impl :: InputAutomationModuleFactoryFactory -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
add_impl this inputAutomationModuleConfiguration = do
        inputAutomationModuleInterface <- (InputAutomationModuleConfiguration.getInputAutomationModuleInterface inputAutomationModuleConfiguration)
        Control.Monad.void (HashMap.put ((jget (this).hashMap)) (jio (InputAutomationModuleConfiguration.getName inputAutomationModuleConfiguration)) inputAutomationModuleInterface)
        Control.Monad.void (DefaultListModelHelper.add ((jget (this).defaultListModelHelper)) (jio (InputAutomationModuleConfiguration.getName inputAutomationModuleConfiguration)))
        helpSet <- (InputAutomationModuleFactoryInterface.getHelpSet inputAutomationModuleInterface)
        when (Prelude.not (jio (JavaHelpSetNotifier.isNotified helpSet))) $ do
            helpSetEvent <- (HelpSetEvent.new_3 this helpSet (HelpSetEvent.hELPSET_ADDED))
            Control.Monad.void (HelpSetListener.helpSetAdded ((jget (this).helpSetListenerInterface)) helpSetEvent)
        pure ()


getListModel :: (JavaObjectClass this_) => this_ -> IO (ListModel.ListModel)
getListModel object_ = jmethod object_ "getListModel" (\() -> (getListModel_impl (javaCast object_ :: InputAutomationModuleFactoryFactory))) ()

getListModel_super :: (JavaObjectClass this_) => this_ -> IO (ListModel.ListModel)
getListModel_super object_ = (getListModel_impl (javaCast object_ :: InputAutomationModuleFactoryFactory))

getListModel_impl :: InputAutomationModuleFactoryFactory -> IO (ListModel.ListModel)
getListModel_impl this = do
        pure ((javaCast (jio (DefaultListModelHelper.getListModel ((jget (this).defaultListModelHelper)))) :: ListModel.ListModel))


getInstance :: (JavaObjectClass this_) => this_ -> String -> IO (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: InputAutomationModuleFactoryFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: InputAutomationModuleFactoryFactory)) a1

getInstance_impl :: InputAutomationModuleFactoryFactory -> String -> IO (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
getInstance_impl this moduleName = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Getting Module: " ++ moduleName) this (jget (commonStrings).gET_INSTANCE))
        let inputAutomationModuleFactoryInterface = (javaCast (jio (HashMap.get ((jget (this).hashMap)) moduleName)) :: InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
        when (inputAutomationModuleFactoryInterface == javaNull) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Module: " ++ moduleName) ++ " was null") this (jget (commonStrings).gET_INSTANCE))
        pure (inputAutomationModuleFactoryInterface)


