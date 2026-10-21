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
module OrientationData where

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

data OrientationData = OrientationData
    { header_ :: JavaHeader
    , oRIENTATION_SENSOR_INPUT :: IORef (String)
    , oRIENTATION_TYPE :: IORef (String)
    }

instance JavaNull OrientationData where
    javaNull = javaNullRecord "OrientationData"

instance JavaEquals OrientationData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrientationData where
    (==) = jrecordEquals

instance JavaObjectClass OrientationData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrientationData
newRecord_ = do
    header_ <- newJavaHeader
    oRIENTATION_SENSOR_INPUT <- newIORef ""
    oRIENTATION_TYPE <- newIORef ""
    let this = OrientationData header_ oRIENTATION_SENSOR_INPUT oRIENTATION_TYPE
    jregisterLevel header_ this
    pure this

initFields_ :: OrientationData -> IO ()
initFields_ this = do
    jset this.oRIENTATION_SENSOR_INPUT ("Orientation Sensor Input")
    jset this.oRIENTATION_TYPE ("Orientation Type")
    pure ()

new_ :: IO OrientationData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrientationData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (OrientationData)
getInstance = do
        pure (OrientationData.sINGLETON)


