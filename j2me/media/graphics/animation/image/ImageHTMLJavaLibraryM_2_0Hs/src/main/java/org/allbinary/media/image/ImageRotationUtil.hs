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
import qualified PlaynImmutableImage -- org.microemu.device.playn.PlaynImmutableImage
import qualified PlaynMutableImage -- org.microemu.device.playn.PlaynMutableImage
import qualified Canvas -- playn.core.Canvas
import qualified CoreImage -- playn.core.CoreImage
import qualified ImageImpl -- playn.core.ImageImpl
import qualified HTMLPlaynUtil -- playn.html.HTMLPlaynUtil

data ImageRotationUtil = ImageRotationUtil
    { header_ :: JavaHeader
    , playnUtil :: IORef (HTMLPlaynUtil.HTMLPlaynUtil)
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
    playnUtil <- newIORef javaNull
    let this = ImageRotationUtil header_ playnUtil
    jregisterLevel header_ this
    jregisterMethod header_ "rotateImage" (\() -> rotateImage_impl this)
    jregisterMethod header_ "rotateImageCanvasSurfaceClear" (\() -> rotateImageCanvasSurfaceClear_impl this)
    jregisterMethod header_ "rotateImageCanvasSurface" (\() -> rotateImageCanvasSurface_impl this)
    jregisterMethod header_ "drawImage" (\() -> drawImage_impl this)
    jregisterMethod header_ "createRotatedImage" (\() -> createRotatedImage_impl this)
    pure this

initFields_ :: ImageRotationUtil -> IO ()
initFields_ this = do
    jset this.playnUtil =<< (HTMLPlaynUtil.getInstance)
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


rotateImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> IO (Image.Image)
rotateImage object_ a1 a2 a3 = jmethod object_ "rotateImage" (\() -> (rotateImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2 a3

rotateImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> IO (Image.Image)
rotateImage_super object_ a1 a2 a3 = (rotateImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2 a3

rotateImage_impl :: ImageRotationUtil -> Image.Image -> Image.Image -> Int -> IO (Image.Image)
rotateImage_impl this originalImage image totalAngle = do
    javaCatchReturn $ do
        if (jio (Image.isMutable image)) then do
            let htmlImage = (javaCast image :: PlaynMutableImage.PlaynMutableImage)
            let canvasImage = (javaCast (jio (PlaynMutableImage.getImage htmlImage)) :: ImageImpl.ImageImpl)
            canvas <- (HTMLPlaynUtil.getCanvas ((jget (this).playnUtil)) canvasImage)
            Control.Monad.void (Canvas.save canvas)
            Control.Monad.void (Canvas.clear canvas)
            Control.Monad.void (Canvas.translate canvas ((jio (Image.getWidth originalImage)) / 2) ((jio (Image.getHeight originalImage)) / 2))
            image2 <- (ImageRotationUtil.rotateImageCanvasSurface this originalImage image canvas totalAngle)
            Control.Monad.void (ImageRotationUtil.drawImage this originalImage image canvas)
            Control.Monad.void (Canvas.restore canvas)
            javaReturn (image2)
        else do
            javaReturn (javaNull)


rotateImageCanvasSurfaceClear :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Canvas.Canvas -> Int -> IO (Image.Image)
rotateImageCanvasSurfaceClear object_ a1 a2 a3 a4 = jmethod object_ "rotateImageCanvasSurfaceClear" (\() -> (rotateImageCanvasSurfaceClear_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2 a3 a4

rotateImageCanvasSurfaceClear_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Canvas.Canvas -> Int -> IO (Image.Image)
rotateImageCanvasSurfaceClear_super object_ a1 a2 a3 a4 = (rotateImageCanvasSurfaceClear_impl (javaCast object_ :: ImageRotationUtil)) a1 a2 a3 a4

rotateImageCanvasSurfaceClear_impl :: ImageRotationUtil -> Image.Image -> Image.Image -> Canvas.Canvas -> Int -> IO (Image.Image)
rotateImageCanvasSurfaceClear_impl this originalImage image canvasSurface totalAngle = do
    javaCatchReturn $ do
        if (jio (Image.isMutable image)) then do
            Control.Monad.void (Canvas.translate canvasSurface ((Prelude.negate (jio (Image.getWidth originalImage))) / 2) ((Prelude.negate (jio (Image.getHeight originalImage))) / 2))
            Control.Monad.void (Canvas.clear canvasSurface)
            Control.Monad.void (Canvas.translate canvasSurface ((jio (Image.getWidth originalImage)) / 2) ((jio (Image.getHeight originalImage)) / 2))
            javaReturn =<< (ImageRotationUtil.rotateImageCanvasSurface this originalImage image canvasSurface totalAngle)
        else do
            javaReturn (javaNull)


rotateImageCanvasSurface :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Canvas.Canvas -> Int -> IO (Image.Image)
rotateImageCanvasSurface object_ a1 a2 a3 a4 = jmethod object_ "rotateImageCanvasSurface" (\() -> (rotateImageCanvasSurface_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2 a3 a4

rotateImageCanvasSurface_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Canvas.Canvas -> Int -> IO (Image.Image)
rotateImageCanvasSurface_super object_ a1 a2 a3 a4 = (rotateImageCanvasSurface_impl (javaCast object_ :: ImageRotationUtil)) a1 a2 a3 a4

rotateImageCanvasSurface_impl :: ImageRotationUtil -> Image.Image -> Image.Image -> Canvas.Canvas -> Int -> IO (Image.Image)
rotateImageCanvasSurface_impl this originalImage image canvasSurface totalAngle = do
    javaCatchReturn $ do
        if (jio (Image.isMutable image)) then do
            Control.Monad.void (Canvas.rotate canvasSurface (Prelude.realToFrac (jnumericDouble (totalAngle * pi / 180))))
            javaReturn (image)
        else do
            javaReturn (javaNull)


drawImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Canvas.Canvas -> IO (())
drawImage object_ a1 a2 a3 = jmethod object_ "drawImage" (\() -> (drawImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2 a3

drawImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Canvas.Canvas -> IO (())
drawImage_super object_ a1 a2 a3 = (drawImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2 a3

drawImage_impl :: ImageRotationUtil -> Image.Image -> Image.Image -> Canvas.Canvas -> IO (())
drawImage_impl this originalImage image canvasSurface = do
        originalPlayNImage <- newIORef (javaNull)
        if (jio (Image.isMutable originalImage)) then do
            let originalHTMLImage = (javaCast originalImage :: PlaynMutableImage.PlaynMutableImage)
            jset originalPlayNImage ((javaCast (jio (PlaynImmutableImage.getImage originalHTMLImage)) :: CoreImage.CoreImage))
        else do
            let originalHTMLImage = (javaCast originalImage :: PlaynImmutableImage.PlaynImmutableImage)
            jset originalPlayNImage ((javaCast (jio (PlaynImmutableImage.getImage originalHTMLImage)) :: CoreImage.CoreImage))
        Control.Monad.void (Canvas.draw canvasSurface (jget originalPlayNImage) ((Prelude.negate (jio (Image.getWidth originalImage))) / 2) ((Prelude.negate (jio (Image.getHeight originalImage))) / 2))
        pure ()


-- throws Exception
createRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage object_ a1 a2 = jmethod object_ "createRotatedImage" (\() -> (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2

createRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_super object_ a1 a2 = (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2

createRotatedImage_impl :: ImageRotationUtil -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_impl this originalImage rotationInDegrees = do
        image <- (ImageCreationUtil.createImageWH ((jio (ImageCreationUtil.getInstance))) (jio (Image.getWidth originalImage)) (jio (Image.getHeight originalImage)))
        rotatedImage <- (ImageRotationUtil.rotateImage this originalImage image rotationInDegrees)
        when (rotatedImage == javaNull) $ do
            javaThrow ((JavaException "Exception" "Not Mutable"))
        pure (rotatedImage)


