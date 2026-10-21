{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module NullRaceTrackGeographicMap where

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
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified Layer -- org.allbinary.layer.Layer
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellPositionFactoryInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified RaceTrackGeographicMapInterface

-- implements RaceTrackGeographicMapInterface
data NullRaceTrackGeographicMap = NullRaceTrackGeographicMap
    { header_ :: JavaHeader
    }

instance JavaNull NullRaceTrackGeographicMap where
    javaNull = javaNullRecord "NullRaceTrackGeographicMap"

instance JavaEquals NullRaceTrackGeographicMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRaceTrackGeographicMap where
    (==) = jrecordEquals

instance JavaObjectClass NullRaceTrackGeographicMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_RACE_TRACK_GEOGRAPHIC_MAP #-}
nULL_RACE_TRACK_GEOGRAPHIC_MAP = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullRaceTrackGeographicMap
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullRaceTrackGeographicMap header_
    jregisterLevel header_ this
    RaceTrackGeographicMapInterface.registerInterface_ header_
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "getAllBinaryTiledLayer" (\() -> getAllBinaryTiledLayer_impl this)
    jregisterMethod header_ "getCellPositionsAt" (\() -> getCellPositionsAt_impl this)
    jregisterMethod header_ "getCellPositionAtXY" (\() -> getCellPositionAtXY_impl this)
    jregisterMethod header_ "getCellPositionAtXYNoThrow" (\() -> getCellPositionAtXYNoThrow_impl this)
    jregisterMethod header_ "getCellTypeFromMapCellTypeInt" (\() -> getCellTypeFromMapCellTypeInt_impl this)
    jregisterMethod header_ "getCellTypeAtXY" (\() -> getCellTypeAtXY_impl this)
    jregisterMethod header_ "getCellTypeAt" (\() -> getCellTypeAt_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionFactory" (\() -> getGeographicMapCellPositionFactory_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionFactoryInterface" (\() -> getGeographicMapCellPositionFactoryInterface_impl this)
    jregisterMethod header_ "getForegroundBasicColor" (\() -> getForegroundBasicColor_impl this)
    jregisterMethod header_ "getBackgroundBasicColor" (\() -> getBackgroundBasicColor_impl this)
    jregisterMethod header_ "getRaceTrackInfo" (\() -> getRaceTrackInfo_impl this)
    jregisterMethod header_ "setRaceTrackInfo" (\() -> setRaceTrackInfo_impl this)
    jregisterMethod header_ "getRaceTrackData" (\() -> getRaceTrackData_impl this)
    jregisterMethod header_ "setRaceTrackData" (\() -> setRaceTrackData_impl this)
    pure this

initFields_ :: NullRaceTrackGeographicMap -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullRaceTrackGeographicMap
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullRaceTrackGeographicMap -> IO ()
init_ this = do
    initFields_ this


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getId_impl :: NullRaceTrackGeographicMap -> IO (Int)
getId_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getName_impl :: NullRaceTrackGeographicMap -> IO (String)
getName_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: NullRaceTrackGeographicMap))

reset_impl :: NullRaceTrackGeographicMap -> IO (())
reset_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getAllBinaryTiledLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer object_ = jmethod object_ "getAllBinaryTiledLayer" (\() -> (getAllBinaryTiledLayer_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getAllBinaryTiledLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_super object_ = (getAllBinaryTiledLayer_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getAllBinaryTiledLayer_impl :: NullRaceTrackGeographicMap -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getCellPositionsAt :: (JavaObjectClass this_) => this_ -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt object_ a1 a2 a3 = jmethod object_ "getCellPositionsAt" (\() -> (getCellPositionsAt_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1 a2 a3

getCellPositionsAt_super :: (JavaObjectClass this_) => this_ -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt_super object_ a1 a2 a3 = (getCellPositionsAt_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1 a2 a3

getCellPositionsAt_impl :: NullRaceTrackGeographicMap -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt_impl this layer currentCellPositionArray cellPositionArray = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getCellPositionAtXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY object_ a1 a2 = jmethod object_ "getCellPositionAtXY" (\() -> (getCellPositionAtXY_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1 a2

getCellPositionAtXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY_super object_ a1 a2 = (getCellPositionAtXY_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1 a2

getCellPositionAtXY_impl :: NullRaceTrackGeographicMap -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY_impl this x y = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getCellPositionAtXYNoThrow :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow object_ a1 a2 = jmethod object_ "getCellPositionAtXYNoThrow" (\() -> (getCellPositionAtXYNoThrow_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1 a2

getCellPositionAtXYNoThrow_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow_super object_ a1 a2 = (getCellPositionAtXYNoThrow_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1 a2

getCellPositionAtXYNoThrow_impl :: NullRaceTrackGeographicMap -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow_impl this x y = do
        javaThrow ((JavaException "RuntimeException" ""))


getCellTypeFromMapCellTypeInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt object_ a1 = jmethod object_ "getCellTypeFromMapCellTypeInt" (\() -> (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1

getCellTypeFromMapCellTypeInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_super object_ a1 = (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1

getCellTypeFromMapCellTypeInt_impl :: NullRaceTrackGeographicMap -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_impl this cellTypeId = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getCellTypeAtXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY object_ a1 a2 = jmethod object_ "getCellTypeAtXY" (\() -> (getCellTypeAtXY_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1 a2

getCellTypeAtXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY_super object_ a1 a2 = (getCellTypeAtXY_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1 a2

getCellTypeAtXY_impl :: NullRaceTrackGeographicMap -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY_impl this x y = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getCellTypeAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt object_ a1 = jmethod object_ "getCellTypeAt" (\() -> (getCellTypeAt_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1

getCellTypeAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_super object_ a1 = (getCellTypeAt_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1

getCellTypeAt_impl :: NullRaceTrackGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


getGeographicMapCellPositionFactory :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory object_ = jmethod object_ "getGeographicMapCellPositionFactory" (\() -> (getGeographicMapCellPositionFactory_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getGeographicMapCellPositionFactory_super :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory_super object_ = (getGeographicMapCellPositionFactory_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getGeographicMapCellPositionFactory_impl :: NullRaceTrackGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getGeographicMapCellPositionFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface object_ = jmethod object_ "getGeographicMapCellPositionFactoryInterface" (\() -> (getGeographicMapCellPositionFactoryInterface_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getGeographicMapCellPositionFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface_super object_ = (getGeographicMapCellPositionFactoryInterface_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getGeographicMapCellPositionFactoryInterface_impl :: NullRaceTrackGeographicMap -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getForegroundBasicColor_impl :: NullRaceTrackGeographicMap -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getBackgroundBasicColor_impl :: NullRaceTrackGeographicMap -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getRaceTrackInfo :: (JavaObjectClass this_) => this_ -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo object_ = jmethod object_ "getRaceTrackInfo" (\() -> (getRaceTrackInfo_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getRaceTrackInfo_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo_super object_ = (getRaceTrackInfo_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getRaceTrackInfo_impl :: NullRaceTrackGeographicMap -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setRaceTrackInfo :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo object_ a1 = jmethod object_ "setRaceTrackInfo" (\() -> (setRaceTrackInfo_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1

setRaceTrackInfo_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo_super object_ a1 = (setRaceTrackInfo_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1

setRaceTrackInfo_impl :: NullRaceTrackGeographicMap -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo_impl this aRaceTrackInfo = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getRaceTrackData :: (JavaObjectClass this_) => this_ -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData object_ = jmethod object_ "getRaceTrackData" (\() -> (getRaceTrackData_impl (javaCast object_ :: NullRaceTrackGeographicMap))) ()

getRaceTrackData_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData_super object_ = (getRaceTrackData_impl (javaCast object_ :: NullRaceTrackGeographicMap))

getRaceTrackData_impl :: NullRaceTrackGeographicMap -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setRaceTrackData :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData object_ a1 = jmethod object_ "setRaceTrackData" (\() -> (setRaceTrackData_impl (javaCast object_ :: NullRaceTrackGeographicMap))) () a1

setRaceTrackData_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData_super object_ a1 = (setRaceTrackData_impl (javaCast object_ :: NullRaceTrackGeographicMap)) a1

setRaceTrackData_impl :: NullRaceTrackGeographicMap -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData_impl this raceTrackData = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


