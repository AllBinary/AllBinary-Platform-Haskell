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
-- package org.allbinary.game.layer
module Driver where

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
import qualified Aggression -- same package or java.lang
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory

data Driver = Driver
    { header_ :: JavaHeader
    , turnSpeed :: IORef (Int)
    , trackPathSelectionSkill :: IORef (Int)
    , aggression :: IORef (Aggression.Aggression)
    }

instance JavaNull Driver where
    javaNull = javaNullRecord "Driver"

instance JavaEquals Driver where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Driver where
    (==) = jrecordEquals

instance JavaObjectClass Driver where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_DRIVER #-}
nULL_DRIVER = unsafePerformIO ((new_3 (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)) (jio (Aggression.new_3 (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0))))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Driver
newRecord_ = do
    header_ <- newJavaHeader
    turnSpeed <- newIORef javaNull
    trackPathSelectionSkill <- newIORef javaNull
    aggression <- newIORef javaNull
    let this = Driver header_ turnSpeed trackPathSelectionSkill aggression
    jregisterLevel header_ this
    jregisterMethod header_ "getTurnSpeed" (\() -> getTurnSpeed_impl this)
    jregisterMethod header_ "setTurnSpeed" (\() -> setTurnSpeed_impl this)
    jregisterMethod header_ "getTrackPathSelectionSkill" (\() -> getTrackPathSelectionSkill_impl this)
    jregisterMethod header_ "setTrackPathSelectionSkill" (\() -> setTrackPathSelectionSkill_impl this)
    jregisterMethod header_ "getAggression" (\() -> getAggression_impl this)
    jregisterMethod header_ "setAggression" (\() -> setAggression_impl this)
    pure this

initFields_ :: Driver -> IO ()
initFields_ this = do
    jset this.turnSpeed =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)
    jset this.trackPathSelectionSkill =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)
    jset this.aggression (javaNull)
    pure ()

new_3 :: Int -> Int -> Aggression.Aggression -> IO Driver
new_3 turnSpeed trackPathSelectionSkill aggression = do
    this <- newRecord_
    init_3 this turnSpeed trackPathSelectionSkill aggression
    pure this

init_3 :: Driver -> Int -> Int -> Aggression.Aggression -> IO ()
init_3 this turnSpeed trackPathSelectionSkill aggression = do
        initFields_ this
        Control.Monad.void (Driver.setTurnSpeed this turnSpeed)
        Control.Monad.void (Driver.setTrackPathSelectionSkill this trackPathSelectionSkill)
        jset (this).aggression (aggression)
        pure ()


getTurnSpeed :: (JavaObjectClass this_) => this_ -> IO (Int)
getTurnSpeed object_ = jmethod object_ "getTurnSpeed" (\() -> (getTurnSpeed_impl (javaCast object_ :: Driver))) ()

getTurnSpeed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTurnSpeed_super object_ = (getTurnSpeed_impl (javaCast object_ :: Driver))

getTurnSpeed_impl :: Driver -> IO (Int)
getTurnSpeed_impl this = do
        pure ((jget (this).turnSpeed))


setTurnSpeed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTurnSpeed object_ a1 = jmethod object_ "setTurnSpeed" (\() -> (setTurnSpeed_impl (javaCast object_ :: Driver))) () a1

setTurnSpeed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTurnSpeed_super object_ a1 = (setTurnSpeed_impl (javaCast object_ :: Driver)) a1

setTurnSpeed_impl :: Driver -> Int -> IO (())
setTurnSpeed_impl this turnSpeed = do
        jset (this).turnSpeed (turnSpeed)
        pure ()


getTrackPathSelectionSkill :: (JavaObjectClass this_) => this_ -> IO (Int)
getTrackPathSelectionSkill object_ = jmethod object_ "getTrackPathSelectionSkill" (\() -> (getTrackPathSelectionSkill_impl (javaCast object_ :: Driver))) ()

getTrackPathSelectionSkill_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTrackPathSelectionSkill_super object_ = (getTrackPathSelectionSkill_impl (javaCast object_ :: Driver))

getTrackPathSelectionSkill_impl :: Driver -> IO (Int)
getTrackPathSelectionSkill_impl this = do
        pure ((jget (this).trackPathSelectionSkill))


setTrackPathSelectionSkill :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTrackPathSelectionSkill object_ a1 = jmethod object_ "setTrackPathSelectionSkill" (\() -> (setTrackPathSelectionSkill_impl (javaCast object_ :: Driver))) () a1

setTrackPathSelectionSkill_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTrackPathSelectionSkill_super object_ a1 = (setTrackPathSelectionSkill_impl (javaCast object_ :: Driver)) a1

setTrackPathSelectionSkill_impl :: Driver -> Int -> IO (())
setTrackPathSelectionSkill_impl this trackPathSelectionSkill = do
        jset (this).trackPathSelectionSkill (trackPathSelectionSkill)
        pure ()


getAggression :: (JavaObjectClass this_) => this_ -> IO (Aggression.Aggression)
getAggression object_ = jmethod object_ "getAggression" (\() -> (getAggression_impl (javaCast object_ :: Driver))) ()

getAggression_super :: (JavaObjectClass this_) => this_ -> IO (Aggression.Aggression)
getAggression_super object_ = (getAggression_impl (javaCast object_ :: Driver))

getAggression_impl :: Driver -> IO (Aggression.Aggression)
getAggression_impl this = do
        pure ((jget (this).aggression))


setAggression :: (JavaObjectClass this_) => this_ -> Aggression.Aggression -> IO (())
setAggression object_ a1 = jmethod object_ "setAggression" (\() -> (setAggression_impl (javaCast object_ :: Driver))) () a1

setAggression_super :: (JavaObjectClass this_) => this_ -> Aggression.Aggression -> IO (())
setAggression_super object_ a1 = (setAggression_impl (javaCast object_ :: Driver)) a1

setAggression_impl :: Driver -> Aggression.Aggression -> IO (())
setAggression_impl this aggression = do
        jset (this).aggression (aggression)
        pure ()


