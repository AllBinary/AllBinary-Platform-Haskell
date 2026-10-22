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
-- package org.allbinary.media.image.comparison.motion
module MotionRectangles where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ImageComparisonResult -- org.allbinary.media.image.comparison.ImageComparisonResult

data MotionRectangles = MotionRectangles
    { header_ :: JavaHeader
    , name :: IORef (String)
    , rectangleVector :: IORef (BasicArrayList.BasicArrayList)
    , imageComparisonResult :: IORef (ImageComparisonResult.ImageComparisonResult)
    , mAX_PIXEL_DISTANCE_THRESHOLD :: IORef (Int)
    }

instance JavaNull MotionRectangles where
    javaNull = javaNullRecord "MotionRectangles"

instance JavaEquals MotionRectangles where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectangles where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectangles where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionRectangles
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    rectangleVector <- newIORef javaNull
    imageComparisonResult <- newIORef javaNull
    mAX_PIXEL_DISTANCE_THRESHOLD <- newIORef 0
    let this = MotionRectangles header_ name rectangleVector imageComparisonResult mAX_PIXEL_DISTANCE_THRESHOLD
    jregisterLevel header_ this
    jregisterMethod header_ "getVector" (\() -> getVector_impl this)
    jregisterMethod header_ "setVector" (\() -> setVector_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getImageComparisonResult" (\() -> getImageComparisonResult_impl this)
    jregisterMethod header_ "setImageComparisonResult" (\() -> setImageComparisonResult_impl this)
    pure this

initFields_ :: MotionRectangles -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.rectangleVector (javaNull)
    jset this.imageComparisonResult (javaNull)
    jset this.mAX_PIXEL_DISTANCE_THRESHOLD (2)
    pure ()

new_2 :: String -> ImageComparisonResult.ImageComparisonResult -> IO MotionRectangles
new_2 name imageComparisonResult = do
    this <- newRecord_
    init_2 this name imageComparisonResult
    pure this

init_2 :: MotionRectangles -> String -> ImageComparisonResult.ImageComparisonResult -> IO ()
init_2 this name imageComparisonResult = do
        initFields_ this
        jset (this).name (name)
        Control.Monad.void (MotionRectangles.setImageComparisonResult this imageComparisonResult)
        Control.Monad.void (MotionRectangles.setVector this (javaCast (jio (BasicArrayListD.new_))))
        pure ()


getVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getVector object_ = jmethod object_ "getVector" (\() -> (getVector_impl (javaCast object_ :: MotionRectangles))) ()

getVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getVector_super object_ = (getVector_impl (javaCast object_ :: MotionRectangles))

getVector_impl :: MotionRectangles -> IO (BasicArrayList.BasicArrayList)
getVector_impl this = do
        pure ((jget (this).rectangleVector))


setVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setVector object_ a1 = jmethod object_ "setVector" (\() -> (setVector_impl (javaCast object_ :: MotionRectangles))) () a1

setVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setVector_super object_ a1 = (setVector_impl (javaCast object_ :: MotionRectangles)) a1

setVector_impl :: MotionRectangles -> BasicArrayList.BasicArrayList -> IO (())
setVector_impl this rectangleVector = do
        jset (this).rectangleVector (rectangleVector)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: MotionRectangles))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: MotionRectangles))

getName_impl :: MotionRectangles -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getImageComparisonResult :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult object_ = jmethod object_ "getImageComparisonResult" (\() -> (getImageComparisonResult_impl (javaCast object_ :: MotionRectangles))) ()

getImageComparisonResult_super :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult_super object_ = (getImageComparisonResult_impl (javaCast object_ :: MotionRectangles))

getImageComparisonResult_impl :: MotionRectangles -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult_impl this = do
        pure ((jget (this).imageComparisonResult))


setImageComparisonResult :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult object_ a1 = jmethod object_ "setImageComparisonResult" (\() -> (setImageComparisonResult_impl (javaCast object_ :: MotionRectangles))) () a1

setImageComparisonResult_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult_super object_ a1 = (setImageComparisonResult_impl (javaCast object_ :: MotionRectangles)) a1

setImageComparisonResult_impl :: MotionRectangles -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult_impl this imageComparisonResult = do
        jset (this).imageComparisonResult (imageComparisonResult)
        pure ()


