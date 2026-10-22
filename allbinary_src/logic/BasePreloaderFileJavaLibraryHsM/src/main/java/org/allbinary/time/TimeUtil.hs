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
module TimeUtil where

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

data TimeUtil = TimeUtil
    { header_ :: JavaHeader
    }

instance JavaNull TimeUtil where
    javaNull = javaNullRecord "TimeUtil"

instance JavaEquals TimeUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeUtil where
    (==) = jrecordEquals

instance JavaObjectClass TimeUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

{-# NOINLINE calendar #-}
calendar = unsafePerformIO ((Calendar.getInstance))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = TimeUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "setCalendar" (\() -> setCalendar_impl this)
    jregisterMethod header_ "setCalendar_7" (\() -> setCalendar_7_impl this)
    jregisterMethod header_ "setExpirationCalendar" (\() -> setExpirationCalendar_impl this)
    jregisterMethod header_ "getTotalTime" (\() -> getTotalTime_impl this)
    pure this

initFields_ :: TimeUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TimeUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimeUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TimeUtil)
getInstance = do
        pure (TimeUtil.instance_)


setCalendar :: (JavaObjectClass this_) => this_ -> Calendar.Calendar -> String -> String -> String -> String -> IO (())
setCalendar object_ a1 a2 a3 a4 a5 = jmethod object_ "setCalendar" (\() -> (setCalendar_impl (javaCast object_ :: TimeUtil))) () a1 a2 a3 a4 a5

setCalendar_super :: (JavaObjectClass this_) => this_ -> Calendar.Calendar -> String -> String -> String -> String -> IO (())
setCalendar_super object_ a1 a2 a3 a4 a5 = (setCalendar_impl (javaCast object_ :: TimeUtil)) a1 a2 a3 a4 a5

setCalendar_impl :: TimeUtil -> Calendar.Calendar -> String -> String -> String -> String -> IO (())
setCalendar_impl this calendar yearString monthString dayString hourString = do
        let year = (Prelude.fromIntegral (yearString) :: Int)
        let month = (Prelude.fromIntegral (monthString) :: Int)
        let day = (Prelude.fromIntegral (dayString) :: Int)
        let hour = (Prelude.fromIntegral (hourString) :: Int)
        Control.Monad.void (Calendar.set calendar year month day hour 0)
        pure ()


setCalendar_7 :: (JavaObjectClass this_) => this_ -> Calendar.Calendar -> String -> String -> String -> String -> String -> String -> IO (())
setCalendar_7 object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "setCalendar_7" (\() -> (setCalendar_7_impl (javaCast object_ :: TimeUtil))) () a1 a2 a3 a4 a5 a6 a7

setCalendar_7_super :: (JavaObjectClass this_) => this_ -> Calendar.Calendar -> String -> String -> String -> String -> String -> String -> IO (())
setCalendar_7_super object_ a1 a2 a3 a4 a5 a6 a7 = (setCalendar_7_impl (javaCast object_ :: TimeUtil)) a1 a2 a3 a4 a5 a6 a7

setCalendar_7_impl :: TimeUtil -> Calendar.Calendar -> String -> String -> String -> String -> String -> String -> IO (())
setCalendar_7_impl this calendar yearString monthString dayString hourString minuteString secondString = do
        let year = (Prelude.fromIntegral (yearString) :: Int)
        let month = (Prelude.fromIntegral (monthString) :: Int)
        let day = (Prelude.fromIntegral (dayString) :: Int)
        let hour = (Prelude.fromIntegral (hourString) :: Int)
        let minute = (Prelude.fromIntegral (minuteString) :: Int)
        let second = (Prelude.fromIntegral (secondString) :: Int)
        Control.Monad.void (Calendar.set calendar year month day hour minute second)
        pure ()


setExpirationCalendar :: (JavaObjectClass this_) => this_ -> Calendar.Calendar -> String -> String -> String -> String -> String -> String -> IO (())
setExpirationCalendar object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "setExpirationCalendar" (\() -> (setExpirationCalendar_impl (javaCast object_ :: TimeUtil))) () a1 a2 a3 a4 a5 a6 a7

setExpirationCalendar_super :: (JavaObjectClass this_) => this_ -> Calendar.Calendar -> String -> String -> String -> String -> String -> String -> IO (())
setExpirationCalendar_super object_ a1 a2 a3 a4 a5 a6 a7 = (setExpirationCalendar_impl (javaCast object_ :: TimeUtil)) a1 a2 a3 a4 a5 a6 a7

setExpirationCalendar_impl :: TimeUtil -> Calendar.Calendar -> String -> String -> String -> String -> String -> String -> IO (())
setExpirationCalendar_impl this calendar yearsString monthsString daysString hoursString minutesString secondsString = do
        let year = ((jio (Calendar.get calendar (Calendar.yEAR))) + (Prelude.fromIntegral (yearsString) :: Int))
        let month = ((jio (Calendar.get calendar (Calendar.mONTH))) + (Prelude.fromIntegral (monthsString) :: Int))
        let day = ((jio (Calendar.get calendar (Calendar.dAY_OF_MONTH))) + (Prelude.fromIntegral (daysString) :: Int))
        let hour = ((jio (Calendar.get calendar (Calendar.hOUR))) + (Prelude.fromIntegral (hoursString) :: Int))
        let minute = ((jio (Calendar.get calendar (Calendar.mINUTE))) + (Prelude.fromIntegral (minutesString) :: Int))
        let second = ((jio (Calendar.get calendar (Calendar.sECOND))) + (Prelude.fromIntegral (secondsString) :: Int))
        Control.Monad.void (Calendar.set calendar year month day hour minute second)
        pure ()


getTotalTime :: (JavaObjectClass this_) => this_ -> String -> String -> String -> String -> String -> String -> IO (Int64)
getTotalTime object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "getTotalTime" (\() -> (getTotalTime_impl (javaCast object_ :: TimeUtil))) () a1 a2 a3 a4 a5 a6

getTotalTime_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> String -> String -> String -> IO (Int64)
getTotalTime_super object_ a1 a2 a3 a4 a5 a6 = (getTotalTime_impl (javaCast object_ :: TimeUtil)) a1 a2 a3 a4 a5 a6

getTotalTime_impl :: TimeUtil -> String -> String -> String -> String -> String -> String -> IO (Int64)
getTotalTime_impl this yearString monthString dayString hourString minuteString secondString = do
        time <- (getTimeInMillis TimeUtil.calendar)
        Control.Monad.void (TimeUtil.setExpirationCalendar this (TimeUtil.calendar) yearString monthString dayString hourString minuteString secondString)
        timeDelta <- (getTimeInMillis TimeUtil.calendar)
        pure ((timeDelta - time))


