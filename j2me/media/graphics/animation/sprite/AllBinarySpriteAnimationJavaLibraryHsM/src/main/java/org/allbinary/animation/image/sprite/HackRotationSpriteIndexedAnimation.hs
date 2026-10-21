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
module HackRotationSpriteIndexedAnimation (module HackRotationSpriteIndexedAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, paintFrame, paintFrame_super, paintFrame_impl, paintXY, paintXY_super, paintXY_impl, paint, paint_super, paint_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, getSize, getSize_super, getSize_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, sprite, image)
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
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data HackRotationSpriteIndexedAnimation = HackRotationSpriteIndexedAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , sprite :: IORef (Sprite.Sprite)
    , image :: IORef (Image.Image)
    }

instance JavaNull HackRotationSpriteIndexedAnimation where
    javaNull = javaNullRecord "HackRotationSpriteIndexedAnimation"

instance JavaEquals HackRotationSpriteIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HackRotationSpriteIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass HackRotationSpriteIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HackRotationSpriteIndexedAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    sprite <- newIORef javaNull
    image <- newIORef javaNull
    let this = HackRotationSpriteIndexedAnimation header_ base sprite image
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "paintFrame" (\() -> paintFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    pure this

initFields_ :: HackRotationSpriteIndexedAnimation -> IO ()
initFields_ this = do
    jset this.sprite (javaNull)
    jset this.image (javaNull)
    pure ()

new_4 :: Sprite.Sprite -> Image.Image -> AngleInfo.AngleInfo -> AnimationBehavior.AnimationBehavior -> IO HackRotationSpriteIndexedAnimation
new_4 sprite image angleInfo animationBehavior = do
    this <- newRecord_
    init_4 this sprite image angleInfo animationBehavior
    pure this

init_4 :: HackRotationSpriteIndexedAnimation -> Sprite.Sprite -> Image.Image -> AngleInfo.AngleInfo -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this sprite image angleInfo animationBehavior = do
        RotationAnimation.init_3 this.base (angleInfo) (jio (CircularIndexUtil.createInstance (360 `quot` (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo angleInfo))))))))) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).sprite (sprite)
        jset (this).image (image)
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))

getAnimationSize_impl :: HackRotationSpriteIndexedAnimation -> IO (Int)
getAnimationSize_impl this = do
        (HackRotationSpriteIndexedAnimation.getSize this)


paintFrame :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame object_ a1 a2 a3 a4 = jmethod object_ "paintFrame" (\() -> (paintFrame_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) () a1 a2 a3 a4

paintFrame_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame_super object_ a1 a2 a3 a4 = (paintFrame_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation)) a1 a2 a3 a4

paintFrame_impl :: HackRotationSpriteIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame_impl this g frame x y = do
        Control.Monad.void (HackRotationSpriteIndexedAnimation.setFrame this frame)
        Control.Monad.void (HackRotationSpriteIndexedAnimation.paintXY this g x y)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation)) a1 a2 a3

paintXY_impl :: HackRotationSpriteIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this g x y = do
        Control.Monad.void (Sprite.setPosition ((jget (this).sprite)) x y)
        Control.Monad.void (HackRotationSpriteIndexedAnimation.paint this g)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation)) a1

paint_impl :: HackRotationSpriteIndexedAnimation -> Graphics.Graphics -> IO (())
paint_impl this g = do
        Control.Monad.void (Sprite.paint ((jget (this).sprite)) g)
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))

nextRotation_impl :: HackRotationSpriteIndexedAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (Sprite.nextFrame ((jget (this).sprite)))
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))

previousRotation_impl :: HackRotationSpriteIndexedAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (Sprite.prevFrame ((jget (this).sprite)))
        pure ()


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))

getSize_impl :: HackRotationSpriteIndexedAnimation -> IO (Int)
getSize_impl this = do
        (Sprite.getRawFrameCount ((jget (this).sprite)))


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation)) a1

setFrame_impl :: HackRotationSpriteIndexedAnimation -> Int -> IO (())
setFrame_impl this frame = do
        Control.Monad.void (Sprite.setFrame ((jget (this).sprite)) frame)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))

getFrame_impl :: HackRotationSpriteIndexedAnimation -> IO (Int)
getFrame_impl this = do
        (Sprite.getFrame ((jget (this).sprite)))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation)) a1

setSequence_impl :: HackRotationSpriteIndexedAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: HackRotationSpriteIndexedAnimation))

getSequence_impl :: HackRotationSpriteIndexedAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


