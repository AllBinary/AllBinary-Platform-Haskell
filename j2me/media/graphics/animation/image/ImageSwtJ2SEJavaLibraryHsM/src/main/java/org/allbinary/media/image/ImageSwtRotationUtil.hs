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
module ImageSwtRotationUtil where

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
import qualified Image -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SWT -- org.eclipse.swt.SWT
import qualified GC -- org.eclipse.swt.graphics.GC
import qualified ImageData -- org.eclipse.swt.graphics.ImageData

data ImageSwtRotationUtil = ImageSwtRotationUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    , gameFeatureFactory :: IORef (GameFeatureFactory.GameFeatureFactory)
    , features :: IORef (Features.Features)
    , nO_COPY :: IORef (String)
    }

instance JavaNull ImageSwtRotationUtil where
    javaNull = javaNullRecord "ImageSwtRotationUtil"

instance JavaEquals ImageSwtRotationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageSwtRotationUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageSwtRotationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageSwtRotationUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageUtil <- newIORef javaNull
    gameFeatureFactory <- newIORef javaNull
    features <- newIORef javaNull
    nO_COPY <- newIORef ""
    let this = ImageSwtRotationUtil header_ logUtil commonStrings imageUtil gameFeatureFactory features nO_COPY
    jregisterLevel header_ this
    jregisterMethod header_ "getRotatedImage" (\() -> getRotatedImage_impl this)
    jregisterMethod header_ "getRotatedImage2" (\() -> getRotatedImage2_impl this)
    jregisterMethod header_ "rotateImage" (\() -> rotateImage_impl this)
    jregisterMethod header_ "getRotatedImageSWT" (\() -> getRotatedImageSWT_impl this)
    jregisterMethod header_ "getRotatedImages" (\() -> getRotatedImages_impl this)
    jregisterMethod header_ "createSpriteImage" (\() -> createSpriteImage_impl this)
    pure this

initFields_ :: ImageSwtRotationUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageUtil =<< (ImageUtil.getInstance)
    jset this.gameFeatureFactory =<< (GameFeatureFactory.getInstance)
    jset this.features =<< (Features.getInstance)
    jset this.nO_COPY ("SWT should not copy images after initial loading as the alpha is not honored")
    pure ()


getInstance :: IO (ImageSwtRotationUtil)
getInstance = do
        pure (ImageSwtRotationUtil.instance_)

new_ :: IO ImageSwtRotationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageSwtRotationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
getRotatedImage object_ a1 a2 = jmethod object_ "getRotatedImage" (\() -> (getRotatedImage_impl (javaCast object_ :: ImageSwtRotationUtil))) () a1 a2

getRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
getRotatedImage_super object_ a1 a2 = (getRotatedImage_impl (javaCast object_ :: ImageSwtRotationUtil)) a1 a2

getRotatedImage_impl :: ImageSwtRotationUtil -> Image.Image -> Int -> IO (Image.Image)
getRotatedImage_impl this bufferedImage totalAngle = do
    javaCatchReturn $ do
        when (Prelude.not (jio (Features.isFeature ((jget (this).features)) (jget ((jget (this).gameFeatureFactory)).pOST_IMAGE_LOADING_MODIFICATION)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_COPY) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            javaReturn (bufferedImage)
        pure (bufferedImage)


getRotatedImage2 :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> GC.GC -> Float -> IO (Image.Image)
getRotatedImage2 object_ a1 a2 a3 a4 = jmethod object_ "getRotatedImage2" (\() -> (getRotatedImage2_impl (javaCast object_ :: ImageSwtRotationUtil))) () a1 a2 a3 a4

getRotatedImage2_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> GC.GC -> Float -> IO (Image.Image)
getRotatedImage2_super object_ a1 a2 a3 a4 = (getRotatedImage2_impl (javaCast object_ :: ImageSwtRotationUtil)) a1 a2 a3 a4

getRotatedImage2_impl :: ImageSwtRotationUtil -> Image.Image -> Image.Image -> GC.GC -> Float -> IO (Image.Image)
getRotatedImage2_impl this bufferedImage newBufferedImage gc angle = do
    javaCatchReturn $ do
        when (Prelude.not (jio (Features.isFeature ((jget (this).features)) (jget ((jget (this).gameFeatureFactory)).pOST_IMAGE_LOADING_MODIFICATION)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_COPY) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            javaReturn (bufferedImage)
        pure (bufferedImage)


rotateImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> GC.GC -> Int -> IO (Image.Image)
rotateImage object_ a1 a2 a3 a4 = jmethod object_ "rotateImage" (\() -> (rotateImage_impl (javaCast object_ :: ImageSwtRotationUtil))) () a1 a2 a3 a4

rotateImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> GC.GC -> Int -> IO (Image.Image)
rotateImage_super object_ a1 a2 a3 a4 = (rotateImage_impl (javaCast object_ :: ImageSwtRotationUtil)) a1 a2 a3 a4

rotateImage_impl :: ImageSwtRotationUtil -> Image.Image -> Image.Image -> GC.GC -> Int -> IO (Image.Image)
rotateImage_impl this originalSwtImage newSwtImage gc totalAngle = do
        (ImageSwtRotationUtil.getRotatedImage2 this originalSwtImage newSwtImage gc totalAngle)


getRotatedImageSWT :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> GC.GC -> Int -> IO (Image.Image)
getRotatedImageSWT object_ a1 a2 a3 a4 = jmethod object_ "getRotatedImageSWT" (\() -> (getRotatedImageSWT_impl (javaCast object_ :: ImageSwtRotationUtil))) () a1 a2 a3 a4

getRotatedImageSWT_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> GC.GC -> Int -> IO (Image.Image)
getRotatedImageSWT_super object_ a1 a2 a3 a4 = (getRotatedImageSWT_impl (javaCast object_ :: ImageSwtRotationUtil)) a1 a2 a3 a4

getRotatedImageSWT_impl :: ImageSwtRotationUtil -> Image.Image -> Image.Image -> GC.GC -> Int -> IO (Image.Image)
getRotatedImageSWT_impl this bufferedImage newSwtImage gc totalAngle = do
        (ImageSwtRotationUtil.getRotatedImage2 this bufferedImage newSwtImage gc totalAngle)


getRotatedImages :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (JavaArray (Image.Image))
getRotatedImages object_ a1 a2 a3 = jmethod object_ "getRotatedImages" (\() -> (getRotatedImages_impl (javaCast object_ :: ImageSwtRotationUtil))) () a1 a2 a3

getRotatedImages_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (JavaArray (Image.Image))
getRotatedImages_super object_ a1 a2 a3 = (getRotatedImages_impl (javaCast object_ :: ImageSwtRotationUtil)) a1 a2 a3

getRotatedImages_impl :: ImageSwtRotationUtil -> Image.Image -> Int -> Int -> IO (JavaArray (Image.Image))
getRotatedImages_impl this bufferedImage numberOfFrames totalAngle = do
        let bufferedImageArray = (jnewArray (numberOfFrames) javaNull)
        angle <- newIORef (0)
        let size = (jlength bufferedImageArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset angle ((((totalAngle `quot` size)) * index))
            assignedValue <- (ImageSwtRotationUtil.getRotatedImage this bufferedImage (jget angle))
            jsetIndex bufferedImageArray (index) (assignedValue)
        pure (bufferedImageArray)


createSpriteImage :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (Image.Image)
createSpriteImage object_ a1 = jmethod object_ "createSpriteImage" (\() -> (createSpriteImage_impl (javaCast object_ :: ImageSwtRotationUtil))) () a1

createSpriteImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (Image.Image)
createSpriteImage_super object_ a1 = (createSpriteImage_impl (javaCast object_ :: ImageSwtRotationUtil)) a1

createSpriteImage_impl :: ImageSwtRotationUtil -> JavaArray (Image.Image) -> IO (Image.Image)
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
        imageData <- newIORef =<< (Image.getImageData firstBufferedImage)
        bufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) ((jget ((jget imageData)).width) * (jget columns)) ((jget ((jget imageData)).height) * (jget rows)))
        gc <- (GC.new_1 bufferedImage)
        Control.Monad.void (GC.setAntialias gc (SWT.oN))
        Control.Monad.void (GC.setInterpolation gc (SWT.hIGH))
        columnIndex <- newIORef (0)
        rowIndex <- newIORef (0)
        nextBufferedImage <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when (((index `quot` 9) /= 0) && ((index `rem` 9) == 0)) $ do
                jset rowIndex ((jget rowIndex) + 1)
                jset columnIndex (0)
            jset nextBufferedImage ((jindex bufferedImageArray (index)))
            assignedValue <- (Image.getImageData ((jget nextBufferedImage)))
            jset imageData (assignedValue)
            Control.Monad.void (GC.drawImage gc bufferedImage 0 0 (jget ((jio (Image.getBounds bufferedImage))).width) (jget ((jio (Image.getBounds bufferedImage))).height) ((jget ((jget imageData)).width) * (jget columnIndex)) ((jget ((jget imageData)).height) * (jget rowIndex)) (jget ((jget imageData)).width) (jget ((jget imageData)).height))
            jset columnIndex ((jget columnIndex) + 1)
        Control.Monad.void (GC.dispose gc)
        pure (bufferedImage)


