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
-- package org.allbinary.util
module HashtableUtil where

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
import qualified EnumerationUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ABHashtable -- same package or java.lang
import qualified BasicArrayListS -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified JsType -- jsinterop.annotations.JsType

data HashtableUtil = HashtableUtil
    { header_ :: JavaHeader
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    }

instance JavaNull HashtableUtil where
    javaNull = javaNullRecord "HashtableUtil"

instance JavaEquals HashtableUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HashtableUtil where
    (==) = jrecordEquals

instance JavaObjectClass HashtableUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HashtableUtil
newRecord_ = do
    header_ <- newJavaHeader
    enumerationUtil <- newIORef javaNull
    let this = HashtableUtil header_ enumerationUtil
    jregisterLevel header_ this
    jregisterMethod header_ "putAll" (\() -> putAll_impl this)
    jregisterMethod header_ "getKeysAsArray" (\() -> getKeysAsArray_impl this)
    jregisterMethod header_ "getKeysAsList" (\() -> getKeysAsList_impl this)
    pure this

initFields_ :: HashtableUtil -> IO ()
initFields_ this = do
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    pure ()

new_ :: IO HashtableUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HashtableUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HashtableUtil)
getInstance = do
        pure (HashtableUtil.instance_)


putAll :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> IO (())
putAll object_ a1 a2 = jmethod object_ "putAll" (\() -> (putAll_impl (javaCast object_ :: HashtableUtil))) () a1 a2

putAll_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> IO (())
putAll_super object_ a1 a2 = (putAll_impl (javaCast object_ :: HashtableUtil)) a1 a2

putAll_impl :: HashtableUtil -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> IO (())
putAll_impl this fromHashtable hashtable = do
        enumeration <- (ABHashtable.keys fromHashtable)
        keyCanBeNull <- newIORef (javaNull)
        valueCanBeNull <- newIORef (javaNull)
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            assignedValue <- (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)
            jset keyCanBeNull (assignedValue)
            assignedValue <- (ABHashtable.get hashtable (jget keyCanBeNull))
            jset valueCanBeNull (assignedValue)
            if ((jget valueCanBeNull) == javaNull) then do
                pure ()
            else do
                Control.Monad.void (ABHashtable.put hashtable (jget keyCanBeNull) (jget valueCanBeNull))
        pure ()


getKeysAsArray :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (JavaArray (Any.Any))
getKeysAsArray object_ a1 = jmethod object_ "getKeysAsArray" (\() -> (getKeysAsArray_impl (javaCast object_ :: HashtableUtil))) () a1

getKeysAsArray_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (JavaArray (Any.Any))
getKeysAsArray_super object_ a1 = (getKeysAsArray_impl (javaCast object_ :: HashtableUtil)) a1

getKeysAsArray_impl :: HashtableUtil -> ABHashtable.ABHashtable -> IO (JavaArray (Any.Any))
getKeysAsArray_impl this hashtable = do
        let objectArray = (jnewArray ((jio (ABHashtable.size hashtable))) javaNull)
        index <- newIORef (0)
        enumeration <- (ABHashtable.keys hashtable)
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            assignedValue <- (fmap jtoObject (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration))
            jsetIndex objectArray ((jpostIncrement index (+ 1))) (assignedValue)
        pure (objectArray)


getKeysAsList :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (BasicArrayList.BasicArrayList)
getKeysAsList object_ a1 = jmethod object_ "getKeysAsList" (\() -> (getKeysAsList_impl (javaCast object_ :: HashtableUtil))) () a1

getKeysAsList_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (BasicArrayList.BasicArrayList)
getKeysAsList_super object_ a1 = (getKeysAsList_impl (javaCast object_ :: HashtableUtil)) a1

getKeysAsList_impl :: HashtableUtil -> ABHashtable.ABHashtable -> IO (BasicArrayList.BasicArrayList)
getKeysAsList_impl this hashtable = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 (jio (ABHashtable.size hashtable))))
        enumeration <- (ABHashtable.keys hashtable)
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            Control.Monad.void (BasicArrayList.add list (jio (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)))
        pure (list)


