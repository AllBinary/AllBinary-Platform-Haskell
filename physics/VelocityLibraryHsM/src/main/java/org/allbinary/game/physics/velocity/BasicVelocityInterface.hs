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
module BasicVelocityInterface where

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
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified Angle -- org.allbinary.math.Angle

-- Java interface: the classes that implement it have these functions
data BasicVelocityInterface = BasicVelocityInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicVelocityInterface where
    javaNull = javaNullRecord "BasicVelocityInterface"

instance JavaEquals BasicVelocityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicVelocityInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicVelocityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicVelocityInterface
fromHeader_ header = BasicVelocityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicVelocityInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getVelocityXBasicDecimalP :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityXBasicDecimalP object_ = jmethod object_ "getVelocityXBasicDecimalP" (\() -> (getVelocityXBasicDecimalP_impl (javaCast object_ :: BasicVelocityInterface))) ()

getVelocityXBasicDecimalP_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityXBasicDecimalP_super object_ = (getVelocityXBasicDecimalP_impl (javaCast object_ :: BasicVelocityInterface))

getVelocityXBasicDecimalP_impl :: BasicVelocityInterface -> IO (BasicDecimal.BasicDecimal)
getVelocityXBasicDecimalP_impl this = javaAbstractMethod "getVelocityXBasicDecimalP"


getVelocityYBasicDecimalP :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityYBasicDecimalP object_ = jmethod object_ "getVelocityYBasicDecimalP" (\() -> (getVelocityYBasicDecimalP_impl (javaCast object_ :: BasicVelocityInterface))) ()

getVelocityYBasicDecimalP_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getVelocityYBasicDecimalP_super object_ = (getVelocityYBasicDecimalP_impl (javaCast object_ :: BasicVelocityInterface))

getVelocityYBasicDecimalP_impl :: BasicVelocityInterface -> IO (BasicDecimal.BasicDecimal)
getVelocityYBasicDecimalP_impl this = javaAbstractMethod "getVelocityYBasicDecimalP"


zero :: (JavaObjectClass this_) => this_ -> IO (())
zero object_ = jmethod object_ "zero" (\() -> (zero_impl (javaCast object_ :: BasicVelocityInterface))) ()

zero_super :: (JavaObjectClass this_) => this_ -> IO (())
zero_super object_ = (zero_impl (javaCast object_ :: BasicVelocityInterface))

zero_impl :: BasicVelocityInterface -> IO (())
zero_impl this = javaAbstractMethod "zero"


setVelocityWithBigDecimalAndDirection :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithBigDecimalAndDirection object_ a1 a2 a3 = jmethod object_ "setVelocityWithBigDecimalAndDirection" (\() -> (setVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

setVelocityWithBigDecimalAndDirection_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithBigDecimalAndDirection_super object_ a1 a2 a3 = (setVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

setVelocityWithBigDecimalAndDirection_impl :: BasicVelocityInterface -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithBigDecimalAndDirection_impl this magnitudeBasicDecimal direction otherDirection = javaAbstractMethod "setVelocityWithBigDecimalAndDirection"


addVelocityWithBigDecimalAndDirection :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithBigDecimalAndDirection object_ a1 a2 a3 = jmethod object_ "addVelocityWithBigDecimalAndDirection" (\() -> (addVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

addVelocityWithBigDecimalAndDirection_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithBigDecimalAndDirection_super object_ a1 a2 a3 = (addVelocityWithBigDecimalAndDirection_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

addVelocityWithBigDecimalAndDirection_impl :: BasicVelocityInterface -> BasicDecimal.BasicDecimal -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithBigDecimalAndDirection_impl this magnitudeBasicDecimal direction otherDirection = javaAbstractMethod "addVelocityWithBigDecimalAndDirection"


setVelocityWithDirection :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithDirection object_ a1 a2 a3 = jmethod object_ "setVelocityWithDirection" (\() -> (setVelocityWithDirection_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

setVelocityWithDirection_super :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithDirection_super object_ a1 a2 a3 = (setVelocityWithDirection_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

setVelocityWithDirection_impl :: BasicVelocityInterface -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
setVelocityWithDirection_impl this magnitude direction otherDirection = javaAbstractMethod "setVelocityWithDirection"


addVelocityWithDirection :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithDirection object_ a1 a2 a3 = jmethod object_ "addVelocityWithDirection" (\() -> (addVelocityWithDirection_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

addVelocityWithDirection_super :: (JavaObjectClass this_) => this_ -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithDirection_super object_ a1 a2 a3 = (addVelocityWithDirection_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

addVelocityWithDirection_impl :: BasicVelocityInterface -> Int64 -> Direction.Direction -> Direction.Direction -> IO (())
addVelocityWithDirection_impl this magnitude direction otherDirection = javaAbstractMethod "addVelocityWithDirection"


setVelocityWithBigDecimal :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
setVelocityWithBigDecimal object_ a1 a2 a3 = jmethod object_ "setVelocityWithBigDecimal" (\() -> (setVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

setVelocityWithBigDecimal_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
setVelocityWithBigDecimal_super object_ a1 a2 a3 = (setVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

setVelocityWithBigDecimal_impl :: BasicVelocityInterface -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
setVelocityWithBigDecimal_impl this magnitudeBasicDecimal angle otherAngle = javaAbstractMethod "setVelocityWithBigDecimal"


addVelocityWithBigDecimal :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
addVelocityWithBigDecimal object_ a1 a2 a3 = jmethod object_ "addVelocityWithBigDecimal" (\() -> (addVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

addVelocityWithBigDecimal_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
addVelocityWithBigDecimal_super object_ a1 a2 a3 = (addVelocityWithBigDecimal_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

addVelocityWithBigDecimal_impl :: BasicVelocityInterface -> BasicDecimal.BasicDecimal -> Angle.Angle -> Angle.Angle -> IO (())
addVelocityWithBigDecimal_impl this magnitudeBasicDecimal angle otherAngle = javaAbstractMethod "addVelocityWithBigDecimal"


setVelocity :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
setVelocity object_ a1 a2 a3 = jmethod object_ "setVelocity" (\() -> (setVelocity_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

setVelocity_super :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
setVelocity_super object_ a1 a2 a3 = (setVelocity_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

setVelocity_impl :: BasicVelocityInterface -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
setVelocity_impl this magnitude angle otherAngle = javaAbstractMethod "setVelocity"


addVelocity :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
addVelocity object_ a1 a2 a3 = jmethod object_ "addVelocity" (\() -> (addVelocity_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

addVelocity_super :: (JavaObjectClass this_) => this_ -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
addVelocity_super object_ a1 a2 a3 = (addVelocity_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

addVelocity_impl :: BasicVelocityInterface -> Int64 -> Angle.Angle -> Angle.Angle -> IO (())
addVelocity_impl this magnitude angle otherAngle = javaAbstractMethod "addVelocity"


addVelocityi :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
addVelocityi object_ a1 a2 a3 = jmethod object_ "addVelocityi" (\() -> (addVelocityi_impl (javaCast object_ :: BasicVelocityInterface))) () a1 a2 a3

addVelocityi_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
addVelocityi_super object_ a1 a2 a3 = (addVelocityi_impl (javaCast object_ :: BasicVelocityInterface)) a1 a2 a3

addVelocityi_impl :: BasicVelocityInterface -> Int64 -> Int -> Int -> IO (())
addVelocityi_impl this magnitude angle otherAngle = javaAbstractMethod "addVelocityi"


