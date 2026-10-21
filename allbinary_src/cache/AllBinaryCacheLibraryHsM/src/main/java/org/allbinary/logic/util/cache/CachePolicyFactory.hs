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
module CachePolicyFactory where

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
import qualified CachePolicy -- same package or java.lang

data CachePolicyFactory = CachePolicyFactory
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , mAX_TIME_THOUSAND_MAX :: IORef (CachePolicy.CachePolicy)
    , tHIRTY_MINUTES_TEN_THOUSAND_MAX :: IORef (CachePolicy.CachePolicy)
    , tHIRTY_MINUTES_FIFTY_THOUSAND_MAX :: IORef (CachePolicy.CachePolicy)
    , oNE_MINUTE_FIVE_MAX :: IORef (CachePolicy.CachePolicy)
    , oNE_MINUTE_TEN_MAX :: IORef (CachePolicy.CachePolicy)
    , oNE_MINUTE_ONE_HUNDRED_MAX :: IORef (CachePolicy.CachePolicy)
    }

instance JavaNull CachePolicyFactory where
    javaNull = javaNullRecord "CachePolicyFactory"

instance JavaEquals CachePolicyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CachePolicyFactory where
    (==) = jrecordEquals

instance JavaObjectClass CachePolicyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CachePolicyFactory
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    mAX_TIME_THOUSAND_MAX <- newIORef javaNull
    tHIRTY_MINUTES_TEN_THOUSAND_MAX <- newIORef javaNull
    tHIRTY_MINUTES_FIFTY_THOUSAND_MAX <- newIORef javaNull
    oNE_MINUTE_FIVE_MAX <- newIORef javaNull
    oNE_MINUTE_TEN_MAX <- newIORef javaNull
    oNE_MINUTE_ONE_HUNDRED_MAX <- newIORef javaNull
    let this = CachePolicyFactory header_ nAME mAX_TIME_THOUSAND_MAX tHIRTY_MINUTES_TEN_THOUSAND_MAX tHIRTY_MINUTES_FIFTY_THOUSAND_MAX oNE_MINUTE_FIVE_MAX oNE_MINUTE_TEN_MAX oNE_MINUTE_ONE_HUNDRED_MAX
    jregisterLevel header_ this
    pure this

initFields_ :: CachePolicyFactory -> IO ()
initFields_ this = do
    jset this.nAME ("lru")
    jset this.mAX_TIME_THOUSAND_MAX =<< (CachePolicy.new_3 (jget (this).nAME) (Prelude.maxBound :: Int64) 1000)
    jset this.tHIRTY_MINUTES_TEN_THOUSAND_MAX =<< (CachePolicy.new_3 (jget (this).nAME) ((1000 * 60) * 30) 10000)
    jset this.tHIRTY_MINUTES_FIFTY_THOUSAND_MAX =<< (CachePolicy.new_3 (jget (this).nAME) ((1000 * 60) * 30) 100000)
    jset this.oNE_MINUTE_FIVE_MAX =<< (CachePolicy.new_3 (jget (this).nAME) ((1000 * 60) * 1) 5)
    jset this.oNE_MINUTE_TEN_MAX =<< (CachePolicy.new_3 (jget (this).nAME) ((1000 * 60) * 1) 10)
    jset this.oNE_MINUTE_ONE_HUNDRED_MAX =<< (CachePolicy.new_3 (jget (this).nAME) ((1000 * 60) * 1) 100)
    pure ()

new_ :: IO CachePolicyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CachePolicyFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CachePolicyFactory)
getInstance = do
        pure (CachePolicyFactory.instance_)


