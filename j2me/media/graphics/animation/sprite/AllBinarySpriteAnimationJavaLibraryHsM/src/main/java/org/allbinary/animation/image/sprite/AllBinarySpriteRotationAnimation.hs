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
module AllBinarySpriteRotationAnimation (module AllBinarySpriteRotationAnimation, module HackRotationSpriteIndexedAnimation) where

import HackRotationSpriteIndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, setFrameByDirection, setFrameByDirection_super, setFrameByDirection_impl, setFrameToAngle, setFrameToAngle_super, setFrameToAngle_impl, setFrame, setFrame_super, setFrame_impl, adjustFrameToAngle, adjustFrameToAngle_super, adjustFrameToAngle_impl, adjustFrame, adjustFrame_super, adjustFrame_impl)
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
import qualified FrameUtil -- same package or java.lang
import qualified DirectionUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified Direction -- org.allbinary.direction.Direction
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified HackRotationSpriteIndexedAnimation

data AllBinarySpriteRotationAnimation = AllBinarySpriteRotationAnimation
    { header_ :: JavaHeader
    , base :: HackRotationSpriteIndexedAnimation.HackRotationSpriteIndexedAnimation
    }

instance JavaNull AllBinarySpriteRotationAnimation where
    javaNull = javaNullRecord "AllBinarySpriteRotationAnimation"

instance JavaEquals AllBinarySpriteRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinarySpriteRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AllBinarySpriteRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinarySpriteRotationAnimation
newRecord_ = do
    base <- HackRotationSpriteIndexedAnimation.newRecord_
    let header_ = base.header_
    let this = AllBinarySpriteRotationAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "setFrameByDirection" (\() -> setFrameByDirection_impl this)
    jregisterMethod header_ "setFrameToAngle" (\() -> setFrameToAngle_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "adjustFrameToAngle" (\() -> adjustFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrame" (\() -> adjustFrame_impl this)
    pure this

initFields_ :: AllBinarySpriteRotationAnimation -> IO ()
initFields_ this = do
    pure ()

new_3 :: Sprite.Sprite -> Image.Image -> AnimationBehavior.AnimationBehavior -> IO AllBinarySpriteRotationAnimation
new_3 sprite image animationBehavior = do
    this <- newRecord_
    init_3 this sprite image animationBehavior
    pure this

init_3 :: AllBinarySpriteRotationAnimation -> Sprite.Sprite -> Image.Image -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this sprite image animationBehavior = do
        HackRotationSpriteIndexedAnimation.init_4 this.base (sprite) (image) (jio (AngleInfo.getInstance (Prelude.fromInteger (jnumericInteger (((jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE) / (jio (Sprite.getRawFrameCount sprite)))))))) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) (jio (Sprite.getFrame ((jget (this).base.sprite)))))
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))

nextRotation_impl :: AllBinarySpriteRotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (Sprite.nextFrame ((jget (this).base.sprite)))
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) (jio (Sprite.getFrame ((jget (this).base.sprite)))))
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))

previousRotation_impl :: AllBinarySpriteRotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (Sprite.prevFrame ((jget (this).base.sprite)))
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) (jio (Sprite.getFrame ((jget (this).base.sprite)))))
        pure ()


setFrameByDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection object_ a1 = jmethod object_ "setFrameByDirection" (\() -> (setFrameByDirection_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) () a1

setFrameByDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection_super object_ a1 = (setFrameByDirection_impl (javaCast object_ :: AllBinarySpriteRotationAnimation)) a1

setFrameByDirection_impl :: AllBinarySpriteRotationAnimation -> Direction.Direction -> IO (())
setFrameByDirection_impl this direction = do
        angle <- (DirectionUtil.getFrameAngle ((jget (this).base.base.directionUtil)) direction)
        Control.Monad.void (AllBinarySpriteRotationAnimation.adjustFrameToAngle this angle)
        pure ()


setFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle object_ a1 = jmethod object_ "setFrameToAngle" (\() -> (setFrameToAngle_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) () a1

setFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle_super object_ a1 = (setFrameToAngle_impl (javaCast object_ :: AllBinarySpriteRotationAnimation)) a1

setFrameToAngle_impl :: AllBinarySpriteRotationAnimation -> Angle.Angle -> IO (())
setFrameToAngle_impl this angle = do
        Control.Monad.void (AllBinarySpriteRotationAnimation.adjustFrameToAngle this angle)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: AllBinarySpriteRotationAnimation)) a1

setFrame_impl :: AllBinarySpriteRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (Sprite.setFrame ((jget (this).base.sprite)) index)
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) (jio (HackRotationSpriteIndexedAnimation.getFrame this)))
        pure ()


adjustFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle object_ a1 = jmethod object_ "adjustFrameToAngle" (\() -> (adjustFrameToAngle_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) () a1

adjustFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle_super object_ a1 = (adjustFrameToAngle_impl (javaCast object_ :: AllBinarySpriteRotationAnimation)) a1

adjustFrameToAngle_impl :: AllBinarySpriteRotationAnimation -> Angle.Angle -> IO (())
adjustFrameToAngle_impl this angle = do
        Control.Monad.void (AllBinarySpriteRotationAnimation.adjustFrame this (jio (Angle.getValue angle)))
        pure ()


adjustFrame :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame object_ a1 = jmethod object_ "adjustFrame" (\() -> (adjustFrame_impl (javaCast object_ :: AllBinarySpriteRotationAnimation))) () a1

adjustFrame_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame_super object_ a1 = (adjustFrame_impl (javaCast object_ :: AllBinarySpriteRotationAnimation)) a1

adjustFrame_impl :: AllBinarySpriteRotationAnimation -> Int16 -> IO (())
adjustFrame_impl this angle = do
        Control.Monad.void (AllBinarySpriteRotationAnimation.setFrame this (jio (FrameUtil.getFrameForAngle ((jget (this).base.base.frameUtil)) angle (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).base.base.angleInfo)))))))))))
        pure ()


