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
-- package org.allbinary.physics.movement
module NoZBasicConstantVelocityMovement (module NoZBasicConstantVelocityMovement, module Movement) where

import Movement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, moveOutsideRadius, moveOutsideRadius_super, moveOutsideRadius_impl, process, process_super, process_impl, toString, toString_super, toString_impl, stop, stop_super, stop_impl, getVelocityProperties, getVelocityProperties_super, getVelocityProperties_impl, setVelocityProperties, setVelocityProperties_super, setVelocityProperties_impl, setSpeedBasicDecimal, setSpeedBasicDecimal_super, setSpeedBasicDecimal_impl, getSpeedBasicDecimal, getSpeedBasicDecimal_super, getSpeedBasicDecimal_impl, velocityProperties, speedBasicDecimal, axisMathVectorUtil)
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
import qualified AllBinaryGameLayer -- org.allbinary.game.layer.AllBinaryGameLayer
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties
import qualified VelocityInterfaceCompositeInterface -- org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified AxisMathVectorUtil -- org.allbinary.logic.math.vector.AxisMathVectorUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified Movement

-- implements VelocityInterfaceCompositeInterface
data NoZBasicConstantVelocityMovement = NoZBasicConstantVelocityMovement
    { header_ :: JavaHeader
    , base :: Movement.Movement
    , velocityProperties :: IORef (BasicVelocityProperties.BasicVelocityProperties)
    , speedBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , axisMathVectorUtil :: IORef (AxisMathVectorUtil.AxisMathVectorUtil)
    }

instance JavaNull NoZBasicConstantVelocityMovement where
    javaNull = javaNullRecord "NoZBasicConstantVelocityMovement"

instance JavaEquals NoZBasicConstantVelocityMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoZBasicConstantVelocityMovement where
    (==) = jrecordEquals

instance JavaObjectClass NoZBasicConstantVelocityMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoZBasicConstantVelocityMovement
newRecord_ = do
    base <- Movement.newRecord_
    let header_ = base.header_
    velocityProperties <- newIORef javaNull
    speedBasicDecimal <- newIORef javaNull
    axisMathVectorUtil <- newIORef javaNull
    let this = NoZBasicConstantVelocityMovement header_ base velocityProperties speedBasicDecimal axisMathVectorUtil
    jregisterLevel header_ this
    VelocityInterfaceCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "moveOutsideRadius" (\() -> moveOutsideRadius_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "getVelocityProperties" (\() -> getVelocityProperties_impl this)
    jregisterMethod header_ "setVelocityProperties" (\() -> setVelocityProperties_impl this)
    jregisterMethod header_ "setSpeedBasicDecimal" (\() -> setSpeedBasicDecimal_impl this)
    jregisterMethod header_ "getSpeedBasicDecimal" (\() -> getSpeedBasicDecimal_impl this)
    pure this

initFields_ :: NoZBasicConstantVelocityMovement -> IO ()
initFields_ this = do
    jset this.velocityProperties (javaNull)
    jset this.speedBasicDecimal (BasicDecimal.zERO_BIGDECIMAL)
    jset this.axisMathVectorUtil =<< (AxisMathVectorUtil.getInstance)
    pure ()

new_2 :: BasicDecimal.BasicDecimal -> BasicVelocityProperties.BasicVelocityProperties -> IO NoZBasicConstantVelocityMovement
new_2 basicDecimal velocityProperties = do
    this <- newRecord_
    init_2 this basicDecimal velocityProperties
    pure this

init_2 :: NoZBasicConstantVelocityMovement -> BasicDecimal.BasicDecimal -> BasicVelocityProperties.BasicVelocityProperties -> IO ()
init_2 this basicDecimal velocityProperties = do
        Movement.init_ this.base
        initFields_ this
        Control.Monad.void (NoZBasicConstantVelocityMovement.setSpeedBasicDecimal this basicDecimal)
        jset (this).velocityProperties (velocityProperties)
        pure ()


init :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: NoZBasicConstantVelocityMovement)) a1 a2 a3

init_impl :: NoZBasicConstantVelocityMovement -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_impl this speedBasicDecimal angle otherAngle = do
        jset (this).speedBasicDecimal (speedBasicDecimal)
        angleFactory <- (AngleFactory.getInstance)
        Control.Monad.void (BasicVelocityProperties.setVelocityWithBigDecimal ((jget (this).velocityProperties)) speedBasicDecimal (jio (AngleFactory.getAt angleFactory angle)) (jio (AngleFactory.getAt angleFactory otherAngle)))
        pure ()


moveOutsideRadius :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int64 -> Int -> Int -> IO (())
moveOutsideRadius object_ a1 a2 a3 a4 = jmethod object_ "moveOutsideRadius" (\() -> (moveOutsideRadius_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) () a1 a2 a3 a4

moveOutsideRadius_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int64 -> Int -> Int -> IO (())
moveOutsideRadius_super object_ a1 a2 a3 a4 = (moveOutsideRadius_impl (javaCast object_ :: NoZBasicConstantVelocityMovement)) a1 a2 a3 a4

moveOutsideRadius_impl :: NoZBasicConstantVelocityMovement -> AllBinaryLayer.AllBinaryLayer -> Int64 -> Int -> Int -> IO (())
moveOutsideRadius_impl this layer radius angle otherAngle = do
        scaleFactorValue <- (BasicDecimal.getScaledFactorValue ((jget (this).speedBasicDecimal)))
        let xVector = (Prelude.fromIntegral (((jio (AxisMathVectorUtil.calculateX ((jget (this).axisMathVectorUtil)) radius angle)) `quot` (Prelude.fromIntegral scaleFactorValue))))
        let yVector = (Prelude.fromIntegral (((jio (AxisMathVectorUtil.calculateY ((jget (this).axisMathVectorUtil)) radius angle)) `quot` (Prelude.fromIntegral scaleFactorValue))))
        Control.Monad.void (AllBinaryLayer.moveDXYZ layer xVector yVector 0)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: NoZBasicConstantVelocityMovement)) a1

process_impl :: NoZBasicConstantVelocityMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        Control.Monad.void (AllBinaryGameLayer.moveDXYZ layer (jio (BasicDecimal.getScaled ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP ((jget (this).velocityProperties))))))) (jio (BasicDecimal.getScaled ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP ((jget (this).velocityProperties))))))) 0)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))

toString_impl :: NoZBasicConstantVelocityMovement -> IO (String)
toString_impl this = do
        (BasicVelocityProperties.toString ((jget (this).velocityProperties)))


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))

stop_impl :: NoZBasicConstantVelocityMovement -> IO (())
stop_impl this = do
        Control.Monad.void (BasicVelocityProperties.zero ((jget (this).velocityProperties)))
        pure ()


getVelocityProperties :: (JavaObjectClass this_) => this_ -> IO (BasicVelocityProperties.BasicVelocityProperties)
getVelocityProperties object_ = jmethod object_ "getVelocityProperties" (\() -> (getVelocityProperties_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) ()

getVelocityProperties_super :: (JavaObjectClass this_) => this_ -> IO (BasicVelocityProperties.BasicVelocityProperties)
getVelocityProperties_super object_ = (getVelocityProperties_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))

getVelocityProperties_impl :: NoZBasicConstantVelocityMovement -> IO (BasicVelocityProperties.BasicVelocityProperties)
getVelocityProperties_impl this = do
        pure ((jget (this).velocityProperties))


setVelocityProperties :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> IO (())
setVelocityProperties object_ a1 = jmethod object_ "setVelocityProperties" (\() -> (setVelocityProperties_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) () a1

setVelocityProperties_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> IO (())
setVelocityProperties_super object_ a1 = (setVelocityProperties_impl (javaCast object_ :: NoZBasicConstantVelocityMovement)) a1

setVelocityProperties_impl :: NoZBasicConstantVelocityMovement -> BasicVelocityProperties.BasicVelocityProperties -> IO (())
setVelocityProperties_impl this velocityProperties = do
        jset (this).velocityProperties (velocityProperties)
        pure ()


setSpeedBasicDecimal :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
setSpeedBasicDecimal object_ a1 = jmethod object_ "setSpeedBasicDecimal" (\() -> (setSpeedBasicDecimal_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) () a1

setSpeedBasicDecimal_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
setSpeedBasicDecimal_super object_ a1 = (setSpeedBasicDecimal_impl (javaCast object_ :: NoZBasicConstantVelocityMovement)) a1

setSpeedBasicDecimal_impl :: NoZBasicConstantVelocityMovement -> BasicDecimal.BasicDecimal -> IO (())
setSpeedBasicDecimal_impl this speedBasicDecimal = do
        jset (this).speedBasicDecimal (speedBasicDecimal)
        pure ()


getSpeedBasicDecimal :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal object_ = jmethod object_ "getSpeedBasicDecimal" (\() -> (getSpeedBasicDecimal_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))) ()

getSpeedBasicDecimal_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal_super object_ = (getSpeedBasicDecimal_impl (javaCast object_ :: NoZBasicConstantVelocityMovement))

getSpeedBasicDecimal_impl :: NoZBasicConstantVelocityMovement -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal_impl this = do
        pure ((jget (this).speedBasicDecimal))


