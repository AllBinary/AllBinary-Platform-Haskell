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
module RaceTrackGeographicMapInterfaceFactoryInterface where

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
import qualified RaceTrackGeographicMap -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data RaceTrackGeographicMapInterfaceFactoryInterface = RaceTrackGeographicMapInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull RaceTrackGeographicMapInterfaceFactoryInterface where
    javaNull = javaNullRecord "RaceTrackGeographicMapInterfaceFactoryInterface"

instance JavaEquals RaceTrackGeographicMapInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackGeographicMapInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackGeographicMapInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RaceTrackGeographicMapInterfaceFactoryInterface
fromHeader_ header = RaceTrackGeographicMapInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RaceTrackGeographicMapInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getLevelInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (RaceTrackGeographicMap.RaceTrackGeographicMap)
getLevelInstance object_ a1 = jmethod object_ "getLevelInstance" (\() -> (getLevelInstance_impl (javaCast object_ :: RaceTrackGeographicMapInterfaceFactoryInterface))) () a1

getLevelInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (RaceTrackGeographicMap.RaceTrackGeographicMap)
getLevelInstance_super object_ a1 = (getLevelInstance_impl (javaCast object_ :: RaceTrackGeographicMapInterfaceFactoryInterface)) a1

getLevelInstance_impl :: RaceTrackGeographicMapInterfaceFactoryInterface -> Int -> IO (RaceTrackGeographicMap.RaceTrackGeographicMap)
getLevelInstance_impl this id = javaAbstractMethod "getLevelInstance"


-- throws Exception
getTrackInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (RaceTrackGeographicMap.RaceTrackGeographicMap)
getTrackInstance object_ a1 = jmethod object_ "getTrackInstance" (\() -> (getTrackInstance_impl (javaCast object_ :: RaceTrackGeographicMapInterfaceFactoryInterface))) () a1

getTrackInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (RaceTrackGeographicMap.RaceTrackGeographicMap)
getTrackInstance_super object_ a1 = (getTrackInstance_impl (javaCast object_ :: RaceTrackGeographicMapInterfaceFactoryInterface)) a1

getTrackInstance_impl :: RaceTrackGeographicMapInterfaceFactoryInterface -> Int -> IO (RaceTrackGeographicMap.RaceTrackGeographicMap)
getTrackInstance_impl this id = javaAbstractMethod "getTrackInstance"


