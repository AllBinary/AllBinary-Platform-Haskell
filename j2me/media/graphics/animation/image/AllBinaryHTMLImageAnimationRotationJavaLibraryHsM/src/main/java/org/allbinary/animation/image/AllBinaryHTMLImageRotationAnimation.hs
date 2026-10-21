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
module AllBinaryHTMLImageRotationAnimation (module AllBinaryHTMLImageRotationAnimation, module ImageBaseRotationAnimation) where

import ImageBaseRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCanvasSurface, getCanvasSurface_super, getCanvasSurface_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, setAlpha, setAlpha_super, setAlpha_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, updateImage, updateImage_super, updateImage_impl, setFrame, setFrame_super, setFrame_impl, swap, swap_super, swap_impl, paintXY, paintXY_super, paintXY_impl, imageRotationUtil, imageModifierUtil, originalImage, twoImages, canvasSurfaceArray, imageToShow, bufferedImageIndex, alphaProcessor)
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
import qualified AlphaBaseProcessor -- same package or java.lang
import qualified AlphaProcessor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ImageCopyUtil -- org.allbinary.media.image.ImageCopyUtil
import qualified ImageModifierUtil -- org.allbinary.media.image.ImageModifierUtil
import qualified ImageRotationUtil -- org.allbinary.media.image.ImageRotationUtil
import qualified PlaynMutableImage -- org.microemu.device.playn.PlaynMutableImage
import qualified CanvasImage -- playn.core.CanvasImage
import qualified CanvasSurface -- playn.core.CanvasSurface
import qualified ImageBaseRotationAnimation

data AllBinaryHTMLImageRotationAnimation = AllBinaryHTMLImageRotationAnimation
    { header_ :: JavaHeader
    , base :: ImageBaseRotationAnimation.ImageBaseRotationAnimation
    , imageRotationUtil :: IORef (ImageRotationUtil.ImageRotationUtil)
    , imageModifierUtil :: IORef (ImageModifierUtil.ImageModifierUtil)
    , originalImage :: IORef (Image.Image)
    , twoImages :: IORef (JavaArray (Image.Image))
    , canvasSurfaceArray :: IORef (JavaArray (CanvasSurface.CanvasSurface))
    , imageToShow :: IORef (Image.Image)
    , bufferedImageIndex :: IORef (Int)
    , alphaProcessor :: IORef (AlphaBaseProcessor.AlphaBaseProcessor)
    }

instance JavaNull AllBinaryHTMLImageRotationAnimation where
    javaNull = javaNullRecord "AllBinaryHTMLImageRotationAnimation"

instance JavaEquals AllBinaryHTMLImageRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryHTMLImageRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryHTMLImageRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryHTMLImageRotationAnimation
newRecord_ = do
    base <- ImageBaseRotationAnimation.newRecord_
    let header_ = base.header_
    imageRotationUtil <- newIORef javaNull
    imageModifierUtil <- newIORef javaNull
    originalImage <- newIORef javaNull
    twoImages <- newIORef javaNull
    canvasSurfaceArray <- newIORef javaNull
    imageToShow <- newIORef javaNull
    bufferedImageIndex <- newIORef 0
    alphaProcessor <- newIORef javaNull
    let this = AllBinaryHTMLImageRotationAnimation header_ base imageRotationUtil imageModifierUtil originalImage twoImages canvasSurfaceArray imageToShow bufferedImageIndex alphaProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "getCanvasSurface" (\() -> getCanvasSurface_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "updateImage" (\() -> updateImage_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "swap" (\() -> swap_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: AllBinaryHTMLImageRotationAnimation -> IO ()
initFields_ this = do
    jset this.imageRotationUtil =<< (ImageRotationUtil.getInstance)
    jset this.imageModifierUtil =<< (ImageModifierUtil.getInstanceOrCreate)
    jset this.originalImage (javaNull)
    jset this.twoImages ((jnewArray (2) javaNull))
    jset this.canvasSurfaceArray ((jnewArray (2) javaNull))
    jset this.imageToShow (javaNull)
    jset this.bufferedImageIndex (0)
    jset this.alphaProcessor =<< (AlphaBaseProcessor.getInstance)
    pure ()

new_5 :: Image.Image -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO AllBinaryHTMLImageRotationAnimation
new_5 originalImage image angleInfo totalAngle animationBehavior = do
    this <- newRecord_
    init_5 this originalImage image angleInfo totalAngle animationBehavior
    pure this

init_5 :: AllBinaryHTMLImageRotationAnimation -> Image.Image -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO ()
init_5 this originalImage image angleInfo totalAngle animationBehavior = do
        ImageBaseRotationAnimation.init_4 this.base (image) (angleInfo) (totalAngle) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).originalImage (originalImage)
        jset (this).imageToShow (image)
        jsetIndex ((jget (this).twoImages)) (0) (image)
        assignedValue <- (ImageCopyUtil.createImage ((jio (ImageCopyUtil.getInstance))) image)
        jsetIndex ((jget (this).twoImages)) (1) (assignedValue)
        assignedValue <- (AllBinaryHTMLImageRotationAnimation.getCanvasSurface this (jindex ((jget (this).twoImages)) (0)))
        jsetIndex ((jget (this).canvasSurfaceArray)) (0) (assignedValue)
        assignedValue <- (AllBinaryHTMLImageRotationAnimation.getCanvasSurface this (jindex ((jget (this).twoImages)) (1)))
        jsetIndex ((jget (this).canvasSurfaceArray)) (1) (assignedValue)
        pure ()


getCanvasSurface :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (CanvasSurface.CanvasSurface)
getCanvasSurface object_ a1 = jmethod object_ "getCanvasSurface" (\() -> (getCanvasSurface_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) () a1

getCanvasSurface_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (CanvasSurface.CanvasSurface)
getCanvasSurface_super object_ a1 = (getCanvasSurface_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation)) a1

getCanvasSurface_impl :: AllBinaryHTMLImageRotationAnimation -> Image.Image -> IO (CanvasSurface.CanvasSurface)
getCanvasSurface_impl this image = do
        let htmlImage = (javaCast image :: PlaynMutableImage.PlaynMutableImage)
        let canvasImage = (javaCast (jio (PlaynMutableImage.getImage htmlImage)) :: CanvasImage.CanvasImage)
        canvasSurface <- (PlaynMutableImage.getCanvasSurface htmlImage canvasImage)
        Control.Monad.void (CanvasSurface.translate canvasSurface ((jio (Image.getWidth ((jget (this).originalImage)))) / 2) ((jio (Image.getHeight ((jget (this).originalImage)))) / 2))
        pure (canvasSurface)


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation)) a1

setBasicColorP_impl :: AllBinaryHTMLImageRotationAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (ImageBaseRotationAnimation.getBasicColorP this)) == javaNull) || ((jio (BasicColor.intValue ((jio (ImageBaseRotationAnimation.getBasicColorP this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.setBasicColorP_super this.base basicColor)
        when (jget changed) $ do
            Control.Monad.void (AllBinaryHTMLImageRotationAnimation.updateImage this)
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation)) a1

setAlpha_impl :: AllBinaryHTMLImageRotationAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        changed <- newIORef (False)
        when ((jget (this).base.base.base.base.alphaP) /= alpha) $ do
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.setAlpha_super this.base alpha)
        when (jget changed) $ do
            assignedValue <- (AlphaProcessor.getInstance)
            jset (this).alphaProcessor (assignedValue)
            Control.Monad.void (AllBinaryHTMLImageRotationAnimation.updateImage this)
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))

nextRotation_impl :: AllBinaryHTMLImageRotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.nextRotation_super this.base)
        Control.Monad.void (AllBinaryHTMLImageRotationAnimation.updateImage this)
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))

previousRotation_impl :: AllBinaryHTMLImageRotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.previousRotation_super this.base)
        Control.Monad.void (AllBinaryHTMLImageRotationAnimation.updateImage this)
        pure ()


updateImage :: (JavaObjectClass this_) => this_ -> IO (())
updateImage object_ = jmethod object_ "updateImage" (\() -> (updateImage_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) ()

updateImage_super :: (JavaObjectClass this_) => this_ -> IO (())
updateImage_super object_ = (updateImage_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))

updateImage_impl :: AllBinaryHTMLImageRotationAnimation -> IO (())
updateImage_impl this = do
        let canvasSurface = (jindex ((jget (this).canvasSurfaceArray)) ((jget (this).bufferedImageIndex)))
        Control.Monad.void (CanvasSurface.save canvasSurface)
        Control.Monad.void (ImageRotationUtil.rotateImageCanvasSurfaceClear ((jget (this).imageRotationUtil)) (jget (this).originalImage) (jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))) canvasSurface ((Prelude.fromIntegral (jio (AngleInfo.getAngle ((jget (this).base.base.angleInfo))))) + 90))
        Control.Monad.void (AlphaBaseProcessor.setAlpha ((jget (this).alphaProcessor)) (jget (this).imageModifierUtil) (jget (this).originalImage) (jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))) (jget (this).base.base.base.base.alphaP))
        Control.Monad.void (ImageRotationUtil.drawImage ((jget (this).imageRotationUtil)) (jget (this).originalImage) (jget this.imageToShow) canvasSurface)
        Control.Monad.void (CanvasSurface.restore canvasSurface)
        Control.Monad.void (AllBinaryHTMLImageRotationAnimation.swap this)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation)) a1

setFrame_impl :: AllBinaryHTMLImageRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (ImageBaseRotationAnimation.setFrame_super this.base index)
        Control.Monad.void (AllBinaryHTMLImageRotationAnimation.updateImage this)
        pure ()


swap :: (JavaObjectClass this_) => this_ -> IO (())
swap object_ = jmethod object_ "swap" (\() -> (swap_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) ()

swap_super :: (JavaObjectClass this_) => this_ -> IO (())
swap_super object_ = (swap_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))

swap_impl :: AllBinaryHTMLImageRotationAnimation -> IO (())
swap_impl this = do
        jset (this).imageToShow ((jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))))
        if ((jget (this).bufferedImageIndex) == 0) then do
            jset (this).bufferedImageIndex (1)
        else do
            jset (this).bufferedImageIndex (0)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AllBinaryHTMLImageRotationAnimation)) a1 a2 a3

paintXY_impl :: AllBinaryHTMLImageRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawImage graphics (jget (this).imageToShow) x y (jget (this).base.anchor))
        pure ()


