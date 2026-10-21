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
-- package org.allbinary.media.image
module AndroidImageUtil where

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
import qualified Bitmap -- android.graphics.Bitmap
import qualified Canvas -- android.graphics.Canvas
import qualified Color -- android.graphics.Color
import qualified Matrix -- android.graphics.Matrix
import qualified Paint -- android.graphics.Paint
import qualified Image -- javax.microedition.lcdui.Image
import qualified AndroidImageInterface -- org.microemu.android.device.AndroidImageInterface

data AndroidImageUtil = AndroidImageUtil
    { header_ :: JavaHeader
    }

instance JavaNull AndroidImageUtil where
    javaNull = javaNullRecord "AndroidImageUtil"

instance JavaEquals AndroidImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass AndroidImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = AndroidImageUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "paintBitmap" (\() -> paintBitmap_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "rotate" (\() -> rotate_impl this)
    pure this

initFields_ :: AndroidImageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AndroidImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidImageUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AndroidImageUtil)
getInstance = do
        pure (AndroidImageUtil.instance_)


paintBitmap :: (JavaObjectClass this_) => this_ -> Bitmap.Bitmap -> Bitmap.Bitmap -> Paint.Paint -> IO (())
paintBitmap object_ a1 a2 a3 = jmethod object_ "paintBitmap" (\() -> (paintBitmap_impl (javaCast object_ :: AndroidImageUtil))) () a1 a2 a3

paintBitmap_super :: (JavaObjectClass this_) => this_ -> Bitmap.Bitmap -> Bitmap.Bitmap -> Paint.Paint -> IO (())
paintBitmap_super object_ a1 a2 a3 = (paintBitmap_impl (javaCast object_ :: AndroidImageUtil)) a1 a2 a3

paintBitmap_impl :: AndroidImageUtil -> Bitmap.Bitmap -> Bitmap.Bitmap -> Paint.Paint -> IO (())
paintBitmap_impl this bitmap originalBitmap paint = do
        Control.Monad.void (Bitmap.eraseColor bitmap (Color.tRANSPARENT))
        canvas <- (Canvas.new_)
        Control.Monad.void (Canvas.setBitmap canvas bitmap)
        Control.Monad.void (Canvas.drawBitmap canvas originalBitmap (0.0) (0.0) paint)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Paint.Paint -> IO (())
paint object_ a1 a2 a3 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AndroidImageUtil))) () a1 a2 a3

paint_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Paint.Paint -> IO (())
paint_super object_ a1 a2 a3 = (paint_impl (javaCast object_ :: AndroidImageUtil)) a1 a2 a3

paint_impl :: AndroidImageUtil -> Image.Image -> Image.Image -> Paint.Paint -> IO (())
paint_impl this image originalImage paint = do
        let androidImage = (javaCast image :: AndroidImageInterface.AndroidImageInterface)
        Control.Monad.void (AndroidImageInterface.eraseColor ((jio (AndroidImageInterface.getBitmap androidImage))) (Color.tRANSPARENT))
        canvas <- (AndroidImageInterface.getCanvas androidImage)
        let originalAndroidImage = (javaCast originalImage :: AndroidImageInterface.AndroidImageInterface)
        Control.Monad.void (Canvas.drawBitmap canvas (jio (AndroidImageInterface.getBitmap originalAndroidImage)) (0.0) (0.0) paint)
        pure ()


rotate :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Matrix.Matrix -> Paint.Paint -> IO (())
rotate object_ a1 a2 a3 a4 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: AndroidImageUtil))) () a1 a2 a3 a4

rotate_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Matrix.Matrix -> Paint.Paint -> IO (())
rotate_super object_ a1 a2 a3 a4 = (rotate_impl (javaCast object_ :: AndroidImageUtil)) a1 a2 a3 a4

rotate_impl :: AndroidImageUtil -> Image.Image -> Image.Image -> Matrix.Matrix -> Paint.Paint -> IO (())
rotate_impl this image originalImage matrix paint = do
        let androidImage = (javaCast image :: AndroidImageInterface.AndroidImageInterface)
        Control.Monad.void (AndroidImageInterface.eraseColor ((jio (AndroidImageInterface.getBitmap androidImage))) (Color.tRANSPARENT))
        canvas <- (AndroidImageInterface.getCanvas androidImage)
        Control.Monad.void (Canvas.concat canvas matrix)
        let originalAndroidImage = (javaCast originalImage :: AndroidImageInterface.AndroidImageInterface)
        Control.Monad.void (Canvas.drawBitmap canvas (jio (AndroidImageInterface.getBitmap originalAndroidImage)) (0.0) (0.0) paint)
        pure ()


