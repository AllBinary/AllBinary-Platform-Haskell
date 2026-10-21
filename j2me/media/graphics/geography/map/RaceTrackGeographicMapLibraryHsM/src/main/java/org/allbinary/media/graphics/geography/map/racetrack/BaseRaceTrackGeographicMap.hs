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
module BaseRaceTrackGeographicMap (module BaseRaceTrackGeographicMap, module BasicGeographicMap) where

import BasicGeographicMap hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRaceTrackInfo, getRaceTrackInfo_super, getRaceTrackInfo_impl, setRaceTrackInfo, setRaceTrackInfo_super, setRaceTrackInfo_impl, setMiniBasicGeographicMap, setMiniBasicGeographicMap_super, setMiniBasicGeographicMap_impl, getMiniBasicGeographicMap, getMiniBasicGeographicMap_super, getMiniBasicGeographicMap_impl, getRaceTrackData, getRaceTrackData_super, getRaceTrackData_impl, setRaceTrackData, setRaceTrackData_super, setRaceTrackData_impl, logUtil, raceTrackInfo, raceTrackData, miniGeographicMap)
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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPositionBaseFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory
import qualified GeographicMapCellPositionFactoryInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified RaceTrackGeographicMapInterface

-- implements RaceTrackGeographicMapInterface
data BaseRaceTrackGeographicMap = BaseRaceTrackGeographicMap
    { header_ :: JavaHeader
    , base :: BasicGeographicMap.BasicGeographicMap
    , logUtil :: IORef (LogUtil.LogUtil)
    , raceTrackInfo :: IORef (RaceTrackInfo.RaceTrackInfo)
    , raceTrackData :: IORef (RaceTrackData.RaceTrackData)
    , miniGeographicMap :: IORef (BasicGeographicMap.BasicGeographicMap)
    }

instance JavaNull BaseRaceTrackGeographicMap where
    javaNull = javaNullRecord "BaseRaceTrackGeographicMap"

instance JavaEquals BaseRaceTrackGeographicMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseRaceTrackGeographicMap where
    (==) = jrecordEquals

instance JavaObjectClass BaseRaceTrackGeographicMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BaseRaceTrackGeographicMap
newRecord_ = do
    base <- BasicGeographicMap.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    raceTrackInfo <- newIORef javaNull
    raceTrackData <- newIORef javaNull
    miniGeographicMap <- newIORef javaNull
    let this = BaseRaceTrackGeographicMap header_ base logUtil raceTrackInfo raceTrackData miniGeographicMap
    jregisterLevel header_ this
    RaceTrackGeographicMapInterface.registerInterface_ header_
    jregisterMethod header_ "getRaceTrackInfo" (\() -> getRaceTrackInfo_impl this)
    jregisterMethod header_ "setRaceTrackInfo" (\() -> setRaceTrackInfo_impl this)
    jregisterMethod header_ "setMiniBasicGeographicMap" (\() -> setMiniBasicGeographicMap_impl this)
    jregisterMethod header_ "getMiniBasicGeographicMap" (\() -> getMiniBasicGeographicMap_impl this)
    jregisterMethod header_ "getRaceTrackData" (\() -> getRaceTrackData_impl this)
    jregisterMethod header_ "setRaceTrackData" (\() -> setRaceTrackData_impl this)
    pure this

initFields_ :: BaseRaceTrackGeographicMap -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.raceTrackInfo (javaNull)
    jset this.raceTrackData (javaNull)
    jset this.miniGeographicMap (javaNull)
    pure ()

new_7 :: RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayer.AllBinaryTiledLayer -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO BaseRaceTrackGeographicMap
new_7 raceTrackInfo raceTrackData tiledLayer miniGeographicMap geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory = do
    this <- newRecord_
    init_7 this raceTrackInfo raceTrackData tiledLayer miniGeographicMap geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory
    pure this

init_7 :: BaseRaceTrackGeographicMap -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayer.AllBinaryTiledLayer -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO ()
init_7 this raceTrackInfo raceTrackData tiledLayer miniGeographicMap geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory = do
        BasicGeographicMap.init_9 this.base (jio (RaceTrackInfo.getId raceTrackInfo)) (jio (RaceTrackInfo.getName raceTrackInfo)) (jio (RaceTrackData.getCellTypeIdToGeographicMapCellTypeArray raceTrackData)) (tiledLayer) (jio (RaceTrackInfo.getForegroundBasicColor raceTrackInfo)) (jio (RaceTrackInfo.getBackgroundBasicColor raceTrackInfo)) (geographicMapCellPositionFactoryInterface) (geographicMapCellPositionBaseFactory) (geographicMapCellTypeFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).raceTrackInfo (raceTrackInfo)
        jset (this).raceTrackData (raceTrackData)
        jset (this).miniGeographicMap (miniGeographicMap)
        miniTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).miniGeographicMap)))
        when ((jio (AllBinaryTiledLayer.getColumns miniTiledLayer)) /= (jio (BasicGeographicMapCellPositionFactory.getColumns ((jio (BasicGeographicMap.getGeographicMapCellPositionFactory this)))))) $ do
            error <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "RaceTrackMap has incorrect Mini Map columns: "))) (jio (AllBinaryTiledLayer.getColumns miniTiledLayer))))) " != "))) (jio (BasicGeographicMapCellPositionFactory.getColumns ((jio (BasicGeographicMap.getGeographicMapCellPositionFactory this)))))))))
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR))
            javaThrow ((JavaException "Exception" error))
        when ((jio (AllBinaryTiledLayer.getRows miniTiledLayer)) /= (jio (BasicGeographicMapCellPositionFactory.getRows ((jio (BasicGeographicMap.getGeographicMapCellPositionFactory this)))))) $ do
            let error = "RaceTrackMap has incorrect Mini Map rows"
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR))
            javaThrow ((JavaException "Exception" error))
        pure ()


getRaceTrackInfo :: (JavaObjectClass this_) => this_ -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo object_ = jmethod object_ "getRaceTrackInfo" (\() -> (getRaceTrackInfo_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getRaceTrackInfo_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo_super object_ = (getRaceTrackInfo_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getRaceTrackInfo_impl :: BaseRaceTrackGeographicMap -> IO (RaceTrackInfo.RaceTrackInfo)
getRaceTrackInfo_impl this = do
        pure ((jget (this).raceTrackInfo))


setRaceTrackInfo :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo object_ a1 = jmethod object_ "setRaceTrackInfo" (\() -> (setRaceTrackInfo_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) () a1

setRaceTrackInfo_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo_super object_ a1 = (setRaceTrackInfo_impl (javaCast object_ :: BaseRaceTrackGeographicMap)) a1

setRaceTrackInfo_impl :: BaseRaceTrackGeographicMap -> RaceTrackInfo.RaceTrackInfo -> IO (())
setRaceTrackInfo_impl this aRaceTrackInfo = do
        jset (this).raceTrackInfo (aRaceTrackInfo)
        pure ()


setMiniBasicGeographicMap :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
setMiniBasicGeographicMap object_ a1 = jmethod object_ "setMiniBasicGeographicMap" (\() -> (setMiniBasicGeographicMap_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) () a1

setMiniBasicGeographicMap_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
setMiniBasicGeographicMap_super object_ a1 = (setMiniBasicGeographicMap_impl (javaCast object_ :: BaseRaceTrackGeographicMap)) a1

setMiniBasicGeographicMap_impl :: BaseRaceTrackGeographicMap -> BasicGeographicMap.BasicGeographicMap -> IO (())
setMiniBasicGeographicMap_impl this miniBasicGeographicMap = do
        jset (this).miniGeographicMap (miniBasicGeographicMap)
        pure ()


getMiniBasicGeographicMap :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMap.BasicGeographicMap)
getMiniBasicGeographicMap object_ = jmethod object_ "getMiniBasicGeographicMap" (\() -> (getMiniBasicGeographicMap_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getMiniBasicGeographicMap_super :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMap.BasicGeographicMap)
getMiniBasicGeographicMap_super object_ = (getMiniBasicGeographicMap_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getMiniBasicGeographicMap_impl :: BaseRaceTrackGeographicMap -> IO (BasicGeographicMap.BasicGeographicMap)
getMiniBasicGeographicMap_impl this = do
        pure ((jget (this).miniGeographicMap))


getRaceTrackData :: (JavaObjectClass this_) => this_ -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData object_ = jmethod object_ "getRaceTrackData" (\() -> (getRaceTrackData_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getRaceTrackData_super :: (JavaObjectClass this_) => this_ -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData_super object_ = (getRaceTrackData_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getRaceTrackData_impl :: BaseRaceTrackGeographicMap -> IO (RaceTrackData.RaceTrackData)
getRaceTrackData_impl this = do
        pure ((jget (this).raceTrackData))


setRaceTrackData :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData object_ a1 = jmethod object_ "setRaceTrackData" (\() -> (setRaceTrackData_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) () a1

setRaceTrackData_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData_super object_ a1 = (setRaceTrackData_impl (javaCast object_ :: BaseRaceTrackGeographicMap)) a1

setRaceTrackData_impl :: BaseRaceTrackGeographicMap -> RaceTrackData.RaceTrackData -> IO (())
setRaceTrackData_impl this raceTrackData = do
        jset (this).raceTrackData (raceTrackData)
        pure ()


