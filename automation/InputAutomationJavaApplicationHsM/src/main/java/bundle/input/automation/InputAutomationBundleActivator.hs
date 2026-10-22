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
-- package bundle.input.automation
module InputAutomationBundleActivator where

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
import qualified Thread -- same package or java.lang
import qualified BundleActivator -- org.osgi.framework.BundleActivator
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified InputAutomationConfigurationModuleChangeListener -- bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener
import qualified InputAutomationRobotChangeListener -- bundle.input.automation.robot.InputAutomationRobotChangeListener
import qualified InputAutomationJFrame -- org.allbinary.input.automation.InputAutomationJFrame
import qualified InputAutomationModuleServiceConsumer -- org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer
import qualified InputAutomationNewBundleRunnable -- org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable
import qualified InputAutomationServiceFactory -- org.allbinary.input.automation.osgi.InputAutomationServiceFactory
import qualified InputAutomationRobotServiceConsumer -- org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OSGIActivatorUtil -- org.allbinary.osgi.OSGIActivatorUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified InputAutomationBundleActivatorListenerInterface

-- implements BundleActivator
-- implements InputAutomationBundleActivatorListenerInterface
data InputAutomationBundleActivator = InputAutomationBundleActivator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull InputAutomationBundleActivator where
    javaNull = javaNullRecord "InputAutomationBundleActivator"

instance JavaEquals InputAutomationBundleActivator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationBundleActivator where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationBundleActivator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE moduleManagementThread #-}
moduleManagementThread = unsafePerformIO (newIORef (javaNull))

{-# NOINLINE bundleContext #-}
bundleContext = unsafePerformIO (newIORef (javaNull))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationBundleActivator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = InputAutomationBundleActivator header_ logUtil commonStrings
    jregisterLevel header_ this
    BundleActivator.registerInterface_ header_
    InputAutomationBundleActivatorListenerInterface.registerInterface_ header_
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "registerAsService" (\() -> registerAsService_impl this)
    jregisterMethod header_ "useServices" (\() -> useServices_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: InputAutomationBundleActivator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO InputAutomationBundleActivator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationBundleActivator -> IO ()
init_ this = do
    initFields_ this


getBundleContext :: IO (BundleContext.BundleContext)
getBundleContext = do
        pure ((jget InputAutomationBundleActivator.bundleContext))


-- throws Exception
start :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: InputAutomationBundleActivator))) () a1

start_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: InputAutomationBundleActivator)) a1

start_impl :: InputAutomationBundleActivator -> BundleContext.BundleContext -> IO (())
start_impl this bundleContext = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sTART) e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).sTART))
            bundleContext <- pure (bundleContext)
            assignedValue <- (Thread.new_1 (jio (InputAutomationNewBundleRunnable.new_1 this)))
            jset InputAutomationBundleActivator.moduleManagementThread (assignedValue)
            Control.Monad.void (start ((jget InputAutomationBundleActivator.moduleManagementThread)))
            Control.Monad.void (InputAutomationJFrame.create (javaCast this))
        pure ()


-- throws Exception
registerAsService :: (JavaObjectClass this_) => this_ -> IO (())
registerAsService object_ = jmethod object_ "registerAsService" (\() -> (registerAsService_impl (javaCast object_ :: InputAutomationBundleActivator))) ()

registerAsService_super :: (JavaObjectClass this_) => this_ -> IO (())
registerAsService_super object_ = (registerAsService_impl (javaCast object_ :: InputAutomationBundleActivator))

registerAsService_impl :: InputAutomationBundleActivator -> IO (())
registerAsService_impl this = do
        Control.Monad.void (OSGIActivatorUtil.registerAsService (jio (InputAutomationBundleActivator.getBundleContext this)) (jio (InputAutomationServiceFactory.getInstance)) (jio (getName "InputAutomationConfigurationModuleChangeListener")))
        Control.Monad.void (OSGIActivatorUtil.registerAsService (jio (InputAutomationBundleActivator.getBundleContext this)) (jio (InputAutomationServiceFactory.getInstance)) (jio (getName "InputAutomationRobotChangeListener")))
        pure ()


-- throws Exception
useServices :: (JavaObjectClass this_) => this_ -> IO (())
useServices object_ = jmethod object_ "useServices" (\() -> (useServices_impl (javaCast object_ :: InputAutomationBundleActivator))) ()

useServices_super :: (JavaObjectClass this_) => this_ -> IO (())
useServices_super object_ = (useServices_impl (javaCast object_ :: InputAutomationBundleActivator))

useServices_impl :: InputAutomationBundleActivator -> IO (())
useServices_impl this = do
        Control.Monad.void (InputAutomationRobotServiceConsumer.process ((jio (InputAutomationRobotServiceConsumer.new_1 (jio (InputAutomationBundleActivator.getBundleContext this))))))
        Control.Monad.void (InputAutomationModuleServiceConsumer.process ((jio (InputAutomationModuleServiceConsumer.new_1 (jio (InputAutomationBundleActivator.getBundleContext this))))))
        pure ()


-- throws Exception
stop :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop object_ a1 = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: InputAutomationBundleActivator))) () a1

stop_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop_super object_ a1 = (stop_impl (javaCast object_ :: InputAutomationBundleActivator)) a1

stop_impl :: InputAutomationBundleActivator -> BundleContext.BundleContext -> IO (())
stop_impl this context = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "stop")
        if ((jio (InputAutomationJFrame.getInstance)) /= javaNull) then do
            Control.Monad.void (InputAutomationJFrame.destroy)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Nothing to stop" this "stop")
        pure ()


