{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
module PoolType where

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
import qualified CacheType -- same package or java.lang

data PoolType = PoolType
    { header_ :: JavaHeader
    , cacheType :: IORef (CacheType.CacheType)
    }

instance JavaNull PoolType where
    javaNull = javaNullRecord "PoolType"

instance JavaEquals PoolType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PoolType where
    (==) = jrecordEquals

instance JavaObjectClass PoolType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PoolType
newRecord_ = do
    header_ <- newJavaHeader
    cacheType <- newIORef javaNull
    let this = PoolType header_ cacheType
    jregisterLevel header_ this
    jregisterMethod header_ "getCacheType" (\() -> getCacheType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PoolType -> IO ()
initFields_ this = do
    jset this.cacheType (javaNull)
    pure ()

new_1 :: CacheType.CacheType -> IO PoolType
new_1 cacheType = do
    this <- newRecord_
    init_1 this cacheType
    pure this

init_1 :: PoolType -> CacheType.CacheType -> IO ()
init_1 this cacheType = do
        initFields_ this
        jset (this).cacheType (cacheType)
        pure ()


getCacheType :: (JavaObjectClass this_) => this_ -> IO (CacheType.CacheType)
getCacheType object_ = jmethod object_ "getCacheType" (\() -> (getCacheType_impl (javaCast object_ :: PoolType))) ()

getCacheType_super :: (JavaObjectClass this_) => this_ -> IO (CacheType.CacheType)
getCacheType_super object_ = (getCacheType_impl (javaCast object_ :: PoolType))

getCacheType_impl :: PoolType -> IO (CacheType.CacheType)
getCacheType_impl this = do
        pure ((jget (this).cacheType))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PoolType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PoolType))

toString_impl :: PoolType -> IO (String)
toString_impl this = do
        let pOOL_TYPE = "PoolType: "
        pure ((pOOL_TYPE ++ (jio (CacheType.toString ((jio (PoolType.getCacheType this)))))))


