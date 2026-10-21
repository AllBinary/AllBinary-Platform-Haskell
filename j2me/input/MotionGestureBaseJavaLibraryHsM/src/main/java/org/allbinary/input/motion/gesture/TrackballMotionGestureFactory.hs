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
-- package org.allbinary.input.motion.gesture
module TrackballMotionGestureFactory where

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
import qualified Any -- same package or java.lang
import qualified MotionGestureInput -- same package or java.lang
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil

data TrackballMotionGestureFactory = TrackballMotionGestureFactory
    { header_ :: JavaHeader
    , lEFT :: IORef (MotionGestureInput.MotionGestureInput)
    , rIGHT :: IORef (MotionGestureInput.MotionGestureInput)
    , uP :: IORef (MotionGestureInput.MotionGestureInput)
    , dOWN :: IORef (MotionGestureInput.MotionGestureInput)
    }

instance JavaNull TrackballMotionGestureFactory where
    javaNull = javaNullRecord "TrackballMotionGestureFactory"

instance JavaEquals TrackballMotionGestureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrackballMotionGestureFactory where
    (==) = jrecordEquals

instance JavaObjectClass TrackballMotionGestureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TrackballMotionGestureFactory
newRecord_ = do
    header_ <- newJavaHeader
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    uP <- newIORef javaNull
    dOWN <- newIORef javaNull
    let this = TrackballMotionGestureFactory header_ lEFT rIGHT uP dOWN
    jregisterLevel header_ this
    pure this

initFields_ :: TrackballMotionGestureFactory -> IO ()
initFields_ this = do
    jset this.lEFT (javaNull)
    jset this.rIGHT (javaNull)
    jset this.uP (javaNull)
    jset this.dOWN (javaNull)
    pure ()


getInstance :: IO (TrackballMotionGestureFactory)
getInstance = do
        when ((jget TrackballMotionGestureFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset TrackballMotionGestureFactory.instance_ (assignedValue)
        pure ((javaCast (jget TrackballMotionGestureFactory.instance_) :: TrackballMotionGestureFactory))

new_ :: IO TrackballMotionGestureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TrackballMotionGestureFactory -> IO ()
init_ this = do
        initFields_ this
        let mAX = (jget ((jio (InputFactory.getInstance))).mAX)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 26) "L Trackball")
        jset (this).lEFT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 27) "R Trackball")
        jset (this).rIGHT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 28) "Up Trackball")
        jset (this).uP (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 29) "D Trackball")
        jset (this).dOWN (assignedValue)
        pure ()


