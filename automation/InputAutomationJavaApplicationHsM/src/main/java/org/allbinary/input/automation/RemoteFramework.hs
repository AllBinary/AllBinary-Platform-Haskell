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
-- package org.allbinary.input.automation
module RemoteFramework where

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
import qualified Map -- java.util.Map
import qualified BundleContext -- org.osgi.framework.BundleContext

-- Java interface: the classes that implement it have these functions
data RemoteFramework = RemoteFramework
    { header_ :: JavaHeader
    }

instance JavaNull RemoteFramework where
    javaNull = javaNullRecord "RemoteFramework"

instance JavaEquals RemoteFramework where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteFramework where
    (==) = jrecordEquals

instance JavaObjectClass RemoteFramework where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RemoteFramework
fromHeader_ header = RemoteFramework header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RemoteFramework header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


connect :: (JavaObjectClass this_) => this_ -> String -> IO (BundleContext.BundleContext)
connect object_ a1 = jmethod object_ "connect" (\() -> (connect_impl (javaCast object_ :: RemoteFramework))) () a1

connect_super :: (JavaObjectClass this_) => this_ -> String -> IO (BundleContext.BundleContext)
connect_super object_ a1 = (connect_impl (javaCast object_ :: RemoteFramework)) a1

connect_impl :: RemoteFramework -> String -> IO (BundleContext.BundleContext)
connect_impl this host = javaAbstractMethod "connect"


disconnect :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
disconnect object_ a1 = jmethod object_ "disconnect" (\() -> (disconnect_impl (javaCast object_ :: RemoteFramework))) () a1

disconnect_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (())
disconnect_super object_ a1 = (disconnect_impl (javaCast object_ :: RemoteFramework)) a1

disconnect_impl :: RemoteFramework -> BundleContext.BundleContext -> IO (())
disconnect_impl this bc = javaAbstractMethod "disconnect"


getSystemProperties :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (Map.Map)
getSystemProperties object_ a1 = jmethod object_ "getSystemProperties" (\() -> (getSystemProperties_impl (javaCast object_ :: RemoteFramework))) () a1

getSystemProperties_super :: (JavaObjectClass this_) => this_ -> BundleContext.BundleContext -> IO (Map.Map)
getSystemProperties_super object_ a1 = (getSystemProperties_impl (javaCast object_ :: RemoteFramework)) a1

getSystemProperties_impl :: RemoteFramework -> BundleContext.BundleContext -> IO (Map.Map)
getSystemProperties_impl this bc = javaAbstractMethod "getSystemProperties"


