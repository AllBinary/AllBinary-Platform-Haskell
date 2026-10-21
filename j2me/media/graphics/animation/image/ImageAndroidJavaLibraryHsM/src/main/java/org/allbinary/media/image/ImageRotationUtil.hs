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
module ImageRotationUtil where

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
import qualified ImageCreationUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified Bitmap -- android.graphics.Bitmap
import qualified Canvas -- android.graphics.Canvas
import qualified Matrix -- android.graphics.Matrix
import qualified AndroidImageInterface -- org.microemu.android.device.AndroidImageInterface

data ImageRotationUtil = ImageRotationUtil
    { header_ :: JavaHeader
    , matrix :: IORef (Matrix.Matrix)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageRotationUtil where
    javaNull = javaNullRecord "ImageRotationUtil"

instance JavaEquals ImageRotationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageRotationUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageRotationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageRotationUtil
newRecord_ = do
    header_ <- newJavaHeader
    matrix <- newIORef javaNull
    anchor <- newIORef 0
    let this = ImageRotationUtil header_ matrix anchor
    jregisterLevel header_ this
    jregisterMethod header_ "createRotatedImage" (\() -> createRotatedImage_impl this)
    pure this

initFields_ :: ImageRotationUtil -> IO ()
initFields_ this = do
    jset this.matrix =<< (Matrix.new_)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()


getInstance :: IO (ImageRotationUtil)
getInstance = do
        pure (ImageRotationUtil.instance_)

new_ :: IO ImageRotationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageRotationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage object_ a1 a2 = jmethod object_ "createRotatedImage" (\() -> (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2

createRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_super object_ a1 a2 = (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2

createRotatedImage_impl :: ImageRotationUtil -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_impl this originalImage rotationInDegrees = do
    javaCatchReturn $ do
        image <- (ImageCreationUtil.createImageWH ((jio (ImageCreationUtil.getInstance))) (jio (Image.getWidth originalImage)) (jio (Image.getHeight originalImage)))
        if (jio (Image.isMutable image)) then do
            bitmap <- (getBitmap (((javaCast image :: AndroidImageInterface.AndroidImageInterface))))
            width <- (Bitmap.getWidth bitmap)
            height <- (Bitmap.getHeight bitmap)
            Control.Monad.void (Matrix.setRotate ((jget (this).matrix)) (Prelude.fromIntegral rotationInDegrees) (Prelude.fromIntegral ((width `Data.Bits.shiftR` 1))) (Prelude.fromIntegral ((height `Data.Bits.shiftR` 1))))
            canvas <- (getCanvas (((javaCast image :: AndroidImageInterface.AndroidImageInterface))))
            Control.Monad.void (Canvas.concat canvas (jget (this).matrix))
            Control.Monad.void (Image.drawImage ((jio (Image.getGraphics image))) originalImage 0 0 (jget (this).anchor))
            javaReturn (image)
        else do
            javaThrow ((JavaException "Exception" "Not Mutable"))


