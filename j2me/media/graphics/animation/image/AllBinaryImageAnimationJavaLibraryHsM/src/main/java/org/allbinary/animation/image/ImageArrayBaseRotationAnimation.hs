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
module ImageArrayBaseRotationAnimation (module ImageArrayBaseRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, setAlpha, setAlpha_super, setAlpha_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, setFrame, setFrame_super, setFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, setImageArray, setImageArray_super, setImageArray_impl, paintXY, paintXY_super, paintXY_impl, close, close_super, close_impl, finalize, finalize_super, finalize_impl, imageModifierUtil, originalImageArray, imageArray, currentImage, totalFrames, anchor)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified DisposalUtil -- org.allbinary.DisposalUtil
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ImageModifierUtil -- org.allbinary.media.image.ImageModifierUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data ImageArrayBaseRotationAnimation = ImageArrayBaseRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , imageModifierUtil :: IORef (ImageModifierUtil.ImageModifierUtil)
    , originalImageArray :: IORef (JavaArray (Image.Image))
    , imageArray :: IORef (JavaArray (Image.Image))
    , currentImage :: IORef (Image.Image)
    , totalFrames :: IORef (Int)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageArrayBaseRotationAnimation where
    javaNull = javaNullRecord "ImageArrayBaseRotationAnimation"

instance JavaEquals ImageArrayBaseRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayBaseRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayBaseRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageArrayBaseRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    imageModifierUtil <- newIORef javaNull
    originalImageArray <- newIORef javaNull
    imageArray <- newIORef javaNull
    currentImage <- newIORef javaNull
    totalFrames <- newIORef 0
    anchor <- newIORef 0
    let this = ImageArrayBaseRotationAnimation header_ base imageModifierUtil originalImageArray imageArray currentImage totalFrames anchor
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "setImageArray" (\() -> setImageArray_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "finalize" (\() -> finalize_impl this)
    pure this

initFields_ :: ImageArrayBaseRotationAnimation -> IO ()
initFields_ this = do
    jset this.imageModifierUtil =<< (ImageModifierUtil.getInstanceOrCreate)
    jset this.originalImageArray (javaNull)
    jset this.imageArray (NullImage.nULL_IMAGE_ARRAY)
    jset this.currentImage (javaNull)
    jset this.totalFrames (0)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_3 :: JavaArray (Image.Image) -> AngleInfo.AngleInfo -> AnimationBehavior.AnimationBehavior -> IO ImageArrayBaseRotationAnimation
new_3 originalImageArray angleInfo animationBehavior = do
    this <- newRecord_
    init_3 this originalImageArray angleInfo animationBehavior
    pure this

init_3 :: ImageArrayBaseRotationAnimation -> JavaArray (Image.Image) -> AngleInfo.AngleInfo -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this originalImageArray angleInfo animationBehavior = do
        RotationAnimation.init_3 this.base (angleInfo) (jio (CircularIndexUtil.createInstance (360 `quot` (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo angleInfo))))))))) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).originalImageArray (originalImageArray)
        Control.Monad.void (ImageArrayBaseRotationAnimation.setImageArray this (jio (ImageModifierUtil.getImageArray ((jget (this).imageModifierUtil)) originalImageArray)))
        jset (this).currentImage ((jindex ((jget (this).imageArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))))))
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))

getAnimationSize_impl :: ImageArrayBaseRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        (RotationAnimation.getSize this)


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: ImageArrayBaseRotationAnimation)) a1

setAlpha_impl :: ImageArrayBaseRotationAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        when ((jget (this).base.base.base.alphaP) /= alpha) $ do
            Control.Monad.void (RotationAnimation.setAlpha_super this.base alpha)
            Control.Monad.void (ImageModifierUtil.reset ((jget (this).imageModifierUtil)))
            index <- (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))
            Control.Monad.void (ImageModifierUtil.setAlpha ((jget (this).imageModifierUtil)) (jindex ((jget (this).originalImageArray)) (index)) (jindex ((jget (this).imageArray)) (index)) index (jget (this).base.base.base.alphaP))
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))

nextRotation_impl :: ImageArrayBaseRotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (RotationAnimation.nextRotation_super this.base)
        index <- (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))
        Control.Monad.void (ImageModifierUtil.setAlpha ((jget (this).imageModifierUtil)) (jindex ((jget (this).originalImageArray)) (index)) (jindex ((jget (this).imageArray)) (index)) index (jget (this).base.base.base.alphaP))
        jset (this).currentImage ((jindex ((jget (this).imageArray)) (index)))
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))

previousRotation_impl :: ImageArrayBaseRotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (RotationAnimation.previousRotation_super this.base)
        index <- (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))
        Control.Monad.void (ImageModifierUtil.setAlpha ((jget (this).imageModifierUtil)) (jindex ((jget (this).originalImageArray)) (index)) (jindex ((jget (this).imageArray)) (index)) index (jget (this).base.base.base.alphaP))
        jset (this).currentImage ((jindex ((jget (this).imageArray)) (index)))
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: ImageArrayBaseRotationAnimation)) a1

setFrame_impl :: ImageArrayBaseRotationAnimation -> Int -> IO (())
setFrame_impl this index2 = do
        Control.Monad.void (RotationAnimation.setFrame_super this.base index2)
        index <- (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))
        Control.Monad.void (ImageModifierUtil.setAlpha ((jget (this).imageModifierUtil)) (jindex ((jget (this).originalImageArray)) (index)) (jindex ((jget (this).imageArray)) (index)) index (jget (this).base.base.base.alphaP))
        jset (this).currentImage ((jindex ((jget (this).imageArray)) (index)))
        pure ()


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: ImageArrayBaseRotationAnimation)) a1

setSequence_impl :: ImageArrayBaseRotationAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))

getSequence_impl :: ImageArrayBaseRotationAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


setImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray object_ a1 = jmethod object_ "setImageArray" (\() -> (setImageArray_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) () a1

setImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray_super object_ a1 = (setImageArray_impl (javaCast object_ :: ImageArrayBaseRotationAnimation)) a1

setImageArray_impl :: ImageArrayBaseRotationAnimation -> JavaArray (Image.Image) -> IO (())
setImageArray_impl this imageArray = do
        jset (this).imageArray (imageArray)
        jset (this).totalFrames ((jlength imageArray))
        assignedValue <- (CircularIndexUtil.createInstance (jget (this).totalFrames))
        jset (this).base.circularIndexUtil (assignedValue)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ImageArrayBaseRotationAnimation)) a1 a2 a3

paintXY_impl :: ImageArrayBaseRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawImage graphics (jget (this).currentImage) x y (jget (this).anchor))
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))

close_impl :: ImageArrayBaseRotationAnimation -> IO (())
close_impl this = do
        disposalUtil <- (DisposalUtil.getInstance)
        let size2 = (jlength (jget (this).imageArray))
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).imageArray)) (index)))
        let size = (jlength (jget (this).originalImageArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).originalImageArray)) (index)))
        Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jget (this).currentImage))
        pure ()


-- throws Throwable
finalize :: (JavaObjectClass this_) => this_ -> IO (())
finalize object_ = jmethod object_ "finalize" (\() -> (finalize_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))) ()

finalize_super :: (JavaObjectClass this_) => this_ -> IO (())
finalize_super object_ = (finalize_impl (javaCast object_ :: ImageArrayBaseRotationAnimation))

finalize_impl :: ImageArrayBaseRotationAnimation -> IO (())
finalize_impl this = do
        disposalUtil <- (DisposalUtil.getInstance)
        let size2 = (jlength (jget (this).imageArray))
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).imageArray)) (index)))
        let size = (jlength (jget (this).originalImageArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jindex ((jget (this).originalImageArray)) (index)))
        Control.Monad.void (DisposalUtil.disposeImage disposalUtil (jget (this).currentImage))
        pure ()


