{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.osgi.framework
module BundleContext where

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
import qualified Bundle -- same package or java.lang
import qualified ServiceRegistration -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ServiceReference -- same package or java.lang
import qualified Dictionary -- java.util.Dictionary

-- Java interface: the classes that implement it have these functions
data BundleContext = BundleContext
    { header_ :: JavaHeader
    }

instance JavaNull BundleContext where
    javaNull = javaNullRecord "BundleContext"

instance JavaEquals BundleContext where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BundleContext where
    (==) = jrecordEquals

instance JavaObjectClass BundleContext where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BundleContext
fromHeader_ header = BundleContext header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BundleContext header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getBundles :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Bundle.Bundle))
getBundles object_ = jmethod object_ "getBundles" (\() -> (getBundles_impl (javaCast object_ :: BundleContext))) ()

getBundles_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Bundle.Bundle))
getBundles_super object_ = (getBundles_impl (javaCast object_ :: BundleContext))

getBundles_impl :: BundleContext -> IO (JavaArray (Bundle.Bundle))
getBundles_impl this = javaAbstractMethod "getBundles"


-- throws BundleException
installBundle :: (JavaObjectClass this_) => this_ -> String -> IO (Bundle.Bundle)
installBundle object_ a1 = jmethod object_ "installBundle" (\() -> (installBundle_impl (javaCast object_ :: BundleContext))) () a1

installBundle_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bundle.Bundle)
installBundle_super object_ a1 = (installBundle_impl (javaCast object_ :: BundleContext)) a1

installBundle_impl :: BundleContext -> String -> IO (Bundle.Bundle)
installBundle_impl this location = javaAbstractMethod "installBundle"


registerService :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> Dictionary.Dictionary -> IO (ServiceRegistration.ServiceRegistration)
registerService object_ a1 a2 a3 = jmethod object_ "registerService" (\() -> (registerService_impl (javaCast object_ :: BundleContext))) () a1 (jtoObject a2) a3

registerService_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> Dictionary.Dictionary -> IO (ServiceRegistration.ServiceRegistration)
registerService_super object_ a1 a2 a3 = (registerService_impl (javaCast object_ :: BundleContext)) a1 (jtoObject a2) a3

registerService_impl :: BundleContext -> String -> JavaObject -> Dictionary.Dictionary -> IO (ServiceRegistration.ServiceRegistration)
registerService_impl this clazz serviceObject_ properties = javaAbstractMethod "registerService"


getService :: (JavaObjectClass this_) => this_ -> ServiceReference.ServiceReference -> IO (Any.Any)
getService object_ a1 = jmethod object_ "getService" (\() -> (getService_impl (javaCast object_ :: BundleContext))) () a1

getService_super :: (JavaObjectClass this_) => this_ -> ServiceReference.ServiceReference -> IO (Any.Any)
getService_super object_ a1 = (getService_impl (javaCast object_ :: BundleContext)) a1

getService_impl :: BundleContext -> ServiceReference.ServiceReference -> IO (Any.Any)
getService_impl this reference = javaAbstractMethod "getService"


-- throws InvalidSyntaxException
getServiceReferences :: (JavaObjectClass this_) => this_ -> String -> String -> IO (JavaArray (ServiceReference.ServiceReference))
getServiceReferences object_ a1 a2 = jmethod object_ "getServiceReferences" (\() -> (getServiceReferences_impl (javaCast object_ :: BundleContext))) () a1 a2

getServiceReferences_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (JavaArray (ServiceReference.ServiceReference))
getServiceReferences_super object_ a1 a2 = (getServiceReferences_impl (javaCast object_ :: BundleContext)) a1 a2

getServiceReferences_impl :: BundleContext -> String -> String -> IO (JavaArray (ServiceReference.ServiceReference))
getServiceReferences_impl this clazz filter = javaAbstractMethod "getServiceReferences"


getServiceReference :: (JavaObjectClass this_) => this_ -> String -> IO (ServiceReference.ServiceReference)
getServiceReference object_ a1 = jmethod object_ "getServiceReference" (\() -> (getServiceReference_impl (javaCast object_ :: BundleContext))) () a1

getServiceReference_super :: (JavaObjectClass this_) => this_ -> String -> IO (ServiceReference.ServiceReference)
getServiceReference_super object_ a1 = (getServiceReference_impl (javaCast object_ :: BundleContext)) a1

getServiceReference_impl :: BundleContext -> String -> IO (ServiceReference.ServiceReference)
getServiceReference_impl this clazz = javaAbstractMethod "getServiceReference"


