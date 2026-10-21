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
-- package org.allbinary.math
module FrameUtil where

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
import qualified AngleFactory -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor

data FrameUtil = FrameUtil
    { header_ :: JavaHeader
    }

instance JavaNull FrameUtil where
    javaNull = javaNullRecord "FrameUtil"

instance JavaEquals FrameUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FrameUtil where
    (==) = jrecordEquals

instance JavaObjectClass FrameUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FrameUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = FrameUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getFrameForAngle" (\() -> getFrameForAngle_impl this)
    jregisterMethod header_ "getFrameAngle" (\() -> getFrameAngle_impl this)
    jregisterMethod header_ "adjustAngleToFrameAngle" (\() -> adjustAngleToFrameAngle_impl this)
    pure this

initFields_ :: FrameUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (FrameUtil)
getInstance = do
        pure (FrameUtil.instance_)

new_ :: IO FrameUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FrameUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getFrameForAngle :: (JavaObjectClass this_) => this_ -> Int16 -> Int -> IO (Int)
getFrameForAngle object_ a1 a2 = jmethod object_ "getFrameForAngle" (\() -> (getFrameForAngle_impl (javaCast object_ :: FrameUtil))) () a1 a2

getFrameForAngle_super :: (JavaObjectClass this_) => this_ -> Int16 -> Int -> IO (Int)
getFrameForAngle_super object_ a1 a2 = (getFrameForAngle_impl (javaCast object_ :: FrameUtil)) a1 a2

getFrameForAngle_impl :: FrameUtil -> Int16 -> Int -> IO (Int)
getFrameForAngle_impl this angle angleIncrement = do
        pure (((jio (FrameUtil.adjustAngleToFrameAngle this (Prelude.fromIntegral angle))) `quot` angleIncrement))


getFrameAngle :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getFrameAngle object_ a1 a2 = jmethod object_ "getFrameAngle" (\() -> (getFrameAngle_impl (javaCast object_ :: FrameUtil))) () a1 a2

getFrameAngle_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getFrameAngle_super object_ a1 a2 = (getFrameAngle_impl (javaCast object_ :: FrameUtil)) a1 a2

getFrameAngle_impl :: FrameUtil -> Int -> Int -> IO (Int)
getFrameAngle_impl this frame angleIncrement = do
        let frameAngle = ((angleIncrement * frame) - 90)
        (FrameUtil.adjustAngleToFrameAngle this frameAngle)


adjustAngleToFrameAngle :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
adjustAngleToFrameAngle object_ a1 = jmethod object_ "adjustAngleToFrameAngle" (\() -> (adjustAngleToFrameAngle_impl (javaCast object_ :: FrameUtil))) () a1

adjustAngleToFrameAngle_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
adjustAngleToFrameAngle_super object_ a1 = (adjustAngleToFrameAngle_impl (javaCast object_ :: FrameUtil)) a1

adjustAngleToFrameAngle_impl :: FrameUtil -> Int -> IO (Int)
adjustAngleToFrameAngle_impl this currentAngle = do
        currentAngle <- newIORef currentAngle
        angleFactory <- (AngleFactory.getInstance)
        when ((jget currentAngle) > 359) $ do
            jset currentAngle ((((jget currentAngle) - (Prelude.fromIntegral (jget (angleFactory).tOTAL_ANGLE)))))
            fix $ \loop -> when ((jget currentAngle) > 359) $ javaIteration (loop) $ do
                jset currentAngle ((((jget currentAngle) - (Prelude.fromIntegral (jget (angleFactory).tOTAL_ANGLE)))))
        when ((jget currentAngle) < 0) $ do
            jset currentAngle ((((jget currentAngle) + (Prelude.fromIntegral (jget (angleFactory).tOTAL_ANGLE)))))
            fix $ \loop -> when ((jget currentAngle) < 0) $ javaIteration (loop) $ do
                jset currentAngle ((((jget currentAngle) + (Prelude.fromIntegral (jget (angleFactory).tOTAL_ANGLE)))))
        pure ((jget currentAngle))


