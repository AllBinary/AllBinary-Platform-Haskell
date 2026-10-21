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
-- package org.allbinary.animation.image
module ImageArrayRotationAnimationInfo where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified AngleInfo -- org.allbinary.math.AngleInfo

data ImageArrayRotationAnimationInfo = ImageArrayRotationAnimationInfo
    { header_ :: JavaHeader
    , imageArray :: IORef (JavaArray (Image.Image))
    , angleIncrement :: IORef (Int)
    , totalAngle :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull ImageArrayRotationAnimationInfo where
    javaNull = javaNullRecord "ImageArrayRotationAnimationInfo"

instance JavaEquals ImageArrayRotationAnimationInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayRotationAnimationInfo where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayRotationAnimationInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageArrayRotationAnimationInfo
newRecord_ = do
    header_ <- newJavaHeader
    imageArray <- newIORef javaNull
    angleIncrement <- newIORef 0
    totalAngle <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    let this = ImageArrayRotationAnimationInfo header_ imageArray angleIncrement totalAngle dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "setImageArray" (\() -> setImageArray_impl this)
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "getAngleInfoP" (\() -> getAngleInfoP_impl this)
    jregisterMethod header_ "setTotalAngle" (\() -> setTotalAngle_impl this)
    jregisterMethod header_ "getTotalAngle" (\() -> getTotalAngle_impl this)
    jregisterMethod header_ "setDx" (\() -> setDx_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "setDy" (\() -> setDy_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    pure this

initFields_ :: ImageArrayRotationAnimationInfo -> IO ()
initFields_ this = do
    jset this.imageArray (javaNull)
    jset this.angleIncrement (0)
    jset this.totalAngle (0)
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_5 :: JavaArray (Image.Image) -> Int -> Int -> Int -> Int -> IO ImageArrayRotationAnimationInfo
new_5 imageArray angleIncrement totalAngle dx dy = do
    this <- newRecord_
    init_5 this imageArray angleIncrement totalAngle dx dy
    pure this

init_5 :: ImageArrayRotationAnimationInfo -> JavaArray (Image.Image) -> Int -> Int -> Int -> Int -> IO ()
init_5 this imageArray angleIncrement totalAngle dx dy = do
        initFields_ this
        jset (this).imageArray (imageArray)
        jset (this).angleIncrement (angleIncrement)
        jset (this).totalAngle (totalAngle)
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


setImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray object_ a1 = jmethod object_ "setImageArray" (\() -> (setImageArray_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) () a1

setImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray_super object_ a1 = (setImageArray_impl (javaCast object_ :: ImageArrayRotationAnimationInfo)) a1

setImageArray_impl :: ImageArrayRotationAnimationInfo -> JavaArray (Image.Image) -> IO (())
setImageArray_impl this imageArray = do
        jset (this).imageArray (imageArray)
        pure ()


getImageArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Image.Image))
getImageArray object_ = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) ()

getImageArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Image.Image))
getImageArray_super object_ = (getImageArray_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))

getImageArray_impl :: ImageArrayRotationAnimationInfo -> IO (JavaArray (Image.Image))
getImageArray_impl this = do
        pure ((jget (this).imageArray))


getAngleInfoP :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP object_ = jmethod object_ "getAngleInfoP" (\() -> (getAngleInfoP_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) ()

getAngleInfoP_super :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP_super object_ = (getAngleInfoP_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))

getAngleInfoP_impl :: ImageArrayRotationAnimationInfo -> IO (AngleInfo.AngleInfo)
getAngleInfoP_impl this = do
        (AngleInfo.getInstance (Prelude.fromIntegral (jget (this).angleIncrement)))


setTotalAngle :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalAngle object_ a1 = jmethod object_ "setTotalAngle" (\() -> (setTotalAngle_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) () a1

setTotalAngle_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalAngle_super object_ a1 = (setTotalAngle_impl (javaCast object_ :: ImageArrayRotationAnimationInfo)) a1

setTotalAngle_impl :: ImageArrayRotationAnimationInfo -> Int -> IO (())
setTotalAngle_impl this totalAngle = do
        jset (this).totalAngle (totalAngle)
        pure ()


getTotalAngle :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalAngle object_ = jmethod object_ "getTotalAngle" (\() -> (getTotalAngle_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) ()

getTotalAngle_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalAngle_super object_ = (getTotalAngle_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))

getTotalAngle_impl :: ImageArrayRotationAnimationInfo -> IO (Int)
getTotalAngle_impl this = do
        pure ((jget (this).totalAngle))


setDx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx object_ a1 = jmethod object_ "setDx" (\() -> (setDx_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) () a1

setDx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx_super object_ a1 = (setDx_impl (javaCast object_ :: ImageArrayRotationAnimationInfo)) a1

setDx_impl :: ImageArrayRotationAnimationInfo -> Int -> IO (())
setDx_impl this dx = do
        jset (this).dx (dx)
        pure ()


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))

getDx_impl :: ImageArrayRotationAnimationInfo -> IO (Int)
getDx_impl this = do
        pure ((jget (this).dx))


setDy :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy object_ a1 = jmethod object_ "setDy" (\() -> (setDy_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) () a1

setDy_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy_super object_ a1 = (setDy_impl (javaCast object_ :: ImageArrayRotationAnimationInfo)) a1

setDy_impl :: ImageArrayRotationAnimationInfo -> Int -> IO (())
setDy_impl this dy = do
        jset (this).dy (dy)
        pure ()


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: ImageArrayRotationAnimationInfo))

getDy_impl :: ImageArrayRotationAnimationInfo -> IO (Int)
getDy_impl this = do
        pure ((jget (this).dy))


