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
module ImageScaleUtil where

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
import qualified ImageUtil -- same package or java.lang
import qualified ImageJ2SEUtil -- same package or java.lang
import qualified ImageCreationUtil -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Graphics2D -- java.awt.Graphics2D
import qualified AffineTransform -- java.awt.geom.AffineTransform
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified Image -- javax.microedition.lcdui.Image
import qualified ImageCache -- org.allbinary.image.ImageCache

data ImageScaleUtil = ImageScaleUtil
    { header_ :: JavaHeader
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    , imageJ2SEUtil :: IORef (ImageJ2SEUtil.ImageJ2SEUtil)
    , imageCreationUtil :: IORef (ImageCreationUtil.ImageCreationUtil)
    }

instance JavaNull ImageScaleUtil where
    javaNull = javaNullRecord "ImageScaleUtil"

instance JavaEquals ImageScaleUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageScaleUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageScaleUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageScaleUtil
newRecord_ = do
    header_ <- newJavaHeader
    imageUtil <- newIORef javaNull
    imageJ2SEUtil <- newIORef javaNull
    imageCreationUtil <- newIORef javaNull
    let this = ImageScaleUtil header_ imageUtil imageJ2SEUtil imageCreationUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createImage2" (\() -> createImage2_impl this)
    jregisterMethod header_ "createImage3" (\() -> createImage3_impl this)
    jregisterMethod header_ "scale2" (\() -> scale2_impl this)
    jregisterMethod header_ "scale" (\() -> scale_impl this)
    pure this

initFields_ :: ImageScaleUtil -> IO ()
initFields_ this = do
    jset this.imageUtil =<< (ImageUtil.getInstance)
    jset this.imageJ2SEUtil =<< (ImageJ2SEUtil.getInstance)
    jset this.imageCreationUtil =<< (ImageCreationUtil.getInstance)
    pure ()


getInstance :: IO (ImageScaleUtil)
getInstance = do
        pure (ImageScaleUtil.instance_)

new_ :: IO ImageScaleUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageScaleUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createImage2 :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> IO (Image.Image)
createImage2 object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "createImage2" (\() -> (createImage2_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5 a6 a7

createImage2_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> IO (Image.Image)
createImage2_super object_ a1 a2 a3 a4 a5 a6 a7 = (createImage2_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5 a6 a7

createImage2_impl :: ImageScaleUtil -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> IO (Image.Image)
createImage2_impl this imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached = do
        (ImageScaleUtil.createImage3 this imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached True)


-- throws Exception
createImage3 :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> Bool -> IO (Image.Image)
createImage3 object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "createImage3" (\() -> (createImage3_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5 a6 a7 a8

createImage3_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> Bool -> IO (Image.Image)
createImage3_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (createImage3_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5 a6 a7 a8

createImage3_impl :: ImageScaleUtil -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> Bool -> IO (Image.Image)
createImage3_impl this imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached mutable = do
        width <- (Image.getWidth originalImage)
        height <- (Image.getHeight originalImage)
        let scaleX = (scaleNominatorX / scaleDenominatorX)
        let scaleY = (scaleNominatorY / scaleDenominatorY)
        image <- newIORef (javaNull)
        if cached then do
            assignedValue <- (ImageCache.get imageCache (jio (Class.getName ((jio (jobjectGetClass this))))) (Prelude.truncate (((Prelude.fromIntegral width) * scaleX))) (Prelude.truncate (((Prelude.fromIntegral height) * scaleY))))
            jset image (assignedValue)
        else do
            assignedValue <- (ImageCache.get imageCache "createImage" (Prelude.truncate (((Prelude.fromIntegral width) * scaleX))) (Prelude.truncate (((Prelude.fromIntegral height) * scaleY))))
            jset image (assignedValue)
        Control.Monad.void (ImageScaleUtil.scale this originalImage (jget image) scaleX scaleY True)
        pure ((jget image))


-- throws Exception
scale2 :: (JavaObjectClass this_) => this_ -> Image.Image -> JavaArray (Image.Image) -> JavaArray (Image.Image) -> Int -> Float -> Float -> Float -> Float -> IO (())
scale2 object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "scale2" (\() -> (scale2_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5 a6 a7 a8

scale2_super :: (JavaObjectClass this_) => this_ -> Image.Image -> JavaArray (Image.Image) -> JavaArray (Image.Image) -> Int -> Float -> Float -> Float -> Float -> IO (())
scale2_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (scale2_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5 a6 a7 a8

scale2_impl :: ImageScaleUtil -> Image.Image -> JavaArray (Image.Image) -> JavaArray (Image.Image) -> Int -> Float -> Float -> Float -> Float -> IO (())
scale2_impl this originalImage originalImageArray ximageToShowArray unused scaleX scaleY maxScaleX maxScaleY = do
        when (((maxScaleX * (jio (Image.getWidth originalImage))) > (jio (getWidth ((jindex originalImageArray (0)))))) || ((maxScaleY * (jio (Image.getHeight originalImage))) > (jio (getHeight ((jindex originalImageArray (0))))))) $ do
            assignedValue <- (ImageCreationUtil.createImage ((jget (this).imageCreationUtil)) (jio (Image.getWidth originalImage)) (jio (Image.getHeight originalImage)) maxScaleX maxScaleY)
            jsetIndex originalImageArray (0) (assignedValue)
        Control.Monad.void (ImageScaleUtil.scale this originalImage (jindex originalImageArray (0)) scaleX scaleY False)
        pure ()


scale :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Float -> Float -> Bool -> IO (())
scale object_ a1 a2 a3 a4 a5 = jmethod object_ "scale" (\() -> (scale_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5

scale_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Float -> Float -> Bool -> IO (())
scale_super object_ a1 a2 a3 a4 a5 = (scale_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5

scale_impl :: ImageScaleUtil -> Image.Image -> Image.Image -> Float -> Float -> Bool -> IO (())
scale_impl this originalImage newMaxSizeImage scaleX scaleY clear = do
        bufferedImage <- (ImageUtil.getBufferedImage ((jget (this).imageUtil)) originalImage)
        newBufferedImage <- (ImageUtil.getBufferedImage ((jget (this).imageUtil)) newMaxSizeImage)
        at <- (AffineTransform.getScaleInstance scaleX scaleY)
        g <- (BufferedImage.createGraphics newBufferedImage)
        when clear $ do
            Control.Monad.void (Graphics2D.setBackground g (jget ((jget (this).imageJ2SEUtil)).tRANSPARENT_COLOR))
            Control.Monad.void (Graphics2D.clearRect g 0 0 (jio (BufferedImage.getWidth newBufferedImage)) (jio (BufferedImage.getHeight newBufferedImage)))
        Control.Monad.void (Graphics2D.drawRenderedImage g bufferedImage at)
        Control.Monad.void (Graphics2D.dispose g)
        pure ()


