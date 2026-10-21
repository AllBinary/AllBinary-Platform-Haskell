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
-- package org.allbinary.time
module TimeStampUtil where

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
import qualified SimpleDateFormat -- java.text.SimpleDateFormat
import qualified Calendar -- java.util.Calendar
import qualified Date -- java.util.Date

data TimeStampUtil = TimeStampUtil
    { header_ :: JavaHeader
    , simpleDataFormat :: IORef (SimpleDateFormat.SimpleDateFormat)
    }

instance JavaNull TimeStampUtil where
    javaNull = javaNullRecord "TimeStampUtil"

instance JavaEquals TimeStampUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeStampUtil where
    (==) = jrecordEquals

instance JavaObjectClass TimeStampUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeStampUtil
newRecord_ = do
    header_ <- newJavaHeader
    simpleDataFormat <- newIORef javaNull
    let this = TimeStampUtil header_ simpleDataFormat
    jregisterLevel header_ this
    jregisterMethod header_ "getAsString" (\() -> getAsString_impl this)
    pure this

initFields_ :: TimeStampUtil -> IO ()
initFields_ this = do
    jset this.simpleDataFormat =<< (SimpleDateFormat.new_1 "yyyy-MM-dd HH:mm:ss.SSS")
    pure ()


getInstance :: IO (TimeStampUtil)
getInstance = do
        pure (TimeStampUtil.instance_)

new_ :: IO TimeStampUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimeStampUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getAsString :: (JavaObjectClass this_) => this_ -> IO (String)
getAsString object_ = jmethod object_ "getAsString" (\() -> (getAsString_impl (javaCast object_ :: TimeStampUtil))) ()

getAsString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAsString_super object_ = (getAsString_impl (javaCast object_ :: TimeStampUtil))

getAsString_impl :: TimeStampUtil -> IO (String)
getAsString_impl this = do
        calendar <- (Calendar.getInstance)
        date <- (Calendar.getTime calendar)
        (SimpleDateFormat.format ((jget (this).simpleDataFormat)) date)


