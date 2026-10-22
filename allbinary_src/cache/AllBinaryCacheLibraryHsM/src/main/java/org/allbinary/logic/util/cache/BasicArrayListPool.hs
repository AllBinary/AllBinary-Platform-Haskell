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
module BasicArrayListPool (module BasicArrayListPool, module AbstractArrayListPool) where

import AbstractArrayListPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, clear, clear_super, clear_impl, remove, remove_super, remove_impl, addAll, addAll_super, addAll_impl, releaseUsedBackToPool, releaseUsedBackToPool_super, releaseUsedBackToPool_impl)
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
import qualified CacheableInterfaceFactoryInterface -- same package or java.lang
import qualified CacheableInterface -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayListCacheable -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified AbstractArrayListPool

data BasicArrayListPool = BasicArrayListPool
    { header_ :: JavaHeader
    , base :: AbstractArrayListPool.AbstractArrayListPool
    }

instance JavaNull BasicArrayListPool where
    javaNull = javaNullRecord "BasicArrayListPool"

instance JavaEquals BasicArrayListPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicArrayListPool where
    (==) = jrecordEquals

instance JavaObjectClass BasicArrayListPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicArrayListPool
newRecord_ = do
    base <- AbstractArrayListPool.newRecord_
    let header_ = base.header_
    let this = BasicArrayListPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "addAll" (\() -> addAll_impl this)
    jregisterMethod header_ "releaseUsedBackToPool" (\() -> releaseUsedBackToPool_impl this)
    pure this

initFields_ :: BasicArrayListPool -> IO ()
initFields_ this = do
    pure ()

new_1 :: CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO BasicArrayListPool
new_1 cacheableInterfaceFactoryInterface = do
    this <- newRecord_
    init_1 this cacheableInterfaceFactoryInterface
    pure this

init_1 :: BasicArrayListPool -> CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO ()
init_1 this cacheableInterfaceFactoryInterface = do
        AbstractArrayListPool.init_1 this.base (cacheableInterfaceFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: BasicArrayListPool))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: BasicArrayListPool))

clear_impl :: BasicArrayListPool -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).base.buffers)))
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: BasicArrayListPool))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove_super object_ a1 = (remove_impl (javaCast object_ :: BasicArrayListPool)) (jtoObject a1)

remove_impl :: BasicArrayListPool -> JavaObject -> IO (CacheableInterface.CacheableInterface)
remove_impl this keyObject_ = do
    let key = jtoObject keyObject_
    javaCatchReturn $ do
        size <- (BasicArrayList.size ((jget (this).base.buffers)))
        if (size > 0) then do
            javaReturn ((javaCast (jio (BasicArrayList.removeAt ((jget (this).base.buffers)) (size - 1))) :: CacheableInterface.CacheableInterface))
        else do
            javaReturn =<< (CacheableInterfaceFactoryInterface.getInstance ((jget (this).base.cacheableInterfaceFactoryInterface)) key)


-- throws Exception
addAll :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addAll object_ a1 = jmethod object_ "addAll" (\() -> (addAll_impl (javaCast object_ :: BasicArrayListPool))) () a1

addAll_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addAll_super object_ a1 = (addAll_impl (javaCast object_ :: BasicArrayListPool)) a1

addAll_impl :: BasicArrayListPool -> BasicArrayList.BasicArrayList -> IO (())
addAll_impl this usedList = do
        index <- newIORef =<< (BasicArrayList.size usedList)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let anyType = (javaCast (jindex ((jget (usedList).objectArray)) ((jget index))) :: CacheableInterface.CacheableInterface)
            Control.Monad.void (AbstractArrayListPool.add this anyType)
        Control.Monad.void (BasicArrayList.clear usedList)
        pure ()


-- throws Exception
releaseUsedBackToPool :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
releaseUsedBackToPool object_ a1 = jmethod object_ "releaseUsedBackToPool" (\() -> (releaseUsedBackToPool_impl (javaCast object_ :: BasicArrayListPool))) () a1

releaseUsedBackToPool_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
releaseUsedBackToPool_super object_ a1 = (releaseUsedBackToPool_impl (javaCast object_ :: BasicArrayListPool)) a1

releaseUsedBackToPool_impl :: BasicArrayListPool -> BasicArrayList.BasicArrayList -> IO (())
releaseUsedBackToPool_impl this usedList = do
        index <- newIORef =<< (BasicArrayList.size usedList)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let list = (javaCast (jindex ((jget (usedList).objectArray)) ((jget index))) :: BasicArrayListCacheable.BasicArrayListCacheable)
            when ((jio (BasicArrayListCacheable.size list)) == 0) $ do
                Control.Monad.void (BasicArrayList.removeAt usedList (jget index))
                Control.Monad.void (AbstractArrayListPool.add this (javaCast list))
        pure ()


