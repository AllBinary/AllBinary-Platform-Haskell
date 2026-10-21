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
-- package org.allbinary.input.automation.module.osgi
module InputAutomationModuleBundleActivator where

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
import qualified Any -- same package or java.lang
import qualified BundleActivator -- org.osgi.framework.BundleActivator
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified ServiceFactory -- org.osgi.framework.ServiceFactory
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified InputAutomationModuleServiceInterface -- bundle.input.automation.module.InputAutomationModuleServiceInterface
import qualified InputAutomationConfigurationModuleChangeListener -- bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener
import qualified InputAutomationConfigurationModuleChangeEvent -- org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent
import qualified InputAutomationConfigurationUtil -- org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OSGIActivatorUtil -- org.allbinary.osgi.OSGIActivatorUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements BundleActivator
data InputAutomationModuleBundleActivator = InputAutomationModuleBundleActivator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , inputAutomationModuleInterface :: IORef (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
    , serviceFactory :: IORef (ServiceFactory.ServiceFactory)
    }

instance JavaNull InputAutomationModuleBundleActivator where
    javaNull = javaNullRecord "InputAutomationModuleBundleActivator"

instance JavaEquals InputAutomationModuleBundleActivator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleBundleActivator where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleBundleActivator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleBundleActivator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    inputAutomationModuleInterface <- newIORef javaNull
    serviceFactory <- newIORef javaNull
    let this = InputAutomationModuleBundleActivator header_ logUtil commonStrings inputAutomationModuleInterface serviceFactory
    jregisterLevel header_ this
    BundleActivator.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInputAutomationConfigurationModuleChangeListener" (\() -> getInputAutomationConfigurationModuleChangeListener_impl this)
    jregisterMethod header_ "addModules" (\() -> addModules_impl this)
    jregisterMethod header_ "registerAsService" (\() -> registerAsService_impl this)
    jregisterMethod header_ "removeModules" (\() -> removeModules_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "getInputAutomationModuleInterface" (\() -> getInputAutomationModuleInterface_impl this)
    jregisterMethod header_ "setInputAutomationModuleInterface" (\() -> setInputAutomationModuleInterface_impl this)
    jregisterMethod header_ "getServiceFactory" (\() -> getServiceFactory_impl this)
    jregisterMethod header_ "setServiceFactory" (\() -> setServiceFactory_impl this)
    pure this

initFields_ :: InputAutomationModuleBundleActivator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.inputAutomationModuleInterface (javaNull)
    jset this.serviceFactory (javaNull)
    pure ()

new_ :: IO InputAutomationModuleBundleActivator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationModuleBundleActivator -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleBundleActivator.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: InputAutomationModuleBundleActivator))

init_impl :: InputAutomationModuleBundleActivator -> IO (())
init_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
getInputAutomationConfigurationModuleChangeListener :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (InputAutomationConfigurationModuleChangeListener.InputAutomationConfigurationModuleChangeListener)
getInputAutomationConfigurationModuleChangeListener object_ a1 = jmethod object_ "getInputAutomationConfigurationModuleChangeListener" (\() -> (getInputAutomationConfigurationModuleChangeListener_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

getInputAutomationConfigurationModuleChangeListener_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (InputAutomationConfigurationModuleChangeListener.InputAutomationConfigurationModuleChangeListener)
getInputAutomationConfigurationModuleChangeListener_super object_ a1 = (getInputAutomationConfigurationModuleChangeListener_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

getInputAutomationConfigurationModuleChangeListener_impl :: InputAutomationModuleBundleActivator -> BundleContext.BundleContext -> IO (InputAutomationConfigurationModuleChangeListener.InputAutomationConfigurationModuleChangeListener)
getInputAutomationConfigurationModuleChangeListener_impl this context = do
    javaCatchReturn $ do
        serviceReference <- (BundleContext.getServiceReference context (jio (getName "InputAutomationConfigurationModuleChangeListener")))
        if (serviceReference /= javaNull) then do
            let inputAutomationConfigurationModuleChangeListener = (javaCast (jio (BundleContext.getService context serviceReference)) :: InputAutomationConfigurationModuleChangeListener.InputAutomationConfigurationModuleChangeListener)
            when (inputAutomationConfigurationModuleChangeListener == javaNull) $ do
                javaThrow ((JavaException "Exception" "No Service For ServiceReference"))
            javaReturn (inputAutomationConfigurationModuleChangeListener)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No ServiceReference: " ++ (jio (getName "InputAutomationConfigurationModuleChangeListener"))) this "addModules")
            javaReturn (javaNull)


addModules :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
addModules object_ a1 = jmethod object_ "addModules" (\() -> (addModules_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

addModules_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
addModules_super object_ a1 = (addModules_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

addModules_impl :: InputAutomationModuleBundleActivator -> BundleContext.BundleContext -> IO (())
addModules_impl this context = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "addModules")
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "addModules")
            inputAutomationConfigurationModuleChangeListener <- (InputAutomationModuleBundleActivator.getInputAutomationConfigurationModuleChangeListener this context)
            when (inputAutomationConfigurationModuleChangeListener /= javaNull) $ do
                forM_ [0 .. (jlength (jio (InputAutomationModuleBundleActivator.getInputAutomationModuleInterface this))) - 1] $ \index -> javaIteration (pure ()) $ do
                    inputAutomationConfigurationModuleChangeEvent <- (InputAutomationConfigurationUtil.getChangeEvent (jindex ((jio (InputAutomationModuleBundleActivator.getInputAutomationModuleInterface this))) (index)))
                    Control.Monad.void (InputAutomationConfigurationModuleChangeListener.onAdd inputAutomationConfigurationModuleChangeListener inputAutomationConfigurationModuleChangeEvent)
        pure ()


-- throws Exception
registerAsService :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
registerAsService object_ a1 = jmethod object_ "registerAsService" (\() -> (registerAsService_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

registerAsService_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
registerAsService_super object_ a1 = (registerAsService_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

registerAsService_impl :: InputAutomationModuleBundleActivator -> BundleContext.BundleContext -> IO (())
registerAsService_impl this bundleContext = do
        Control.Monad.void (OSGIActivatorUtil.registerAsService bundleContext (jio (InputAutomationModuleBundleActivator.getServiceFactory this)) (jio (getName "InputAutomationModuleServiceInterface")))
        pure ()


removeModules :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
removeModules object_ a1 = jmethod object_ "removeModules" (\() -> (removeModules_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

removeModules_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
removeModules_super object_ a1 = (removeModules_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

removeModules_impl :: InputAutomationModuleBundleActivator -> BundleContext.BundleContext -> IO (())
removeModules_impl this context = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "removeModules")
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "removeModules")
            inputAutomationConfigurationModuleChangeListener <- (InputAutomationModuleBundleActivator.getInputAutomationConfigurationModuleChangeListener this context)
            when (inputAutomationConfigurationModuleChangeListener /= javaNull) $ do
                forM_ [0 .. (jlength (jio (InputAutomationModuleBundleActivator.getInputAutomationModuleInterface this))) - 1] $ \index -> javaIteration (pure ()) $ do
                    inputAutomationConfigurationModuleChangeEvent <- (InputAutomationConfigurationUtil.getChangeEvent (jindex ((jio (InputAutomationModuleBundleActivator.getInputAutomationModuleInterface this))) (index)))
                    Control.Monad.void (InputAutomationConfigurationModuleChangeListener.onRemove inputAutomationConfigurationModuleChangeListener inputAutomationConfigurationModuleChangeEvent)
        pure ()


-- throws Exception
start :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

start_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

start_impl :: InputAutomationModuleBundleActivator -> BundleContext.BundleContext -> IO (())
start_impl this context = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).sTART))
        Control.Monad.void (InputAutomationModuleBundleActivator.addModules this context)
        Control.Monad.void (InputAutomationModuleBundleActivator.registerAsService this context)
        pure ()


-- throws Exception
stop :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop object_ a1 = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

stop_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop_super object_ a1 = (stop_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

stop_impl :: InputAutomationModuleBundleActivator -> BundleContext.BundleContext -> IO (())
stop_impl this context = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "stop")
        Control.Monad.void (InputAutomationModuleBundleActivator.removeModules this context)
        pure ()


getInputAutomationModuleInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterface object_ = jmethod object_ "getInputAutomationModuleInterface" (\() -> (getInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) ()

getInputAutomationModuleInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterface_super object_ = (getInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleBundleActivator))

getInputAutomationModuleInterface_impl :: InputAutomationModuleBundleActivator -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterface_impl this = do
        pure ((jget (this).inputAutomationModuleInterface))


setInputAutomationModuleInterface :: (JavaObjectClass this_) => this_ -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterface object_ a1 = jmethod object_ "setInputAutomationModuleInterface" (\() -> (setInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

setInputAutomationModuleInterface_super :: (JavaObjectClass this_) => this_ -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterface_super object_ a1 = (setInputAutomationModuleInterface_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

setInputAutomationModuleInterface_impl :: InputAutomationModuleBundleActivator -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterface_impl this inputAutomationModuleInterface = do
        jset (this).inputAutomationModuleInterface (inputAutomationModuleInterface)
        pure ()


getServiceFactory :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getServiceFactory object_ = jmethod object_ "getServiceFactory" (\() -> (getServiceFactory_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) ()

getServiceFactory_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getServiceFactory_super object_ = (getServiceFactory_impl (javaCast object_ :: InputAutomationModuleBundleActivator))

getServiceFactory_impl :: InputAutomationModuleBundleActivator -> IO (Any.Any)
getServiceFactory_impl this = do
        pure ((jtoObject (jget (this).serviceFactory)))


setServiceFactory :: (JavaObjectClass this_) => this_ -> ServiceFactory.ServiceFactory -> IO (())
setServiceFactory object_ a1 = jmethod object_ "setServiceFactory" (\() -> (setServiceFactory_impl (javaCast object_ :: InputAutomationModuleBundleActivator))) () a1

setServiceFactory_super :: (JavaObjectClass this_) => this_ -> ServiceFactory.ServiceFactory -> IO (())
setServiceFactory_super object_ a1 = (setServiceFactory_impl (javaCast object_ :: InputAutomationModuleBundleActivator)) a1

setServiceFactory_impl :: InputAutomationModuleBundleActivator -> ServiceFactory.ServiceFactory -> IO (())
setServiceFactory_impl this serviceObject = do
        jset (this).serviceFactory (serviceObject)
        pure ()


