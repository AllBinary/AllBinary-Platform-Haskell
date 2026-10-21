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
-- package org.allbinary.business.time
module Time where

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

data Time = Time
    { header_ :: JavaHeader
    , timeLong :: IORef (Int64)
    }

instance JavaNull Time where
    javaNull = javaNullRecord "Time"

instance JavaEquals Time where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Time where
    (==) = jrecordEquals

instance JavaObjectClass Time where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Time
newRecord_ = do
    header_ <- newJavaHeader
    timeLong <- newIORef javaNull
    let this = Time header_ timeLong
    jregisterLevel header_ this
    jregisterMethod header_ "getLong" (\() -> getLong_impl this)
    jregisterMethod header_ "getlong" (\() -> getlong_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Time -> IO ()
initFields_ this = do
    jset this.timeLong (javaNull)
    pure ()

new_1 :: String -> IO Time
new_1 time = do
    this <- newRecord_
    init_1 this time
    pure this

init_1 :: Time -> String -> IO ()
init_1 this time = do
        initFields_ this
        jset (this).timeLong ((Prelude.fromIntegral (time) :: Int64))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Int64 -> IO Time
new_1 time = do
    this <- newRecord_
    init_1 this time
    pure this

init_1 :: Time -> Int64 -> IO ()
init_1 this time = do
        initFields_ this
        jset (this).timeLong ((Prelude.fromIntegral (time) :: Int64))
        pure ()


getLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLong object_ = jmethod object_ "getLong" (\() -> (getLong_impl (javaCast object_ :: Time))) ()

getLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLong_super object_ = (getLong_impl (javaCast object_ :: Time))

getLong_impl :: Time -> IO (Int64)
getLong_impl this = do
        pure ((jget (this).timeLong))


getlong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getlong object_ = jmethod object_ "getlong" (\() -> (getlong_impl (javaCast object_ :: Time))) ()

getlong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getlong_super object_ = (getlong_impl (javaCast object_ :: Time))

getlong_impl :: Time -> IO (Int64)
getlong_impl this = do
        pure ((jget (this).timeLong))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Time))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Time))

toString_impl :: Time -> IO (String)
toString_impl this = do
        pure ((javaToString (jio (Time.getLong this))))


