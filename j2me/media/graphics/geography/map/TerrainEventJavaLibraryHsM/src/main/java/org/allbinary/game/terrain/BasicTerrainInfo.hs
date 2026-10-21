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
-- package org.allbinary.game.terrain
module BasicTerrainInfo where

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
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory

data BasicTerrainInfo = BasicTerrainInfo
    { header_ :: JavaHeader
    , angle :: IORef (Angle.Angle)
    }

instance JavaNull BasicTerrainInfo where
    javaNull = javaNullRecord "BasicTerrainInfo"

instance JavaEquals BasicTerrainInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTerrainInfo where
    (==) = jrecordEquals

instance JavaObjectClass BasicTerrainInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_BASIC_TERRAIN_INFO #-}
nULL_BASIC_TERRAIN_INFO = unsafePerformIO ((new_1 (jget ((jio (AngleFactory.getInstance))).nOT_ANGLE)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicTerrainInfo
newRecord_ = do
    header_ <- newJavaHeader
    angle <- newIORef javaNull
    let this = BasicTerrainInfo header_ angle
    jregisterLevel header_ this
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    pure this

initFields_ :: BasicTerrainInfo -> IO ()
initFields_ this = do
    jset this.angle (javaNull)
    pure ()

new_1 :: Angle.Angle -> IO BasicTerrainInfo
new_1 angle = do
    this <- newRecord_
    init_1 this angle
    pure this

init_1 :: BasicTerrainInfo -> Angle.Angle -> IO ()
init_1 this angle = do
        initFields_ this
        jset (this).angle (angle)
        pure ()


getAngle :: (JavaObjectClass this_) => this_ -> IO (Angle.Angle)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: BasicTerrainInfo))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Angle.Angle)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: BasicTerrainInfo))

getAngle_impl :: BasicTerrainInfo -> IO (Angle.Angle)
getAngle_impl this = do
        pure ((jget (this).angle))


setAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: BasicTerrainInfo))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: BasicTerrainInfo)) a1

setAngle_impl :: BasicTerrainInfo -> Angle.Angle -> IO (())
setAngle_impl this angle = do
        jset (this).angle (angle)
        pure ()


