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
module OrientationToGameKeyEvent where

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
import qualified AllBinaryOrientationSensor -- same package or java.lang
import qualified NoGyroSensor -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified SensorFeatureFactory -- org.allbinary.game.configuration.feature.SensorFeatureFactory
import qualified Orientation -- org.allbinary.logic.math.Orientation

data OrientationToGameKeyEvent = OrientationToGameKeyEvent
    { header_ :: JavaHeader
    , allBinaryGyroSensor :: IORef (AllBinaryOrientationSensor.AllBinaryOrientationSensor)
    , mIN :: IORef (Int)
    }

instance JavaNull OrientationToGameKeyEvent where
    javaNull = javaNullRecord "OrientationToGameKeyEvent"

instance JavaEquals OrientationToGameKeyEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrientationToGameKeyEvent where
    (==) = jrecordEquals

instance JavaObjectClass OrientationToGameKeyEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrientationToGameKeyEvent
newRecord_ = do
    header_ <- newJavaHeader
    allBinaryGyroSensor <- newIORef javaNull
    mIN <- newIORef 0
    let this = OrientationToGameKeyEvent header_ allBinaryGyroSensor mIN
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGyroSensor" (\() -> setAllBinaryGyroSensor_impl this)
    jregisterMethod header_ "getAllBinaryGyroSensor" (\() -> getAllBinaryGyroSensor_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "updateGameKeyEvents" (\() -> updateGameKeyEvents_impl this)
    pure this

initFields_ :: OrientationToGameKeyEvent -> IO ()
initFields_ this = do
    jset this.allBinaryGyroSensor (javaNull)
    jset this.mIN (15)
    pure ()

new_ :: IO OrientationToGameKeyEvent
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrientationToGameKeyEvent -> IO ()
init_ this = do
        initFields_ this
        if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (SensorFeatureFactory.getInstance))).nO_ORIENTATION)))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: AllBinaryOrientationSensor.AllBinaryOrientationSensor) (NoGyroSensor.new_))
            jset (this).allBinaryGyroSensor (assignedValue)
        else do
            javaThrow ((JavaException "Exception" "Not Such Feature"))
        pure ()


setAllBinaryGyroSensor :: (JavaObjectClass this_) => this_ -> AllBinaryOrientationSensor.AllBinaryOrientationSensor -> IO (())
setAllBinaryGyroSensor object_ a1 = jmethod object_ "setAllBinaryGyroSensor" (\() -> (setAllBinaryGyroSensor_impl (javaCast object_ :: OrientationToGameKeyEvent))) () a1

setAllBinaryGyroSensor_super :: (JavaObjectClass this_) => this_ -> AllBinaryOrientationSensor.AllBinaryOrientationSensor -> IO (())
setAllBinaryGyroSensor_super object_ a1 = (setAllBinaryGyroSensor_impl (javaCast object_ :: OrientationToGameKeyEvent)) a1

setAllBinaryGyroSensor_impl :: OrientationToGameKeyEvent -> AllBinaryOrientationSensor.AllBinaryOrientationSensor -> IO (())
setAllBinaryGyroSensor_impl this allBinaryGyroSensor = do
        jset (this).allBinaryGyroSensor (allBinaryGyroSensor)
        pure ()


getAllBinaryGyroSensor :: (JavaObjectClass this_) => this_ -> IO (AllBinaryOrientationSensor.AllBinaryOrientationSensor)
getAllBinaryGyroSensor object_ = jmethod object_ "getAllBinaryGyroSensor" (\() -> (getAllBinaryGyroSensor_impl (javaCast object_ :: OrientationToGameKeyEvent))) ()

getAllBinaryGyroSensor_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryOrientationSensor.AllBinaryOrientationSensor)
getAllBinaryGyroSensor_super object_ = (getAllBinaryGyroSensor_impl (javaCast object_ :: OrientationToGameKeyEvent))

getAllBinaryGyroSensor_impl :: OrientationToGameKeyEvent -> IO (AllBinaryOrientationSensor.AllBinaryOrientationSensor)
getAllBinaryGyroSensor_impl this = do
        pure ((jget (this).allBinaryGyroSensor))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OrientationToGameKeyEvent))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: OrientationToGameKeyEvent))

process_impl :: OrientationToGameKeyEvent -> IO (())
process_impl this = do
        pure ()


-- throws Exception
updateGameKeyEvents :: (JavaObjectClass this_) => this_ -> Orientation.Orientation -> Int -> Int -> Int -> IO (())
updateGameKeyEvents object_ a1 a2 a3 a4 = jmethod object_ "updateGameKeyEvents" (\() -> (updateGameKeyEvents_impl (javaCast object_ :: OrientationToGameKeyEvent))) () a1 a2 a3 a4

updateGameKeyEvents_super :: (JavaObjectClass this_) => this_ -> Orientation.Orientation -> Int -> Int -> Int -> IO (())
updateGameKeyEvents_super object_ a1 a2 a3 a4 = (updateGameKeyEvents_impl (javaCast object_ :: OrientationToGameKeyEvent)) a1 a2 a3 a4

updateGameKeyEvents_impl :: OrientationToGameKeyEvent -> Orientation.Orientation -> Int -> Int -> Int -> IO (())
updateGameKeyEvents_impl this orientation yaw pitch roll = do
        pure ()


