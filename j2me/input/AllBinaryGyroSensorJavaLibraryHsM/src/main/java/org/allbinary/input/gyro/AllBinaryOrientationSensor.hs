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
module AllBinaryOrientationSensor (module AllBinaryOrientationSensor, module AllBinarySensor) where

import AllBinarySensor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCompleteMotionGestureInputEventListener, setCompleteMotionGestureInputEventListener_super, setCompleteMotionGestureInputEventListener_impl, getOrientation, getOrientation_super, getOrientation_impl, sensorDataFloatArray, listener)
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
import qualified CommonStrings -- same package or java.lang
import qualified CompleteMotionGestureInputEventListenerInterface -- org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
import qualified NoCompleteMotionGestureInputEventListener -- org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener
import qualified AllBinarySensor -- org.allbinary.input.AllBinarySensor
import qualified Orientation -- org.allbinary.logic.math.Orientation
import qualified PrimitiveFloatUtil -- org.allbinary.logic.math.PrimitiveFloatUtil

data AllBinaryOrientationSensor = AllBinaryOrientationSensor
    { header_ :: JavaHeader
    , base :: AllBinarySensor.AllBinarySensor
    , sensorDataFloatArray :: IORef (JavaArray (Float))
    , listener :: IORef (CompleteMotionGestureInputEventListenerInterface.CompleteMotionGestureInputEventListenerInterface)
    }

instance JavaNull AllBinaryOrientationSensor where
    javaNull = javaNullRecord "AllBinaryOrientationSensor"

instance JavaEquals AllBinaryOrientationSensor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryOrientationSensor where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryOrientationSensor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryOrientationSensor
newRecord_ = do
    base <- AllBinarySensor.newRecord_
    let header_ = base.header_
    sensorDataFloatArray <- newIORef javaNull
    listener <- newIORef javaNull
    let this = AllBinaryOrientationSensor header_ base sensorDataFloatArray listener
    jregisterLevel header_ this
    jregisterMethod header_ "setCompleteMotionGestureInputEventListener" (\() -> setCompleteMotionGestureInputEventListener_impl this)
    jregisterMethod header_ "getOrientation" (\() -> getOrientation_impl this)
    pure this

initFields_ :: AllBinaryOrientationSensor -> IO ()
initFields_ this = do
    jset this.sensorDataFloatArray =<< (PrimitiveFloatUtil.getArrayInstance)
    jset this.listener =<< (NoCompleteMotionGestureInputEventListener.getInstance)
    pure ()


setCompleteMotionGestureInputEventListener :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEventListenerInterface.CompleteMotionGestureInputEventListenerInterface -> IO (())
setCompleteMotionGestureInputEventListener object_ a1 = jmethod object_ "setCompleteMotionGestureInputEventListener" (\() -> (setCompleteMotionGestureInputEventListener_impl (javaCast object_ :: AllBinaryOrientationSensor))) () a1

setCompleteMotionGestureInputEventListener_super :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEventListenerInterface.CompleteMotionGestureInputEventListenerInterface -> IO (())
setCompleteMotionGestureInputEventListener_super object_ a1 = (setCompleteMotionGestureInputEventListener_impl (javaCast object_ :: AllBinaryOrientationSensor)) a1

setCompleteMotionGestureInputEventListener_impl :: AllBinaryOrientationSensor -> CompleteMotionGestureInputEventListenerInterface.CompleteMotionGestureInputEventListenerInterface -> IO (())
setCompleteMotionGestureInputEventListener_impl this completeMotionGestureInputEventListenerInterface = do
        jset (this).listener (completeMotionGestureInputEventListenerInterface)
        pure ()

new_ :: IO AllBinaryOrientationSensor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryOrientationSensor -> IO ()
init_ this = do
        AllBinarySensor.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getOrientation :: (JavaObjectClass this_) => this_ -> IO (Orientation.Orientation)
getOrientation object_ = jmethod object_ "getOrientation" (\() -> (getOrientation_impl (javaCast object_ :: AllBinaryOrientationSensor))) ()

getOrientation_super :: (JavaObjectClass this_) => this_ -> IO (Orientation.Orientation)
getOrientation_super object_ = (getOrientation_impl (javaCast object_ :: AllBinaryOrientationSensor))

getOrientation_impl :: AllBinaryOrientationSensor -> IO (Orientation.Orientation)
getOrientation_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.commonStrings)).nOT_IMPLEMENTED)))


