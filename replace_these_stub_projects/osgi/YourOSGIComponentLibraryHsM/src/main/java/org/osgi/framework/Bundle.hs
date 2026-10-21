{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.osgi.framework
module Bundle where

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

-- Java interface: the classes that implement it have these functions
data Bundle = Bundle
    { header_ :: JavaHeader
    }

instance JavaNull Bundle where
    javaNull = javaNullRecord "Bundle"

instance JavaEquals Bundle where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Bundle where
    (==) = jrecordEquals

instance JavaObjectClass Bundle where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> Bundle
fromHeader_ header = Bundle header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (Bundle header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getSymbolicName :: (JavaObjectClass this_) => this_ -> IO (String)
getSymbolicName object_ = jmethod object_ "getSymbolicName" (\() -> (getSymbolicName_impl (javaCast object_ :: Bundle))) ()

getSymbolicName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSymbolicName_super object_ = (getSymbolicName_impl (javaCast object_ :: Bundle))

getSymbolicName_impl :: Bundle -> IO (String)
getSymbolicName_impl this = javaAbstractMethod "getSymbolicName"


-- throws BundleException
start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: Bundle))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: Bundle))

start_impl :: Bundle -> IO (())
start_impl this = javaAbstractMethod "start"


-- throws BundleException
-- Java overload of start with a different parameter count: give it a different name
start :: (JavaObjectClass this_) => this_ -> Int -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: Bundle))) () a1

start_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: Bundle)) a1

start_impl :: Bundle -> Int -> IO (())
start_impl this options = javaAbstractMethod "start"


