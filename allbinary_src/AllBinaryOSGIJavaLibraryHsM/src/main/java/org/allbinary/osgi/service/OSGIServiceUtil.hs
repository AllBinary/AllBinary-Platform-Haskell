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
module OSGIServiceUtil where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OSGIServiceInterface -- org.allbinary.osgi.OSGIServiceInterface

data OSGIServiceUtil = OSGIServiceUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull OSGIServiceUtil where
    javaNull = javaNullRecord "OSGIServiceUtil"

instance JavaEquals OSGIServiceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OSGIServiceUtil where
    (==) = jrecordEquals

instance JavaObjectClass OSGIServiceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO OSGIServiceUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = OSGIServiceUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getServicesObjectVector" (\() -> getServicesObjectVector_impl this)
    pure this

initFields_ :: OSGIServiceUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (OSGIServiceUtil)
getInstance = do
        pure (OSGIServiceUtil.instance_)

new_ :: IO OSGIServiceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OSGIServiceUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getServicesObjectVector :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> JavaArray (ServiceReference.ServiceReference) -> IO (BasicArrayList.BasicArrayList)
getServicesObjectVector object_ a1 a2 = jmethod object_ "getServicesObjectVector" (\() -> (getServicesObjectVector_impl (javaCast object_ :: OSGIServiceUtil))) () a1 a2

getServicesObjectVector_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> JavaArray (ServiceReference.ServiceReference) -> IO (BasicArrayList.BasicArrayList)
getServicesObjectVector_super object_ a1 a2 = (getServicesObjectVector_impl (javaCast object_ :: OSGIServiceUtil)) a1 a2

getServicesObjectVector_impl :: OSGIServiceUtil -> BundleContext.BundleContext -> JavaArray (ServiceReference.ServiceReference) -> IO (BasicArrayList.BasicArrayList)
getServicesObjectVector_impl this bundleContext serviceReferences = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        when (serviceReferences /= javaNull) $ do
            let size = (jlength serviceReferences)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Service References: " ++ javaToString size) this "getServicesObjectVector")
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let serviceReference = (jindex serviceReferences (index))
                when (serviceReference /= javaNull) $ do
                    let osgiServiceInterface = (javaCast (jio (BundleContext.getService bundleContext serviceReference)) :: OSGIServiceInterface.OSGIServiceInterface)
                    when (osgiServiceInterface == javaNull) $ do
                        javaThrow ((JavaException "Exception" "No Service For Reference"))
                    Control.Monad.void (BasicArrayList.add vector osgiServiceInterface)
        pure (vector)


