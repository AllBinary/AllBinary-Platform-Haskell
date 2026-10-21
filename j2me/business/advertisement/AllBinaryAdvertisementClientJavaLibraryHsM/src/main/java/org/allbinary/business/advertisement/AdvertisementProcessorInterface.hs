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
-- package org.allbinary.business.advertisement
module AdvertisementProcessorInterface where

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

data AdvertisementProcessorInterface = AdvertisementProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementProcessorInterface where
    javaNull = javaNullRecord "AdvertisementProcessorInterface"

instance JavaEquals AdvertisementProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementProcessorInterface
newRecord_ = do
    header_ <- newJavaHeader
    let this = AdvertisementProcessorInterface header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: AdvertisementProcessorInterface -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AdvertisementProcessorInterface
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvertisementProcessorInterface -> IO ()
init_ this = do
    initFields_ this


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AdvertisementProcessorInterface))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: AdvertisementProcessorInterface))

process_impl :: AdvertisementProcessorInterface -> IO (())
process_impl this = do
        pure ()


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: AdvertisementProcessorInterface))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: AdvertisementProcessorInterface))

start_impl :: AdvertisementProcessorInterface -> IO (())
start_impl this = do
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: AdvertisementProcessorInterface))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: AdvertisementProcessorInterface))

stop_impl :: AdvertisementProcessorInterface -> IO (())
stop_impl this = do
        pure ()


