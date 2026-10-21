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
module VectorBaseRotationAnimation (module VectorBaseRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getFrame, getFrame_super, getFrame_impl, setFrame, setFrame_super, setFrame_impl, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, getSize, getSize_super, getSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, getPoints, getPoints_super, getPoints_impl, setPoints, setPoints_super, setPoints_impl, currentPoints)
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
import qualified LogUtil -- same package or java.lang
import qualified BasicColorSetUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified RotationAnimation
import qualified VectorAnimationInterface

-- implements VectorAnimationInterface
data VectorBaseRotationAnimation = VectorBaseRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , currentPoints :: IORef (JavaArray (JavaArray (JavaArray (Int))))
    }

instance JavaNull VectorBaseRotationAnimation where
    javaNull = javaNullRecord "VectorBaseRotationAnimation"

instance JavaEquals VectorBaseRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorBaseRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass VectorBaseRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VectorBaseRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    currentPoints <- newIORef javaNull
    let this = VectorBaseRotationAnimation header_ base currentPoints
    jregisterLevel header_ this
    VectorAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "getPoints" (\() -> getPoints_impl this)
    jregisterMethod header_ "setPoints" (\() -> setPoints_impl this)
    pure this

initFields_ :: VectorBaseRotationAnimation -> IO ()
initFields_ this = do
    jset this.currentPoints ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY_ARRAY))
    pure ()

new_4 :: AngleInfo.AngleInfo -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO VectorBaseRotationAnimation
new_4 angleInfo currentPoints basicColor animationBehavior = do
    this <- newRecord_
    init_4 this angleInfo currentPoints basicColor animationBehavior
    pure this

init_4 :: VectorBaseRotationAnimation -> AngleInfo.AngleInfo -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this angleInfo currentPoints basicColor animationBehavior = do
        RotationAnimation.init_3 this.base (angleInfo) (jio (CircularIndexUtil.createInstance (360 `quot` (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo angleInfo))))))))) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (VectorBaseRotationAnimation.setPoints this currentPoints)
        Control.Monad.void (RotationAnimation.setBasicColorP this basicColor)
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: VectorBaseRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: VectorBaseRotationAnimation))

getAnimationSize_impl :: VectorBaseRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        (VectorBaseRotationAnimation.getSize this)


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))

getFrame_impl :: VectorBaseRotationAnimation -> IO (Int)
getFrame_impl this = do
        (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil)))


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: VectorBaseRotationAnimation)) a1

setFrame_impl :: VectorBaseRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).base.circularIndexUtil)) index)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))

nextFrame_impl :: VectorBaseRotationAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.next ((jget (this).base.circularIndexUtil)))
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: VectorBaseRotationAnimation))

previousFrame_impl :: VectorBaseRotationAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.previous ((jget (this).base.circularIndexUtil)))
        pure ()


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: VectorBaseRotationAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: VectorBaseRotationAnimation))

getSize_impl :: VectorBaseRotationAnimation -> IO (Int)
getSize_impl this = do
        pure ((jlength (jget (this).currentPoints)))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: VectorBaseRotationAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: VectorBaseRotationAnimation)) a1

setSequence_impl :: VectorBaseRotationAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: VectorBaseRotationAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: VectorBaseRotationAnimation))

getSequence_impl :: VectorBaseRotationAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: VectorBaseRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: VectorBaseRotationAnimation)) a1 a2 a3

paintXY_impl :: VectorBaseRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).base.base.base.basicSetColorUtil)) graphics (jget (this).base.base.base.basicColor))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "paintVectors" e)
            ) $ do
            nextPointX <- newIORef (0)
            nextPointY <- newIORef (0)
            nextPoint <- newIORef (javaNull)
            point <- newIORef (javaNull)
            let currentPointsFrame = (jindex ((jget (this).currentPoints)) ((jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))
            let size = (jlength currentPointsFrame)
            index <- newIORef ((size - 2))
            fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (loop) $ do
                jset nextPoint ((jindex currentPointsFrame ((jget index))))
                jset point ((jindex currentPointsFrame (((jget index) + 1))))
                jset nextPointX ((jindex ((jget nextPoint)) (0)))
                jset nextPointY ((jindex ((jget nextPoint)) (1)))
                if ((jget nextPointX) /= 1000) then do
                    Control.Monad.void (Graphics.drawLine graphics ((jindex ((jget point)) (0)) + x) ((jindex ((jget point)) (1)) + y) ((jget nextPointX) + x) ((jget nextPointY) + y))
                else do
                    jset index ((jget index) - 1)
        pure ()


getPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints object_ a1 = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: VectorBaseRotationAnimation))) () a1

getPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints_super object_ a1 = (getPoints_impl (javaCast object_ :: VectorBaseRotationAnimation)) a1

getPoints_impl :: VectorBaseRotationAnimation -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints_impl this frame = do
        pure ((jindex ((jget (this).currentPoints)) (frame)))


setPoints :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints object_ a1 = jmethod object_ "setPoints" (\() -> (setPoints_impl (javaCast object_ :: VectorBaseRotationAnimation))) () a1

setPoints_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints_super object_ a1 = (setPoints_impl (javaCast object_ :: VectorBaseRotationAnimation)) a1

setPoints_impl :: VectorBaseRotationAnimation -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints_impl this currentPoints = do
        jset (this).currentPoints (currentPoints)
        assignedValue <- (CircularIndexUtil.createInstance (jlength (jget (this).currentPoints)))
        jset (this).base.circularIndexUtil (assignedValue)
        pure ()


