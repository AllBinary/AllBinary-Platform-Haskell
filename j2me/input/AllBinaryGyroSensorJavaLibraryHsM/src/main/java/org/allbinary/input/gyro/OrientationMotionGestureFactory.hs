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
-- package org.allbinary.input.gyro
module OrientationMotionGestureFactory where

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
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified NullUtil -- org.allbinary.logic.NullUtil

data OrientationMotionGestureFactory = OrientationMotionGestureFactory
    { header_ :: JavaHeader
    , lEFT :: IORef (MotionGestureInput.MotionGestureInput)
    , rIGHT :: IORef (MotionGestureInput.MotionGestureInput)
    , uP :: IORef (MotionGestureInput.MotionGestureInput)
    , dOWN :: IORef (MotionGestureInput.MotionGestureInput)
    , rOLL_LEFT :: IORef (MotionGestureInput.MotionGestureInput)
    , rOLL_RIGHT :: IORef (MotionGestureInput.MotionGestureInput)
    }

instance JavaNull OrientationMotionGestureFactory where
    javaNull = javaNullRecord "OrientationMotionGestureFactory"

instance JavaEquals OrientationMotionGestureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrientationMotionGestureFactory where
    (==) = jrecordEquals

instance JavaObjectClass OrientationMotionGestureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrientationMotionGestureFactory
newRecord_ = do
    header_ <- newJavaHeader
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    uP <- newIORef javaNull
    dOWN <- newIORef javaNull
    rOLL_LEFT <- newIORef javaNull
    rOLL_RIGHT <- newIORef javaNull
    let this = OrientationMotionGestureFactory header_ lEFT rIGHT uP dOWN rOLL_LEFT rOLL_RIGHT
    jregisterLevel header_ this
    pure this

initFields_ :: OrientationMotionGestureFactory -> IO ()
initFields_ this = do
    jset this.lEFT (javaNull)
    jset this.rIGHT (javaNull)
    jset this.uP (javaNull)
    jset this.dOWN (javaNull)
    jset this.rOLL_LEFT (javaNull)
    jset this.rOLL_RIGHT (javaNull)
    pure ()


getInstance :: IO (OrientationMotionGestureFactory)
getInstance = do
        when ((jget OrientationMotionGestureFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset OrientationMotionGestureFactory.instance_ (assignedValue)
        pure ((javaCast (jget OrientationMotionGestureFactory.instance_) :: OrientationMotionGestureFactory))

new_ :: IO OrientationMotionGestureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrientationMotionGestureFactory -> IO ()
init_ this = do
        initFields_ this
        let mAX = (jget ((jio (InputFactory.getInstance))).mAX)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 20) "Left Orient")
        jset (this).lEFT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 21) "Right Orient")
        jset (this).rIGHT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 22) "Up Orient")
        jset (this).uP (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 23) "Down Orient")
        jset (this).dOWN (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 24) "Roll Left")
        jset (this).rOLL_LEFT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 25) "Roll Right")
        jset (this).rOLL_RIGHT (assignedValue)
        pure ()


