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
module CompoundRotationAnimation (module CompoundRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, nextFrame, nextFrame_super, nextFrame_impl, previousRotation, previousRotation_super, previousRotation_impl, nextRotation, nextRotation_super, nextRotation_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, getCurrentAnimation, getCurrentAnimation_super, getCurrentAnimation_impl, nextAnimation, nextAnimation_super, nextAnimation_impl, previousAnimation, previousAnimation_super, previousAnimation_impl, setAnimation, setAnimation_super, setAnimation_impl, setFrameByDirection, setFrameByDirection_super, setFrameByDirection_impl, setFrameToAngle, setFrameToAngle_super, setFrameToAngle_impl, adjustFrameToAngle, adjustFrameToAngle_super, adjustFrameToAngle_impl, adjustFrame, adjustFrame_super, adjustFrame_impl, getAngleInfoP, getAngleInfoP_super, getAngleInfoP_impl, getAnimationInterfaceArray, getAnimationInterfaceArray_super, getAnimationInterfaceArray_impl, setAnimationInterfaceArray, setAnimationInterfaceArray_super, setAnimationInterfaceArray_impl, set, set_super, set_impl, animationInterfaceArray)
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
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified Direction -- org.allbinary.direction.Direction
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified CompoundAnimationInterface

-- implements CompoundAnimationInterface
data CompoundRotationAnimation = CompoundRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , animationInterfaceArray :: IORef (JavaArray (RotationAnimation.RotationAnimation))
    }

instance JavaNull CompoundRotationAnimation where
    javaNull = javaNullRecord "CompoundRotationAnimation"

instance JavaEquals CompoundRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompoundRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CompoundRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompoundRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    animationInterfaceArray <- newIORef javaNull
    let this = CompoundRotationAnimation header_ base animationInterfaceArray
    jregisterLevel header_ this
    CompoundAnimationInterface.registerInterface_ header_
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
    jregisterMethod header_ "getCurrentAnimation" (\() -> getCurrentAnimation_impl this)
    jregisterMethod header_ "nextAnimation" (\() -> nextAnimation_impl this)
    jregisterMethod header_ "previousAnimation" (\() -> previousAnimation_impl this)
    jregisterMethod header_ "setAnimation" (\() -> setAnimation_impl this)
    jregisterMethod header_ "setFrameByDirection" (\() -> setFrameByDirection_impl this)
    jregisterMethod header_ "setFrameToAngle" (\() -> setFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrameToAngle" (\() -> adjustFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrame" (\() -> adjustFrame_impl this)
    jregisterMethod header_ "getAngleInfoP" (\() -> getAngleInfoP_impl this)
    jregisterMethod header_ "getAnimationInterfaceArray" (\() -> getAnimationInterfaceArray_impl this)
    jregisterMethod header_ "setAnimationInterfaceArray" (\() -> setAnimationInterfaceArray_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: CompoundRotationAnimation -> IO ()
initFields_ this = do
    jset this.animationInterfaceArray (javaNull)
    pure ()

new_2 :: JavaArray (RotationAnimation.RotationAnimation) -> AnimationBehavior.AnimationBehavior -> IO CompoundRotationAnimation
new_2 animationInterfaceArray animationBehavior = do
    this <- newRecord_
    init_2 this animationInterfaceArray animationBehavior
    pure this

init_2 :: CompoundRotationAnimation -> JavaArray (RotationAnimation.RotationAnimation) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this animationInterfaceArray animationBehavior = do
        RotationAnimation.init_3 this.base (jio (AngleInfo.getInstance (jget ((jio (AngleFactory.getInstance))).qUARTER_TOTAL_ANGLE))) (jio (CircularIndexUtil.createInstance 4)) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterfaceArray (animationInterfaceArray)
        assignedValue <- (CircularIndexUtil.createInstance (jlength (jget (this).animationInterfaceArray)))
        jset (this).base.circularIndexUtil (assignedValue)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: CompoundRotationAnimation)) a1

setFrame_impl :: CompoundRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (setFrame ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))) index)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: CompoundRotationAnimation))

getFrame_impl :: CompoundRotationAnimation -> IO (Int)
getFrame_impl this = do
        (getFrame ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: CompoundRotationAnimation))

getAnimationSize_impl :: CompoundRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        (getAnimationSize ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: CompoundRotationAnimation))

getSize_impl :: CompoundRotationAnimation -> IO (Int)
getSize_impl this = do
        (getSize ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: CompoundRotationAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: CompoundRotationAnimation))

previousFrame_impl :: CompoundRotationAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (previousFrame ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: CompoundRotationAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: CompoundRotationAnimation))

nextFrame_impl :: CompoundRotationAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (nextFrame ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: CompoundRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: CompoundRotationAnimation))

previousRotation_impl :: CompoundRotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (previousRotation ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: CompoundRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: CompoundRotationAnimation))

nextRotation_impl :: CompoundRotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (nextRotation ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))
        pure ()


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: CompoundRotationAnimation)) a1

setSequence_impl :: CompoundRotationAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: CompoundRotationAnimation))

getSequence_impl :: CompoundRotationAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CompoundRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CompoundRotationAnimation)) a1 a2 a3

paintXY_impl :: CompoundRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (paintXY ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: CompoundRotationAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: CompoundRotationAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: CompoundRotationAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        Control.Monad.void (paintThreedXYZ ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))) graphics x y z)
        pure ()


getCurrentAnimation :: (JavaObjectClass this_) => this_ -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation object_ = jmethod object_ "getCurrentAnimation" (\() -> (getCurrentAnimation_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getCurrentAnimation_super :: (JavaObjectClass this_) => this_ -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation_super object_ = (getCurrentAnimation_impl (javaCast object_ :: CompoundRotationAnimation))

getCurrentAnimation_impl :: CompoundRotationAnimation -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation_impl this = do
        pure ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))))))


nextAnimation :: (JavaObjectClass this_) => this_ -> IO (())
nextAnimation object_ = jmethod object_ "nextAnimation" (\() -> (nextAnimation_impl (javaCast object_ :: CompoundRotationAnimation))) ()

nextAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextAnimation_super object_ = (nextAnimation_impl (javaCast object_ :: CompoundRotationAnimation))

nextAnimation_impl :: CompoundRotationAnimation -> IO (())
nextAnimation_impl this = do
        frame <- (CompoundRotationAnimation.getFrame this)
        Control.Monad.void (CircularIndexUtil.next ((jget (this).base.circularIndexUtil)))
        Control.Monad.void (CompoundRotationAnimation.setFrame this frame)
        pure ()


previousAnimation :: (JavaObjectClass this_) => this_ -> IO (())
previousAnimation object_ = jmethod object_ "previousAnimation" (\() -> (previousAnimation_impl (javaCast object_ :: CompoundRotationAnimation))) ()

previousAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousAnimation_super object_ = (previousAnimation_impl (javaCast object_ :: CompoundRotationAnimation))

previousAnimation_impl :: CompoundRotationAnimation -> IO (())
previousAnimation_impl this = do
        frame <- (CompoundRotationAnimation.getFrame this)
        Control.Monad.void (CircularIndexUtil.previous ((jget (this).base.circularIndexUtil)))
        Control.Monad.void (CompoundRotationAnimation.setFrame this frame)
        pure ()


setAnimation :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnimation object_ a1 = jmethod object_ "setAnimation" (\() -> (setAnimation_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

setAnimation_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnimation_super object_ a1 = (setAnimation_impl (javaCast object_ :: CompoundRotationAnimation)) a1

setAnimation_impl :: CompoundRotationAnimation -> Int -> IO (())
setAnimation_impl this index = do
        frame <- (CompoundRotationAnimation.getFrame this)
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).base.circularIndexUtil)) index)
        Control.Monad.void (CompoundRotationAnimation.setFrame this frame)
        pure ()


setFrameByDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection object_ a1 = jmethod object_ "setFrameByDirection" (\() -> (setFrameByDirection_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

setFrameByDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection_super object_ a1 = (setFrameByDirection_impl (javaCast object_ :: CompoundRotationAnimation)) a1

setFrameByDirection_impl :: CompoundRotationAnimation -> Direction.Direction -> IO (())
setFrameByDirection_impl this direction = do
        Control.Monad.void (setFrameByDirection ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))) direction)
        pure ()


setFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle object_ a1 = jmethod object_ "setFrameToAngle" (\() -> (setFrameToAngle_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

setFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle_super object_ a1 = (setFrameToAngle_impl (javaCast object_ :: CompoundRotationAnimation)) a1

setFrameToAngle_impl :: CompoundRotationAnimation -> Angle.Angle -> IO (())
setFrameToAngle_impl this angle = do
        Control.Monad.void (setFrameToAngle ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))) angle)
        pure ()


adjustFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle object_ a1 = jmethod object_ "adjustFrameToAngle" (\() -> (adjustFrameToAngle_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

adjustFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle_super object_ a1 = (adjustFrameToAngle_impl (javaCast object_ :: CompoundRotationAnimation)) a1

adjustFrameToAngle_impl :: CompoundRotationAnimation -> Angle.Angle -> IO (())
adjustFrameToAngle_impl this newAngle = do
        Control.Monad.void (CompoundRotationAnimation.adjustFrame this (jio (Angle.getValue newAngle)))
        pure ()


adjustFrame :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame object_ a1 = jmethod object_ "adjustFrame" (\() -> (adjustFrame_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

adjustFrame_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame_super object_ a1 = (adjustFrame_impl (javaCast object_ :: CompoundRotationAnimation)) a1

adjustFrame_impl :: CompoundRotationAnimation -> Int16 -> IO (())
adjustFrame_impl this angle = do
        Control.Monad.void (adjustFrame ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))) angle)
        pure ()


getAngleInfoP :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP object_ = jmethod object_ "getAngleInfoP" (\() -> (getAngleInfoP_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getAngleInfoP_super :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP_super object_ = (getAngleInfoP_impl (javaCast object_ :: CompoundRotationAnimation))

getAngleInfoP_impl :: CompoundRotationAnimation -> IO (AngleInfo.AngleInfo)
getAngleInfoP_impl this = do
        (getAngleInfoP ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))


getAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (RotationAnimation.RotationAnimation))
getAnimationInterfaceArray object_ = jmethod object_ "getAnimationInterfaceArray" (\() -> (getAnimationInterfaceArray_impl (javaCast object_ :: CompoundRotationAnimation))) ()

getAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (RotationAnimation.RotationAnimation))
getAnimationInterfaceArray_super object_ = (getAnimationInterfaceArray_impl (javaCast object_ :: CompoundRotationAnimation))

getAnimationInterfaceArray_impl :: CompoundRotationAnimation -> IO (JavaArray (RotationAnimation.RotationAnimation))
getAnimationInterfaceArray_impl this = do
        pure ((jget (this).animationInterfaceArray))


setAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (RotationAnimation.RotationAnimation) -> IO (())
setAnimationInterfaceArray object_ a1 = jmethod object_ "setAnimationInterfaceArray" (\() -> (setAnimationInterfaceArray_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

setAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (RotationAnimation.RotationAnimation) -> IO (())
setAnimationInterfaceArray_super object_ a1 = (setAnimationInterfaceArray_impl (javaCast object_ :: CompoundRotationAnimation)) a1

setAnimationInterfaceArray_impl :: CompoundRotationAnimation -> JavaArray (RotationAnimation.RotationAnimation) -> IO (())
setAnimationInterfaceArray_impl this animationInterfaceArray = do
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: CompoundRotationAnimation))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: CompoundRotationAnimation)) a1

set_impl :: CompoundRotationAnimation -> GL.GL -> IO (())
set_impl this gl = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (set ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) gl)
        pure ()


