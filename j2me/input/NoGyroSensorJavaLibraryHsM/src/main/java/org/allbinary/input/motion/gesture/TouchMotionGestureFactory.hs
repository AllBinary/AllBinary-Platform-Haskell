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
module TouchMotionGestureFactory where

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

data TouchMotionGestureFactory = TouchMotionGestureFactory
    { header_ :: JavaHeader
    , lEFT :: IORef (MotionGestureInput.MotionGestureInput)
    , rIGHT :: IORef (MotionGestureInput.MotionGestureInput)
    , uP :: IORef (MotionGestureInput.MotionGestureInput)
    , dOWN :: IORef (MotionGestureInput.MotionGestureInput)
    , pRESSED :: IORef (MotionGestureInput.MotionGestureInput)
    , rELEASED :: IORef (MotionGestureInput.MotionGestureInput)
    , dIAGONAL_DOWN_RIGHT :: IORef (MotionGestureInput.MotionGestureInput)
    , dIAGONAL_DOWN_LEFT :: IORef (MotionGestureInput.MotionGestureInput)
    , dIAGONAL_UP_RIGHT :: IORef (MotionGestureInput.MotionGestureInput)
    , dIAGONAL_UP_LEFT :: IORef (MotionGestureInput.MotionGestureInput)
    , sCROLL_UP :: IORef (MotionGestureInput.MotionGestureInput)
    , sCROLL_DOWN :: IORef (MotionGestureInput.MotionGestureInput)
    , nO_MOTION :: IORef (MotionGestureInput.MotionGestureInput)
    , lAST_MOTION :: IORef (MotionGestureInput.MotionGestureInput)
    }

instance JavaNull TouchMotionGestureFactory where
    javaNull = javaNullRecord "TouchMotionGestureFactory"

instance JavaEquals TouchMotionGestureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchMotionGestureFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchMotionGestureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchMotionGestureFactory
newRecord_ = do
    header_ <- newJavaHeader
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    uP <- newIORef javaNull
    dOWN <- newIORef javaNull
    pRESSED <- newIORef javaNull
    rELEASED <- newIORef javaNull
    dIAGONAL_DOWN_RIGHT <- newIORef javaNull
    dIAGONAL_DOWN_LEFT <- newIORef javaNull
    dIAGONAL_UP_RIGHT <- newIORef javaNull
    dIAGONAL_UP_LEFT <- newIORef javaNull
    sCROLL_UP <- newIORef javaNull
    sCROLL_DOWN <- newIORef javaNull
    nO_MOTION <- newIORef javaNull
    lAST_MOTION <- newIORef javaNull
    let this = TouchMotionGestureFactory header_ lEFT rIGHT uP dOWN pRESSED rELEASED dIAGONAL_DOWN_RIGHT dIAGONAL_DOWN_LEFT dIAGONAL_UP_RIGHT dIAGONAL_UP_LEFT sCROLL_UP sCROLL_DOWN nO_MOTION lAST_MOTION
    jregisterLevel header_ this
    pure this

initFields_ :: TouchMotionGestureFactory -> IO ()
initFields_ this = do
    jset this.lEFT (javaNull)
    jset this.rIGHT (javaNull)
    jset this.uP (javaNull)
    jset this.dOWN (javaNull)
    jset this.pRESSED (javaNull)
    jset this.rELEASED (javaNull)
    jset this.dIAGONAL_DOWN_RIGHT (javaNull)
    jset this.dIAGONAL_DOWN_LEFT (javaNull)
    jset this.dIAGONAL_UP_RIGHT (javaNull)
    jset this.dIAGONAL_UP_LEFT (javaNull)
    jset this.sCROLL_UP (javaNull)
    jset this.sCROLL_DOWN (javaNull)
    jset this.nO_MOTION (javaNull)
    jset this.lAST_MOTION (javaNull)
    pure ()


getInstance :: IO (TouchMotionGestureFactory)
getInstance = do
        when ((jget TouchMotionGestureFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset TouchMotionGestureFactory.instance_ (assignedValue)
        pure ((javaCast (jget TouchMotionGestureFactory.instance_) :: TouchMotionGestureFactory))

new_ :: IO TouchMotionGestureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchMotionGestureFactory -> IO ()
init_ this = do
        initFields_ this
        let mAX = (jget ((jio (InputFactory.getInstance))).mAX)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 3) "Left Touch")
        jset (this).lEFT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 4) "Right Touch")
        jset (this).rIGHT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 5) "Up Touch")
        jset (this).uP (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 6) "Down Touch")
        jset (this).dOWN (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 7) "Screen Press")
        jset (this).pRESSED (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 8) "Released")
        jset (this).rELEASED (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 9) "Diagonal Dn R")
        jset (this).dIAGONAL_DOWN_RIGHT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 10) "Diagonal Dn L")
        jset (this).dIAGONAL_DOWN_LEFT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 11) "Diagonal Up R")
        jset (this).dIAGONAL_UP_RIGHT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 12) "Diagonal Up L")
        jset (this).dIAGONAL_UP_LEFT (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 13) "Scroll Up")
        jset (this).sCROLL_UP (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 14) "Scroll Down")
        jset (this).sCROLL_DOWN (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 2) "No Motion")
        jset (this).nO_MOTION (assignedValue)
        assignedValue <- (MotionGestureInput.new_2 (mAX - 19) "Last Motion")
        jset (this).lAST_MOTION (assignedValue)
        pure ()


