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
module AllBinaryJ2SEImageRotationAnimation (module AllBinaryJ2SEImageRotationAnimation, module ImageBaseRotationAnimation) where

import ImageBaseRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, changeBasicColor, changeBasicColor_super, changeBasicColor_impl, setAlpha, setAlpha_super, setAlpha_impl, setScale, setScale_super, setScale_impl, setMaxScale, setMaxScale_super, setMaxScale_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, updateImage, updateImage_super, updateImage_impl, setFrame, setFrame_super, setFrame_impl, swap, swap_super, swap_impl, paintXY, paintXY_super, paintXY_impl, close, close_super, close_impl, finalize, finalize_super, finalize_impl, imageRotationUtil, imageModifierUtil, realOriginalImage, originalImageArray, twoImages, imageToShow, bufferedImageIndex, lastScaleX, lastScaleY, scaleX, scaleY, maxScaleX, maxScaleY, alphaProcessor, setColorProcessor, changeColorProcessor, scaleProcessor)
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
import qualified ModifierBaseProcessor -- same package or java.lang
import qualified ScaleProcessor -- same package or java.lang
import qualified ScaleBaseProcessor -- same package or java.lang
import qualified SetColorProcessor -- same package or java.lang
import qualified ChangeColorProcessor -- same package or java.lang
import qualified AlphaProcessor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified DisposalUtil -- org.allbinary.DisposalUtil
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ImageCopyUtil -- org.allbinary.media.image.ImageCopyUtil
import qualified ImageModifierUtil -- org.allbinary.media.image.ImageModifierUtil
import qualified ImageRotationUtil -- org.allbinary.media.image.ImageRotationUtil
import qualified ImageBaseRotationAnimation

data AllBinaryJ2SEImageRotationAnimation = AllBinaryJ2SEImageRotationAnimation
    { header_ :: JavaHeader
    , base :: ImageBaseRotationAnimation.ImageBaseRotationAnimation
    , imageRotationUtil :: IORef (ImageRotationUtil.ImageRotationUtil)
    , imageModifierUtil :: IORef (ImageModifierUtil.ImageModifierUtil)
    , realOriginalImage :: IORef (Image.Image)
    , originalImageArray :: IORef (JavaArray (Image.Image))
    , twoImages :: IORef (JavaArray (Image.Image))
    , imageToShow :: IORef (Image.Image)
    , bufferedImageIndex :: IORef (Int)
    , lastScaleX :: IORef (Float)
    , lastScaleY :: IORef (Float)
    , scaleX :: IORef (Float)
    , scaleY :: IORef (Float)
    , maxScaleX :: IORef (Float)
    , maxScaleY :: IORef (Float)
    , alphaProcessor :: IORef (ModifierBaseProcessor.ModifierBaseProcessor)
    , setColorProcessor :: IORef (ModifierBaseProcessor.ModifierBaseProcessor)
    , changeColorProcessor :: IORef (ModifierBaseProcessor.ModifierBaseProcessor)
    , scaleProcessor :: IORef (ScaleBaseProcessor.ScaleBaseProcessor)
    }

instance JavaNull AllBinaryJ2SEImageRotationAnimation where
    javaNull = javaNullRecord "AllBinaryJ2SEImageRotationAnimation"

instance JavaEquals AllBinaryJ2SEImageRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryJ2SEImageRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryJ2SEImageRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryJ2SEImageRotationAnimation
newRecord_ = do
    base <- ImageBaseRotationAnimation.newRecord_
    let header_ = base.header_
    imageRotationUtil <- newIORef javaNull
    imageModifierUtil <- newIORef javaNull
    realOriginalImage <- newIORef javaNull
    originalImageArray <- newIORef javaNull
    twoImages <- newIORef javaNull
    imageToShow <- newIORef javaNull
    bufferedImageIndex <- newIORef 0
    lastScaleX <- newIORef 0.0
    lastScaleY <- newIORef 0.0
    scaleX <- newIORef 0.0
    scaleY <- newIORef 0.0
    maxScaleX <- newIORef 0.0
    maxScaleY <- newIORef 0.0
    alphaProcessor <- newIORef javaNull
    setColorProcessor <- newIORef javaNull
    changeColorProcessor <- newIORef javaNull
    scaleProcessor <- newIORef javaNull
    let this = AllBinaryJ2SEImageRotationAnimation header_ base imageRotationUtil imageModifierUtil realOriginalImage originalImageArray twoImages imageToShow bufferedImageIndex lastScaleX lastScaleY scaleX scaleY maxScaleX maxScaleY alphaProcessor setColorProcessor changeColorProcessor scaleProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "changeBasicColor" (\() -> changeBasicColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "setScale" (\() -> setScale_impl this)
    jregisterMethod header_ "setMaxScale" (\() -> setMaxScale_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "updateImage" (\() -> updateImage_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "swap" (\() -> swap_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "finalize" (\() -> finalize_impl this)
    pure this

initFields_ :: AllBinaryJ2SEImageRotationAnimation -> IO ()
initFields_ this = do
    jset this.imageRotationUtil =<< (ImageRotationUtil.getInstance)
    jset this.imageModifierUtil =<< (ImageModifierUtil.getInstanceOrCreate)
    jset this.realOriginalImage (javaNull)
    jset this.originalImageArray ((jnewArray (1) javaNull))
    jset this.twoImages ((jnewArray (2) javaNull))
    jset this.imageToShow (javaNull)
    jset this.bufferedImageIndex (0)
    jset this.lastScaleX (1.0)
    jset this.lastScaleY (1.0)
    jset this.scaleX (1.0)
    jset this.scaleY (1.0)
    jset this.maxScaleX (0.0)
    jset this.maxScaleY (0.0)
    jset this.alphaProcessor =<< (ModifierBaseProcessor.getInstance)
    jset this.setColorProcessor =<< (ModifierBaseProcessor.getInstance)
    jset this.changeColorProcessor =<< (ModifierBaseProcessor.getInstance)
    jset this.scaleProcessor =<< (ScaleProcessor.getInstance)
    pure ()

new_5 :: Image.Image -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO AllBinaryJ2SEImageRotationAnimation
new_5 originalImage image angleInfo totalAngle animationBehavior = do
    this <- newRecord_
    init_5 this originalImage image angleInfo totalAngle animationBehavior
    pure this

init_5 :: AllBinaryJ2SEImageRotationAnimation -> Image.Image -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO ()
init_5 this originalImage image angleInfo totalAngle animationBehavior = do
        ImageBaseRotationAnimation.init_4 this.base (image) (angleInfo) (totalAngle) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).realOriginalImage (originalImage)
        jsetIndex ((jget (this).originalImageArray)) (0) (originalImage)
        jset (this).imageToShow (image)
        jsetIndex ((jget (this).twoImages)) (0) (image)
        assignedValue <- (ImageCopyUtil.createImageForRotation ((jio (ImageCopyUtil.getInstance))) image)
        jsetIndex ((jget (this).twoImages)) (1) (assignedValue)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1

setBasicColorP_impl :: AllBinaryJ2SEImageRotationAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (ImageBaseRotationAnimation.getBasicColorP this)) == javaNull) || ((jio (BasicColor.intValue ((jio (ImageBaseRotationAnimation.getBasicColorP this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.setBasicColorP_super this.base basicColor)
        when (jget changed) $ do
            assignedValue <- (SetColorProcessor.getInstance)
            jset (this).setColorProcessor (assignedValue)
            Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


changeBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor object_ a1 = jmethod object_ "changeBasicColor" (\() -> (changeBasicColor_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1

changeBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor_super object_ a1 = (changeBasicColor_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1

changeBasicColor_impl :: AllBinaryJ2SEImageRotationAnimation -> BasicColor.BasicColor -> IO (())
changeBasicColor_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (ImageBaseRotationAnimation.getChangeBasicColor this)) == javaNull) || ((jio (BasicColor.intValue ((jio (ImageBaseRotationAnimation.getChangeBasicColor this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.changeBasicColor_super this.base basicColor)
        when (jget changed) $ do
            assignedValue <- (ChangeColorProcessor.getInstance)
            jset (this).changeColorProcessor (assignedValue)
            Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1

setAlpha_impl :: AllBinaryJ2SEImageRotationAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        changed <- newIORef (False)
        when ((jget (this).base.base.base.base.alphaP) /= alpha) $ do
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.setAlpha_super this.base alpha)
        when (jget changed) $ do
            assignedValue <- (AlphaProcessor.getInstance)
            jset (this).alphaProcessor (assignedValue)
            Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


setScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale object_ a1 a2 = jmethod object_ "setScale" (\() -> (setScale_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1 a2

setScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale_super object_ a1 a2 = (setScale_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1 a2

setScale_impl :: AllBinaryJ2SEImageRotationAnimation -> Float -> Float -> IO (())
setScale_impl this scaleX scaleY = do
        jset (this).scaleX (scaleX)
        jset (this).scaleY (scaleY)
        when (((jget (this).scaleX) /= (jget (this).lastScaleX)) || ((jget (this).scaleY) /= (jget (this).lastScaleY))) $ do
            Control.Monad.void (ScaleBaseProcessor.update ((jget (this).scaleProcessor)) (jget (this).realOriginalImage) (jget (this).originalImageArray) (jget (this).twoImages) (jget (this).bufferedImageIndex) (jget (this).scaleX) (jget (this).scaleY) (jget (this).maxScaleX) (jget (this).maxScaleY))
            Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        jset (this).lastScaleX ((jget (this).scaleX))
        jset (this).lastScaleY ((jget (this).scaleY))
        pure ()


setMaxScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale object_ a1 a2 = jmethod object_ "setMaxScale" (\() -> (setMaxScale_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1 a2

setMaxScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale_super object_ a1 a2 = (setMaxScale_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1 a2

setMaxScale_impl :: AllBinaryJ2SEImageRotationAnimation -> Float -> Float -> IO (())
setMaxScale_impl this maxScaleX maxScaleY = do
        jset (this).maxScaleX (maxScaleX)
        jset (this).maxScaleY (maxScaleY)
        Control.Monad.void (ScaleBaseProcessor.update ((jget (this).scaleProcessor)) (jget (this).realOriginalImage) (jget (this).originalImageArray) (jget (this).twoImages) (jget (this).bufferedImageIndex) (jget (this).scaleX) (jget (this).scaleY) (jget (this).maxScaleX) (jget (this).maxScaleY))
        Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))

nextRotation_impl :: AllBinaryJ2SEImageRotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.nextRotation_super this.base)
        Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))

previousRotation_impl :: AllBinaryJ2SEImageRotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.previousRotation_super this.base)
        Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


updateImage :: (JavaObjectClass this_) => this_ -> IO (())
updateImage object_ = jmethod object_ "updateImage" (\() -> (updateImage_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) ()

updateImage_super :: (JavaObjectClass this_) => this_ -> IO (())
updateImage_super object_ = (updateImage_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))

updateImage_impl :: AllBinaryJ2SEImageRotationAnimation -> IO (())
updateImage_impl this = do
        Control.Monad.void (ImageRotationUtil.rotateImage ((jget (this).imageRotationUtil)) (jindex ((jget (this).originalImageArray)) (0)) (jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))) ((Prelude.fromIntegral (jio (AngleInfo.getAngle ((jget (this).base.base.angleInfo))))) + 90))
        Control.Monad.void (ModifierBaseProcessor.updateAlpha ((jget (this).alphaProcessor)) (jget (this).imageModifierUtil) (NullImage.nULL_IMAGE) (jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))) 0 (jget (this).base.base.base.base.alphaP))
        Control.Monad.void (ModifierBaseProcessor.updateColor ((jget (this).setColorProcessor)) (jget (this).imageModifierUtil) (NullImage.nULL_IMAGE) (jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))) 0 (jget (this).base.base.base.base.basicColor))
        Control.Monad.void (ModifierBaseProcessor.updateColor ((jget (this).changeColorProcessor)) (jget (this).imageModifierUtil) (NullImage.nULL_IMAGE) (jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))) 0 (jget (this).base.base.base.base.changeBasicColorP))
        Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.swap this)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1

setFrame_impl :: AllBinaryJ2SEImageRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (ImageBaseRotationAnimation.setFrame_super this.base index)
        Control.Monad.void (AllBinaryJ2SEImageRotationAnimation.updateImage this)
        pure ()


swap :: (JavaObjectClass this_) => this_ -> IO (())
swap object_ = jmethod object_ "swap" (\() -> (swap_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) ()

swap_super :: (JavaObjectClass this_) => this_ -> IO (())
swap_super object_ = (swap_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))

swap_impl :: AllBinaryJ2SEImageRotationAnimation -> IO (())
swap_impl this = do
        jset (this).imageToShow ((jindex ((jget (this).twoImages)) ((jget (this).bufferedImageIndex))))
        if ((jget (this).bufferedImageIndex) == 0) then do
            jset (this).bufferedImageIndex (1)
        else do
            jset (this).bufferedImageIndex (0)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation)) a1 a2 a3

paintXY_impl :: AllBinaryJ2SEImageRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawImage graphics (jget (this).imageToShow) x y (jget (this).base.anchor))
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))

close_impl :: AllBinaryJ2SEImageRotationAnimation -> IO (())
close_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.close_super this.base)
        disposalUtil <- (DisposalUtil.getInstance)
        let size2 = (jlength (jget (this).twoImages))
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).twoImages)) (index)))
        let size = (jlength (jget (this).originalImageArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).originalImageArray)) (index)))
        Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jget (this).realOriginalImage))
        Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jget (this).imageToShow))
        pure ()


-- throws Throwable
finalize :: (JavaObjectClass this_) => this_ -> IO (())
finalize object_ = jmethod object_ "finalize" (\() -> (finalize_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))) ()

finalize_super :: (JavaObjectClass this_) => this_ -> IO (())
finalize_super object_ = (finalize_impl (javaCast object_ :: AllBinaryJ2SEImageRotationAnimation))

finalize_impl :: AllBinaryJ2SEImageRotationAnimation -> IO (())
finalize_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.finalize_super this.base)
        disposalUtil <- (DisposalUtil.getInstance)
        let size2 = (jlength (jget (this).twoImages))
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).twoImages)) (index)))
        let size = (jlength (jget (this).originalImageArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).originalImageArray)) (index)))
        Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jget (this).realOriginalImage))
        Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jget (this).imageToShow))
        pure ()


