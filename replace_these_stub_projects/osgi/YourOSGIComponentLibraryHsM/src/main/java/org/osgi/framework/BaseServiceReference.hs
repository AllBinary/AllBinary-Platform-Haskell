{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.osgi.framework
module BaseServiceReference where

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
import qualified ServiceReference

-- implements ServiceReference
data BaseServiceReference = BaseServiceReference
    { header_ :: JavaHeader
    }

instance JavaNull BaseServiceReference where
    javaNull = javaNullRecord "BaseServiceReference"

instance JavaEquals BaseServiceReference where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseServiceReference where
    (==) = jrecordEquals

instance JavaObjectClass BaseServiceReference where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseServiceReference
newRecord_ = do
    header_ <- newJavaHeader
    let this = BaseServiceReference header_
    jregisterLevel header_ this
    ServiceReference.registerInterface_ header_
    jregisterMethod header_ "getProperty" (\() -> getProperty_impl this)
    jregisterMethod header_ "getPropertyKeys" (\() -> getPropertyKeys_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    pure this

initFields_ :: BaseServiceReference -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BaseServiceReference
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseServiceReference -> IO ()
init_ this = do
    initFields_ this


getProperty :: (JavaObjectClass this_) => this_ -> String -> IO (Any.Any)
getProperty object_ a1 = jmethod object_ "getProperty" (\() -> (getProperty_impl (javaCast object_ :: BaseServiceReference))) () a1

getProperty_super :: (JavaObjectClass this_) => this_ -> String -> IO (Any.Any)
getProperty_super object_ a1 = (getProperty_impl (javaCast object_ :: BaseServiceReference)) a1

getProperty_impl :: BaseServiceReference -> String -> IO (Any.Any)
getProperty_impl this key = do
        javaThrow ((JavaException "RuntimeException" ""))


getPropertyKeys :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getPropertyKeys object_ = jmethod object_ "getPropertyKeys" (\() -> (getPropertyKeys_impl (javaCast object_ :: BaseServiceReference))) ()

getPropertyKeys_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getPropertyKeys_super object_ = (getPropertyKeys_impl (javaCast object_ :: BaseServiceReference))

getPropertyKeys_impl :: BaseServiceReference -> IO (JavaArray (String))
getPropertyKeys_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


compareTo :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: BaseServiceReference))) () (jtoObject a1)

compareTo_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: BaseServiceReference)) (jtoObject a1)

compareTo_impl :: BaseServiceReference -> JavaObject -> IO (Int)
compareTo_impl this oObject_ = do
        let o = jtoObject oObject_
        javaThrow ((JavaException "RuntimeException" ""))


