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
module CacheableInterfaceFactoryInterface where

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
import qualified CacheableInterface -- same package or java.lang
import qualified Any -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data CacheableInterfaceFactoryInterface = CacheableInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull CacheableInterfaceFactoryInterface where
    javaNull = javaNullRecord "CacheableInterfaceFactoryInterface"

instance JavaEquals CacheableInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CacheableInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass CacheableInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CacheableInterfaceFactoryInterface
fromHeader_ header = CacheableInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CacheableInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CacheableInterfaceFactoryInterface))) () (jtoObject a1)

getInstance_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: CacheableInterfaceFactoryInterface)) (jtoObject a1)

getInstance_impl :: CacheableInterfaceFactoryInterface -> JavaObject -> IO (CacheableInterface.CacheableInterface)
getInstance_impl this keyObject_ = javaAbstractMethod "getInstance"


