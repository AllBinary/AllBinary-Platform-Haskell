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
module AllBinaryFlickerAndroidImageRotationAnimation (module AllBinaryFlickerAndroidImageRotationAnimation, module ImageBaseRotationAnimation) where

import ImageBaseRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, changeBasicColor, changeBasicColor_super, changeBasicColor_impl, setAlpha, setAlpha_super, setAlpha_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, updateImage, updateImage_super, updateImage_impl, setFrame, setFrame_super, setFrame_impl, imageModifierUtil, androidImageUtil, matrix, halfWidth, halfHeight, increment, originalImage)
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
import qualified CircularIndexUtil -- same package or java.lang
import qualified Matrix -- android.graphics.Matrix
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified AndroidImageUtil -- org.allbinary.media.image.AndroidImageUtil
import qualified ImageModifierUtil -- org.allbinary.media.image.ImageModifierUtil
import qualified ImageBaseRotationAnimation

data AllBinaryFlickerAndroidImageRotationAnimation = AllBinaryFlickerAndroidImageRotationAnimation
    { header_ :: JavaHeader
    , base :: ImageBaseRotationAnimation.ImageBaseRotationAnimation
    , imageModifierUtil :: IORef (ImageModifierUtil.ImageModifierUtil)
    , androidImageUtil :: IORef (AndroidImageUtil.AndroidImageUtil)
    , matrix :: IORef (Matrix.Matrix)
    , halfWidth :: IORef (Int)
    , halfHeight :: IORef (Int)
    , increment :: IORef (Int16)
    , originalImage :: IORef (Image.Image)
    }

instance JavaNull AllBinaryFlickerAndroidImageRotationAnimation where
    javaNull = javaNullRecord "AllBinaryFlickerAndroidImageRotationAnimation"

instance JavaEquals AllBinaryFlickerAndroidImageRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryFlickerAndroidImageRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryFlickerAndroidImageRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryFlickerAndroidImageRotationAnimation
newRecord_ = do
    base <- ImageBaseRotationAnimation.newRecord_
    let header_ = base.header_
    imageModifierUtil <- newIORef javaNull
    androidImageUtil <- newIORef javaNull
    matrix <- newIORef javaNull
    halfWidth <- newIORef 0
    halfHeight <- newIORef 0
    increment <- newIORef 0
    originalImage <- newIORef javaNull
    let this = AllBinaryFlickerAndroidImageRotationAnimation header_ base imageModifierUtil androidImageUtil matrix halfWidth halfHeight increment originalImage
    jregisterLevel header_ this
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "changeBasicColor" (\() -> changeBasicColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "updateImage" (\() -> updateImage_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    pure this

initFields_ :: AllBinaryFlickerAndroidImageRotationAnimation -> IO ()
initFields_ this = do
    jset this.imageModifierUtil =<< (ImageModifierUtil.getInstanceOrCreate)
    jset this.androidImageUtil =<< (AndroidImageUtil.getInstance)
    jset this.matrix =<< (Matrix.new_)
    jset this.halfWidth (0)
    jset this.halfHeight (0)
    jset this.increment (0)
    jset this.originalImage (javaNull)
    pure ()

new_5 :: Image.Image -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO AllBinaryFlickerAndroidImageRotationAnimation
new_5 originalImage image angleInfo totalAngle animationBehavior = do
    this <- newRecord_
    init_5 this originalImage image angleInfo totalAngle animationBehavior
    pure this

init_5 :: AllBinaryFlickerAndroidImageRotationAnimation -> Image.Image -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO ()
init_5 this originalImage image angleInfo totalAngle animationBehavior = do
        ImageBaseRotationAnimation.init_4 this.base (image) (angleInfo) (totalAngle) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).originalImage (originalImage)
        jset (this).halfWidth ((((jio (Image.getWidth image)) `Data.Bits.shiftR` 1)))
        jset (this).halfHeight ((((jio (Image.getHeight image)) `Data.Bits.shiftR` 1)))
        jset (this).increment (((jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).base.base.angleInfo)))))))))
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation)) a1

setBasicColorP_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (ImageBaseRotationAnimation.getBasicColorP this)) == javaNull) || ((jio (BasicColor.intValue ((jio (ImageBaseRotationAnimation.getBasicColorP this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            Control.Monad.void (ImageModifierUtil.setColor ((jget (this).imageModifierUtil)) (jget (this).originalImage) (jio (ImageBaseRotationAnimation.getImage this)) 0 basicColor)
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.setBasicColorP_super this.base basicColor)
        when (jget changed) $ do
            Control.Monad.void (Matrix.setRotate ((jget (this).matrix)) (0.0) (Prelude.fromIntegral (jget (this).halfWidth)) (Prelude.fromIntegral (jget (this).halfHeight)))
            Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimation.updateImage this)
        pure ()


changeBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor object_ a1 = jmethod object_ "changeBasicColor" (\() -> (changeBasicColor_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) () a1

changeBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor_super object_ a1 = (changeBasicColor_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation)) a1

changeBasicColor_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> BasicColor.BasicColor -> IO (())
changeBasicColor_impl this basicColor = do
        Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimation.setBasicColorP this basicColor)
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation)) a1

setAlpha_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        changed <- newIORef (False)
        when ((jget (this).base.base.base.base.alphaP) /= alpha) $ do
            jset changed (True)
        Control.Monad.void (ImageBaseRotationAnimation.setAlpha_super this.base alpha)
        Control.Monad.void (ImageModifierUtil.setAlpha ((jget (this).imageModifierUtil)) (jget (this).originalImage) (jio (ImageBaseRotationAnimation.getImage this)) 0 (jget (this).base.base.base.base.alphaP))
        when (jget changed) $ do
            Control.Monad.void (Matrix.setRotate ((jget (this).matrix)) (0.0) (Prelude.fromIntegral (jget (this).halfWidth)) (Prelude.fromIntegral (jget (this).halfHeight)))
            Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimation.updateImage this)
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))

nextRotation_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.nextRotation_super this.base)
        Control.Monad.void (Matrix.setRotate ((jget (this).matrix)) (Prelude.fromIntegral (jget (this).increment)) (Prelude.fromIntegral (jget (this).halfWidth)) (Prelude.fromIntegral (jget (this).halfHeight)))
        Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimation.updateImage this)
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))

previousRotation_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (ImageBaseRotationAnimation.previousRotation_super this.base)
        Control.Monad.void (Matrix.setRotate ((jget (this).matrix)) (Prelude.fromIntegral (Prelude.negate (jget (this).increment))) (Prelude.fromIntegral (jget (this).halfWidth)) (Prelude.fromIntegral (jget (this).halfHeight)))
        Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimation.updateImage this)
        pure ()


updateImage :: (JavaObjectClass this_) => this_ -> IO (())
updateImage object_ = jmethod object_ "updateImage" (\() -> (updateImage_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) ()

updateImage_super :: (JavaObjectClass this_) => this_ -> IO (())
updateImage_super object_ = (updateImage_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))

updateImage_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> IO (())
updateImage_impl this = do
        Control.Monad.void (AndroidImageUtil.rotate ((jget (this).androidImageUtil)) (jio (ImageBaseRotationAnimation.getImage this)) (jget this.originalImage) (jget this.matrix) (jget ((jget this.imageModifierUtil)).paint))
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: AllBinaryFlickerAndroidImageRotationAnimation)) a1

setFrame_impl :: AllBinaryFlickerAndroidImageRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        currentFrame <- (CircularIndexUtil.getIndex ((jget (this).base.base.circularIndexUtil)))
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).base.base.circularIndexUtil)) index)
        newFrame <- (CircularIndexUtil.getIndex ((jget (this).base.base.circularIndexUtil)))
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) newFrame)
        Control.Monad.void (Matrix.setRotate ((jget (this).matrix)) ((Prelude.fromIntegral ((newFrame - currentFrame))) * (Prelude.fromIntegral (jget (this).increment))) (Prelude.fromIntegral (jget (this).halfWidth)) (Prelude.fromIntegral (jget (this).halfHeight)))
        Control.Monad.void (AllBinaryFlickerAndroidImageRotationAnimation.updateImage this)
        pure ()


