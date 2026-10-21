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
-- package org.allbinary.media.image.io
module IIOImageCacheableFactory where

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
import qualified IIOImageCacheable -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface
import qualified CacheableInterfaceFactoryInterface -- org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface

-- implements CacheableInterfaceFactoryInterface
data IIOImageCacheableFactory = IIOImageCacheableFactory
    { header_ :: JavaHeader
    }

instance JavaNull IIOImageCacheableFactory where
    javaNull = javaNullRecord "IIOImageCacheableFactory"

instance JavaEquals IIOImageCacheableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IIOImageCacheableFactory where
    (==) = jrecordEquals

instance JavaObjectClass IIOImageCacheableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO IIOImageCacheableFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = IIOImageCacheableFactory header_
    jregisterLevel header_ this
    CacheableInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: IIOImageCacheableFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO IIOImageCacheableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IIOImageCacheableFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: IIOImageCacheableFactory))) () (jtoObject a1)

getInstance_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: IIOImageCacheableFactory)) (jtoObject a1)

getInstance_impl :: IIOImageCacheableFactory -> JavaObject -> IO (CacheableInterface.CacheableInterface)
getInstance_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (fmap (\value_ -> javaCast value_ :: CacheableInterface.CacheableInterface) (IIOImageCacheable.new_1 (javaCast key :: String)))


