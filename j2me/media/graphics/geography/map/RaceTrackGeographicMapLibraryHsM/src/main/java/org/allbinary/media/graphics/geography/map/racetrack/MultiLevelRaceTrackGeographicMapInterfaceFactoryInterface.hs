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
module MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface (module MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface, module RaceTrackGeographicMapInterfaceFactoryInterface) where

import RaceTrackGeographicMapInterfaceFactoryInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFirstWaveWithTrack, getFirstWaveWithTrack_super, getFirstWaveWithTrack_impl, getTotalTracks, getTotalTracks_super, getTotalTracks_impl, getTotalLevels, getTotalLevels_super, getTotalLevels_impl, toString)
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
import qualified RaceTrackGeographicMapInterfaceFactoryInterface

-- Java interface: the classes that implement it have these functions
data MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface = MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface where
    javaNull = javaNullRecord "MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface"

instance JavaEquals MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface
fromHeader_ header = MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface header)
    RaceTrackGeographicMapInterfaceFactoryInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getFirstWaveWithTrack :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getFirstWaveWithTrack object_ a1 = jmethod object_ "getFirstWaveWithTrack" (\() -> (getFirstWaveWithTrack_impl (javaCast object_ :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface))) () a1

getFirstWaveWithTrack_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getFirstWaveWithTrack_super object_ a1 = (getFirstWaveWithTrack_impl (javaCast object_ :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface)) a1

getFirstWaveWithTrack_impl :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface -> Int -> IO (Int)
getFirstWaveWithTrack_impl this track = javaAbstractMethod "getFirstWaveWithTrack"


getTotalTracks :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalTracks object_ = jmethod object_ "getTotalTracks" (\() -> (getTotalTracks_impl (javaCast object_ :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface))) ()

getTotalTracks_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalTracks_super object_ = (getTotalTracks_impl (javaCast object_ :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface))

getTotalTracks_impl :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface -> IO (Int)
getTotalTracks_impl this = javaAbstractMethod "getTotalTracks"


getTotalLevels :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalLevels object_ = jmethod object_ "getTotalLevels" (\() -> (getTotalLevels_impl (javaCast object_ :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface))) ()

getTotalLevels_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalLevels_super object_ = (getTotalLevels_impl (javaCast object_ :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface))

getTotalLevels_impl :: MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface -> IO (Int)
getTotalLevels_impl this = javaAbstractMethod "getTotalLevels"


