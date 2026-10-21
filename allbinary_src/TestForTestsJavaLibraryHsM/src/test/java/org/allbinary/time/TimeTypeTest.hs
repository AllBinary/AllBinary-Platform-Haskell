{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.time
module TimeTypeTest where

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
import qualified TimeTypeUtil -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified Assertions -- org.junit.jupiter.api.Assertions
import qualified DisplayName -- org.junit.jupiter.api.DisplayName
import qualified Test -- org.junit.jupiter.api.Test

data TimeTypeTest = TimeTypeTest
    { header_ :: JavaHeader
    }

instance JavaNull TimeTypeTest where
    javaNull = javaNullRecord "TimeTypeTest"

instance JavaEquals TimeTypeTest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeTypeTest where
    (==) = jrecordEquals

instance JavaObjectClass TimeTypeTest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeTypeTest
newRecord_ = do
    header_ <- newJavaHeader
    let this = TimeTypeTest header_
    jregisterLevel header_ this
    jregisterMethod header_ "isNight_returnsTrue_for_hours_less_than_6" (\() -> isNight_returnsTrue_for_hours_less_than_6_impl this)
    jregisterMethod header_ "isNight_returnsTrue_for_hours_greater_than_18" (\() -> isNight_returnsTrue_for_hours_greater_than_18_impl this)
    jregisterMethod header_ "isNight_returnsFalse_for_boundary_hours_6_and_18" (\() -> isNight_returnsFalse_for_boundary_hours_6_and_18_impl this)
    jregisterMethod header_ "getNightOrDay_returns_expected_label" (\() -> getNightOrDay_returns_expected_label_impl this)
    jregisterMethod header_ "getHourOfDay_long_converts_epoch_to_local_hour" (\() -> getHourOfDay_long_converts_epoch_to_local_hour_impl this)
    jregisterMethod header_ "isNight_long_expected_ranges" (\() -> isNight_long_expected_ranges_impl this)
    jregisterMethod header_ "getNightOrDay_long_consistency" (\() -> getNightOrDay_long_consistency_impl this)
    jregisterMethod header_ "boundaries_day_for_long_based_api" (\() -> boundaries_day_for_long_based_api_impl this)
    jregisterMethod header_ "constants_accessible_and_stable" (\() -> constants_accessible_and_stable_impl this)
    jregisterMethod header_ "getInstance_returns_same_singleton" (\() -> getInstance_returns_same_singleton_impl this)
    pure this

initFields_ :: TimeTypeTest -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TimeTypeTest
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimeTypeTest -> IO ()
init_ this = do
    initFields_ this


millisForHourLocal :: Int -> IO (Int64)
millisForHourLocal hour = do
        cal <- (Calendar.getInstance)
        Control.Monad.void (Calendar.set cal (Calendar.hOUR_OF_DAY) hour)
        Control.Monad.void (Calendar.set cal (Calendar.mINUTE) 0)
        Control.Monad.void (Calendar.set cal (Calendar.sECOND) 0)
        Control.Monad.void (Calendar.set cal (Calendar.mILLISECOND) 0)
        (Calendar.getTimeInMillis cal)


isNight_returnsTrue_for_hours_less_than_6 :: (JavaObjectClass this_) => this_ -> IO (())
isNight_returnsTrue_for_hours_less_than_6 object_ = jmethod object_ "isNight_returnsTrue_for_hours_less_than_6" (\() -> (isNight_returnsTrue_for_hours_less_than_6_impl (javaCast object_ :: TimeTypeTest))) ()

isNight_returnsTrue_for_hours_less_than_6_super :: (JavaObjectClass this_) => this_ -> IO (())
isNight_returnsTrue_for_hours_less_than_6_super object_ = (isNight_returnsTrue_for_hours_less_than_6_impl (javaCast object_ :: TimeTypeTest))

isNight_returnsTrue_for_hours_less_than_6_impl :: TimeTypeTest -> IO (())
isNight_returnsTrue_for_hours_less_than_6_impl this = do
        {- Otherwise - statement - ForEachStmt -} pure ()
        pure ()


isNight_returnsTrue_for_hours_greater_than_18 :: (JavaObjectClass this_) => this_ -> IO (())
isNight_returnsTrue_for_hours_greater_than_18 object_ = jmethod object_ "isNight_returnsTrue_for_hours_greater_than_18" (\() -> (isNight_returnsTrue_for_hours_greater_than_18_impl (javaCast object_ :: TimeTypeTest))) ()

isNight_returnsTrue_for_hours_greater_than_18_super :: (JavaObjectClass this_) => this_ -> IO (())
isNight_returnsTrue_for_hours_greater_than_18_super object_ = (isNight_returnsTrue_for_hours_greater_than_18_impl (javaCast object_ :: TimeTypeTest))

isNight_returnsTrue_for_hours_greater_than_18_impl :: TimeTypeTest -> IO (())
isNight_returnsTrue_for_hours_greater_than_18_impl this = do
        {- Otherwise - statement - ForEachStmt -} pure ()
        pure ()


isNight_returnsFalse_for_boundary_hours_6_and_18 :: (JavaObjectClass this_) => this_ -> IO (())
isNight_returnsFalse_for_boundary_hours_6_and_18 object_ = jmethod object_ "isNight_returnsFalse_for_boundary_hours_6_and_18" (\() -> (isNight_returnsFalse_for_boundary_hours_6_and_18_impl (javaCast object_ :: TimeTypeTest))) ()

isNight_returnsFalse_for_boundary_hours_6_and_18_super :: (JavaObjectClass this_) => this_ -> IO (())
isNight_returnsFalse_for_boundary_hours_6_and_18_super object_ = (isNight_returnsFalse_for_boundary_hours_6_and_18_impl (javaCast object_ :: TimeTypeTest))

isNight_returnsFalse_for_boundary_hours_6_and_18_impl :: TimeTypeTest -> IO (())
isNight_returnsFalse_for_boundary_hours_6_and_18_impl this = do
        {- Otherwise - statement - ForEachStmt -} pure ()
        pure ()


getNightOrDay_returns_expected_label :: (JavaObjectClass this_) => this_ -> IO (())
getNightOrDay_returns_expected_label object_ = jmethod object_ "getNightOrDay_returns_expected_label" (\() -> (getNightOrDay_returns_expected_label_impl (javaCast object_ :: TimeTypeTest))) ()

getNightOrDay_returns_expected_label_super :: (JavaObjectClass this_) => this_ -> IO (())
getNightOrDay_returns_expected_label_super object_ = (getNightOrDay_returns_expected_label_impl (javaCast object_ :: TimeTypeTest))

getNightOrDay_returns_expected_label_impl :: TimeTypeTest -> IO (())
getNightOrDay_returns_expected_label_impl this = do
        nightUtil <- (fmap (\value_ -> javaCast value_ :: TimeTypeUtil.TimeTypeUtil) (TestableTimeTypeUtil.new_1 0))
        Control.Monad.void (Assertions.assertEquals (jget (nightUtil).nIGHT) (jio (TimeTypeUtil.getNightOrDay nightUtil)))
        dayUtil <- (fmap (\value_ -> javaCast value_ :: TimeTypeUtil.TimeTypeUtil) (TestableTimeTypeUtil.new_1 12))
        Control.Monad.void (Assertions.assertEquals (jget (dayUtil).dAY) (jio (TimeTypeUtil.getNightOrDay dayUtil)))
        pure ()


getHourOfDay_long_converts_epoch_to_local_hour :: (JavaObjectClass this_) => this_ -> IO (())
getHourOfDay_long_converts_epoch_to_local_hour object_ = jmethod object_ "getHourOfDay_long_converts_epoch_to_local_hour" (\() -> (getHourOfDay_long_converts_epoch_to_local_hour_impl (javaCast object_ :: TimeTypeTest))) ()

getHourOfDay_long_converts_epoch_to_local_hour_super :: (JavaObjectClass this_) => this_ -> IO (())
getHourOfDay_long_converts_epoch_to_local_hour_super object_ = (getHourOfDay_long_converts_epoch_to_local_hour_impl (javaCast object_ :: TimeTypeTest))

getHourOfDay_long_converts_epoch_to_local_hour_impl :: TimeTypeTest -> IO (())
getHourOfDay_long_converts_epoch_to_local_hour_impl this = do
        util <- (TimeTypeUtil.new_)
        {- Otherwise - statement - ForEachStmt -} pure ()
        pure ()


isNight_long_expected_ranges :: (JavaObjectClass this_) => this_ -> IO (())
isNight_long_expected_ranges object_ = jmethod object_ "isNight_long_expected_ranges" (\() -> (isNight_long_expected_ranges_impl (javaCast object_ :: TimeTypeTest))) ()

isNight_long_expected_ranges_super :: (JavaObjectClass this_) => this_ -> IO (())
isNight_long_expected_ranges_super object_ = (isNight_long_expected_ranges_impl (javaCast object_ :: TimeTypeTest))

isNight_long_expected_ranges_impl :: TimeTypeTest -> IO (())
isNight_long_expected_ranges_impl this = do
        util <- (TimeTypeUtil.new_)
        {- Otherwise - statement - ForEachStmt -} pure ()
        {- Otherwise - statement - ForEachStmt -} pure ()
        pure ()


getNightOrDay_long_consistency :: (JavaObjectClass this_) => this_ -> IO (())
getNightOrDay_long_consistency object_ = jmethod object_ "getNightOrDay_long_consistency" (\() -> (getNightOrDay_long_consistency_impl (javaCast object_ :: TimeTypeTest))) ()

getNightOrDay_long_consistency_super :: (JavaObjectClass this_) => this_ -> IO (())
getNightOrDay_long_consistency_super object_ = (getNightOrDay_long_consistency_impl (javaCast object_ :: TimeTypeTest))

getNightOrDay_long_consistency_impl :: TimeTypeTest -> IO (())
getNightOrDay_long_consistency_impl this = do
        util <- (TimeTypeUtil.new_)
        nightMillis <- (TimeTypeTest.millisForHourLocal 0)
        dayMillis <- (TimeTypeTest.millisForHourLocal 12)
        Control.Monad.void (Assertions.assertEquals (jget (util).nIGHT) (jio (TimeTypeUtil.getNightOrDay util nightMillis)))
        Control.Monad.void (Assertions.assertEquals (jget (util).dAY) (jio (TimeTypeUtil.getNightOrDay util dayMillis)))
        pure ()


boundaries_day_for_long_based_api :: (JavaObjectClass this_) => this_ -> IO (())
boundaries_day_for_long_based_api object_ = jmethod object_ "boundaries_day_for_long_based_api" (\() -> (boundaries_day_for_long_based_api_impl (javaCast object_ :: TimeTypeTest))) ()

boundaries_day_for_long_based_api_super :: (JavaObjectClass this_) => this_ -> IO (())
boundaries_day_for_long_based_api_super object_ = (boundaries_day_for_long_based_api_impl (javaCast object_ :: TimeTypeTest))

boundaries_day_for_long_based_api_impl :: TimeTypeTest -> IO (())
boundaries_day_for_long_based_api_impl this = do
        util <- (TimeTypeUtil.new_)
        {- Otherwise - statement - ForEachStmt -} pure ()
        pure ()


constants_accessible_and_stable :: (JavaObjectClass this_) => this_ -> IO (())
constants_accessible_and_stable object_ = jmethod object_ "constants_accessible_and_stable" (\() -> (constants_accessible_and_stable_impl (javaCast object_ :: TimeTypeTest))) ()

constants_accessible_and_stable_super :: (JavaObjectClass this_) => this_ -> IO (())
constants_accessible_and_stable_super object_ = (constants_accessible_and_stable_impl (javaCast object_ :: TimeTypeTest))

constants_accessible_and_stable_impl :: TimeTypeTest -> IO (())
constants_accessible_and_stable_impl this = do
        util <- (TimeTypeUtil.new_)
        Control.Monad.void (Assertions.assertEquals "Night" (jget (util).nIGHT))
        Control.Monad.void (Assertions.assertEquals "Day" (jget (util).dAY))
        pure ()


getInstance_returns_same_singleton :: (JavaObjectClass this_) => this_ -> IO (())
getInstance_returns_same_singleton object_ = jmethod object_ "getInstance_returns_same_singleton" (\() -> (getInstance_returns_same_singleton_impl (javaCast object_ :: TimeTypeTest))) ()

getInstance_returns_same_singleton_super :: (JavaObjectClass this_) => this_ -> IO (())
getInstance_returns_same_singleton_super object_ = (getInstance_returns_same_singleton_impl (javaCast object_ :: TimeTypeTest))

getInstance_returns_same_singleton_impl :: TimeTypeTest -> IO (())
getInstance_returns_same_singleton_impl this = do
        a <- (TimeTypeUtil.getInstance)
        b <- (TimeTypeUtil.getInstance)
        Control.Monad.void (Assertions.assertSame a b)
        pure ()

-- Java nested class TestableTimeTypeUtil: move it to its own module TestableTimeTypeUtil

