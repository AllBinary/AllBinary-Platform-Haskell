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
-- package org.allbinary.game.physics.acceleration
module GravityUtil where

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
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties

data GravityUtil = GravityUtil
    { header_ :: JavaHeader
    , gAME_GRAVITY_VELOCITY :: IORef (Int)
    , mAX_GAME_VELOCITY :: IORef (Int)
    }

instance JavaNull GravityUtil where
    javaNull = javaNullRecord "GravityUtil"

instance JavaEquals GravityUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GravityUtil where
    (==) = jrecordEquals

instance JavaObjectClass GravityUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GravityUtil
newRecord_ = do
    header_ <- newJavaHeader
    gAME_GRAVITY_VELOCITY <- newIORef 0
    mAX_GAME_VELOCITY <- newIORef 0
    let this = GravityUtil header_ gAME_GRAVITY_VELOCITY mAX_GAME_VELOCITY
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: GravityUtil -> IO ()
initFields_ this = do
    jset this.gAME_GRAVITY_VELOCITY (1800)
    jset this.mAX_GAME_VELOCITY (18000)
    pure ()

new_ :: IO GravityUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GravityUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GravityUtil)
getInstance = do
        pure (GravityUtil.instance_)


process :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GravityUtil))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: GravityUtil)) a1 a2

process_impl :: GravityUtil -> BasicVelocityProperties.BasicVelocityProperties -> Int -> IO (())
process_impl this velocityProperties customGravity = do
        Control.Monad.void (BasicDecimal.addint ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP velocityProperties))) customGravity)
        pure ()


