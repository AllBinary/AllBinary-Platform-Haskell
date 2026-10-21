{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input.analog
module AnalogLocationInput where

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
import qualified CustomGPoint -- org.allbinary.graphics.CustomGPoint

data AnalogLocationInput = AnalogLocationInput
    { header_ :: JavaHeader
    , playerId :: IORef (Int)
    , customGPoint :: IORef (CustomGPoint.CustomGPoint)
    , rz :: IORef (Int)
    , rightTrigger :: IORef (Int)
    , leftTrigger :: IORef (Int)
    }

instance JavaNull AnalogLocationInput where
    javaNull = javaNullRecord "AnalogLocationInput"

instance JavaEquals AnalogLocationInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogLocationInput where
    (==) = jrecordEquals

instance JavaObjectClass AnalogLocationInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ANALOG_LOCATION_INPUT #-}
nULL_ANALOG_LOCATION_INPUT = unsafePerformIO ((new_1 (Prelude.negate 1)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogLocationInput
newRecord_ = do
    header_ <- newJavaHeader
    playerId <- newIORef 0
    customGPoint <- newIORef javaNull
    rz <- newIORef 0
    rightTrigger <- newIORef 0
    leftTrigger <- newIORef 0
    let this = AnalogLocationInput header_ playerId customGPoint rz rightTrigger leftTrigger
    jregisterLevel header_ this
    jregisterMethod header_ "getPlayerId" (\() -> getPlayerId_impl this)
    jregisterMethod header_ "getCustomGPoint" (\() -> getCustomGPoint_impl this)
    jregisterMethod header_ "getRz" (\() -> getRz_impl this)
    jregisterMethod header_ "setRz" (\() -> setRz_impl this)
    jregisterMethod header_ "getRightTrigger" (\() -> getRightTrigger_impl this)
    jregisterMethod header_ "setRightTrigger" (\() -> setRightTrigger_impl this)
    jregisterMethod header_ "getLeftTrigger" (\() -> getLeftTrigger_impl this)
    jregisterMethod header_ "setLeftTrigger" (\() -> setLeftTrigger_impl this)
    pure this

initFields_ :: AnalogLocationInput -> IO ()
initFields_ this = do
    jset this.playerId (0)
    jset this.customGPoint (javaNull)
    jset this.rz (0)
    jset this.rightTrigger (0)
    jset this.leftTrigger (0)
    pure ()

new_1 :: Int -> IO AnalogLocationInput
new_1 playerId = do
    this <- newRecord_
    init_1 this playerId
    pure this

init_1 :: AnalogLocationInput -> Int -> IO ()
init_1 this playerId = do
        initFields_ this
        jset (this).playerId (playerId)
        assignedValue <- (CustomGPoint.new_3 0 0 0)
        jset (this).customGPoint (assignedValue)
        pure ()


getPlayerId :: (JavaObjectClass this_) => this_ -> IO (Int)
getPlayerId object_ = jmethod object_ "getPlayerId" (\() -> (getPlayerId_impl (javaCast object_ :: AnalogLocationInput))) ()

getPlayerId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPlayerId_super object_ = (getPlayerId_impl (javaCast object_ :: AnalogLocationInput))

getPlayerId_impl :: AnalogLocationInput -> IO (Int)
getPlayerId_impl this = do
        pure ((jget (this).playerId))


getCustomGPoint :: (JavaObjectClass this_) => this_ -> IO (CustomGPoint.CustomGPoint)
getCustomGPoint object_ = jmethod object_ "getCustomGPoint" (\() -> (getCustomGPoint_impl (javaCast object_ :: AnalogLocationInput))) ()

getCustomGPoint_super :: (JavaObjectClass this_) => this_ -> IO (CustomGPoint.CustomGPoint)
getCustomGPoint_super object_ = (getCustomGPoint_impl (javaCast object_ :: AnalogLocationInput))

getCustomGPoint_impl :: AnalogLocationInput -> IO (CustomGPoint.CustomGPoint)
getCustomGPoint_impl this = do
        pure ((jget (this).customGPoint))


getRz :: (JavaObjectClass this_) => this_ -> IO (Int)
getRz object_ = jmethod object_ "getRz" (\() -> (getRz_impl (javaCast object_ :: AnalogLocationInput))) ()

getRz_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRz_super object_ = (getRz_impl (javaCast object_ :: AnalogLocationInput))

getRz_impl :: AnalogLocationInput -> IO (Int)
getRz_impl this = do
        pure ((jget (this).rz))


setRz :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRz object_ a1 = jmethod object_ "setRz" (\() -> (setRz_impl (javaCast object_ :: AnalogLocationInput))) () a1

setRz_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRz_super object_ a1 = (setRz_impl (javaCast object_ :: AnalogLocationInput)) a1

setRz_impl :: AnalogLocationInput -> Int -> IO (())
setRz_impl this rz = do
        jset (this).rz (rz)
        pure ()


getRightTrigger :: (JavaObjectClass this_) => this_ -> IO (Int)
getRightTrigger object_ = jmethod object_ "getRightTrigger" (\() -> (getRightTrigger_impl (javaCast object_ :: AnalogLocationInput))) ()

getRightTrigger_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRightTrigger_super object_ = (getRightTrigger_impl (javaCast object_ :: AnalogLocationInput))

getRightTrigger_impl :: AnalogLocationInput -> IO (Int)
getRightTrigger_impl this = do
        pure ((jget (this).rightTrigger))


setRightTrigger :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRightTrigger object_ a1 = jmethod object_ "setRightTrigger" (\() -> (setRightTrigger_impl (javaCast object_ :: AnalogLocationInput))) () a1

setRightTrigger_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRightTrigger_super object_ a1 = (setRightTrigger_impl (javaCast object_ :: AnalogLocationInput)) a1

setRightTrigger_impl :: AnalogLocationInput -> Int -> IO (())
setRightTrigger_impl this rightTrigger = do
        jset (this).rightTrigger (rightTrigger)
        pure ()


getLeftTrigger :: (JavaObjectClass this_) => this_ -> IO (Int)
getLeftTrigger object_ = jmethod object_ "getLeftTrigger" (\() -> (getLeftTrigger_impl (javaCast object_ :: AnalogLocationInput))) ()

getLeftTrigger_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLeftTrigger_super object_ = (getLeftTrigger_impl (javaCast object_ :: AnalogLocationInput))

getLeftTrigger_impl :: AnalogLocationInput -> IO (Int)
getLeftTrigger_impl this = do
        pure ((jget (this).leftTrigger))


setLeftTrigger :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLeftTrigger object_ a1 = jmethod object_ "setLeftTrigger" (\() -> (setLeftTrigger_impl (javaCast object_ :: AnalogLocationInput))) () a1

setLeftTrigger_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLeftTrigger_super object_ a1 = (setLeftTrigger_impl (javaCast object_ :: AnalogLocationInput)) a1

setLeftTrigger_impl :: AnalogLocationInput -> Int -> IO (())
setLeftTrigger_impl this leftTrigger = do
        jset (this).leftTrigger (leftTrigger)
        pure ()


