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
module BasicArrayListCacheableInterfaceFactory where

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
import qualified BasicArrayListCacheable -- same package or java.lang
import qualified CacheableInterface -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CacheableInterfaceFactoryInterface

-- implements CacheableInterfaceFactoryInterface
data BasicArrayListCacheableInterfaceFactory = BasicArrayListCacheableInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull BasicArrayListCacheableInterfaceFactory where
    javaNull = javaNullRecord "BasicArrayListCacheableInterfaceFactory"

instance JavaEquals BasicArrayListCacheableInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicArrayListCacheableInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicArrayListCacheableInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicArrayListCacheableInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicArrayListCacheableInterfaceFactory header_
    jregisterLevel header_ this
    CacheableInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BasicArrayListCacheableInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicArrayListCacheableInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicArrayListCacheableInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicArrayListCacheableInterfaceFactory))) () (jtoObject a1)

getInstance_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: BasicArrayListCacheableInterfaceFactory)) (jtoObject a1)

getInstance_impl :: BasicArrayListCacheableInterfaceFactory -> JavaObject -> IO (CacheableInterface.CacheableInterface)
getInstance_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (fmap (\value_ -> javaCast value_ :: CacheableInterface.CacheableInterface) (BasicArrayListCacheable.new_))


