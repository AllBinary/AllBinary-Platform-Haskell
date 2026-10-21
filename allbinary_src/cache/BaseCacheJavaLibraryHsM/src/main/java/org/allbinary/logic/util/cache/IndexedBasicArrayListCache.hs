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
-- package org.allbinary.logic.util.cache
module IndexedBasicArrayListCache (module IndexedBasicArrayListCache, module BaseBasicArrayListCache) where

import BaseBasicArrayListCache hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createCache, createCache_super, createCache_impl, init, init_super, init_impl, getAt, getAt_super, getAt_impl, addDefault, addDefault_super, addDefault_impl, addObject, addObject_super, addObject_impl, add, add_super, add_impl, addArray, addArray_super, addArray_impl, clear, clear_super, clear_impl, commonStrings, size, index)
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
import qualified CacheableInterface -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty
import qualified BaseBasicArrayListCache
import qualified CacheInterface

-- implements CacheInterface
data IndexedBasicArrayListCache = IndexedBasicArrayListCache
    { header_ :: JavaHeader
    , base :: BaseBasicArrayListCache.BaseBasicArrayListCache
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , size :: IORef (Int)
    , index :: IORef (Int)
    }

instance JavaNull IndexedBasicArrayListCache where
    javaNull = javaNullRecord "IndexedBasicArrayListCache"

instance JavaEquals IndexedBasicArrayListCache where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndexedBasicArrayListCache where
    (==) = jrecordEquals

instance JavaObjectClass IndexedBasicArrayListCache where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IndexedBasicArrayListCache
newRecord_ = do
    base <- BaseBasicArrayListCache.newRecord_
    let header_ = base.header_
    commonStrings <- newIORef javaNull
    size <- newIORef 0
    index <- newIORef 0
    let this = IndexedBasicArrayListCache header_ base commonStrings size index
    jregisterLevel header_ this
    CacheInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getAt" (\() -> getAt_impl this)
    jregisterMethod header_ "addDefault" (\() -> addDefault_impl this)
    jregisterMethod header_ "addObject" (\() -> addObject_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "addArray" (\() -> addArray_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    pure this

initFields_ :: IndexedBasicArrayListCache -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.size (0)
    jset this.index (0)
    pure ()


-- throws Exception
createCache :: Int -> IO (IndexedBasicArrayListCache)
createCache size = do
        indexedBasicArrayListCache <- (new_)
        Control.Monad.void (IndexedBasicArrayListCache.init indexedBasicArrayListCache size)
        pure (indexedBasicArrayListCache)

new_ :: IO IndexedBasicArrayListCache
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IndexedBasicArrayListCache -> IO ()
init_ this = do
        BaseBasicArrayListCache.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: IndexedBasicArrayListCache))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: IndexedBasicArrayListCache)) a1

init_impl :: IndexedBasicArrayListCache -> Int -> IO (())
init_impl this size = do
        when ((jget (this).size) < size) $ do
            Control.Monad.void (BasicArrayList.ensureCapacity ((jget (this).base.list)) size)
            forM_ [(size - 1), (size - 1) + (-1) .. (jget (this).size)] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (IndexedBasicArrayListCache.addDefault this)
            jset (this).size (size)
        pure ()


getAt :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
getAt object_ a1 = jmethod object_ "getAt" (\() -> (getAt_impl (javaCast object_ :: IndexedBasicArrayListCache))) () a1

getAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
getAt_super object_ a1 = (getAt_impl (javaCast object_ :: IndexedBasicArrayListCache)) a1

getAt_impl :: IndexedBasicArrayListCache -> Int -> IO (Any.Any)
getAt_impl this index = do
        pure ((jtoObject (jindex ((jget ((jget (this).base.list)).objectArray)) (index))))


-- throws Exception
addDefault :: (JavaObjectClass this_) => this_ -> IO (())
addDefault object_ = jmethod object_ "addDefault" (\() -> (addDefault_impl (javaCast object_ :: IndexedBasicArrayListCache))) ()

addDefault_super :: (JavaObjectClass this_) => this_ -> IO (())
addDefault_super object_ = (addDefault_impl (javaCast object_ :: IndexedBasicArrayListCache))

addDefault_impl :: IndexedBasicArrayListCache -> IO (())
addDefault_impl this = do
        pure ()


-- throws Exception
addObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addObject object_ a1 = jmethod object_ "addObject" (\() -> (addObject_impl (javaCast object_ :: IndexedBasicArrayListCache))) () (jtoObject a1)

addObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addObject_super object_ a1 = (addObject_impl (javaCast object_ :: IndexedBasicArrayListCache)) (jtoObject a1)

addObject_impl :: IndexedBasicArrayListCache -> JavaObject -> IO (())
addObject_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (BasicArrayList.add ((jget (this).base.list)) anyType)
        pure ()


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> CacheableInterface.CacheableInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: IndexedBasicArrayListCache))) () a1

add_super :: (JavaObjectClass this_) => this_ -> CacheableInterface.CacheableInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: IndexedBasicArrayListCache)) a1

add_impl :: IndexedBasicArrayListCache -> CacheableInterface.CacheableInterface -> IO (())
add_impl this cacheableInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).base.list)) cacheableInterface)
        pure ()


-- throws Exception
addArray :: (JavaObjectClass this_) => this_ -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray object_ a1 = jmethod object_ "addArray" (\() -> (addArray_impl (javaCast object_ :: IndexedBasicArrayListCache))) () a1

addArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray_super object_ a1 = (addArray_impl (javaCast object_ :: IndexedBasicArrayListCache)) a1

addArray_impl :: IndexedBasicArrayListCache -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray_impl this cacheableInterfaces = do
        javaThrow ((JavaException "Exception" "No Imple"))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: IndexedBasicArrayListCache))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: IndexedBasicArrayListCache))

clear_impl :: IndexedBasicArrayListCache -> IO (())
clear_impl this = do
        jset (this).index (0)
        pure ()


