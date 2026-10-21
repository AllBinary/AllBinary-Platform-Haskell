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
-- package org.allbinary.game.physics.velocity
module BasicVelocityProperties where

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
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionUtil -- org.allbinary.direction.DirectionUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified AxisMathVectorUtil -- org.allbinary.logic.math.vector.AxisMathVectorUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Angle -- org.allbinary.math.Angle
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicVelocityInterface

-- implements BasicVelocityInterface
data BasicVelocityProperties = BasicVelocityProperties
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , velocityXBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , velocityYBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , velocityZBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , axisMathVectorUtil :: IORef (AxisMathVectorUtil.AxisMathVectorUtil)
    , directionUtil :: IORef (DirectionUtil.DirectionUtil)
    }

instance JavaNull BasicVelocityProperties where
    javaNull = javaNullRecord "BasicVelocityProperties"

instance JavaEquals BasicVelocityProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicVelocityProperties where
    (==) = jrecordEquals

instance JavaObjectClass BasicVelocityProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicVelocityProperties
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    velocityXBasicDecimal <- newIORef javaNull
    velocityYBasicDecimal <- newIORef javaNull
    velocityZBasicDecimal <- newIORef javaNull
    axisMathVectorUtil <- newIORef javaNull
    directionUtil <- newIORef javaNull
    let this = BasicVelocityProperties header_ logUtil velocityXBasicDecimal velocityYBasicDecimal velocityZBasicDecimal axisMathVectorUtil directionUtil
    jregisterLevel header_ this
    BasicVelocityInterface.registerInterface_ header_
    jregisterMethod header_ "zero" (\() -> zero_impl this)
    jregisterMethod header_ "getVelocityXBasicDecimalP" (\() -> getVelocityXBasicDecimalP_impl this)
    jregisterMethod header_ "getVelocityYBasicDecimalP" (\() -> getVelocityYBasicDecimalP_impl this)
    jregisterMethod header_ "getVelocityZBasicDecimalP" (\() -> getVelocityZBasicDecimalP_impl this)
    jregisterMethod header_ "setVelocityWithBigDecimalAndDirection" (\() -> setVelocityWithBigDecimalAndDirection_impl this)
    jregisterMethod header_ "setVelocityWithDirection" (\() -> setVelocityWithDirection_impl this)
    jregisterMethod header_ "addVelocityWithBigDecimalAndDirection" (\() -> addVelocityWithBigDecimalAndDirection_impl this)
    jregisterMethod header_ "addVelocityWithDirection" (\() -> addVelocityWithDirection_impl this)
    jregisterMethod header_ "setVelocityWithBigDecimal" (\() -> setVelocityWithBigDecimal_impl this)
    jregisterMethod header_ "addVelocityWithBigDecimal" (\() -> addVelocityWithBigDecimal_impl this)
    jregisterMethod header_ "setVelocity" (\() -> setVelocity_impl this)
    jregisterMethod header_ "addVelocity" (\() -> addVelocity_impl this)
    jregisterMethod header_ "setVelocityi" (\() -> setVelocityi_impl this)
    jregisterMethod header_ "addVelocityi" (\() -> addVelocityi_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicVelocityProperties -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.velocityXBasicDecimal (javaNull)
    jset this.velocityYBasicDecimal (javaNull)
    jset this.velocityZBasicDecimal (javaNull)
    jset this.axisMathVectorUtil =<< (AxisMathVectorUtil.getInstance)
    jset this.directionUtil =<< (DirectionUtil.getInstance)
    pure ()

new_ :: IO BasicVelocityProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicVelocityProperties -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (BasicDecimal.new_1 0)
        jset (this).velocityXBasicDecimal (assignedValue)
        assignedValue <- (BasicDecimal.new_1 0)
        jset (this).velocityYBasicDecimal (assignedValue)
        assignedValue <- (BasicDecimal.new_1 0)
        jset (this).velocityZBasicDecimal (assignedValue)
        pure ()


zero :: (JavaObjectClass this_) => this_ -> IO (())
zero object_ = jmethod object_ "zero" (\() -> (zero_impl (javaCast object_ :: BasicVelocityProperties))) ()

zero_super :: (JavaObjectClass this_) => this_ -> IO (())
zero_super object_ = (zero_impl (javaCast object_ :: BasicVelocityProperties))

zero_impl :: BasicVelocityProperties -> IO (())
zero_impl this = do
        Control.Monad.void (BasicDecimal.setint ((jget (this).velocityXBasicDecimal)) 0)
        Control.Monad.void (BasicDecimal.setint ((jget (this).velocityYBasicDecimal)) 0)
        Control.Monad.void (BasicDecimal.setint ((jget (this).velocityZBasicDecimal)) 0)
        pure ()


getVelocityXBasicDecimalP :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityXBasicDecimalP object_ = jmethod object_ "getVelocityXBasicDecimalP" (\() -> (getVelocityXBasicDecimalP_impl (javaCast object_ :: BasicVelocityProperties))) ()

getVelocityXBasicDecimalP_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityXBasicDecimalP_super object_ = (getVelocityXBasicDecimalP_impl (javaCast object_ :: BasicVelocityProperties))

getVelocityXBasicDecimalP_impl :: BasicVelocityProperties -> IO (BasicDecimal.BasicDecimal)
getVelocityXBasicDecimalP_impl this = do
        pure ((jget (this).velocityXBasicDecimal))


getVelocityYBasicDecimalP :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityYBasicDecimalP object_ = jmethod object_ "getVelocityYBasicDecimalP" (\() -> (getVelocityYBasicDecimalP_impl (javaCast object_ :: BasicVelocityProperties))) ()

getVelocityYBasicDecimalP_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityYBasicDecimalP_super object_ = (getVelocityYBasicDecimalP_impl (javaCast object_ :: BasicVelocityProperties))

getVelocityYBasicDecimalP_impl :: BasicVelocityProperties -> IO (BasicDecimal.BasicDecimal)
getVelocityYBasicDecimalP_impl this = do
        pure ((jget (this).velocityYBasicDecimal))


getVelocityZBasicDecimalP :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityZBasicDecimalP object_ = jmethod object_ "getVelocityZBasicDecimalP" (\() -> (getVelocityZBasicDecimalP_impl (javaCast object_ :: BasicVelocityProperties))) ()

getVelocityZBasicDecimalP_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityZBasicDecimalP_super object_ = (getVelocityZBasicDecimalP_impl (javaCast object_ :: BasicVelocityProperties))

getVelocityZBasicDecimalP_impl :: BasicVelocityProperties -> IO (BasicDecimal.BasicDecimal)
getVelocityZBasicDecimalP_impl this = do
        pure ((jget (this).velocityZBasicDecimal))


setVelocityWithBigDecimalAndDirection :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithBigDecimalAndDirection object_ a1 a2 a3 = jmethod object_ "setVelocityWithBigDecimalAndDirection" (\() -> (setVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

setVelocityWithBigDecimalAndDirection_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithBigDecimalAndDirection_super object_ a1 a2 a3 = (setVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

setVelocityWithBigDecimalAndDirection_impl :: BasicVelocityProperties -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithBigDecimalAndDirection_impl this magnitudeBasicDecimal direction otherDirection = do
        angle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) direction)
        otherAngle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) otherDirection)
        Control.Monad.void (BasicVelocityProperties.setVelocityWithBigDecimal this magnitudeBasicDecimal angle otherAngle)
        pure ()


setVelocityWithDirection :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithDirection object_ a1 a2 a3 = jmethod object_ "setVelocityWithDirection" (\() -> (setVelocityWithDirection_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

setVelocityWithDirection_super :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithDirection_super object_ a1 a2 a3 = (setVelocityWithDirection_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

setVelocityWithDirection_impl :: BasicVelocityProperties -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithDirection_impl this magnitude direction otherDirection = do
        angle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) direction)
        otherAngle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) otherDirection)
        Control.Monad.void (BasicVelocityProperties.setVelocity this magnitude angle otherAngle)
        pure ()


addVelocityWithBigDecimalAndDirection :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithBigDecimalAndDirection object_ a1 a2 a3 = jmethod object_ "addVelocityWithBigDecimalAndDirection" (\() -> (addVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

addVelocityWithBigDecimalAndDirection_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithBigDecimalAndDirection_super object_ a1 a2 a3 = (addVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

addVelocityWithBigDecimalAndDirection_impl :: BasicVelocityProperties -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithBigDecimalAndDirection_impl this magnitudeBasicDecimal direction otherDirection = do
        angle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) direction)
        otherAngle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) otherDirection)
        Control.Monad.void (BasicVelocityProperties.addVelocityWithBigDecimal this magnitudeBasicDecimal angle otherAngle)
        pure ()


addVelocityWithDirection :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithDirection object_ a1 a2 a3 = jmethod object_ "addVelocityWithDirection" (\() -> (addVelocityWithDirection_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

addVelocityWithDirection_super :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithDirection_super object_ a1 a2 a3 = (addVelocityWithDirection_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

addVelocityWithDirection_impl :: BasicVelocityProperties -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithDirection_impl this magnitude direction otherDirection = do
        angle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) direction)
        otherAngle <- (DirectionUtil.getAngle ((jget (this).directionUtil)) otherDirection)
        Control.Monad.void (BasicVelocityProperties.addVelocity this magnitude angle otherAngle)
        pure ()


setVelocityWithBigDecimal :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
setVelocityWithBigDecimal object_ a1 a2 a3 = jmethod object_ "setVelocityWithBigDecimal" (\() -> (setVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

setVelocityWithBigDecimal_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
setVelocityWithBigDecimal_super object_ a1 a2 a3 = (setVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

setVelocityWithBigDecimal_impl :: BasicVelocityProperties -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
setVelocityWithBigDecimal_impl this magnitudeBasicDecimal angle otherAngle = do
        magnitude <- (BasicDecimal.getUnscaled magnitudeBasicDecimal)
        Control.Monad.void (BasicVelocityProperties.setVelocity this magnitude angle otherAngle)
        pure ()


addVelocityWithBigDecimal :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
addVelocityWithBigDecimal object_ a1 a2 a3 = jmethod object_ "addVelocityWithBigDecimal" (\() -> (addVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

addVelocityWithBigDecimal_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
addVelocityWithBigDecimal_super object_ a1 a2 a3 = (addVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

addVelocityWithBigDecimal_impl :: BasicVelocityProperties -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
addVelocityWithBigDecimal_impl this magnitudeBasicDecimal angle otherAngle = do
        magnitude <- (BasicDecimal.getUnscaled magnitudeBasicDecimal)
        Control.Monad.void (BasicVelocityProperties.addVelocity this magnitude angle otherAngle)
        pure ()


setVelocity :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
setVelocity object_ a1 a2 a3 = jmethod object_ "setVelocity" (\() -> (setVelocity_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

setVelocity_super :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
setVelocity_super object_ a1 a2 a3 = (setVelocity_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

setVelocity_impl :: BasicVelocityProperties -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
setVelocity_impl this magnitude angle otherAngle = do
        Control.Monad.void (BasicVelocityProperties.setVelocityi this magnitude (Prelude.fromIntegral (jio (Angle.getValue angle))) (Prelude.fromIntegral (jio (Angle.getValue otherAngle))))
        pure ()


addVelocity :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
addVelocity object_ a1 a2 a3 = jmethod object_ "addVelocity" (\() -> (addVelocity_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

addVelocity_super :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
addVelocity_super object_ a1 a2 a3 = (addVelocity_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

addVelocity_impl :: BasicVelocityProperties -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
addVelocity_impl this magnitude angle otherAngle = do
        Control.Monad.void (BasicVelocityProperties.addVelocityi this magnitude (Prelude.fromIntegral (jio (Angle.getValue angle))) (Prelude.fromIntegral (jio (Angle.getValue otherAngle))))
        pure ()


setVelocityi :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
setVelocityi object_ a1 a2 a3 = jmethod object_ "setVelocityi" (\() -> (setVelocityi_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

setVelocityi_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
setVelocityi_super object_ a1 a2 a3 = (setVelocityi_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

setVelocityi_impl :: BasicVelocityProperties -> Int64 -> Int -> Int -> IO (())
setVelocityi_impl this magnitude angle otherAngle = do
        let xVector = (((jio (AxisMathVectorUtil.calculateX ((jget (this).axisMathVectorUtil)) magnitude angle)) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getScaledFactorValue ((jget (this).velocityXBasicDecimal)))))))
        let yVector = (((jio (AxisMathVectorUtil.calculateY ((jget (this).axisMathVectorUtil)) magnitude angle)) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getScaledFactorValue ((jget (this).velocityYBasicDecimal)))))))
        let zVector = (((jio (AxisMathVectorUtil.calculateZ ((jget (this).axisMathVectorUtil)) magnitude otherAngle)) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getScaledFactorValue ((jget (this).velocityZBasicDecimal)))))))
        Control.Monad.void (BasicDecimal.setlong ((jget (this).velocityXBasicDecimal)) xVector)
        Control.Monad.void (BasicDecimal.setlong ((jget (this).velocityYBasicDecimal)) yVector)
        Control.Monad.void (BasicDecimal.setlong ((jget (this).velocityZBasicDecimal)) zVector)
        pure ()


addVelocityi :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
addVelocityi object_ a1 a2 a3 = jmethod object_ "addVelocityi" (\() -> (addVelocityi_impl (javaCast object_ :: BasicVelocityProperties))) () a1 a2 a3

addVelocityi_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
addVelocityi_super object_ a1 a2 a3 = (addVelocityi_impl (javaCast object_ :: BasicVelocityProperties)) a1 a2 a3

addVelocityi_impl :: BasicVelocityProperties -> Int64 -> Int -> Int -> IO (())
addVelocityi_impl this magnitude angle otherAngle = do
        let xVector = (((jio (AxisMathVectorUtil.calculateX ((jget (this).axisMathVectorUtil)) magnitude angle)) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getScaledFactorValue ((jget (this).velocityXBasicDecimal)))))))
        let yVector = (((jio (AxisMathVectorUtil.calculateY ((jget (this).axisMathVectorUtil)) magnitude angle)) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getScaledFactorValue ((jget (this).velocityYBasicDecimal)))))))
        let zVector = (((jio (AxisMathVectorUtil.calculateZ ((jget (this).axisMathVectorUtil)) magnitude otherAngle)) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getScaledFactorValue ((jget (this).velocityZBasicDecimal)))))))
        Control.Monad.void (BasicDecimal.addlong ((jget (this).velocityXBasicDecimal)) xVector)
        Control.Monad.void (BasicDecimal.addlong ((jget (this).velocityYBasicDecimal)) yVector)
        Control.Monad.void (BasicDecimal.addlong ((jget (this).velocityZBasicDecimal)) zVector)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicVelocityProperties))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicVelocityProperties))

toString_impl :: BasicVelocityProperties -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        positionStrings <- (PositionStrings.getInstance)
        stringBuffer <- (StringMaker.new_)
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer "Velocity ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).x_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).velocityXBasicDecimal))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).y_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).velocityYBasicDecimal))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).z_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).velocityZBasicDecimal))))
        (StringMaker.toString stringBuffer)


