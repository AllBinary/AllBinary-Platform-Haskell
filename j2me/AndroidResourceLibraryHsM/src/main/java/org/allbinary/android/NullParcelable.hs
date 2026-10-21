{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.android
module NullParcelable where

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
import qualified Parcelable -- android.os.Parcelable
import qualified Parcel -- android.os.Parcel

-- implements Parcelable
data NullParcelable = NullParcelable
    { header_ :: JavaHeader
    }

instance JavaNull NullParcelable where
    javaNull = javaNullRecord "NullParcelable"

instance JavaEquals NullParcelable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullParcelable where
    (==) = jrecordEquals

instance JavaObjectClass NullParcelable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PARCELABLE #-}
nULL_PARCELABLE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullParcelable
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullParcelable header_
    jregisterLevel header_ this
    Parcelable.registerInterface_ header_
    jregisterMethod header_ "describeContents" (\() -> describeContents_impl this)
    jregisterMethod header_ "writeToParcel" (\() -> writeToParcel_impl this)
    pure this

initFields_ :: NullParcelable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullParcelable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullParcelable -> IO ()
init_ this = do
    initFields_ this


describeContents :: (JavaObjectClass this_) => this_ -> IO (Int)
describeContents object_ = jmethod object_ "describeContents" (\() -> (describeContents_impl (javaCast object_ :: NullParcelable))) ()

describeContents_super :: (JavaObjectClass this_) => this_ -> IO (Int)
describeContents_super object_ = (describeContents_impl (javaCast object_ :: NullParcelable))

describeContents_impl :: NullParcelable -> IO (Int)
describeContents_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


writeToParcel :: (JavaObjectClass this_) => this_ -> Parcel.Parcel -> Int -> IO (())
writeToParcel object_ a1 a2 = jmethod object_ "writeToParcel" (\() -> (writeToParcel_impl (javaCast object_ :: NullParcelable))) () a1 a2

writeToParcel_super :: (JavaObjectClass this_) => this_ -> Parcel.Parcel -> Int -> IO (())
writeToParcel_super object_ a1 a2 = (writeToParcel_impl (javaCast object_ :: NullParcelable)) a1 a2

writeToParcel_impl :: NullParcelable -> Parcel.Parcel -> Int -> IO (())
writeToParcel_impl this dest flags = do
        pure ()


