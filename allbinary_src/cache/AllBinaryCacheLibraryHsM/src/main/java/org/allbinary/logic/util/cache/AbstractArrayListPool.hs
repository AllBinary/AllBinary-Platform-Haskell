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
module AbstractArrayListPool where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PoolInterface

-- implements PoolInterface
data AbstractArrayListPool = AbstractArrayListPool
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , buffers :: IORef (BasicArrayList.BasicArrayList)
    , cacheableInterfaceFactoryInterface :: IORef (CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface)
    }

instance JavaNull AbstractArrayListPool where
    javaNull = javaNullRecord "AbstractArrayListPool"

instance JavaEquals AbstractArrayListPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbstractArrayListPool where
    (==) = jrecordEquals

instance JavaObjectClass AbstractArrayListPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbstractArrayListPool
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    buffers <- newIORef javaNull
    cacheableInterfaceFactoryInterface <- newIORef javaNull
    let this = AbstractArrayListPool header_ commonStrings buffers cacheableInterfaceFactoryInterface
    jregisterLevel header_ this
    PoolInterface.registerInterface_ header_
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "addArray" (\() -> addArray_impl this)
    pure this

initFields_ :: AbstractArrayListPool -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.buffers =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.cacheableInterfaceFactoryInterface (javaNull)
    pure ()

new_1 :: CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO AbstractArrayListPool
new_1 cacheableInterfaceFactoryInterface = do
    this <- newRecord_
    init_1 this cacheableInterfaceFactoryInterface
    pure this

init_1 :: AbstractArrayListPool -> CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO ()
init_1 this cacheableInterfaceFactoryInterface = do
        initFields_ this
        jset (this).cacheableInterfaceFactoryInterface (cacheableInterfaceFactoryInterface)
        pure ()


-- throws Exception
clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: AbstractArrayListPool))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: AbstractArrayListPool))

clear_impl :: AbstractArrayListPool -> IO (())
clear_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: AbstractArrayListPool))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove_super object_ a1 = (remove_impl (javaCast object_ :: AbstractArrayListPool)) (jtoObject a1)

remove_impl :: AbstractArrayListPool -> JavaObject -> IO (CacheableInterface.CacheableInterface)
remove_impl this keyObject_ = do
        let key = jtoObject keyObject_
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> CacheableInterface.CacheableInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: AbstractArrayListPool))) () a1

add_super :: (JavaObjectClass this_) => this_ -> CacheableInterface.CacheableInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: AbstractArrayListPool)) a1

add_impl :: AbstractArrayListPool -> CacheableInterface.CacheableInterface -> IO (())
add_impl this cacheableInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).buffers)) cacheableInterface)
        pure ()


-- throws Exception
addArray :: (JavaObjectClass this_) => this_ -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray object_ a1 = jmethod object_ "addArray" (\() -> (addArray_impl (javaCast object_ :: AbstractArrayListPool))) () a1

addArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray_super object_ a1 = (addArray_impl (javaCast object_ :: AbstractArrayListPool)) a1

addArray_impl :: AbstractArrayListPool -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray_impl this cacheableInterfaces = do
        forM_ [0 .. (jlength cacheableInterfaces) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).buffers)) (jindex cacheableInterfaces (index)))
        pure ()


