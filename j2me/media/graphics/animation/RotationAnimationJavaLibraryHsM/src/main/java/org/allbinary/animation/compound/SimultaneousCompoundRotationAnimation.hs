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
-- package org.allbinary.animation.compound
module SimultaneousCompoundRotationAnimation (module SimultaneousCompoundRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, nextFrame, nextFrame_super, nextFrame_impl, previousRotation, previousRotation_super, previousRotation_impl, nextRotation, nextRotation_super, nextRotation_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, setFrameByDirection, setFrameByDirection_super, setFrameByDirection_impl, setFrameToAngle, setFrameToAngle_super, setFrameToAngle_impl, adjustFrameToAngle, adjustFrameToAngle_super, adjustFrameToAngle_impl, adjustFrame, adjustFrame_super, adjustFrame_impl, getAngleInfoP, getAngleInfoP_super, getAngleInfoP_impl, getAnimationInterfaceArray, getAnimationInterfaceArray_super, getAnimationInterfaceArray_impl, setAnimationInterfaceArray, setAnimationInterfaceArray_super, setAnimationInterfaceArray_impl, set, set_super, set_impl, animationInterfaceArray)
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
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified Direction -- org.allbinary.direction.Direction
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data SimultaneousCompoundRotationAnimation = SimultaneousCompoundRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , animationInterfaceArray :: IORef (JavaArray (RotationAnimation.RotationAnimation))
    }

instance JavaNull SimultaneousCompoundRotationAnimation where
    javaNull = javaNullRecord "SimultaneousCompoundRotationAnimation"

instance JavaEquals SimultaneousCompoundRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimultaneousCompoundRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass SimultaneousCompoundRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SimultaneousCompoundRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    animationInterfaceArray <- newIORef javaNull
    let this = SimultaneousCompoundRotationAnimation header_ base animationInterfaceArray
    jregisterLevel header_ this
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    jregisterMethod header_ "setFrameByDirection" (\() -> setFrameByDirection_impl this)
    jregisterMethod header_ "setFrameToAngle" (\() -> setFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrameToAngle" (\() -> adjustFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrame" (\() -> adjustFrame_impl this)
    jregisterMethod header_ "getAngleInfoP" (\() -> getAngleInfoP_impl this)
    jregisterMethod header_ "getAnimationInterfaceArray" (\() -> getAnimationInterfaceArray_impl this)
    jregisterMethod header_ "setAnimationInterfaceArray" (\() -> setAnimationInterfaceArray_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: SimultaneousCompoundRotationAnimation -> IO ()
initFields_ this = do
    jset this.animationInterfaceArray (javaNull)
    pure ()

new_2 :: JavaArray (RotationAnimation.RotationAnimation) -> AnimationBehavior.AnimationBehavior -> IO SimultaneousCompoundRotationAnimation
new_2 animationInterfaceArray animationBehavior = do
    this <- newRecord_
    init_2 this animationInterfaceArray animationBehavior
    pure this

init_2 :: SimultaneousCompoundRotationAnimation -> JavaArray (RotationAnimation.RotationAnimation) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this animationInterfaceArray animationBehavior = do
        RotationAnimation.init_3 this.base (jio (AngleInfo.getInstance (jget ((jio (AngleFactory.getInstance))).qUARTER_TOTAL_ANGLE))) (jio (CircularIndexUtil.createInstance 4)) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

setFrame_impl :: SimultaneousCompoundRotationAnimation -> Int -> IO (())
setFrame_impl this frameIndex = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (setFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) frameIndex)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

getFrame_impl :: SimultaneousCompoundRotationAnimation -> IO (Int)
getFrame_impl this = do
        (getFrame ((jindex ((jget (this).animationInterfaceArray)) (0))))


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

getAnimationSize_impl :: SimultaneousCompoundRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        (getAnimationSize ((jindex ((jget (this).animationInterfaceArray)) (0))))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

getSize_impl :: SimultaneousCompoundRotationAnimation -> IO (Int)
getSize_impl this = do
        (getSize ((jindex ((jget (this).animationInterfaceArray)) (0))))


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

previousFrame_impl :: SimultaneousCompoundRotationAnimation -> IO (())
previousFrame_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (previousFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

nextFrame_impl :: SimultaneousCompoundRotationAnimation -> IO (())
nextFrame_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (nextFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

previousRotation_impl :: SimultaneousCompoundRotationAnimation -> IO (())
previousRotation_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (previousRotation ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

nextRotation_impl :: SimultaneousCompoundRotationAnimation -> IO (())
nextRotation_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (nextRotation ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

setSequence_impl :: SimultaneousCompoundRotationAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

getSequence_impl :: SimultaneousCompoundRotationAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1 a2 a3

paintXY_impl :: SimultaneousCompoundRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (paintXY ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: SimultaneousCompoundRotationAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (paintThreedXYZ ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) graphics x y z)
        pure ()


setFrameByDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection object_ a1 = jmethod object_ "setFrameByDirection" (\() -> (setFrameByDirection_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

setFrameByDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection_super object_ a1 = (setFrameByDirection_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

setFrameByDirection_impl :: SimultaneousCompoundRotationAnimation -> Direction.Direction -> IO (())
setFrameByDirection_impl this direction = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (setFrameByDirection ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) direction)
        pure ()


setFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle object_ a1 = jmethod object_ "setFrameToAngle" (\() -> (setFrameToAngle_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

setFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle_super object_ a1 = (setFrameToAngle_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

setFrameToAngle_impl :: SimultaneousCompoundRotationAnimation -> Angle.Angle -> IO (())
setFrameToAngle_impl this angle = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (setFrameToAngle ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) angle)
        pure ()


adjustFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle object_ a1 = jmethod object_ "adjustFrameToAngle" (\() -> (adjustFrameToAngle_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

adjustFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle_super object_ a1 = (adjustFrameToAngle_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

adjustFrameToAngle_impl :: SimultaneousCompoundRotationAnimation -> Angle.Angle -> IO (())
adjustFrameToAngle_impl this newAngle = do
        Control.Monad.void (SimultaneousCompoundRotationAnimation.adjustFrame this (jio (Angle.getValue newAngle)))
        pure ()


adjustFrame :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame object_ a1 = jmethod object_ "adjustFrame" (\() -> (adjustFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

adjustFrame_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame_super object_ a1 = (adjustFrame_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

adjustFrame_impl :: SimultaneousCompoundRotationAnimation -> Int16 -> IO (())
adjustFrame_impl this angle = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (adjustFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) angle)
        pure ()


getAngleInfoP :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP object_ = jmethod object_ "getAngleInfoP" (\() -> (getAngleInfoP_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

getAngleInfoP_super :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP_super object_ = (getAngleInfoP_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

getAngleInfoP_impl :: SimultaneousCompoundRotationAnimation -> IO (AngleInfo.AngleInfo)
getAngleInfoP_impl this = do
        (getAngleInfoP ((jindex ((jget (this).animationInterfaceArray)) (0))))


getAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (RotationAnimation.RotationAnimation))
getAnimationInterfaceArray object_ = jmethod object_ "getAnimationInterfaceArray" (\() -> (getAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) ()

getAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (RotationAnimation.RotationAnimation))
getAnimationInterfaceArray_super object_ = (getAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))

getAnimationInterfaceArray_impl :: SimultaneousCompoundRotationAnimation -> IO (JavaArray (RotationAnimation.RotationAnimation))
getAnimationInterfaceArray_impl this = do
        pure ((jget (this).animationInterfaceArray))


setAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (RotationAnimation.RotationAnimation) -> IO (())
setAnimationInterfaceArray object_ a1 = jmethod object_ "setAnimationInterfaceArray" (\() -> (setAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

setAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (RotationAnimation.RotationAnimation) -> IO (())
setAnimationInterfaceArray_super object_ a1 = (setAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

setAnimationInterfaceArray_impl :: SimultaneousCompoundRotationAnimation -> JavaArray (RotationAnimation.RotationAnimation) -> IO (())
setAnimationInterfaceArray_impl this animationInterfaceArray = do
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: SimultaneousCompoundRotationAnimation)) a1

set_impl :: SimultaneousCompoundRotationAnimation -> GL.GL -> IO (())
set_impl this gl = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (set ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) gl)
        pure ()


