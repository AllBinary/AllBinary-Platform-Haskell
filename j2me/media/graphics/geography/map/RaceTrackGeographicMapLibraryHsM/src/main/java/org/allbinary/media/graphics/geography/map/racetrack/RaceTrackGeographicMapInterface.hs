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
-- package org.allbinary.media.graphics.geography.map.racetrack
module RaceTrackGeographicMapInterface (module RaceTrackGeographicMapInterface, module GeographicMapInterface) where

import GeographicMapInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRaceTrackInfo, getRaceTrackInfo_super, getRaceTrackInfo_impl, setRaceTrackInfo, setRaceTrackInfo_super, setRaceTrackInfo_impl, getRaceTrackData, getRaceTrackData_super, getRaceTrackData_impl, setRaceTrackData, setRaceTrackData_super, setRaceTrackData_impl, toString)
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
import qualified RaceTrackInfo -- same package or java.lang
import qualified RaceTrackData -- same package or java.lang
import qualified GeographicMapInterface -- org.allbinary.media.graphics.geography.map.GeographicMapInterface

-- Java interface: the classes that implement it have these functions
data RaceTrackGeographicMapInterface = RaceTrackGeographicMapInterface
    { header_ :: JavaHeader
    }

instance JavaNull RaceTrackGeographicMapInterface where
    javaNull = javaNullRecord "RaceTrackGeographicMapInterface"

instance JavaEquals RaceTrackGeographicMapInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackGeographicMapInterface where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackGeographicMapInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RaceTrackGeographicMapInterface
fromHeader_ header = RaceTrackGeographicMapInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RaceTrackGeographicMapInterface header)
    GeographicMapInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRaceTrackInfo :: (JavaObjectClass this_) => this_ -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo object_ = jmethod object_ "getRaceTrackInfo" (\() -> (getRaceTrackInfo_impl (javaCast object_ :: RaceTrackGeographicMapInterface))) ()

getRaceTrackInfo_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo_super object_ = (getRaceTrackInfo_impl (javaCast object_ :: RaceTrackGeographicMapInterface))

getRaceTrackInfo_impl :: RaceTrackGeographicMapInterface -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo_impl this = javaAbstractMethod "getRaceTrackInfo"


setRaceTrackInfo :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo object_ a1 = jmethod object_ "setRaceTrackInfo" (\() -> (setRaceTrackInfo_impl (javaCast object_ :: RaceTrackGeographicMapInterface))) () a1

setRaceTrackInfo_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo_super object_ a1 = (setRaceTrackInfo_impl (javaCast object_ :: RaceTrackGeographicMapInterface)) a1

setRaceTrackInfo_impl :: RaceTrackGeographicMapInterface -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo_impl this aRaceTrackInfo = javaAbstractMethod "setRaceTrackInfo"


getRaceTrackData :: (JavaObjectClass this_) => this_ -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData object_ = jmethod object_ "getRaceTrackData" (\() -> (getRaceTrackData_impl (javaCast object_ :: RaceTrackGeographicMapInterface))) ()

getRaceTrackData_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData_super object_ = (getRaceTrackData_impl (javaCast object_ :: RaceTrackGeographicMapInterface))

getRaceTrackData_impl :: RaceTrackGeographicMapInterface -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData_impl this = javaAbstractMethod "getRaceTrackData"


setRaceTrackData :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData object_ a1 = jmethod object_ "setRaceTrackData" (\() -> (setRaceTrackData_impl (javaCast object_ :: RaceTrackGeographicMapInterface))) () a1

setRaceTrackData_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData_super object_ a1 = (setRaceTrackData_impl (javaCast object_ :: RaceTrackGeographicMapInterface)) a1

setRaceTrackData_impl :: RaceTrackGeographicMapInterface -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData_impl this raceTrackData = javaAbstractMethod "setRaceTrackData"


