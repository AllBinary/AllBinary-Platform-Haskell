{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module ImageModifierUtil where

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
import qualified Any -- same package or java.lang
import qualified ImageCreationUtil -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified ColorModel -- java.awt.image.ColorModel
import qualified WritableRaster -- java.awt.image.WritableRaster
import qualified Image -- javax.microedition.lcdui.Image
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageModifierUtil = ImageModifierUtil
    { header_ :: JavaHeader
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    , colorArray :: IORef (JavaArray (Int))
    }

instance JavaNull ImageModifierUtil where
    javaNull = javaNullRecord "ImageModifierUtil"

instance JavaEquals ImageModifierUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageModifierUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageModifierUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageModifierUtil
newRecord_ = do
    header_ <- newJavaHeader
    imageUtil <- newIORef javaNull
    colorArray <- newIORef javaNull
    let this = ImageModifierUtil header_ imageUtil colorArray
    jregisterLevel header_ this
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "changeColor" (\() -> changeColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "handleImage" (\() -> handleImage_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    pure this

initFields_ :: ImageModifierUtil -> IO ()
initFields_ this = do
    jset this.imageUtil =<< (ImageUtil.getInstance)
    jset this.colorArray ((jnewArray (1) 0))
    pure ()

new_ :: IO ImageModifierUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageModifierUtil -> IO ()
init_ this = do
    initFields_ this


getInstanceOrCreate :: IO (ImageModifierUtil)
getInstanceOrCreate = do
        pure (ImageModifierUtil.instance_)


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: ImageModifierUtil))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: ImageModifierUtil)) a1

setBasicColorP_impl :: ImageModifierUtil -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        pure ()


setColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor object_ a1 a2 a3 a4 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_super object_ a1 a2 a3 a4 = (setColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_impl this unusedOriginalImage image imageIndex basicColor = do
        newBufferedImage <- (ImageUtil.getBufferedImage ((jget (this).imageUtil)) image)
        let r = (jget (basicColor).red)
        let g = (jget (basicColor).green)
        let b = (jget (basicColor).blue)
        width <- (Image.getWidth image)
        height <- (Image.getHeight image)
        colorModel <- newIORef (javaNull)
        dataElements <- newIORef (javaNull)
        ax <- newIORef (0)
        rx <- newIORef (0)
        gx <- newIORef (0)
        bx <- newIORef (0)
        forM_ [0 .. width - 1] $ \index -> javaIteration (pure ()) $ do
            forM_ [0 .. height - 1] $ \index2 -> javaIteration (pure ()) $ do
                assignedValue <- (BufferedImage.getColorModel newBufferedImage)
                jset colorModel (assignedValue)
                assignedValue <- (BufferedImage.getDataElements ((jio (BufferedImage.getRaster newBufferedImage))) index index2 javaNull)
                jset dataElements (assignedValue)
                assignedValue <- (ColorModel.getAlpha ((jget colorModel)) (jget dataElements))
                jset ax (assignedValue)
                assignedValue <- (ColorModel.getRed ((jget colorModel)) (jget dataElements))
                jset rx (assignedValue)
                assignedValue <- (ColorModel.getGreen ((jget colorModel)) (jget dataElements))
                jset gx (assignedValue)
                assignedValue <- (ColorModel.getBlue ((jget colorModel)) (jget dataElements))
                jset bx (assignedValue)
                when ((((jget rx) /= 0) || ((jget gx) /= 0)) || ((jget bx) /= 0)) $ do
                    Control.Monad.void (BufferedImage.setRGB newBufferedImage index index2 ((((((jget ax) `Data.Bits.shiftL` 24)) Data.Bits..|. ((r `Data.Bits.shiftL` 16))) Data.Bits..|. ((g `Data.Bits.shiftL` 8))) Data.Bits..|. (Prelude.fromIntegral (b))))
        pure ()


changeColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor object_ a1 a2 a3 a4 = jmethod object_ "changeColor" (\() -> (changeColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

changeColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_super object_ a1 a2 a3 a4 = (changeColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

changeColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_impl this unusedOriginalImage image imageIndex basicColor = do
        newBufferedImage <- (ImageUtil.getBufferedImage ((jget (this).imageUtil)) image)
        let mAX = 255.0
        let r = (((Prelude.fromIntegral (jget (basicColor).red))) / mAX)
        let g = (((Prelude.fromIntegral (jget (basicColor).green))) / mAX)
        let b = (((Prelude.fromIntegral (jget (basicColor).blue))) / mAX)
        width <- (Image.getWidth image)
        height <- (Image.getHeight image)
        colorModel <- newIORef (javaNull)
        dataElements <- newIORef (javaNull)
        ax <- newIORef (0)
        rx <- newIORef (0)
        gx <- newIORef (0)
        bx <- newIORef (0)
        forM_ [0 .. width - 1] $ \index -> javaIteration (pure ()) $ do
            forM_ [0 .. height - 1] $ \index2 -> javaIteration (pure ()) $ do
                assignedValue <- (BufferedImage.getColorModel newBufferedImage)
                jset colorModel (assignedValue)
                assignedValue <- (BufferedImage.getDataElements ((jio (BufferedImage.getRaster newBufferedImage))) index index2 javaNull)
                jset dataElements (assignedValue)
                assignedValue <- (ColorModel.getAlpha ((jget colorModel)) (jget dataElements))
                jset ax (assignedValue)
                assignedValue <- (ColorModel.getRed ((jget colorModel)) (jget dataElements))
                jset rx (assignedValue)
                assignedValue <- (ColorModel.getGreen ((jget colorModel)) (jget dataElements))
                jset gx (assignedValue)
                assignedValue <- (ColorModel.getBlue ((jget colorModel)) (jget dataElements))
                jset bx (assignedValue)
                jset rx ((Prelude.truncate ((jget rx) * r)))
                jset gx ((Prelude.truncate ((jget gx) * g)))
                jset bx ((Prelude.truncate ((jget bx) * b)))
                Control.Monad.void (BufferedImage.setRGB newBufferedImage index index2 ((((((jget ax) `Data.Bits.shiftL` 24)) Data.Bits..|. (((jget rx) `Data.Bits.shiftL` 16))) Data.Bits..|. (((jget gx) `Data.Bits.shiftL` 8))) Data.Bits..|. ((jget bx))))
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha object_ a1 a2 a3 a4 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setAlpha_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_super object_ a1 a2 a3 a4 = (setAlpha_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setAlpha_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_impl this unusedOriginalImage image imageIndex alphaInt = do
        let alpha = (Prelude.fromIntegral alphaInt)
        newBufferedImage <- (ImageUtil.getBufferedImage ((jget (this).imageUtil)) image)
        width <- (Image.getWidth image)
        height <- (Image.getHeight image)
        raster <- (BufferedImage.getAlphaRaster newBufferedImage)
        forM_ [0 .. width - 1] $ \index -> javaIteration (pure ()) $ do
            forM_ [0 .. height - 1] $ \index2 -> javaIteration (pure ()) $ do
                Control.Monad.void (WritableRaster.getPixel raster index index2 (jget (this).colorArray))
                jsetIndex ((jget (this).colorArray)) (0) (((Prelude.fromIntegral alpha) Data.Bits..&. (jindex ((jget (this).colorArray)) (0))))
                Control.Monad.void (WritableRaster.setPixel raster index index2 (jget (this).colorArray))
        pure ()


getImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray object_ a1 = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ImageModifierUtil))) () a1

getImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_super object_ a1 = (getImageArray_impl (javaCast object_ :: ImageModifierUtil)) a1

getImageArray_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_impl this originalImageArray = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this "getImageArray" e)
            pure (originalImageArray)
            ) $ do
            let newImageArray = (jnewArray ((jlength originalImageArray)) javaNull)
            let size = (jlength newImageArray)
            originalImage <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset originalImage ((jindex originalImageArray (index)))
                image <- (ImageCreationUtil.createImageWH ((jio (ImageCreationUtil.getInstance))) (jio (Image.getWidth ((jget originalImage)))) (jio (Image.getHeight ((jget originalImage)))))
                Control.Monad.void (Image.drawImage ((jio (Image.getGraphics image))) (jget originalImage) 0 0 (jget Anchor.tOP_LEFT))
                jsetIndex newImageArray (index) (image)
            pure (newImageArray)


handleImage :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage object_ a1 a2 a3 = jmethod object_ "handleImage" (\() -> (handleImage_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3

handleImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_super object_ a1 a2 a3 = (handleImage_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3

handleImage_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_impl this imageArray index image = do
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: ImageModifierUtil))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: ImageModifierUtil))

reset_impl :: ImageModifierUtil -> IO (())
reset_impl this = do
        pure ()


