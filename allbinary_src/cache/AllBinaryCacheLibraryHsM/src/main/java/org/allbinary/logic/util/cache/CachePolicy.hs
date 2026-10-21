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
module CachePolicy where

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

data CachePolicy = CachePolicy
    { header_ :: JavaHeader
    , name :: IORef (String)
    , maxTime :: IORef (Int64)
    , maxSize :: IORef (Int64)
    }

instance JavaNull CachePolicy where
    javaNull = javaNullRecord "CachePolicy"

instance JavaEquals CachePolicy where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CachePolicy where
    (==) = jrecordEquals

instance JavaObjectClass CachePolicy where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CachePolicy
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    maxTime <- newIORef 0
    maxSize <- newIORef 0
    let this = CachePolicy header_ name maxTime maxSize
    jregisterLevel header_ this
    jregisterMethod header_ "getMaxTime" (\() -> getMaxTime_impl this)
    jregisterMethod header_ "setMaxTime" (\() -> setMaxTime_impl this)
    jregisterMethod header_ "getMaxSize" (\() -> getMaxSize_impl this)
    jregisterMethod header_ "setMaxSize" (\() -> setMaxSize_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: CachePolicy -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.maxTime (0)
    jset this.maxSize (0)
    pure ()

new_3 :: String -> Int64 -> Int64 -> IO CachePolicy
new_3 name maxTime maxSize = do
    this <- newRecord_
    init_3 this name maxTime maxSize
    pure this

init_3 :: CachePolicy -> String -> Int64 -> Int64 -> IO ()
init_3 this name maxTime maxSize = do
        initFields_ this
        jset (this).name (name)
        Control.Monad.void (CachePolicy.setMaxTime this maxTime)
        Control.Monad.void (CachePolicy.setMaxSize this maxSize)
        pure ()


getMaxTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime object_ = jmethod object_ "getMaxTime" (\() -> (getMaxTime_impl (javaCast object_ :: CachePolicy))) ()

getMaxTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime_super object_ = (getMaxTime_impl (javaCast object_ :: CachePolicy))

getMaxTime_impl :: CachePolicy -> IO (Int64)
getMaxTime_impl this = do
        pure ((jget (this).maxTime))


setMaxTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMaxTime object_ a1 = jmethod object_ "setMaxTime" (\() -> (setMaxTime_impl (javaCast object_ :: CachePolicy))) () a1

setMaxTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMaxTime_super object_ a1 = (setMaxTime_impl (javaCast object_ :: CachePolicy)) a1

setMaxTime_impl :: CachePolicy -> Int64 -> IO (())
setMaxTime_impl this maxTime = do
        jset (this).maxTime (maxTime)
        pure ()


getMaxSize :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxSize object_ = jmethod object_ "getMaxSize" (\() -> (getMaxSize_impl (javaCast object_ :: CachePolicy))) ()

getMaxSize_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxSize_super object_ = (getMaxSize_impl (javaCast object_ :: CachePolicy))

getMaxSize_impl :: CachePolicy -> IO (Int64)
getMaxSize_impl this = do
        pure ((jget (this).maxSize))


setMaxSize :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMaxSize object_ a1 = jmethod object_ "setMaxSize" (\() -> (setMaxSize_impl (javaCast object_ :: CachePolicy))) () a1

setMaxSize_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMaxSize_super object_ a1 = (setMaxSize_impl (javaCast object_ :: CachePolicy)) a1

setMaxSize_impl :: CachePolicy -> Int64 -> IO (())
setMaxSize_impl this maxSize = do
        jset (this).maxSize (maxSize)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: CachePolicy))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: CachePolicy))

getName_impl :: CachePolicy -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


