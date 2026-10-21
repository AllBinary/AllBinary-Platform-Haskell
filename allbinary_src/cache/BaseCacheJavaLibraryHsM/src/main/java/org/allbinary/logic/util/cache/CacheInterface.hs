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
module CacheInterface where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod

-- Java interface: the classes that implement it have these functions
data CacheInterface = CacheInterface
    { header_ :: JavaHeader
    }

instance JavaNull CacheInterface where
    javaNull = javaNullRecord "CacheInterface"

instance JavaEquals CacheInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CacheInterface where
    (==) = jrecordEquals

instance JavaObjectClass CacheInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CacheInterface
fromHeader_ header = CacheInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CacheInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> CacheableInterface.CacheableInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: CacheInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> CacheableInterface.CacheableInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: CacheInterface)) a1

add_impl :: CacheInterface -> CacheableInterface.CacheableInterface -> IO (())
add_impl this cacheableInterface = javaAbstractMethod "add"


-- throws Exception
addArray :: (JavaObjectClass this_) => this_ -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray object_ a1 = jmethod object_ "addArray" (\() -> (addArray_impl (javaCast object_ :: CacheInterface))) () a1

addArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray_super object_ a1 = (addArray_impl (javaCast object_ :: CacheInterface)) a1

addArray_impl :: CacheInterface -> JavaArray (CacheableInterface.CacheableInterface) -> IO (())
addArray_impl this cacheableInterfaces = javaAbstractMethod "addArray"


-- throws Exception
clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: CacheInterface))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: CacheInterface))

clear_impl :: CacheInterface -> IO (())
clear_impl this = javaAbstractMethod "clear"


