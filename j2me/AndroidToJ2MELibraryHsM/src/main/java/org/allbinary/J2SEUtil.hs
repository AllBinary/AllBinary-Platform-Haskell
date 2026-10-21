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
-- package org.allbinary
module J2SEUtil where

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
import qualified HashMap -- java.util.HashMap
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set

data J2SEUtil = J2SEUtil
    { header_ :: JavaHeader
    }

instance JavaNull J2SEUtil where
    javaNull = javaNullRecord "J2SEUtil"

instance JavaEquals J2SEUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq J2SEUtil where
    (==) = jrecordEquals

instance JavaObjectClass J2SEUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO J2SEUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = J2SEUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getHashMapAsArray" (\() -> getHashMapAsArray_impl this)
    jregisterMethod header_ "getMapAsArray" (\() -> getMapAsArray_impl this)
    jregisterMethod header_ "getSetAsArray" (\() -> getSetAsArray_impl this)
    pure this

initFields_ :: J2SEUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO J2SEUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: J2SEUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (J2SEUtil)
getInstance = do
        pure (J2SEUtil.instance_)


getHashMapAsArray :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (JavaArray (Any.Any))
getHashMapAsArray object_ a1 = jmethod object_ "getHashMapAsArray" (\() -> (getHashMapAsArray_impl (javaCast object_ :: J2SEUtil))) () a1

getHashMapAsArray_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (JavaArray (Any.Any))
getHashMapAsArray_super object_ a1 = (getHashMapAsArray_impl (javaCast object_ :: J2SEUtil)) a1

getHashMapAsArray_impl :: J2SEUtil -> HashMap.HashMap -> IO (JavaArray (Any.Any))
getHashMapAsArray_impl this hashMap = do
        objectArray <- (HashMap.toArray ((jio (HashMap.keySet hashMap))))
        pure (objectArray)


getMapAsArray :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (JavaArray (Any.Any))
getMapAsArray object_ a1 = jmethod object_ "getMapAsArray" (\() -> (getMapAsArray_impl (javaCast object_ :: J2SEUtil))) () a1

getMapAsArray_super :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (JavaArray (Any.Any))
getMapAsArray_super object_ a1 = (getMapAsArray_impl (javaCast object_ :: J2SEUtil)) a1

getMapAsArray_impl :: J2SEUtil -> Map.Map -> IO (JavaArray (Any.Any))
getMapAsArray_impl this map = do
        objectArray <- (Map.toArray ((jio (Map.keySet map))))
        pure (objectArray)


getSetAsArray :: (JavaObjectClass this_) => this_ -> Set.Set -> IO (JavaArray (Any.Any))
getSetAsArray object_ a1 = jmethod object_ "getSetAsArray" (\() -> (getSetAsArray_impl (javaCast object_ :: J2SEUtil))) () a1

getSetAsArray_super :: (JavaObjectClass this_) => this_ -> Set.Set -> IO (JavaArray (Any.Any))
getSetAsArray_super object_ a1 = (getSetAsArray_impl (javaCast object_ :: J2SEUtil)) a1

getSetAsArray_impl :: J2SEUtil -> Set.Set -> IO (JavaArray (Any.Any))
getSetAsArray_impl this set = do
        objectArray <- (Set.toArray set)
        pure (objectArray)


