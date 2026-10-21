{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.time
module TimeTypeUtil where

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
import qualified Calendar -- java.util.Calendar
import qualified TimeZone -- java.util.TimeZone

data TimeTypeUtil = TimeTypeUtil
    { header_ :: JavaHeader
    , nIGHT :: IORef (String)
    , dAY :: IORef (String)
    }

instance JavaNull TimeTypeUtil where
    javaNull = javaNullRecord "TimeTypeUtil"

instance JavaEquals TimeTypeUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeTypeUtil where
    (==) = jrecordEquals

instance JavaObjectClass TimeTypeUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeTypeUtil
newRecord_ = do
    header_ <- newJavaHeader
    nIGHT <- newIORef ""
    dAY <- newIORef ""
    let this = TimeTypeUtil header_ nIGHT dAY
    jregisterLevel header_ this
    jregisterMethod header_ "isNight" (\() -> isNight_impl this)
    jregisterMethod header_ "getHourOfDay" (\() -> getHourOfDay_impl this)
    jregisterMethod header_ "getNightOrDay" (\() -> getNightOrDay_impl this)
    jregisterMethod header_ "getHourOfDay" (\() -> getHourOfDay_impl this)
    jregisterMethod header_ "isNight" (\() -> isNight_impl this)
    jregisterMethod header_ "getNightOrDay" (\() -> getNightOrDay_impl this)
    pure this

initFields_ :: TimeTypeUtil -> IO ()
initFields_ this = do
    jset this.nIGHT ("Night")
    jset this.dAY ("Day")
    pure ()

new_ :: IO TimeTypeUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimeTypeUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TimeTypeUtil)
getInstance = do
        pure (TimeTypeUtil.instance_)


isNight :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNight object_ = jmethod object_ "isNight" (\() -> (isNight_impl (javaCast object_ :: TimeTypeUtil))) ()

isNight_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNight_super object_ = (isNight_impl (javaCast object_ :: TimeTypeUtil))

isNight_impl :: TimeTypeUtil -> IO (Bool)
isNight_impl this = do
        hoursOfDay <- (TimeTypeUtil.getHourOfDay this)
        pure (((hoursOfDay < 6) || (hoursOfDay > 18)))


getHourOfDay :: (JavaObjectClass this_) => this_ -> IO (Int)
getHourOfDay object_ = jmethod object_ "getHourOfDay" (\() -> (getHourOfDay_impl (javaCast object_ :: TimeTypeUtil))) ()

getHourOfDay_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHourOfDay_super object_ = (getHourOfDay_impl (javaCast object_ :: TimeTypeUtil))

getHourOfDay_impl :: TimeTypeUtil -> IO (Int)
getHourOfDay_impl this = do
        calendar <- (Calendar.getInstance)
        (Calendar.get calendar (Calendar.hOUR_OF_DAY))


getNightOrDay :: (JavaObjectClass this_) => this_ -> IO (String)
getNightOrDay object_ = jmethod object_ "getNightOrDay" (\() -> (getNightOrDay_impl (javaCast object_ :: TimeTypeUtil))) ()

getNightOrDay_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNightOrDay_super object_ = (getNightOrDay_impl (javaCast object_ :: TimeTypeUtil))

getNightOrDay_impl :: TimeTypeUtil -> IO (String)
getNightOrDay_impl this = do
        pure ((if (jio (TimeTypeUtil.isNight this)) then (jget (this).nIGHT) else (jget (this).dAY)))


-- Java overload of getHourOfDay with a different parameter count: give it a different name
getHourOfDay :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int)
getHourOfDay object_ a1 = jmethod object_ "getHourOfDay" (\() -> (getHourOfDay_impl (javaCast object_ :: TimeTypeUtil))) () a1

getHourOfDay_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int)
getHourOfDay_super object_ a1 = (getHourOfDay_impl (javaCast object_ :: TimeTypeUtil)) a1

getHourOfDay_impl :: TimeTypeUtil -> Int64 -> IO (Int)
getHourOfDay_impl this timeInMillis = do
        calendar <- (Calendar.getInstance)
        Control.Monad.void (Calendar.setTimeInMillis calendar timeInMillis)
        (Calendar.get calendar (Calendar.hOUR_OF_DAY))


-- Java overload of isNight with a different parameter count: give it a different name
isNight :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isNight object_ a1 = jmethod object_ "isNight" (\() -> (isNight_impl (javaCast object_ :: TimeTypeUtil))) () a1

isNight_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isNight_super object_ a1 = (isNight_impl (javaCast object_ :: TimeTypeUtil)) a1

isNight_impl :: TimeTypeUtil -> Int64 -> IO (Bool)
isNight_impl this timeInMillis = do
        hoursOfDay <- (TimeTypeUtil.getHourOfDay this timeInMillis)
        pure (((hoursOfDay < 6) || (hoursOfDay > 18)))


-- Java overload of getNightOrDay with a different parameter count: give it a different name
getNightOrDay :: (JavaObjectClass this_) => this_ -> Int64 -> IO (String)
getNightOrDay object_ a1 = jmethod object_ "getNightOrDay" (\() -> (getNightOrDay_impl (javaCast object_ :: TimeTypeUtil))) () a1

getNightOrDay_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (String)
getNightOrDay_super object_ a1 = (getNightOrDay_impl (javaCast object_ :: TimeTypeUtil)) a1

getNightOrDay_impl :: TimeTypeUtil -> Int64 -> IO (String)
getNightOrDay_impl this timeInMillis = do
        pure ((if (jio (TimeTypeUtil.isNight this timeInMillis)) then (jget (this).nIGHT) else (jget (this).dAY)))


