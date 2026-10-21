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
module MotionRectangle where

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
import qualified Any -- same package or java.lang
import qualified Rectangle -- java.awt.Rectangle
import qualified Vector -- java.util.Vector
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Cloneable

-- implements Cloneable
data MotionRectangle = MotionRectangle
    { header_ :: JavaHeader
    , rectangle :: IORef (Rectangle.Rectangle)
    , pixelDeltaVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull MotionRectangle where
    javaNull = javaNullRecord "MotionRectangle"

instance JavaEquals MotionRectangle where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectangle where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectangle where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionRectangle
newRecord_ = do
    header_ <- newJavaHeader
    rectangle <- newIORef javaNull
    pixelDeltaVector <- newIORef javaNull
    let this = MotionRectangle header_ rectangle pixelDeltaVector
    jregisterLevel header_ this
    Cloneable.registerInterface_ header_
    jregisterMethod header_ "getRectangle" (\() -> getRectangle_impl this)
    jregisterMethod header_ "setRectangle" (\() -> setRectangle_impl this)
    jregisterMethod header_ "getPixelDeltaVector" (\() -> getPixelDeltaVector_impl this)
    jregisterMethod header_ "setPixelDeltaVector" (\() -> setPixelDeltaVector_impl this)
    jregisterMethod header_ "clone" (\() -> clone_impl this)
    pure this

initFields_ :: MotionRectangle -> IO ()
initFields_ this = do
    jset this.rectangle (javaNull)
    jset this.pixelDeltaVector (javaNull)
    pure ()

new_1 :: Rectangle.Rectangle -> IO MotionRectangle
new_1 rectangle = do
    this <- newRecord_
    init_1 this rectangle
    pure this

init_1 :: MotionRectangle -> Rectangle.Rectangle -> IO ()
init_1 this rectangle = do
        initFields_ this
        Control.Monad.void (MotionRectangle.setRectangle this rectangle)
        Control.Monad.void (MotionRectangle.setPixelDeltaVector this (jio (BasicArrayListD.new_)))
        pure ()


getRectangle :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangle object_ = jmethod object_ "getRectangle" (\() -> (getRectangle_impl (javaCast object_ :: MotionRectangle))) ()

getRectangle_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangle_super object_ = (getRectangle_impl (javaCast object_ :: MotionRectangle))

getRectangle_impl :: MotionRectangle -> IO (Rectangle.Rectangle)
getRectangle_impl this = do
        pure ((jget (this).rectangle))


setRectangle :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
setRectangle object_ a1 = jmethod object_ "setRectangle" (\() -> (setRectangle_impl (javaCast object_ :: MotionRectangle))) () a1

setRectangle_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
setRectangle_super object_ a1 = (setRectangle_impl (javaCast object_ :: MotionRectangle)) a1

setRectangle_impl :: MotionRectangle -> Rectangle.Rectangle -> IO (())
setRectangle_impl this rectangle = do
        jset (this).rectangle (rectangle)
        pure ()


getPixelDeltaVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPixelDeltaVector object_ = jmethod object_ "getPixelDeltaVector" (\() -> (getPixelDeltaVector_impl (javaCast object_ :: MotionRectangle))) ()

getPixelDeltaVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPixelDeltaVector_super object_ = (getPixelDeltaVector_impl (javaCast object_ :: MotionRectangle))

getPixelDeltaVector_impl :: MotionRectangle -> IO (BasicArrayList.BasicArrayList)
getPixelDeltaVector_impl this = do
        pure ((jget (this).pixelDeltaVector))


setPixelDeltaVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setPixelDeltaVector object_ a1 = jmethod object_ "setPixelDeltaVector" (\() -> (setPixelDeltaVector_impl (javaCast object_ :: MotionRectangle))) () a1

setPixelDeltaVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setPixelDeltaVector_super object_ a1 = (setPixelDeltaVector_impl (javaCast object_ :: MotionRectangle)) a1

setPixelDeltaVector_impl :: MotionRectangle -> BasicArrayList.BasicArrayList -> IO (())
setPixelDeltaVector_impl this pixelDeltaVector = do
        jset (this).pixelDeltaVector (pixelDeltaVector)
        pure ()


clone :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone object_ = jmethod object_ "clone" (\() -> (clone_impl (javaCast object_ :: MotionRectangle))) ()

clone_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone_super object_ = (clone_impl (javaCast object_ :: MotionRectangle))

clone_impl :: MotionRectangle -> IO (Any.Any)
clone_impl this = do
        motionRectangle <- (new_1 (javaCast (jio (Rectangle.clone ((jio (MotionRectangle.getRectangle this))))) :: Rectangle.Rectangle))
        Control.Monad.void (MotionRectangle.setPixelDeltaVector motionRectangle (javaCast (jio (BasicArrayList.clone ((jio (MotionRectangle.getPixelDeltaVector this))))) :: BasicArrayList.BasicArrayList))
        pure ((jtoObject motionRectangle))


