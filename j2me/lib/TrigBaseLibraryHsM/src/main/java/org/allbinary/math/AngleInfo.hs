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
module AngleInfo where

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
import qualified AngleIncrementInfo -- same package or java.lang
import qualified AngleIncrementInfoFactory -- same package or java.lang
import qualified FrameUtil -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor

data AngleInfo = AngleInfo
    { header_ :: JavaHeader
    , angleIncrementInfo :: IORef (AngleIncrementInfo.AngleIncrementInfo)
    , angle :: IORef (Int16)
    , frameUtil :: IORef (FrameUtil.FrameUtil)
    }

instance JavaNull AngleInfo where
    javaNull = javaNullRecord "AngleInfo"

instance JavaEquals AngleInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AngleInfo where
    (==) = jrecordEquals

instance JavaObjectClass AngleInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

aNGLE = "Angle: "

newRecord_ :: IO AngleInfo
newRecord_ = do
    header_ <- newJavaHeader
    angleIncrementInfo <- newIORef javaNull
    angle <- newIORef 0
    frameUtil <- newIORef javaNull
    let this = AngleInfo header_ angleIncrementInfo angle frameUtil
    jregisterLevel header_ this
    jregisterMethod header_ "adjustAngle" (\() -> adjustAngle_impl this)
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    jregisterMethod header_ "getAngleIncrementInfo" (\() -> getAngleIncrementInfo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AngleInfo -> IO ()
initFields_ this = do
    jset this.angleIncrementInfo (javaNull)
    jset this.angle (0)
    jset this.frameUtil =<< (FrameUtil.getInstance)
    pure ()


getInstance :: Int16 -> IO (AngleInfo)
getInstance angleIncrement = do
        (new_1 (jio (AngleIncrementInfoFactory.getAt ((jio (AngleIncrementInfoFactory.getInstance))) angleIncrement)))

new_1 :: AngleIncrementInfo.AngleIncrementInfo -> IO AngleInfo
new_1 angleIncrementInfo = do
    this <- newRecord_
    init_1 this angleIncrementInfo
    pure this

init_1 :: AngleInfo -> AngleIncrementInfo.AngleIncrementInfo -> IO ()
init_1 this angleIncrementInfo = do
        initFields_ this
        jset (this).angleIncrementInfo (angleIncrementInfo)
        pure ()


adjustAngle :: (JavaObjectClass this_) => this_ -> Int -> IO (())
adjustAngle object_ a1 = jmethod object_ "adjustAngle" (\() -> (adjustAngle_impl (javaCast object_ :: AngleInfo))) () a1

adjustAngle_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
adjustAngle_super object_ a1 = (adjustAngle_impl (javaCast object_ :: AngleInfo)) a1

adjustAngle_impl :: AngleInfo -> Int -> IO (())
adjustAngle_impl this frame = do
        let newAngle = (((Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jget (this).angleIncrementInfo))))) * frame) - 90)
        Control.Monad.void (AngleInfo.setAngle this (Prelude.fromIntegral (jio (FrameUtil.adjustAngleToFrameAngle ((jget (this).frameUtil)) newAngle))))
        pure ()


getAngle :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: AngleInfo))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: AngleInfo))

getAngle_impl :: AngleInfo -> IO (Int16)
getAngle_impl this = do
        pure ((jget (this).angle))


setAngle :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: AngleInfo))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: AngleInfo)) a1

setAngle_impl :: AngleInfo -> Int16 -> IO (())
setAngle_impl this angle = do
        jset (this).angle (angle)
        pure ()


getAngleIncrementInfo :: (JavaObjectClass this_) => this_ -> IO (AngleIncrementInfo.AngleIncrementInfo)
getAngleIncrementInfo object_ = jmethod object_ "getAngleIncrementInfo" (\() -> (getAngleIncrementInfo_impl (javaCast object_ :: AngleInfo))) ()

getAngleIncrementInfo_super :: (JavaObjectClass this_) => this_ -> IO (AngleIncrementInfo.AngleIncrementInfo)
getAngleIncrementInfo_super object_ = (getAngleIncrementInfo_impl (javaCast object_ :: AngleInfo))

getAngleIncrementInfo_impl :: AngleInfo -> IO (AngleIncrementInfo.AngleIncrementInfo)
getAngleIncrementInfo_impl this = do
        pure ((jget (this).angleIncrementInfo))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AngleInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AngleInfo))

toString_impl :: AngleInfo -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (AngleInfo.aNGLE))
        Control.Monad.void (StringMaker.appendshort stringBuffer (jget (this).angle))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (AngleInfo.getAngleIncrementInfo this)))))
        (StringMaker.toString stringBuffer)


