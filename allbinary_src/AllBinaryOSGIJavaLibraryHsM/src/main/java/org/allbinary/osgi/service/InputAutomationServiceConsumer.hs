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
-- package org.allbinary.osgi.service
module InputAutomationServiceConsumer where

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
import qualified OSGIServiceUtil -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OSGIServiceInterface -- org.allbinary.osgi.OSGIServiceInterface
import qualified OSGIServiceVisitorInterface -- org.allbinary.osgi.OSGIServiceVisitorInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InputAutomationServiceConsumer = InputAutomationServiceConsumer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , osgiServiceUtil :: IORef (OSGIServiceUtil.OSGIServiceUtil)
    , registryName :: IORef (String)
    , bundleContext :: IORef (BundleContext.BundleContext)
    , osgiServiceVisitorInterface :: IORef (OSGIServiceVisitorInterface.OSGIServiceVisitorInterface)
    }

instance JavaNull InputAutomationServiceConsumer where
    javaNull = javaNullRecord "InputAutomationServiceConsumer"

instance JavaEquals InputAutomationServiceConsumer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationServiceConsumer where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationServiceConsumer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationServiceConsumer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    osgiServiceUtil <- newIORef javaNull
    registryName <- newIORef ""
    bundleContext <- newIORef javaNull
    osgiServiceVisitorInterface <- newIORef javaNull
    let this = InputAutomationServiceConsumer header_ logUtil commonStrings osgiServiceUtil registryName bundleContext osgiServiceVisitorInterface
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getServiceReferences" (\() -> getServiceReferences_impl this)
    jregisterMethod header_ "getBundleContext" (\() -> getBundleContext_impl this)
    jregisterMethod header_ "setBundleContext" (\() -> setBundleContext_impl this)
    jregisterMethod header_ "getRegistryName" (\() -> getRegistryName_impl this)
    jregisterMethod header_ "setRegistryName" (\() -> setRegistryName_impl this)
    jregisterMethod header_ "getOsgiServiceVisitorInterface" (\() -> getOsgiServiceVisitorInterface_impl this)
    jregisterMethod header_ "setOsgiServiceVisitorInterface" (\() -> setOsgiServiceVisitorInterface_impl this)
    pure this

initFields_ :: InputAutomationServiceConsumer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.osgiServiceUtil =<< (OSGIServiceUtil.getInstance)
    jset this.registryName ("")
    jset this.bundleContext (javaNull)
    jset this.osgiServiceVisitorInterface (javaNull)
    pure ()

new_3 :: String -> BundleContext.BundleContext -> OSGIServiceVisitorInterface.OSGIServiceVisitorInterface -> IO InputAutomationServiceConsumer
new_3 registryName bundleContext osgiServiceVisitorInterface = do
    this <- newRecord_
    init_3 this registryName bundleContext osgiServiceVisitorInterface
    pure this

init_3 :: InputAutomationServiceConsumer -> String -> BundleContext.BundleContext -> OSGIServiceVisitorInterface.OSGIServiceVisitorInterface -> IO ()
init_3 this registryName bundleContext osgiServiceVisitorInterface = do
        initFields_ this
        Control.Monad.void (InputAutomationServiceConsumer.setRegistryName this registryName)
        Control.Monad.void (InputAutomationServiceConsumer.setBundleContext this bundleContext)
        Control.Monad.void (InputAutomationServiceConsumer.setOsgiServiceVisitorInterface this osgiServiceVisitorInterface)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: InputAutomationServiceConsumer))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: InputAutomationServiceConsumer))

process_impl :: InputAutomationServiceConsumer -> IO (())
process_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).pROCESS))
        vector <- (OSGIServiceUtil.getServicesObjectVector ((jget (this).osgiServiceUtil)) (jio (InputAutomationServiceConsumer.getBundleContext this)) (jio (InputAutomationServiceConsumer.getServiceReferences this)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Processing " ++ javaToString (jio (BasicArrayList.size vector))) ++ " Services") this (jget ((jget (this).commonStrings)).pROCESS))
        size <- (BasicArrayList.size vector)
        osgiServiceInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset osgiServiceInterface ((javaCast (jio (BasicArrayList.get vector index)) :: OSGIServiceInterface.OSGIServiceInterface))
            when (Prelude.not (jio (OSGIServiceVisitorInterface.visit ((jio (InputAutomationServiceConsumer.getOsgiServiceVisitorInterface this))) (jget osgiServiceInterface)))) $ do
                javaThrow ((JavaException "Exception" ("Unable to process service: " ++ javaToString (jget osgiServiceInterface))))
        pure ()


-- throws Exception
getServiceReferences :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ServiceReference.ServiceReference))
getServiceReferences object_ = jmethod object_ "getServiceReferences" (\() -> (getServiceReferences_impl (javaCast object_ :: InputAutomationServiceConsumer))) ()

getServiceReferences_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ServiceReference.ServiceReference))
getServiceReferences_super object_ = (getServiceReferences_impl (javaCast object_ :: InputAutomationServiceConsumer))

getServiceReferences_impl :: InputAutomationServiceConsumer -> IO (JavaArray (ServiceReference.ServiceReference))
getServiceReferences_impl this = do
        (BundleContext.getServiceReferences ((jio (InputAutomationServiceConsumer.getBundleContext this))) (jio (InputAutomationServiceConsumer.getRegistryName this)) javaNull)


getBundleContext :: (JavaObjectClass this_) => this_ -> IO (BundleContext.BundleContext)
getBundleContext object_ = jmethod object_ "getBundleContext" (\() -> (getBundleContext_impl (javaCast object_ :: InputAutomationServiceConsumer))) ()

getBundleContext_super :: (JavaObjectClass this_) => this_ -> IO (BundleContext.BundleContext)
getBundleContext_super object_ = (getBundleContext_impl (javaCast object_ :: InputAutomationServiceConsumer))

getBundleContext_impl :: InputAutomationServiceConsumer -> IO (BundleContext.BundleContext)
getBundleContext_impl this = do
        pure ((jget (this).bundleContext))


setBundleContext :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
setBundleContext object_ a1 = jmethod object_ "setBundleContext" (\() -> (setBundleContext_impl (javaCast object_ :: InputAutomationServiceConsumer))) () a1

setBundleContext_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
setBundleContext_super object_ a1 = (setBundleContext_impl (javaCast object_ :: InputAutomationServiceConsumer)) a1

setBundleContext_impl :: InputAutomationServiceConsumer -> BundleContext.BundleContext -> IO (())
setBundleContext_impl this aBundleContext = do
        jset (this).bundleContext (aBundleContext)
        pure ()


getRegistryName :: (JavaObjectClass this_) => this_ -> IO (String)
getRegistryName object_ = jmethod object_ "getRegistryName" (\() -> (getRegistryName_impl (javaCast object_ :: InputAutomationServiceConsumer))) ()

getRegistryName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRegistryName_super object_ = (getRegistryName_impl (javaCast object_ :: InputAutomationServiceConsumer))

getRegistryName_impl :: InputAutomationServiceConsumer -> IO (String)
getRegistryName_impl this = do
        pure ((jget (this).registryName))


setRegistryName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRegistryName object_ a1 = jmethod object_ "setRegistryName" (\() -> (setRegistryName_impl (javaCast object_ :: InputAutomationServiceConsumer))) () a1

setRegistryName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRegistryName_super object_ a1 = (setRegistryName_impl (javaCast object_ :: InputAutomationServiceConsumer)) a1

setRegistryName_impl :: InputAutomationServiceConsumer -> String -> IO (())
setRegistryName_impl this registryName = do
        jset (this).registryName (registryName)
        pure ()


getOsgiServiceVisitorInterface :: (JavaObjectClass this_) => this_ -> IO (OSGIServiceVisitorInterface.OSGIServiceVisitorInterface)
getOsgiServiceVisitorInterface object_ = jmethod object_ "getOsgiServiceVisitorInterface" (\() -> (getOsgiServiceVisitorInterface_impl (javaCast object_ :: InputAutomationServiceConsumer))) ()

getOsgiServiceVisitorInterface_super :: (JavaObjectClass this_) => this_ -> IO (OSGIServiceVisitorInterface.OSGIServiceVisitorInterface)
getOsgiServiceVisitorInterface_super object_ = (getOsgiServiceVisitorInterface_impl (javaCast object_ :: InputAutomationServiceConsumer))

getOsgiServiceVisitorInterface_impl :: InputAutomationServiceConsumer -> IO (OSGIServiceVisitorInterface.OSGIServiceVisitorInterface)
getOsgiServiceVisitorInterface_impl this = do
        pure ((jget (this).osgiServiceVisitorInterface))


setOsgiServiceVisitorInterface :: (JavaObjectClass this_) => this_ -> OSGIServiceVisitorInterface.OSGIServiceVisitorInterface -> IO (())
setOsgiServiceVisitorInterface object_ a1 = jmethod object_ "setOsgiServiceVisitorInterface" (\() -> (setOsgiServiceVisitorInterface_impl (javaCast object_ :: InputAutomationServiceConsumer))) () a1

setOsgiServiceVisitorInterface_super :: (JavaObjectClass this_) => this_ -> OSGIServiceVisitorInterface.OSGIServiceVisitorInterface -> IO (())
setOsgiServiceVisitorInterface_super object_ a1 = (setOsgiServiceVisitorInterface_impl (javaCast object_ :: InputAutomationServiceConsumer)) a1

setOsgiServiceVisitorInterface_impl :: InputAutomationServiceConsumer -> OSGIServiceVisitorInterface.OSGIServiceVisitorInterface -> IO (())
setOsgiServiceVisitorInterface_impl this osgiServiceVisitorInterface = do
        jset (this).osgiServiceVisitorInterface (osgiServiceVisitorInterface)
        pure ()


