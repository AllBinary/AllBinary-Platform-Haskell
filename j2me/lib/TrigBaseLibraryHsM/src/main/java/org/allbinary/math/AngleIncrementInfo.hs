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
module AngleIncrementInfo where

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
import qualified FrameUtil -- same package or java.lang
import qualified NamedAngle -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified JsProperty -- jsinterop.annotations.JsProperty
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor

data AngleIncrementInfo = AngleIncrementInfo
    { header_ :: JavaHeader
    , angleIncrement :: IORef (Int16)
    , dOWN_FRAME :: IORef (Int)
    , uP_FRAME :: IORef (Int)
    , lEFT_FRAME :: IORef (Int)
    , rIGHT_FRAME :: IORef (Int)
    , frameUtil :: IORef (FrameUtil.FrameUtil)
    }

instance JavaNull AngleIncrementInfo where
    javaNull = javaNullRecord "AngleIncrementInfo"

instance JavaEquals AngleIncrementInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AngleIncrementInfo where
    (==) = jrecordEquals

instance JavaObjectClass AngleIncrementInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iNCREMENT = "Inc: "

newRecord_ :: IO AngleIncrementInfo
newRecord_ = do
    header_ <- newJavaHeader
    angleIncrement <- newIORef 0
    dOWN_FRAME <- newIORef javaNull
    uP_FRAME <- newIORef javaNull
    lEFT_FRAME <- newIORef javaNull
    rIGHT_FRAME <- newIORef javaNull
    frameUtil <- newIORef javaNull
    let this = AngleIncrementInfo header_ angleIncrement dOWN_FRAME uP_FRAME lEFT_FRAME rIGHT_FRAME frameUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getFrameAngle" (\() -> getFrameAngle_impl this)
    jregisterMethod header_ "getAngleIncrement" (\() -> getAngleIncrement_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getClosestGeneralDirection" (\() -> getClosestGeneralDirection_impl this)
    pure this

initFields_ :: AngleIncrementInfo -> IO ()
initFields_ this = do
    jset this.angleIncrement (0)
    jset this.dOWN_FRAME (javaNull)
    jset this.uP_FRAME (javaNull)
    jset this.lEFT_FRAME (javaNull)
    jset this.rIGHT_FRAME (javaNull)
    jset this.frameUtil =<< (FrameUtil.getInstance)
    pure ()

new_1 :: Int16 -> IO AngleIncrementInfo
new_1 angleIncrement = do
    this <- newRecord_
    init_1 this angleIncrement
    pure this

init_1 :: AngleIncrementInfo -> Int16 -> IO ()
init_1 this angleIncrement = do
        initFields_ this
        jset (this).angleIncrement (angleIncrement)
        angleFactory <- (AngleFactory.getInstance)
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (((Prelude.fromIntegral (jio (NamedAngle.getValue ((jget (angleFactory).dOWN))))) `quot` (Prelude.fromIntegral (jget (this).angleIncrement))) :: Int))
        jset (this).dOWN_FRAME (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (Prelude.fromIntegral (jio (NamedAngle.getValue ((jget (angleFactory).uP))))))
        jset (this).uP_FRAME (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (((Prelude.fromIntegral (jio (NamedAngle.getValue ((jget (angleFactory).lEFT))))) `quot` (Prelude.fromIntegral (jget (this).angleIncrement))) :: Int))
        jset (this).lEFT_FRAME (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (((Prelude.fromIntegral (jio (NamedAngle.getValue ((jget (angleFactory).rIGHT))))) `quot` (Prelude.fromIntegral (jget (this).angleIncrement))) :: Int))
        jset (this).rIGHT_FRAME (assignedValue)
        pure ()


getFrameAngle :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getFrameAngle object_ a1 = jmethod object_ "getFrameAngle" (\() -> (getFrameAngle_impl (javaCast object_ :: AngleIncrementInfo))) () a1

getFrameAngle_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getFrameAngle_super object_ a1 = (getFrameAngle_impl (javaCast object_ :: AngleIncrementInfo)) a1

getFrameAngle_impl :: AngleIncrementInfo -> Int -> IO (Int)
getFrameAngle_impl this frame = do
        (FrameUtil.getFrameAngle ((jget (this).frameUtil)) frame (Prelude.fromIntegral (jget (this).angleIncrement)))


getAngleIncrement :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement object_ = jmethod object_ "getAngleIncrement" (\() -> (getAngleIncrement_impl (javaCast object_ :: AngleIncrementInfo))) ()

getAngleIncrement_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngleIncrement_super object_ = (getAngleIncrement_impl (javaCast object_ :: AngleIncrementInfo))

getAngleIncrement_impl :: AngleIncrementInfo -> IO (Int16)
getAngleIncrement_impl this = do
        pure ((jget (this).angleIncrement))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AngleIncrementInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AngleIncrementInfo))

toString_impl :: AngleIncrementInfo -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendshort ((jio (StringMaker.append ((jio (StringMaker.new_))) (AngleIncrementInfo.iNCREMENT)))) (jget (this).angleIncrement)))))


getClosestGeneralDirection :: (JavaObjectClass this_) => this_ -> Int16 -> IO (Int)
getClosestGeneralDirection object_ a1 = jmethod object_ "getClosestGeneralDirection" (\() -> (getClosestGeneralDirection_impl (javaCast object_ :: AngleIncrementInfo))) () a1

getClosestGeneralDirection_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (Int)
getClosestGeneralDirection_super object_ a1 = (getClosestGeneralDirection_impl (javaCast object_ :: AngleIncrementInfo)) a1

getClosestGeneralDirection_impl :: AngleIncrementInfo -> Int16 -> IO (Int)
getClosestGeneralDirection_impl this angle = do
        closestDirection <- newIORef =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 360)
        when (((jget (this).uP_FRAME) - (Prelude.fromIntegral angle)) < ((jget closestDirection) - (Prelude.fromIntegral angle))) $ do
            jset closestDirection ((jget (this).uP_FRAME))
        when (((jget (this).dOWN_FRAME) - (Prelude.fromIntegral angle)) < ((jget closestDirection) - (Prelude.fromIntegral angle))) $ do
            jset closestDirection ((jget (this).dOWN_FRAME))
        when (((jget (this).lEFT_FRAME) - (Prelude.fromIntegral angle)) < ((jget closestDirection) - (Prelude.fromIntegral angle))) $ do
            jset closestDirection ((jget (this).lEFT_FRAME))
        when (((jget (this).rIGHT_FRAME) - (Prelude.fromIntegral angle)) < ((jget closestDirection) - (Prelude.fromIntegral angle))) $ do
            jset closestDirection ((jget (this).rIGHT_FRAME))
        pure ((jget closestDirection))


