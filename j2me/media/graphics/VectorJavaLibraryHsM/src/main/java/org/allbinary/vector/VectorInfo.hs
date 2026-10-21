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
-- package org.allbinary.vector
module VectorInfo where

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

data VectorInfo = VectorInfo
    { header_ :: JavaHeader
    , width :: IORef (Int)
    , height :: IORef (Int)
    , points :: IORef (JavaArray (JavaArray (Int)))
    , totalFrames :: IORef (Int)
    }

instance JavaNull VectorInfo where
    javaNull = javaNullRecord "VectorInfo"

instance JavaEquals VectorInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorInfo where
    (==) = jrecordEquals

instance JavaObjectClass VectorInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorInfo
newRecord_ = do
    header_ <- newJavaHeader
    width <- newIORef 0
    height <- newIORef 0
    points <- newIORef javaNull
    totalFrames <- newIORef 0
    let this = VectorInfo header_ width height points totalFrames
    jregisterLevel header_ this
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "getPoints" (\() -> getPoints_impl this)
    jregisterMethod header_ "setPoints" (\() -> setPoints_impl this)
    jregisterMethod header_ "getTotalFrames" (\() -> getTotalFrames_impl this)
    jregisterMethod header_ "setTotalFrames" (\() -> setTotalFrames_impl this)
    pure this

initFields_ :: VectorInfo -> IO ()
initFields_ this = do
    jset this.width (0)
    jset this.height (0)
    jset this.points (javaNull)
    jset this.totalFrames (0)
    pure ()

new_4 :: Int -> Int -> JavaArray (JavaArray (Int)) -> Int -> IO VectorInfo
new_4 width height points totalFrames = do
    this <- newRecord_
    init_4 this width height points totalFrames
    pure this

init_4 :: VectorInfo -> Int -> Int -> JavaArray (JavaArray (Int)) -> Int -> IO ()
init_4 this width height points totalFrames = do
        initFields_ this
        jset (this).width (width)
        jset (this).height (height)
        jset (this).points (points)
        jset (this).totalFrames (totalFrames)
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: VectorInfo))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: VectorInfo))

getWidth_impl :: VectorInfo -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: VectorInfo))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: VectorInfo)) a1

setWidth_impl :: VectorInfo -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: VectorInfo))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: VectorInfo))

getHeight_impl :: VectorInfo -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: VectorInfo))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: VectorInfo)) a1

setHeight_impl :: VectorInfo -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


getPoints :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getPoints object_ = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: VectorInfo))) ()

getPoints_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getPoints_super object_ = (getPoints_impl (javaCast object_ :: VectorInfo))

getPoints_impl :: VectorInfo -> IO (JavaArray (JavaArray (Int)))
getPoints_impl this = do
        pure ((jget (this).points))


setPoints :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (())
setPoints object_ a1 = jmethod object_ "setPoints" (\() -> (setPoints_impl (javaCast object_ :: VectorInfo))) () a1

setPoints_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (())
setPoints_super object_ a1 = (setPoints_impl (javaCast object_ :: VectorInfo)) a1

setPoints_impl :: VectorInfo -> JavaArray (JavaArray (Int)) -> IO (())
setPoints_impl this points = do
        jset (this).points (points)
        pure ()


getTotalFrames :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalFrames object_ = jmethod object_ "getTotalFrames" (\() -> (getTotalFrames_impl (javaCast object_ :: VectorInfo))) ()

getTotalFrames_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalFrames_super object_ = (getTotalFrames_impl (javaCast object_ :: VectorInfo))

getTotalFrames_impl :: VectorInfo -> IO (Int)
getTotalFrames_impl this = do
        pure ((jget (this).totalFrames))


setTotalFrames :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalFrames object_ a1 = jmethod object_ "setTotalFrames" (\() -> (setTotalFrames_impl (javaCast object_ :: VectorInfo))) () a1

setTotalFrames_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalFrames_super object_ a1 = (setTotalFrames_impl (javaCast object_ :: VectorInfo)) a1

setTotalFrames_impl :: VectorInfo -> Int -> IO (())
setTotalFrames_impl this totalFrames = do
        jset (this).totalFrames (totalFrames)
        pure ()


