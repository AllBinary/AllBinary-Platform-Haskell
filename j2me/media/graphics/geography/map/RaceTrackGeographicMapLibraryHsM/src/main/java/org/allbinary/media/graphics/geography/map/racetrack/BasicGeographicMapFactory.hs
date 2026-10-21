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
module BasicGeographicMapFactory where

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
import qualified AllBinaryTiledLayerFactoryInterface -- same package or java.lang
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPositionBaseFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory
import qualified GeographicMapCellPositionFactoryInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory

data BasicGeographicMapFactory = BasicGeographicMapFactory
    { header_ :: JavaHeader
    }

instance JavaNull BasicGeographicMapFactory where
    javaNull = javaNullRecord "BasicGeographicMapFactory"

instance JavaEquals BasicGeographicMapFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGeographicMapFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicGeographicMapFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGeographicMapFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicGeographicMapFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BasicGeographicMapFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicGeographicMapFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGeographicMapFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayerFactoryInterface.AllBinaryTiledLayerFactoryInterface -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO (BasicGeographicMap.BasicGeographicMap)
getInstance object_ a1 a2 a3 a4 a5 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicGeographicMapFactory))) () a1 a2 a3 a4 a5

getInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayerFactoryInterface.AllBinaryTiledLayerFactoryInterface -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO (BasicGeographicMap.BasicGeographicMap)
getInstance_super object_ a1 a2 a3 a4 a5 = (getInstance_impl (javaCast object_ :: BasicGeographicMapFactory)) a1 a2 a3 a4 a5

getInstance_impl :: BasicGeographicMapFactory -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayerFactoryInterface.AllBinaryTiledLayerFactoryInterface -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO (BasicGeographicMap.BasicGeographicMap)
getInstance_impl this raceTrackInfo raceTrackData tiledLayerFactoryInterface geographicMapCellPositionFactoryInterface geographicMapCellTypeFactory = do
        (BasicGeographicMap.new_9 (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) (((jio (RaceTrackInfo.getId raceTrackInfo)) + 100) + 1))) (jio (RaceTrackInfo.getName raceTrackInfo)) (jio (RaceTrackData.getCellTypeIdToGeographicMapCellTypeArray raceTrackData)) (jio (AllBinaryTiledLayerFactoryInterface.getMiniInstance tiledLayerFactoryInterface raceTrackData)) (jget ((jio (BasicColorFactory.getInstance))).cLEAR_COLOR) (jget ((jio (BasicColorFactory.getInstance))).cLEAR_COLOR) geographicMapCellPositionFactoryInterface (jio (GeographicMapCellPositionBaseFactory.new_)) geographicMapCellTypeFactory)


