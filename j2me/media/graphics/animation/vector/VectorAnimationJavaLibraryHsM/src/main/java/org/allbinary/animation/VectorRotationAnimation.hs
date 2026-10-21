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
-- package org.allbinary.animation
module VectorRotationAnimation (module VectorRotationAnimation, module VectorBaseRotationAnimation) where

import VectorBaseRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFrameByDirection, setFrameByDirection_super, setFrameByDirection_impl, setFrameToAngle, setFrameToAngle_super, setFrameToAngle_impl, setFrame, setFrame_super, setFrame_impl, adjustFrame, adjustFrame_super, adjustFrame_impl, adjustFrameToAngle, adjustFrameToAngle_super, adjustFrameToAngle_impl)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified FrameUtil -- same package or java.lang
import qualified DirectionUtil -- same package or java.lang
import qualified Direction -- org.allbinary.direction.Direction
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified VectorBaseRotationAnimation

data VectorRotationAnimation = VectorRotationAnimation
    { header_ :: JavaHeader
    , base :: VectorBaseRotationAnimation.VectorBaseRotationAnimation
    }

instance JavaNull VectorRotationAnimation where
    javaNull = javaNullRecord "VectorRotationAnimation"

instance JavaEquals VectorRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass VectorRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VectorRotationAnimation
newRecord_ = do
    base <- VectorBaseRotationAnimation.newRecord_
    let header_ = base.header_
    let this = VectorRotationAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "setFrameByDirection" (\() -> setFrameByDirection_impl this)
    jregisterMethod header_ "setFrameToAngle" (\() -> setFrameToAngle_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "adjustFrame" (\() -> adjustFrame_impl this)
    jregisterMethod header_ "adjustFrameToAngle" (\() -> adjustFrameToAngle_impl this)
    pure this

initFields_ :: VectorRotationAnimation -> IO ()
initFields_ this = do
    pure ()

new_3 :: JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO VectorRotationAnimation
new_3 currentPoints basicColor animationBehavior = do
    this <- newRecord_
    init_3 this currentPoints basicColor animationBehavior
    pure this

init_3 :: VectorRotationAnimation -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this currentPoints basicColor animationBehavior = do
        VectorBaseRotationAnimation.init_4 this.base (jio (AngleInfo.getInstance (Prelude.fromIntegral (((Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE)) `quot` (jlength currentPoints)))))) (currentPoints) (basicColor) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) (jio (VectorBaseRotationAnimation.getFrame this)))
        pure ()


setFrameByDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection object_ a1 = jmethod object_ "setFrameByDirection" (\() -> (setFrameByDirection_impl (javaCast object_ :: VectorRotationAnimation))) () a1

setFrameByDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection_super object_ a1 = (setFrameByDirection_impl (javaCast object_ :: VectorRotationAnimation)) a1

setFrameByDirection_impl :: VectorRotationAnimation -> Direction.Direction -> IO (())
setFrameByDirection_impl this direction = do
        angle <- (DirectionUtil.getFrameAngle ((jget (this).base.base.directionUtil)) direction)
        Control.Monad.void (VectorRotationAnimation.adjustFrameToAngle this angle)
        pure ()


setFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle object_ a1 = jmethod object_ "setFrameToAngle" (\() -> (setFrameToAngle_impl (javaCast object_ :: VectorRotationAnimation))) () a1

setFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle_super object_ a1 = (setFrameToAngle_impl (javaCast object_ :: VectorRotationAnimation)) a1

setFrameToAngle_impl :: VectorRotationAnimation -> Angle.Angle -> IO (())
setFrameToAngle_impl this angle = do
        Control.Monad.void (VectorRotationAnimation.adjustFrameToAngle this angle)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: VectorRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: VectorRotationAnimation)) a1

setFrame_impl :: VectorRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (VectorBaseRotationAnimation.setFrame_super this.base index)
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) (jio (VectorBaseRotationAnimation.getFrame this)))
        pure ()


adjustFrame :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame object_ a1 = jmethod object_ "adjustFrame" (\() -> (adjustFrame_impl (javaCast object_ :: VectorRotationAnimation))) () a1

adjustFrame_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame_super object_ a1 = (adjustFrame_impl (javaCast object_ :: VectorRotationAnimation)) a1

adjustFrame_impl :: VectorRotationAnimation -> Int16 -> IO (())
adjustFrame_impl this newAngle = do
        Control.Monad.void (VectorRotationAnimation.setFrame this (jio (FrameUtil.getFrameForAngle ((jget (this).base.base.frameUtil)) newAngle (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).base.base.angleInfo)))))))))))
        pure ()


adjustFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle object_ a1 = jmethod object_ "adjustFrameToAngle" (\() -> (adjustFrameToAngle_impl (javaCast object_ :: VectorRotationAnimation))) () a1

adjustFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle_super object_ a1 = (adjustFrameToAngle_impl (javaCast object_ :: VectorRotationAnimation)) a1

adjustFrameToAngle_impl :: VectorRotationAnimation -> Angle.Angle -> IO (())
adjustFrameToAngle_impl this newAngle = do
        Control.Monad.void (VectorRotationAnimation.adjustFrame this (jio (Angle.getValue newAngle)))
        pure ()


