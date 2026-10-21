{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.osgi.framework
module ServiceReference (module ServiceReference, module Comparable) where

import Comparable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getProperty, getProperty_super, getProperty_impl, getPropertyKeys, getPropertyKeys_super, getPropertyKeys_impl, toString)
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
import qualified Comparable

-- Java interface: the classes that implement it have these functions
data ServiceReference = ServiceReference
    { header_ :: JavaHeader
    }

instance JavaNull ServiceReference where
    javaNull = javaNullRecord "ServiceReference"

instance JavaEquals ServiceReference where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ServiceReference where
    (==) = jrecordEquals

instance JavaObjectClass ServiceReference where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ServiceReference
fromHeader_ header = ServiceReference header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ServiceReference header)
    Comparable.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getProperty :: (JavaObjectClass this_) => this_ -> String -> IO (Any.Any)
getProperty object_ a1 = jmethod object_ "getProperty" (\() -> (getProperty_impl (javaCast object_ :: ServiceReference))) () a1

getProperty_super :: (JavaObjectClass this_) => this_ -> String -> IO (Any.Any)
getProperty_super object_ a1 = (getProperty_impl (javaCast object_ :: ServiceReference)) a1

getProperty_impl :: ServiceReference -> String -> IO (Any.Any)
getProperty_impl this key = javaAbstractMethod "getProperty"


getPropertyKeys :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getPropertyKeys object_ = jmethod object_ "getPropertyKeys" (\() -> (getPropertyKeys_impl (javaCast object_ :: ServiceReference))) ()

getPropertyKeys_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getPropertyKeys_super object_ = (getPropertyKeys_impl (javaCast object_ :: ServiceReference))

getPropertyKeys_impl :: ServiceReference -> IO (JavaArray (String))
getPropertyKeys_impl this = javaAbstractMethod "getPropertyKeys"


