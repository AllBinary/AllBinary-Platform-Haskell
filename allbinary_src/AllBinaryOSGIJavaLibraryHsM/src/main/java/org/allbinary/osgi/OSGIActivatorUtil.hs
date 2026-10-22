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
-- package org.allbinary.osgi
module OSGIActivatorUtil where

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
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified NullServiceReferenceFactory -- org.osgi.framework.NullServiceReferenceFactory
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified ServiceRegistration -- org.osgi.framework.ServiceRegistration

data OSGIActivatorUtil = OSGIActivatorUtil
    { header_ :: JavaHeader
    }

instance JavaNull OSGIActivatorUtil where
    javaNull = javaNullRecord "OSGIActivatorUtil"

instance JavaEquals OSGIActivatorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OSGIActivatorUtil where
    (==) = jrecordEquals

instance JavaObjectClass OSGIActivatorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OSGIActivatorUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = OSGIActivatorUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: OSGIActivatorUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OSGIActivatorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OSGIActivatorUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
registerAsService :: (JavaObjectClass o2) => BundleContext.BundleContext -> o2 -> String -> IO (())
registerAsService bundleContext anyTypeObject_ serviceName = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (OSGIActivatorUtil.registerAsService_4 bundleContext anyType serviceName (jio (StdUtil.createHashtable ((jio (StdUtil.getInstance))))))
        pure ()


-- throws Exception
registerAsService_4 :: (JavaObjectClass o2) => BundleContext.BundleContext -> o2 -> String -> ABHashtable.ABHashtable -> IO (())
registerAsService_4 bundleContext anyTypeObject_ serviceName properties = do
        let anyType = jtoObject anyTypeObject_
        serviceRegistration <- (BundleContext.registerService bundleContext serviceName anyType properties)
        serviceReference <- newIORef =<< (ServiceRegistration.getReference serviceRegistration)
        assignedValue <- (BundleContext.getServiceReference bundleContext serviceName)
        jset serviceReference (assignedValue)
        when ((jget serviceReference) == (jget ((jio (NullServiceReferenceFactory.getInstance))).nULL_SERVICE_REFERENCE)) $ do
            javaThrow ((JavaException "Exception" "No Such Service Reference"))
        pure ()


