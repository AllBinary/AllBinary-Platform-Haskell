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
-- package org.allbinary.bundle.logic.preloader
module AllBinaryPreloaderActivator where

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
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified ServiceRegistration -- org.osgi.framework.ServiceRegistration
import qualified CryptServiceFactory -- org.allbinary.bundle.logic.system.loader.CryptServiceFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements BundleActivator
data AllBinaryPreloaderActivator = AllBinaryPreloaderActivator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull AllBinaryPreloaderActivator where
    javaNull = javaNullRecord "AllBinaryPreloaderActivator"

instance JavaEquals AllBinaryPreloaderActivator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryPreloaderActivator where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryPreloaderActivator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE context #-}
context = unsafePerformIO (newIORef (javaNull))

cRYPT_REGISTRY_NAME = "bundle.abcs.logic.system.loader.CryptService"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryPreloaderActivator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = AllBinaryPreloaderActivator header_ logUtil commonStrings
    jregisterLevel header_ this
    BundleActivator.registerInterface_ header_
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "registerAsService" (\() -> registerAsService_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: AllBinaryPreloaderActivator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO AllBinaryPreloaderActivator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryPreloaderActivator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getBundleContext :: IO (BundleContext.BundleContext)
getBundleContext = do
        pure ((jget AllBinaryPreloaderActivator.context))


-- throws Exception
start :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: AllBinaryPreloaderActivator))) () a1

start_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: AllBinaryPreloaderActivator)) a1

start_impl :: AllBinaryPreloaderActivator -> BundleContext.BundleContext -> IO (())
start_impl this context = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "start" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "start")
            jset AllBinaryPreloaderActivator.context (context)
            Control.Monad.void (AllBinaryPreloaderActivator.registerAsService this)
        pure ()


-- throws Exception
registerAsService :: (JavaObjectClass this_) => this_ -> IO (())
registerAsService object_ = jmethod object_ "registerAsService" (\() -> (registerAsService_impl (javaCast object_ :: AllBinaryPreloaderActivator))) ()

registerAsService_super :: (JavaObjectClass this_) => this_ -> IO (())
registerAsService_super object_ = (registerAsService_impl (javaCast object_ :: AllBinaryPreloaderActivator))

registerAsService_impl :: AllBinaryPreloaderActivator -> IO (())
registerAsService_impl this = do
        properties <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        serviceRegistration <- (registerService ((jget AllBinaryPreloaderActivator.context)) cRYPT_REGISTRY_NAME (jio (CryptServiceFactory.new_)) properties)
        serviceReference <- newIORef =<< (ServiceRegistration.getReference serviceRegistration)
        assignedValue <- (getServiceReference ((jget AllBinaryPreloaderActivator.context)) cRYPT_REGISTRY_NAME)
        jset serviceReference (assignedValue)
        when ((jget serviceReference) == javaNull) $ do
            javaThrow ((JavaException "Exception" "No Such Service Reference"))
        pure ()


-- throws Exception
stop :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop object_ a1 = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: AllBinaryPreloaderActivator))) () a1

stop_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
stop_super object_ a1 = (stop_impl (javaCast object_ :: AllBinaryPreloaderActivator)) a1

stop_impl :: AllBinaryPreloaderActivator -> BundleContext.BundleContext -> IO (())
stop_impl this context = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "stop")
        pure ()


