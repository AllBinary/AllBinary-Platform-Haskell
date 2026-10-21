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
module ConstantVelocityNotifyViewChangeMovement (module ConstantVelocityNotifyViewChangeMovement, module Movement) where

import Movement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, moveOutsideRadius, moveOutsideRadius_super, moveOutsideRadius_impl, process, process_super, process_impl, stop, stop_super, stop_impl, basicVelocityProperties, speedBasicDecimal, axisMathVectorUtil)
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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified AxisMathVectorUtil -- org.allbinary.logic.math.vector.AxisMathVectorUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified Movement

data ConstantVelocityNotifyViewChangeMovement = ConstantVelocityNotifyViewChangeMovement
    { header_ :: JavaHeader
    , base :: Movement.Movement
    , basicVelocityProperties :: IORef (BasicVelocityProperties.BasicVelocityProperties)
    , speedBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , axisMathVectorUtil :: IORef (AxisMathVectorUtil.AxisMathVectorUtil)
    }

instance JavaNull ConstantVelocityNotifyViewChangeMovement where
    javaNull = javaNullRecord "ConstantVelocityNotifyViewChangeMovement"

instance JavaEquals ConstantVelocityNotifyViewChangeMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ConstantVelocityNotifyViewChangeMovement where
    (==) = jrecordEquals

instance JavaObjectClass ConstantVelocityNotifyViewChangeMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ConstantVelocityNotifyViewChangeMovement
newRecord_ = do
    base <- Movement.newRecord_
    let header_ = base.header_
    basicVelocityProperties <- newIORef javaNull
    speedBasicDecimal <- newIORef javaNull
    axisMathVectorUtil <- newIORef javaNull
    let this = ConstantVelocityNotifyViewChangeMovement header_ base basicVelocityProperties speedBasicDecimal axisMathVectorUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "moveOutsideRadius" (\() -> moveOutsideRadius_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: ConstantVelocityNotifyViewChangeMovement -> IO ()
initFields_ this = do
    jset this.basicVelocityProperties (javaNull)
    jset this.speedBasicDecimal (javaNull)
    jset this.axisMathVectorUtil =<< (AxisMathVectorUtil.getInstance)
    pure ()

new_ :: IO ConstantVelocityNotifyViewChangeMovement
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ConstantVelocityNotifyViewChangeMovement -> IO ()
init_ this = do
        Movement.init_ this.base
        initFields_ this
        jset (this).speedBasicDecimal (BasicDecimal.zERO_BIGDECIMAL)
        assignedValue <- (BasicVelocityProperties.new_)
        jset (this).basicVelocityProperties (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement)) a1 a2 a3

init_impl :: ConstantVelocityNotifyViewChangeMovement -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_impl this speedBasicDecimal angle otherAngle = do
        jset (this).speedBasicDecimal (speedBasicDecimal)
        angleFactory <- (AngleFactory.getInstance)
        Control.Monad.void (BasicVelocityProperties.setVelocityWithBigDecimal ((jget (this).basicVelocityProperties)) speedBasicDecimal (jio (AngleFactory.getAt angleFactory angle)) (jio (AngleFactory.getAt angleFactory otherAngle)))
        pure ()


moveOutsideRadius :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int64 -> Int -> Int -> IO (())
moveOutsideRadius object_ a1 a2 a3 a4 = jmethod object_ "moveOutsideRadius" (\() -> (moveOutsideRadius_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement))) () a1 a2 a3 a4

moveOutsideRadius_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int64 -> Int -> Int -> IO (())
moveOutsideRadius_super object_ a1 a2 a3 a4 = (moveOutsideRadius_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement)) a1 a2 a3 a4

moveOutsideRadius_impl :: ConstantVelocityNotifyViewChangeMovement -> AllBinaryLayer.AllBinaryLayer -> Int64 -> Int -> Int -> IO (())
moveOutsideRadius_impl this layer radius angle otherAngle = do
        scaleFactorValue <- (BasicDecimal.getScaledFactorValue ((jget (this).speedBasicDecimal)))
        let xVector = (Prelude.fromIntegral (((jio (AxisMathVectorUtil.calculateX ((jget (this).axisMathVectorUtil)) radius angle)) `quot` (Prelude.fromIntegral scaleFactorValue))))
        let yVector = (Prelude.fromIntegral (((jio (AxisMathVectorUtil.calculateY ((jget (this).axisMathVectorUtil)) radius angle)) `quot` (Prelude.fromIntegral scaleFactorValue))))
        let zVector = (Prelude.fromIntegral (((jio (AxisMathVectorUtil.calculateZ ((jget (this).axisMathVectorUtil)) radius otherAngle)) `quot` (Prelude.fromIntegral scaleFactorValue))))
        Control.Monad.void (AllBinaryLayer.moveDXYZ layer xVector yVector zVector)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement)) a1

process_impl :: ConstantVelocityNotifyViewChangeMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        x <- (BasicDecimal.getScaled ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP ((jget (this).basicVelocityProperties))))))
        y <- (BasicDecimal.getScaled ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP ((jget (this).basicVelocityProperties))))))
        z <- (BasicDecimal.getScaled ((jio (BasicVelocityProperties.getVelocityZBasicDecimalP ((jget (this).basicVelocityProperties))))))
        Control.Monad.void (AllBinaryGameLayer.moveDXYZ layer x y z)
        when (((x /= 0) || (y /= 0)) || (z /= 0)) $ do
            Control.Monad.void (AllBinaryGameLayer.onViewPositionChangeEvent layer)
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: ConstantVelocityNotifyViewChangeMovement))

stop_impl :: ConstantVelocityNotifyViewChangeMovement -> IO (())
stop_impl this = do
        Control.Monad.void (BasicVelocityProperties.zero ((jget (this).basicVelocityProperties)))
        pure ()


