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
module ImageJ2SERotationUtil where

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
import qualified Graphics2D -- java.awt.Graphics2D
import qualified Image -- java.awt.Image
import qualified BufferedImage -- java.awt.image.BufferedImage

data ImageJ2SERotationUtil = ImageJ2SERotationUtil
    { header_ :: JavaHeader
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    , imageJ2SEUtil :: IORef (ImageJ2SEUtil.ImageJ2SEUtil)
    , tWO_PIE :: IORef (Double)
    }

instance JavaNull ImageJ2SERotationUtil where
    javaNull = javaNullRecord "ImageJ2SERotationUtil"

instance JavaEquals ImageJ2SERotationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageJ2SERotationUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageJ2SERotationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageJ2SERotationUtil
newRecord_ = do
    header_ <- newJavaHeader
    imageUtil <- newIORef javaNull
    imageJ2SEUtil <- newIORef javaNull
    tWO_PIE <- newIORef 0.0
    let this = ImageJ2SERotationUtil header_ imageUtil imageJ2SEUtil tWO_PIE
    jregisterLevel header_ this
    jregisterMethod header_ "getRotatedImage" (\() -> getRotatedImage_impl this)
    jregisterMethod header_ "getRotatedImageRadians" (\() -> getRotatedImageRadians_impl this)
    jregisterMethod header_ "drawRotatedImageRadians" (\() -> drawRotatedImageRadians_impl this)
    jregisterMethod header_ "rotateImage" (\() -> rotateImage_impl this)
    jregisterMethod header_ "createRotatedImage" (\() -> createRotatedImage_impl this)
    jregisterMethod header_ "getRotatedImages" (\() -> getRotatedImages_impl this)
    jregisterMethod header_ "createSpriteImage" (\() -> createSpriteImage_impl this)
    pure this

initFields_ :: ImageJ2SERotationUtil -> IO ()
initFields_ this = do
    jset this.imageUtil =<< (ImageUtil.getInstance)
    jset this.imageJ2SEUtil =<< (ImageJ2SEUtil.getInstance)
    jset this.tWO_PIE ((2 * Math.pI))
    pure ()


getInstance :: IO (ImageJ2SERotationUtil)
getInstance = do
        pure (ImageJ2SERotationUtil.instance_)

new_ :: IO ImageJ2SERotationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageJ2SERotationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (BufferedImage.BufferedImage)
getRotatedImage object_ a1 a2 = jmethod object_ "getRotatedImage" (\() -> (getRotatedImage_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1 a2

getRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (BufferedImage.BufferedImage)
getRotatedImage_super object_ a1 a2 = (getRotatedImage_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1 a2

getRotatedImage_impl :: ImageJ2SERotationUtil -> Image.Image -> Int -> IO (BufferedImage.BufferedImage)
getRotatedImage_impl this bufferedImage totalAngle = do
        (ImageJ2SERotationUtil.getRotatedImageRadians this bufferedImage (((jget this.tWO_PIE) * (Prelude.fromIntegral totalAngle)) / 360.0))


getRotatedImageRadians :: (JavaObjectClass this_) => this_ -> Image.Image -> Double -> IO (BufferedImage.BufferedImage)
getRotatedImageRadians object_ a1 a2 = jmethod object_ "getRotatedImageRadians" (\() -> (getRotatedImageRadians_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1 a2

getRotatedImageRadians_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Double -> IO (BufferedImage.BufferedImage)
getRotatedImageRadians_super object_ a1 a2 = (getRotatedImageRadians_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1 a2

getRotatedImageRadians_impl :: ImageJ2SERotationUtil -> Image.Image -> Double -> IO (BufferedImage.BufferedImage)
getRotatedImageRadians_impl this bufferedImage radians = do
        newBufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) (jio (Image.getWidth bufferedImage javaNull)) (jio (Image.getHeight bufferedImage javaNull)))
        (ImageJ2SERotationUtil.drawRotatedImageRadians this bufferedImage newBufferedImage (jio (BufferedImage.createGraphics newBufferedImage)) radians)


drawRotatedImageRadians :: (JavaObjectClass this_) => this_ -> Image.Image -> BufferedImage.BufferedImage -> Graphics2D.Graphics2D -> Double -> IO (BufferedImage.BufferedImage)
drawRotatedImageRadians object_ a1 a2 a3 a4 = jmethod object_ "drawRotatedImageRadians" (\() -> (drawRotatedImageRadians_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1 a2 a3 a4

drawRotatedImageRadians_super :: (JavaObjectClass this_) => this_ -> Image.Image -> BufferedImage.BufferedImage -> Graphics2D.Graphics2D -> Double -> IO (BufferedImage.BufferedImage)
drawRotatedImageRadians_super object_ a1 a2 a3 a4 = (drawRotatedImageRadians_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1 a2 a3 a4

drawRotatedImageRadians_impl :: ImageJ2SERotationUtil -> Image.Image -> BufferedImage.BufferedImage -> Graphics2D.Graphics2D -> Double -> IO (BufferedImage.BufferedImage)
drawRotatedImageRadians_impl this bufferedImage newBufferedImage g radians = do
        Control.Monad.void (Graphics2D.rotate g radians ((jio (BufferedImage.getWidth newBufferedImage javaNull)) / 2) ((jio (BufferedImage.getHeight newBufferedImage javaNull)) / 2))
        Control.Monad.void (Graphics2D.drawImage g bufferedImage 0 0 (jio (Image.getWidth bufferedImage javaNull)) (jio (Image.getHeight bufferedImage javaNull)) javaNull)
        Control.Monad.void (Graphics2D.dispose g)
        pure (newBufferedImage)


rotateImage :: (JavaObjectClass this_) => this_ -> Image.Image -> BufferedImage.BufferedImage -> Int -> IO (BufferedImage.BufferedImage)
rotateImage object_ a1 a2 a3 = jmethod object_ "rotateImage" (\() -> (rotateImage_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1 a2 a3

rotateImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> BufferedImage.BufferedImage -> Int -> IO (BufferedImage.BufferedImage)
rotateImage_super object_ a1 a2 a3 = (rotateImage_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1 a2 a3

rotateImage_impl :: ImageJ2SERotationUtil -> Image.Image -> BufferedImage.BufferedImage -> Int -> IO (BufferedImage.BufferedImage)
rotateImage_impl this bufferedImage newBufferedImage totalAngle = do
        g <- (BufferedImage.createGraphics newBufferedImage)
        Control.Monad.void (Graphics2D.setBackground g (jget ((jget (this).imageJ2SEUtil)).tRANSPARENT_COLOR))
        Control.Monad.void (Graphics2D.clearRect g 0 0 (jio (BufferedImage.getWidth newBufferedImage)) (jio (BufferedImage.getHeight newBufferedImage)))
        (ImageJ2SERotationUtil.drawRotatedImageRadians this bufferedImage newBufferedImage g (((jget this.tWO_PIE) * (Prelude.fromIntegral totalAngle)) / 360.0))


createRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> BufferedImage.BufferedImage -> Int -> IO (BufferedImage.BufferedImage)
createRotatedImage object_ a1 a2 a3 = jmethod object_ "createRotatedImage" (\() -> (createRotatedImage_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1 a2 a3

createRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> BufferedImage.BufferedImage -> Int -> IO (BufferedImage.BufferedImage)
createRotatedImage_super object_ a1 a2 a3 = (createRotatedImage_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1 a2 a3

createRotatedImage_impl :: ImageJ2SERotationUtil -> Image.Image -> BufferedImage.BufferedImage -> Int -> IO (BufferedImage.BufferedImage)
createRotatedImage_impl this bufferedImage newBufferedImage totalAngle = do
        g <- (BufferedImage.createGraphics newBufferedImage)
        (ImageJ2SERotationUtil.drawRotatedImageRadians this bufferedImage newBufferedImage g (((jget this.tWO_PIE) * (Prelude.fromIntegral totalAngle)) / 360.0))


getRotatedImages :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (JavaArray (BufferedImage.BufferedImage))
getRotatedImages object_ a1 a2 a3 = jmethod object_ "getRotatedImages" (\() -> (getRotatedImages_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1 a2 a3

getRotatedImages_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (JavaArray (BufferedImage.BufferedImage))
getRotatedImages_super object_ a1 a2 a3 = (getRotatedImages_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1 a2 a3

getRotatedImages_impl :: ImageJ2SERotationUtil -> Image.Image -> Int -> Int -> IO (JavaArray (BufferedImage.BufferedImage))
getRotatedImages_impl this bufferedImage numberOfFrames totalAngle = do
        let bufferedImageArray = (jnewArray (numberOfFrames) javaNull)
        let arc = ((((jget (this).tWO_PIE)) * (Prelude.fromIntegral totalAngle)) / 360.0)
        let size = (jlength bufferedImageArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let radians = (((arc / (Prelude.fromIntegral size))) * (Prelude.fromIntegral index))
            assignedValue <- (ImageJ2SERotationUtil.getRotatedImageRadians this bufferedImage radians)
            jsetIndex bufferedImageArray (index) (assignedValue)
        pure (bufferedImageArray)


createSpriteImage :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (BufferedImage.BufferedImage)
createSpriteImage object_ a1 = jmethod object_ "createSpriteImage" (\() -> (createSpriteImage_impl (javaCast object_ :: ImageJ2SERotationUtil))) () a1

createSpriteImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (BufferedImage.BufferedImage)
createSpriteImage_super object_ a1 = (createSpriteImage_impl (javaCast object_ :: ImageJ2SERotationUtil)) a1

createSpriteImage_impl :: ImageJ2SERotationUtil -> JavaArray (BufferedImage.BufferedImage) -> IO (BufferedImage.BufferedImage)
createSpriteImage_impl this bufferedImageArray = do
        columns <- newIORef (9)
        rows <- newIORef (0)
        let size = (jlength bufferedImageArray)
        when (size < (jget columns)) $ do
            jset columns (size)
        jset rows (((size `quot` (jget columns))))
        when ((size `rem` (jget columns)) /= 0) $ do
            jset rows ((jget rows) + 1)
        let firstBufferedImage = (jindex bufferedImageArray (0))
        bufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) ((jio (BufferedImage.getWidth firstBufferedImage javaNull)) * (jget columns)) ((jio (BufferedImage.getHeight firstBufferedImage javaNull)) * (jget rows)))
        g <- (BufferedImage.createGraphics bufferedImage)
        columnIndex <- newIORef (0)
        rowIndex <- newIORef (0)
        nextBufferedImage <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when (((index `quot` 9) /= 0) && ((index `rem` 9) == 0)) $ do
                jset rowIndex ((jget rowIndex) + 1)
                jset columnIndex (0)
            jset nextBufferedImage ((jindex bufferedImageArray (index)))
            Control.Monad.void (Graphics2D.drawImage g (jget nextBufferedImage) ((jio (BufferedImage.getWidth ((jget nextBufferedImage)) javaNull)) * (jget columnIndex)) ((jio (BufferedImage.getHeight ((jget nextBufferedImage)) javaNull)) * (jget rowIndex)) (jio (BufferedImage.getWidth ((jget nextBufferedImage)) javaNull)) (jio (BufferedImage.getHeight ((jget nextBufferedImage)) javaNull)) javaNull)
            jset columnIndex ((jget columnIndex) + 1)
        Control.Monad.void (Graphics2D.dispose g)
        pure (bufferedImage)


