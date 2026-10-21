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
-- package org.allbinary.input.automation.robot.osgi
module InputAutomationRobotBundleActivator where

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
import qualified InputAutomationRobotUtil -- same package or java.lang
import qualified InputAutomationRobotChangeEvent -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BundleActivator -- org.osgi.framework.BundleActivator
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified ServiceFactory -- org.osgi.framework.ServiceFactory
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified InputAutomationRobotChangeListener -- bundle.input.automation.robot.InputAutomationRobotChangeListener
import qualified InputAutomationRobotServiceInterface -- bundle.input.automation.robot.InputAutomationRobotServiceInterface
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OSGIActivatorUtil -- org.allbinary.osgi.OSGIActivatorUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements BundleActivator
data InputAutomationRobotBundleActivator = InputAutomationRobotBundleActivator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , inputRobotInterface :: IORef (JavaArray (InputRobotInterface.InputRobotInterface))
    , serviceFactory :: IORef (ServiceFactory.ServiceFactory)
    }

instance JavaNull InputAutomationRobotBundleActivator where
    javaNull = javaNullRecord "InputAutomationRobotBundleActivator"

instance JavaEquals InputAutomationRobotBundleActivator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationRobotBundleActivator where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationRobotBundleActivator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationRobotBundleActivator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    inputRobotInterface <- newIORef javaNull
    serviceFactory <- newIORef javaNull
    let this = InputAutomationRobotBundleActivator header_ logUtil commonStrings inputRobotInterface serviceFactory
    jregisterLevel header_ this
    BundleActivator.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "registerAsService" (\() -> registerAsService_impl this)
    jregisterMethod header_ "getInputAutomationRobotChangeListener" (\() -> getInputAutomationRobotChangeListener_impl this)
    jregisterMethod header_ "addRobots" (\() -> addRobots_impl this)
    jregisterMethod header_ "removeRobots" (\() -> removeRobots_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "getServiceFactory" (\() -> getServiceFactory_impl this)
    jregisterMethod header_ "setServiceFactory" (\() -> setServiceFactory_impl this)
    jregisterMethod header_ "getInputRobotInterface" (\() -> getInputRobotInterface_impl this)
    jregisterMethod header_ "setInputRobotInterface" (\() -> setInputRobotInterface_impl this)
    pure this

initFields_ :: InputAutomationRobotBundleActivator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.inputRobotInterface (javaNull)
    jset this.serviceFactory (javaNull)
    pure ()

new_ :: IO InputAutomationRobotBundleActivator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationRobotBundleActivator -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (InputAutomationRobotBundleActivator.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: InputAutomationRobotBundleActivator))

init_impl :: InputAutomationRobotBundleActivator -> IO (())
init_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
registerAsService :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
registerAsService object_ a1 = jmethod object_ "registerAsService" (\() -> (registerAsService_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

registerAsService_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
registerAsService_super object_ a1 = (registerAsService_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

registerAsService_impl :: InputAutomationRobotBundleActivator -> BundleContext.BundleContext -> IO (())
registerAsService_impl this bundleContext = do
        Control.Monad.void (OSGIActivatorUtil.registerAsService bundleContext (jio (InputAutomationRobotBundleActivator.getServiceFactory this)) (jio (getName "InputAutomationRobotServiceInterface")))
        pure ()


-- throws Exception
getInputAutomationRobotChangeListener :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (InputAutomationRobotChangeListener.InputAutomationRobotChangeListener)
getInputAutomationRobotChangeListener object_ a1 = jmethod object_ "getInputAutomationRobotChangeListener" (\() -> (getInputAutomationRobotChangeListener_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

getInputAutomationRobotChangeListener_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (InputAutomationRobotChangeListener.InputAutomationRobotChangeListener)
getInputAutomationRobotChangeListener_super object_ a1 = (getInputAutomationRobotChangeListener_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

getInputAutomationRobotChangeListener_impl :: InputAutomationRobotBundleActivator -> BundleContext.BundleContext -> IO (InputAutomationRobotChangeListener.InputAutomationRobotChangeListener)
getInputAutomationRobotChangeListener_impl this context = do
    javaCatchReturn $ do
        serviceReference <- (BundleContext.getServiceReference context (jio (getName "InputAutomationRobotChangeListener")))
        if (serviceReference /= javaNull) then do
            let inputAutomationRobotChangeListener = (javaCast (jio (BundleContext.getService context serviceReference)) :: InputAutomationRobotChangeListener.InputAutomationRobotChangeListener)
            when (inputAutomationRobotChangeListener == javaNull) $ do
                javaThrow ((JavaException "Exception" "No Service For ServiceReference"))
            javaReturn (inputAutomationRobotChangeListener)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No ServiceReference: " ++ (jio (getName "InputAutomationRobotChangeListener"))) this "getInputAutomationRobotChangeListener")
            javaReturn (javaNull)


addRobots :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
addRobots object_ a1 = jmethod object_ "addRobots" (\() -> (addRobots_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

addRobots_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
addRobots_super object_ a1 = (addRobots_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

addRobots_impl :: InputAutomationRobotBundleActivator -> BundleContext.BundleContext -> IO (())
addRobots_impl this context = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "addModules")
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "addRobots")
            inputAutomationRobotChangeListener <- (InputAutomationRobotBundleActivator.getInputAutomationRobotChangeListener this context)
            when (inputAutomationRobotChangeListener /= javaNull) $ do
                forM_ [0 .. (jlength (jio (InputAutomationRobotBundleActivator.getInputRobotInterface this))) - 1] $ \index -> javaIteration (pure ()) $ do
                    inputAutomationRobotChangeEvent <- (InputAutomationRobotUtil.getChangeEvent (jindex ((jio (InputAutomationRobotBundleActivator.getInputRobotInterface this))) (index)))
                    Control.Monad.void (InputAutomationRobotChangeListener.onAdd inputAutomationRobotChangeListener inputAutomationRobotChangeEvent)
        pure ()


removeRobots :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
removeRobots object_ a1 = jmethod object_ "removeRobots" (\() -> (removeRobots_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

removeRobots_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
removeRobots_super object_ a1 = (removeRobots_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

removeRobots_impl :: InputAutomationRobotBundleActivator -> BundleContext.BundleContext -> IO (())
removeRobots_impl this context = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "removeRobots")
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "removeRobots")
            inputAutomationRobotChangeListener <- (InputAutomationRobotBundleActivator.getInputAutomationRobotChangeListener this context)
            when (inputAutomationRobotChangeListener /= javaNull) $ do
                forM_ [0 .. (jlength (jio (InputAutomationRobotBundleActivator.getInputRobotInterface this))) - 1] $ \index -> javaIteration (pure ()) $ do
                    inputAutomationRobotChangeEvent <- (InputAutomationRobotUtil.getChangeEvent (jindex ((jio (InputAutomationRobotBundleActivator.getInputRobotInterface this))) (index)))
                    Control.Monad.void (InputAutomationRobotChangeListener.onRemove inputAutomationRobotChangeListener inputAutomationRobotChangeEvent)
        pure ()


-- throws Exception
start :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

start_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

start_impl :: InputAutomationRobotBundleActivator -> BundleContext.BundleContext -> IO (())
start_impl this context = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).sTART))
        Control.Monad.void (InputAutomationRobotBundleActivator.addRobots this context)
        Control.Monad.void (InputAutomationRobotBundleActivator.registerAsService this context)
        pure ()


-- throws Exception
stop :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop object_ a1 = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

stop_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop_super object_ a1 = (stop_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

stop_impl :: InputAutomationRobotBundleActivator -> BundleContext.BundleContext -> IO (())
stop_impl this context = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Stop" this (jget ((jget (this).commonStrings)).sTART))
        Control.Monad.void (InputAutomationRobotBundleActivator.removeRobots this context)
        pure ()


getServiceFactory :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getServiceFactory object_ = jmethod object_ "getServiceFactory" (\() -> (getServiceFactory_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) ()

getServiceFactory_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getServiceFactory_super object_ = (getServiceFactory_impl (javaCast object_ :: InputAutomationRobotBundleActivator))

getServiceFactory_impl :: InputAutomationRobotBundleActivator -> IO (Any.Any)
getServiceFactory_impl this = do
        pure ((jtoObject (jget (this).serviceFactory)))


setServiceFactory :: (JavaObjectClass this_) => this_ -> ServiceFactory.ServiceFactory -> IO (())
setServiceFactory object_ a1 = jmethod object_ "setServiceFactory" (\() -> (setServiceFactory_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

setServiceFactory_super :: (JavaObjectClass this_) => this_ -> ServiceFactory.ServiceFactory -> IO (())
setServiceFactory_super object_ a1 = (setServiceFactory_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

setServiceFactory_impl :: InputAutomationRobotBundleActivator -> ServiceFactory.ServiceFactory -> IO (())
setServiceFactory_impl this serviceObject = do
        jset (this).serviceFactory (serviceObject)
        pure ()


getInputRobotInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterface object_ = jmethod object_ "getInputRobotInterface" (\() -> (getInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) ()

getInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterface_super object_ = (getInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotBundleActivator))

getInputRobotInterface_impl :: InputAutomationRobotBundleActivator -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterface_impl this = do
        pure ((jget (this).inputRobotInterface))


setInputRobotInterface :: (JavaObjectClass this_) => this_ -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO (())
setInputRobotInterface object_ a1 = jmethod object_ "setInputRobotInterface" (\() -> (setInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotBundleActivator))) () a1

setInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO (())
setInputRobotInterface_super object_ a1 = (setInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotBundleActivator)) a1

setInputRobotInterface_impl :: InputAutomationRobotBundleActivator -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO (())
setInputRobotInterface_impl this inputRobotInterface = do
        jset (this).inputRobotInterface (inputRobotInterface)
        pure ()


