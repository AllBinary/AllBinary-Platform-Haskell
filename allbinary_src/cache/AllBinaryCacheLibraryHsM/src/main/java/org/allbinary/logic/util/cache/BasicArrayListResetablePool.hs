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
module BasicArrayListResetablePool (module BasicArrayListResetablePool, module AbstractArrayListPool) where

import AbstractArrayListPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, clear, clear_super, clear_impl, remove, remove_super, remove_impl)
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
import qualified BasicArrayList -- same package or java.lang
import qualified AbstractArrayListPool

data BasicArrayListResetablePool = BasicArrayListResetablePool
    { header_ :: JavaHeader
    , base :: AbstractArrayListPool.AbstractArrayListPool
    }

instance JavaNull BasicArrayListResetablePool where
    javaNull = javaNullRecord "BasicArrayListResetablePool"

instance JavaEquals BasicArrayListResetablePool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicArrayListResetablePool where
    (==) = jrecordEquals

instance JavaObjectClass BasicArrayListResetablePool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicArrayListResetablePool
newRecord_ = do
    base <- AbstractArrayListPool.newRecord_
    let header_ = base.header_
    let this = BasicArrayListResetablePool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    pure this

initFields_ :: BasicArrayListResetablePool -> IO ()
initFields_ this = do
    pure ()

new_1 :: CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO BasicArrayListResetablePool
new_1 cacheableInterfaceFactoryInterface = do
    this <- newRecord_
    init_1 this cacheableInterfaceFactoryInterface
    pure this

init_1 :: BasicArrayListResetablePool -> CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO ()
init_1 this cacheableInterfaceFactoryInterface = do
        AbstractArrayListPool.init_1 this.base (cacheableInterfaceFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: BasicArrayListResetablePool))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: BasicArrayListResetablePool))

clear_impl :: BasicArrayListResetablePool -> IO (())
clear_impl this = do
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: BasicArrayListResetablePool))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove_super object_ a1 = (remove_impl (javaCast object_ :: BasicArrayListResetablePool)) (jtoObject a1)

remove_impl :: BasicArrayListResetablePool -> JavaObject -> IO (CacheableInterface.CacheableInterface)
remove_impl this keyObject_ = do
    let key = jtoObject keyObject_
    javaCatchReturn $ do
        size <- (BasicArrayList.size ((jget (this).base.buffers)))
        if (size > 0) then do
            javaReturn ((javaCast (jio (BasicArrayList.removeAt ((jget (this).base.buffers)) (size - 1))) :: CacheableInterface.CacheableInterface))
        else do
            javaReturn =<< (CacheableInterfaceFactoryInterface.getInstance ((jget (this).base.cacheableInterfaceFactoryInterface)) key)


