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
module RotationAnimation (module RotationAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextRotationX, nextRotationX_super, nextRotationX_impl, previousRotationX, previousRotationX_super, previousRotationX_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, nextRotationZ, nextRotationZ_super, nextRotationZ_impl, previousRotationZ, previousRotationZ_super, previousRotationZ_impl, setFrame, setFrame_super, setFrame_impl, setFrameByDirection, setFrameByDirection_super, setFrameByDirection_impl, setFrameToAngle, setFrameToAngle_super, setFrameToAngle_impl, adjustFrameToAngle, adjustFrameToAngle_super, adjustFrameToAngle_impl, adjustFrame, adjustFrame_super, adjustFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, getAngleInfoP, getAngleInfoP_super, getAngleInfoP_impl, toString, toString_super, toString_impl, frameUtil, directionUtil, angleInfo, circularIndexUtil)
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
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionUtil -- org.allbinary.direction.DirectionUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified FrameUtil -- org.allbinary.math.FrameUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified IndexedAnimation
import qualified RotationAnimationInterface

-- implements RotationAnimationInterface
data RotationAnimation = RotationAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , frameUtil :: IORef (FrameUtil.FrameUtil)
    , directionUtil :: IORef (DirectionUtil.DirectionUtil)
    , angleInfo :: IORef (AngleInfo.AngleInfo)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    }

instance JavaNull RotationAnimation where
    javaNull = javaNullRecord "RotationAnimation"

instance JavaEquals RotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RotationAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    frameUtil <- newIORef javaNull
    directionUtil <- newIORef javaNull
    angleInfo <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    let this = RotationAnimation header_ base frameUtil directionUtil angleInfo circularIndexUtil
    jregisterLevel header_ this
    RotationAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "nextRotationX" (\() -> nextRotationX_impl this)
    jregisterMethod header_ "previousRotationX" (\() -> previousRotationX_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "nextRotationZ" (\() -> nextRotationZ_impl this)
    jregisterMethod header_ "previousRotationZ" (\() -> previousRotationZ_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "setFrameByDirection" (\() -> setFrameByDirection_impl this)
    jregisterMethod header_ "setFrameToAngle" (\() -> setFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrameToAngle" (\() -> adjustFrameToAngle_impl this)
    jregisterMethod header_ "adjustFrame" (\() -> adjustFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getAngleInfoP" (\() -> getAngleInfoP_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: RotationAnimation -> IO ()
initFields_ this = do
    jset this.frameUtil =<< (FrameUtil.getInstance)
    jset this.directionUtil =<< (DirectionUtil.getInstance)
    jset this.angleInfo (javaNull)
    jset this.circularIndexUtil (javaNull)
    pure ()

new_3 :: AngleInfo.AngleInfo -> CircularIndexUtil.CircularIndexUtil -> AnimationBehavior.AnimationBehavior -> IO RotationAnimation
new_3 angleInfo circularIndexUtil animationBehavior = do
    this <- newRecord_
    init_3 this angleInfo circularIndexUtil animationBehavior
    pure this

init_3 :: RotationAnimation -> AngleInfo.AngleInfo -> CircularIndexUtil.CircularIndexUtil -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this angleInfo circularIndexUtil animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).angleInfo (angleInfo)
        jset (this).circularIndexUtil (circularIndexUtil)
        pure ()


nextRotationX :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationX object_ = jmethod object_ "nextRotationX" (\() -> (nextRotationX_impl (javaCast object_ :: RotationAnimation))) ()

nextRotationX_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationX_super object_ = (nextRotationX_impl (javaCast object_ :: RotationAnimation))

nextRotationX_impl :: RotationAnimation -> IO (())
nextRotationX_impl this = do
        pure ()


previousRotationX :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationX object_ = jmethod object_ "previousRotationX" (\() -> (previousRotationX_impl (javaCast object_ :: RotationAnimation))) ()

previousRotationX_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationX_super object_ = (previousRotationX_impl (javaCast object_ :: RotationAnimation))

previousRotationX_impl :: RotationAnimation -> IO (())
previousRotationX_impl this = do
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: RotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: RotationAnimation))

nextRotation_impl :: RotationAnimation -> IO (())
nextRotation_impl this = do
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).angleInfo)) (jio (CircularIndexUtil.next ((jget (this).circularIndexUtil)))))
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: RotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: RotationAnimation))

previousRotation_impl :: RotationAnimation -> IO (())
previousRotation_impl this = do
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).angleInfo)) (jio (CircularIndexUtil.previous ((jget (this).circularIndexUtil)))))
        pure ()


nextRotationZ :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationZ object_ = jmethod object_ "nextRotationZ" (\() -> (nextRotationZ_impl (javaCast object_ :: RotationAnimation))) ()

nextRotationZ_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationZ_super object_ = (nextRotationZ_impl (javaCast object_ :: RotationAnimation))

nextRotationZ_impl :: RotationAnimation -> IO (())
nextRotationZ_impl this = do
        pure ()


previousRotationZ :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationZ object_ = jmethod object_ "previousRotationZ" (\() -> (previousRotationZ_impl (javaCast object_ :: RotationAnimation))) ()

previousRotationZ_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationZ_super object_ = (previousRotationZ_impl (javaCast object_ :: RotationAnimation))

previousRotationZ_impl :: RotationAnimation -> IO (())
previousRotationZ_impl this = do
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: RotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: RotationAnimation)) a1

setFrame_impl :: RotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).circularIndexUtil)) index)
        newFrame <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).angleInfo)) newFrame)
        pure ()


setFrameByDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection object_ a1 = jmethod object_ "setFrameByDirection" (\() -> (setFrameByDirection_impl (javaCast object_ :: RotationAnimation))) () a1

setFrameByDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection_super object_ a1 = (setFrameByDirection_impl (javaCast object_ :: RotationAnimation)) a1

setFrameByDirection_impl :: RotationAnimation -> Direction.Direction -> IO (())
setFrameByDirection_impl this direction = do
        angle <- (DirectionUtil.getFrameAngle ((jget (this).directionUtil)) direction)
        Control.Monad.void (RotationAnimation.adjustFrameToAngle this angle)
        pure ()


setFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle object_ a1 = jmethod object_ "setFrameToAngle" (\() -> (setFrameToAngle_impl (javaCast object_ :: RotationAnimation))) () a1

setFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle_super object_ a1 = (setFrameToAngle_impl (javaCast object_ :: RotationAnimation)) a1

setFrameToAngle_impl :: RotationAnimation -> Angle.Angle -> IO (())
setFrameToAngle_impl this angle = do
        Control.Monad.void (RotationAnimation.adjustFrameToAngle this angle)
        pure ()


adjustFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle object_ a1 = jmethod object_ "adjustFrameToAngle" (\() -> (adjustFrameToAngle_impl (javaCast object_ :: RotationAnimation))) () a1

adjustFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle_super object_ a1 = (adjustFrameToAngle_impl (javaCast object_ :: RotationAnimation)) a1

adjustFrameToAngle_impl :: RotationAnimation -> Angle.Angle -> IO (())
adjustFrameToAngle_impl this angle = do
        Control.Monad.void (RotationAnimation.adjustFrame this (jio (Angle.getValue angle)))
        pure ()


adjustFrame :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame object_ a1 = jmethod object_ "adjustFrame" (\() -> (adjustFrame_impl (javaCast object_ :: RotationAnimation))) () a1

adjustFrame_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame_super object_ a1 = (adjustFrame_impl (javaCast object_ :: RotationAnimation)) a1

adjustFrame_impl :: RotationAnimation -> Int16 -> IO (())
adjustFrame_impl this angle = do
        Control.Monad.void (RotationAnimation.setFrame this (jio (FrameUtil.getFrameForAngle ((jget (this).frameUtil)) angle (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).angleInfo)))))))))))
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: RotationAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: RotationAnimation))

getFrame_impl :: RotationAnimation -> IO (Int)
getFrame_impl this = do
        (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: RotationAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: RotationAnimation))

getSize_impl :: RotationAnimation -> IO (Int)
getSize_impl this = do
        (CircularIndexUtil.getSize ((jget (this).circularIndexUtil)))


getAngleInfoP :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP object_ = jmethod object_ "getAngleInfoP" (\() -> (getAngleInfoP_impl (javaCast object_ :: RotationAnimation))) ()

getAngleInfoP_super :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP_super object_ = (getAngleInfoP_impl (javaCast object_ :: RotationAnimation))

getAngleInfoP_impl :: RotationAnimation -> IO (AngleInfo.AngleInfo)
getAngleInfoP_impl this = do
        pure ((jget (this).angleInfo))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: RotationAnimation))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: RotationAnimation))

toString_impl :: RotationAnimation -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (IndexedAnimation.toString_super this.base))))) "circularIndexUtil: "))) (jio (CircularIndexUtil.toString ((jget (this).circularIndexUtil))))))) "angleInfo: "))) (jio (AngleInfo.toString ((jget (this).angleInfo))))))))


