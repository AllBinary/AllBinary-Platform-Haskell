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
module AngleFactory where

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
import qualified Angle -- same package or java.lang
import qualified NamedAngle -- same package or java.lang
import qualified FrameUtil -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data AngleFactory = AngleFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tOTAL_ANGLE :: IORef (Int16)
    , qUARTER_TOTAL_ANGLE :: IORef (Int16)
    , angleArray :: IORef (JavaArray (Angle.Angle))
    , nEGATIVE_ONE :: IORef (Int16)
    , nOT_ANGLE :: IORef (NamedAngle.NamedAngle)
    , dOWN :: IORef (NamedAngle.NamedAngle)
    , uP :: IORef (NamedAngle.NamedAngle)
    , lEFT :: IORef (NamedAngle.NamedAngle)
    , rIGHT :: IORef (NamedAngle.NamedAngle)
    , frameUtil :: IORef (FrameUtil.FrameUtil)
    }

instance JavaNull AngleFactory where
    javaNull = javaNullRecord "AngleFactory"

instance JavaEquals AngleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AngleFactory where
    (==) = jrecordEquals

instance JavaObjectClass AngleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AngleFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    tOTAL_ANGLE <- newIORef 0
    qUARTER_TOTAL_ANGLE <- newIORef 0
    angleArray <- newIORef javaNull
    nEGATIVE_ONE <- newIORef 0
    nOT_ANGLE <- newIORef javaNull
    dOWN <- newIORef javaNull
    uP <- newIORef javaNull
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    frameUtil <- newIORef javaNull
    let this = AngleFactory header_ logUtil tOTAL_ANGLE qUARTER_TOTAL_ANGLE angleArray nEGATIVE_ONE nOT_ANGLE dOWN uP lEFT rIGHT frameUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getAt" (\() -> getAt_impl this)
    jregisterMethod header_ "getClosestDirection" (\() -> getClosestDirection_impl this)
    jregisterMethod header_ "getGeneralDirection" (\() -> getGeneralDirection_impl this)
    pure this

initFields_ :: AngleFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tOTAL_ANGLE (360)
    jset this.qUARTER_TOTAL_ANGLE (90)
    jset this.angleArray ((jnewArray ((Prelude.fromIntegral (jget (this).tOTAL_ANGLE))) javaNull))
    jset this.nEGATIVE_ONE ((Prelude.fromIntegral ((Prelude.negate 1) :: Int)))
    jset this.nOT_ANGLE =<< (NamedAngle.new_2 (jget (this).nEGATIVE_ONE) (jget ((jio (CommonStrings.getInstance))).eMPTY))
    jset this.dOWN (javaNull)
    jset this.uP (javaNull)
    jset this.lEFT (javaNull)
    jset this.rIGHT (javaNull)
    jset this.frameUtil =<< (FrameUtil.getInstance)
    pure ()


getInstance :: IO (AngleFactory)
getInstance = do
        pure (AngleFactory.instance_)

new_ :: IO AngleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AngleFactory -> IO ()
init_ this = do
        initFields_ this
        commonPhoneStrings <- (CommonPhoneStrings.getInstance)
        let total = (Prelude.fromIntegral (jlength (jget (this).angleArray)))
        assignedValue <- (NamedAngle.new_2 (Prelude.fromIntegral (0 :: Int)) (jget (commonPhoneStrings).uP))
        jset (this).uP (assignedValue)
        jsetIndex ((jget (this).angleArray)) (0) ((javaCast (jget (this).uP) :: Angle.Angle))
        forM_ [1 .. 90 - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (Angle.new_1 (Prelude.fromIntegral index))
            jsetIndex ((jget (this).angleArray)) (index) (assignedValue)
        assignedValue <- (NamedAngle.new_2 (Prelude.fromIntegral (90 :: Int)) (jget (commonPhoneStrings).rIGHT))
        jset (this).rIGHT (assignedValue)
        jsetIndex ((jget (this).angleArray)) (90) ((javaCast (jget (this).rIGHT) :: Angle.Angle))
        forM_ [91 .. 180 - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (Angle.new_1 (Prelude.fromIntegral index))
            jsetIndex ((jget (this).angleArray)) (index) (assignedValue)
        assignedValue <- (NamedAngle.new_2 (Prelude.fromIntegral (180 :: Int)) (jget (commonPhoneStrings).dOWN))
        jset (this).dOWN (assignedValue)
        jsetIndex ((jget (this).angleArray)) (180) ((javaCast (jget (this).dOWN) :: Angle.Angle))
        forM_ [181 .. 270 - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (Angle.new_1 (Prelude.fromIntegral index))
            jsetIndex ((jget (this).angleArray)) (index) (assignedValue)
        assignedValue <- (NamedAngle.new_2 (Prelude.fromIntegral (270 :: Int)) (jget (commonPhoneStrings).lEFT))
        jset (this).lEFT (assignedValue)
        jsetIndex ((jget (this).angleArray)) (270) ((javaCast (jget (this).lEFT) :: Angle.Angle))
        forM_ [271 .. total - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (Angle.new_1 (Prelude.fromIntegral index))
            jsetIndex ((jget (this).angleArray)) (index) (assignedValue)
        pure ()


getAt :: (JavaObjectClass this_) => this_ -> Int -> IO (Angle.Angle)
getAt object_ a1 = jmethod object_ "getAt" (\() -> (getAt_impl (javaCast object_ :: AngleFactory))) () a1

getAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Angle.Angle)
getAt_super object_ a1 = (getAt_impl (javaCast object_ :: AngleFactory)) a1

getAt_impl :: AngleFactory -> Int -> IO (Angle.Angle)
getAt_impl this index = do
        let adjustedIndex = (jio (FrameUtil.adjustAngleToFrameAngle ((jget (this).frameUtil)) index))
        pure ((jindex ((jget (this).angleArray)) (adjustedIndex)))


getClosestDirection :: (JavaObjectClass this_) => this_ -> Int -> IO (Angle.Angle)
getClosestDirection object_ a1 = jmethod object_ "getClosestDirection" (\() -> (getClosestDirection_impl (javaCast object_ :: AngleFactory))) () a1

getClosestDirection_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Angle.Angle)
getClosestDirection_super object_ a1 = (getClosestDirection_impl (javaCast object_ :: AngleFactory)) a1

getClosestDirection_impl :: AngleFactory -> Int -> IO (Angle.Angle)
getClosestDirection_impl this angle = do
    javaCatchReturn $ do
        if ((((angle >= 315) && (angle < 360))) || (((angle >= 0) && (angle < 45)))) then do
            javaReturn ((javaCast (jget (this).uP) :: Angle.Angle))
        else if ((angle >= 45) && (angle < 135)) then do
            javaReturn ((javaCast (jget (this).rIGHT) :: Angle.Angle))
        else if ((angle >= 135) && (angle < 225)) then do
            javaReturn ((javaCast (jget (this).dOWN) :: Angle.Angle))
        else when ((angle >= 225) && (angle < 315)) $ do
            javaReturn ((javaCast (jget (this).lEFT) :: Angle.Angle))
        javaThrow ((JavaException "RuntimeException" ""))


getGeneralDirection :: (JavaObjectClass this_) => this_ -> IO (Angle.Angle)
getGeneralDirection object_ = jmethod object_ "getGeneralDirection" (\() -> (getGeneralDirection_impl (javaCast object_ :: AngleFactory))) ()

getGeneralDirection_super :: (JavaObjectClass this_) => this_ -> IO (Angle.Angle)
getGeneralDirection_super object_ = (getGeneralDirection_impl (javaCast object_ :: AngleFactory))

getGeneralDirection_impl :: AngleFactory -> IO (Angle.Angle)
getGeneralDirection_impl this = do
        pure ((javaCast (jget (this).nOT_ANGLE) :: Angle.Angle))


main :: JavaArray (String) -> IO (())
main args = do
        stringMaker <- (StringMaker.new_)
        angleFactory <- (AngleFactory.getInstance)
        forM_ [0 .. 360 - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append ((jio (StringMaker.appendshort ((jio (StringMaker.append ((jio (StringMaker.appendint stringMaker index))) (jget ((jio (CommonSeps.getInstance))).fORWARD_SLASH)))) (jio (Angle.getValue ((jio (AngleFactory.getClosestDirection angleFactory index)))))))) (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (LogUtil.putF ((jio (LogUtil.getInstance))) (jio (StringMaker.toString stringMaker)) "main" "main")
        pure ()


