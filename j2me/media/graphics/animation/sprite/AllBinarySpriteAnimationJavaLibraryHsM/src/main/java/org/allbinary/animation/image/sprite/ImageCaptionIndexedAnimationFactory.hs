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
-- package org.allbinary.animation.image.sprite
module ImageCaptionIndexedAnimationFactory where

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
import qualified SpriteIndexedAnimation -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified Player -- javax.microedition.media.Player
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified CaptionIndexedAnimation -- org.allbinary.animation.caption.CaptionIndexedAnimation
import qualified ImageAnimation -- org.allbinary.animation.image.ImageAnimation
import qualified BasicColorUtil -- org.allbinary.graphics.color.BasicColorUtil
import qualified AnimationFactoryImageScaleUtil -- org.allbinary.image.AnimationFactoryImageScaleUtil
import qualified AnimationFactorySpriteScaleUtil -- org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified Sound -- org.allbinary.media.audio.Sound

-- implements AnimationInterfaceFactoryInterface
data ImageCaptionIndexedAnimationFactory = ImageCaptionIndexedAnimationFactory
    { header_ :: JavaHeader
    , animationFactoryImageScaleUtil :: IORef (AnimationFactoryImageScaleUtil.AnimationFactoryImageScaleUtil)
    , animationFactorySpriteScaleUtil :: IORef (AnimationFactorySpriteScaleUtil.AnimationFactorySpriteScaleUtil)
    , captionImage :: IORef (Image.Image)
    , spriteMovieImage :: IORef (Image.Image)
    , frameWidth :: IORef (Int)
    , frameHeight :: IORef (Int)
    , captionDx :: IORef (Int)
    , captionDy :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , time :: IORef (Int)
    , soundInterface :: IORef (Sound.Sound)
    , scaleProperties :: IORef (ScaleProperties.ScaleProperties)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull ImageCaptionIndexedAnimationFactory where
    javaNull = javaNullRecord "ImageCaptionIndexedAnimationFactory"

instance JavaEquals ImageCaptionIndexedAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCaptionIndexedAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass ImageCaptionIndexedAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageCaptionIndexedAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    animationFactoryImageScaleUtil <- newIORef javaNull
    animationFactorySpriteScaleUtil <- newIORef javaNull
    captionImage <- newIORef javaNull
    spriteMovieImage <- newIORef javaNull
    frameWidth <- newIORef 0
    frameHeight <- newIORef 0
    captionDx <- newIORef 0
    captionDy <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    time <- newIORef 0
    soundInterface <- newIORef javaNull
    scaleProperties <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = ImageCaptionIndexedAnimationFactory header_ animationFactoryImageScaleUtil animationFactorySpriteScaleUtil captionImage spriteMovieImage frameWidth frameHeight captionDx captionDy dx dy time soundInterface scaleProperties animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: ImageCaptionIndexedAnimationFactory -> IO ()
initFields_ this = do
    jset this.animationFactoryImageScaleUtil =<< (AnimationFactoryImageScaleUtil.getInstance)
    jset this.animationFactorySpriteScaleUtil =<< (AnimationFactorySpriteScaleUtil.getInstance)
    jset this.captionImage (javaNull)
    jset this.spriteMovieImage (javaNull)
    jset this.frameWidth (0)
    jset this.frameHeight (0)
    jset this.captionDx (0)
    jset this.captionDy (0)
    jset this.dx (0)
    jset this.dy (0)
    jset this.time (0)
    jset this.soundInterface (javaNull)
    jset this.scaleProperties (ScaleProperties.instance_)
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_11 :: Image.Image -> Image.Image -> Sound.Sound -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ImageCaptionIndexedAnimationFactory
new_11 captionImage spriteMovieImage soundInterface frameWidth frameHeight captionDx captionDy dx dy time animationBehaviorFactory = do
    this <- newRecord_
    init_11 this captionImage spriteMovieImage soundInterface frameWidth frameHeight captionDx captionDy dx dy time animationBehaviorFactory
    pure this

init_11 :: ImageCaptionIndexedAnimationFactory -> Image.Image -> Image.Image -> Sound.Sound -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_11 this captionImage spriteMovieImage soundInterface frameWidth frameHeight captionDx captionDy dx dy time animationBehaviorFactory = do
        initFields_ this
        when (animationBehaviorFactory == (jio (AnimationBehaviorFactory.getInstance))) $ do
            Control.Monad.void (ForcedLogUtil.log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)
        jset (this).captionImage (captionImage)
        jset (this).spriteMovieImage (spriteMovieImage)
        jset (this).frameWidth (frameWidth)
        jset (this).frameHeight (frameHeight)
        jset (this).captionDx (captionDx)
        jset (this).captionDy (captionDy)
        jset (this).dx (dx)
        jset (this).dy (dy)
        jset (this).time (time)
        jset (this).soundInterface (soundInterface)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ImageCaptionIndexedAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: ImageCaptionIndexedAnimationFactory)) a1

getInstance_impl :: ImageCaptionIndexedAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        scaledImage <- (AnimationFactoryImageScaleUtil.createImage ((jget (this).animationFactoryImageScaleUtil)) (jget (this).captionImage) (jio (Image.getWidth ((jget (this).captionImage)))) (jio (Image.getHeight ((jget (this).captionImage)))) (jget ((jget (this).scaleProperties)).scaleWidth) (jget ((jget (this).scaleProperties)).scaleHeight))
        animationInterface <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (ImageAnimation.new_2 scaledImage (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))
        sprite <- (AnimationFactorySpriteScaleUtil.createImage ((jget (this).animationFactorySpriteScaleUtil)) (jget (this).spriteMovieImage) (jget (this).frameWidth) (jget (this).frameHeight) (jget ((jget (this).scaleProperties)).scaleWidth) (jget ((jget (this).scaleProperties)).scaleHeight))
        movieIndexedAnimationInterface <- (fmap (\value_ -> javaCast value_ :: IndexedAnimation.IndexedAnimation) (SpriteIndexedAnimation.new_4 sprite (jget (this).spriteMovieImage) (jget ((jio (BasicColorUtil.getInstance))).zERO_ARRAY) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))
        player <- (Sound.getPlayerP ((jget (this).soundInterface)))
        when (player == javaNull) $ do
            javaThrow ((JavaException "Exception" "Sound Was not Initialized"))
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (CaptionIndexedAnimation.new_9 animationInterface movieIndexedAnimationInterface player (jget (this).captionDx) (jget (this).captionDy) (jget (this).dx) (jget (this).dy) (jget (this).time) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: ImageCaptionIndexedAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: ImageCaptionIndexedAnimationFactory)) a1

setInitialScale_impl :: ImageCaptionIndexedAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        jset (this).scaleProperties (scaleProperties)
        pure ()


