{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.osgi.framework
module ServiceRegistration where

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
import qualified ServiceReference -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data ServiceRegistration = ServiceRegistration
    { header_ :: JavaHeader
    }

instance JavaNull ServiceRegistration where
    javaNull = javaNullRecord "ServiceRegistration"

instance JavaEquals ServiceRegistration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ServiceRegistration where
    (==) = jrecordEquals

instance JavaObjectClass ServiceRegistration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ServiceRegistration
fromHeader_ header = ServiceRegistration header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ServiceRegistration header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getReference :: (JavaObjectClass this_) => this_ -> IO (ServiceReference.ServiceReference)
getReference object_ = jmethod object_ "getReference" (\() -> (getReference_impl (javaCast object_ :: ServiceRegistration))) ()

getReference_super :: (JavaObjectClass this_) => this_ -> IO (ServiceReference.ServiceReference)
getReference_super object_ = (getReference_impl (javaCast object_ :: ServiceRegistration))

getReference_impl :: ServiceRegistration -> IO (ServiceReference.ServiceReference)
getReference_impl this = javaAbstractMethod "getReference"


