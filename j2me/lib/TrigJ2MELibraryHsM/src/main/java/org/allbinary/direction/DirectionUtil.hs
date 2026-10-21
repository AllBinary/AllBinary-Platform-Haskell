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
-- package org.allbinary.direction
module DirectionUtil where

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
import qualified DirectionFactory -- same package or java.lang
import qualified Direction -- same package or java.lang
import qualified NamedAngle -- same package or java.lang
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory

data DirectionUtil = DirectionUtil
    { header_ :: JavaHeader
    , directionArray :: IORef (JavaArray (Angle.Angle))
    , directionArray2 :: IORef (JavaArray (Angle.Angle))
    }

instance JavaNull DirectionUtil where
    javaNull = javaNullRecord "DirectionUtil"

instance JavaEquals DirectionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectionUtil where
    (==) = jrecordEquals

instance JavaObjectClass DirectionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DirectionUtil
newRecord_ = do
    header_ <- newJavaHeader
    directionArray <- newIORef javaNull
    directionArray2 <- newIORef javaNull
    let this = DirectionUtil header_ directionArray directionArray2
    jregisterLevel header_ this
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "getFrameAngle" (\() -> getFrameAngle_impl this)
    pure this

initFields_ :: DirectionUtil -> IO ()
initFields_ this = do
    jset this.directionArray ((jnewArray (10) javaNull))
    jset this.directionArray2 ((jnewArray (10) javaNull))
    pure ()


getInstance :: IO (DirectionUtil)
getInstance = do
        pure (DirectionUtil.instance_)

new_ :: IO DirectionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DirectionUtil -> IO ()
init_ this = do
        initFields_ this
        angleFactory <- (AngleFactory.getInstance)
        directionFactory <- (DirectionFactory.getInstance)
        jsetIndex ((jget (this).directionArray)) ((jio (Direction.getValue ((jget (directionFactory).lEFT))))) ((javaCast (jget (angleFactory).lEFT) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray)) ((jio (Direction.getValue ((jget (directionFactory).rIGHT))))) ((javaCast (jget (angleFactory).rIGHT) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray)) ((jio (Direction.getValue ((jget (directionFactory).uP))))) ((javaCast (jget (angleFactory).uP) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray)) ((jio (Direction.getValue ((jget (directionFactory).dOWN))))) ((javaCast (jget (angleFactory).dOWN) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray2)) ((jio (Direction.getValue ((jget (directionFactory).lEFT))))) ((javaCast (jget (angleFactory).lEFT) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray2)) ((jio (Direction.getValue ((jget (directionFactory).rIGHT))))) ((javaCast (jget (angleFactory).rIGHT) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray2)) ((jio (Direction.getValue ((jget (directionFactory).uP))))) ((javaCast (jget (angleFactory).uP) :: Angle.Angle))
        jsetIndex ((jget (this).directionArray2)) ((jio (Direction.getValue ((jget (directionFactory).dOWN))))) ((javaCast (jget (angleFactory).dOWN) :: Angle.Angle))
        pure ()


getAngle :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (Angle.Angle)
getAngle object_ a1 = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: DirectionUtil))) () a1

getAngle_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (Angle.Angle)
getAngle_super object_ a1 = (getAngle_impl (javaCast object_ :: DirectionUtil)) a1

getAngle_impl :: DirectionUtil -> Direction.Direction -> IO (Angle.Angle)
getAngle_impl this direction = do
        pure ((jindex ((jget (this).directionArray2)) ((jio (Direction.getValue direction)))))


getFrameAngle :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (Angle.Angle)
getFrameAngle object_ a1 = jmethod object_ "getFrameAngle" (\() -> (getFrameAngle_impl (javaCast object_ :: DirectionUtil))) () a1

getFrameAngle_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (Angle.Angle)
getFrameAngle_super object_ a1 = (getFrameAngle_impl (javaCast object_ :: DirectionUtil)) a1

getFrameAngle_impl :: DirectionUtil -> Direction.Direction -> IO (Angle.Angle)
getFrameAngle_impl this direction = do
        pure ((jindex ((jget (this).directionArray)) ((jio (Direction.getValue direction)))))


