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

import BasicGeographicMap hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRaceTrackInfo, getRaceTrackInfo_super, getRaceTrackInfo_impl, setRaceTrackInfo, setRaceTrackInfo_super, setRaceTrackInfo_impl, setMiniBasicGeographicMap, setMiniBasicGeographicMap_super, setMiniBasicGeographicMap_impl, getMiniBasicGeographicMap, getMiniBasicGeographicMap_super, getMiniBasicGeographicMap_impl, getRaceTrackData, getRaceTrackData_super, getRaceTrackData_impl, setRaceTrackData, setRaceTrackData_super, setRaceTrackData_impl, getId, getId_super, getId_impl, getName, getName_super, getName_impl, reset, reset_super, reset_impl, getAllBinaryTiledLayer, getAllBinaryTiledLayer_super, getAllBinaryTiledLayer_impl, getCellTypeFromMapCellTypeInt, getCellTypeFromMapCellTypeInt_super, getCellTypeFromMapCellTypeInt_impl, getCellTypeAt, getCellTypeAt_super, getCellTypeAt_impl, getForegroundBasicColor, getForegroundBasicColor_super, getForegroundBasicColor_impl, getBackgroundBasicColor, getBackgroundBasicColor_super, getBackgroundBasicColor_impl, logUtil, raceTrackInfo, raceTrackData, miniGeographicMap)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
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
import qualified BasicGeographicMapCellPositionFactory -- same package or java.lang
import qualified SimpleGeographicMap -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPositionBaseFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory
import qualified GeographicMapCellPositionFactoryInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
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
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "getAllBinaryTiledLayer" (\() -> getAllBinaryTiledLayer_impl this)
    jregisterMethod header_ "getCellTypeFromMapCellTypeInt" (\() -> getCellTypeFromMapCellTypeInt_impl this)
    jregisterMethod header_ "getCellTypeAt" (\() -> getCellTypeAt_impl this)
    jregisterMethod header_ "getForegroundBasicColor" (\() -> getForegroundBasicColor_impl this)
    jregisterMethod header_ "getBackgroundBasicColor" (\() -> getBackgroundBasicColor_impl this)
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


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getId_impl :: BaseRaceTrackGeographicMap -> IO (Int)
getId_impl this = do
        (BasicGeographicMap.getId_super this.base)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getName_impl :: BaseRaceTrackGeographicMap -> IO (String)
getName_impl this = do
        (BasicGeographicMap.getName_super this.base)


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

reset_impl :: BaseRaceTrackGeographicMap -> IO (())
reset_impl this = do
        Control.Monad.void (BasicGeographicMap.reset_super this.base)
        pure ()


getAllBinaryTiledLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer object_ = jmethod object_ "getAllBinaryTiledLayer" (\() -> (getAllBinaryTiledLayer_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getAllBinaryTiledLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_super object_ = (getAllBinaryTiledLayer_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getAllBinaryTiledLayer_impl :: BaseRaceTrackGeographicMap -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_impl this = do
        (BasicGeographicMap.getAllBinaryTiledLayer_super this.base)


getCellTypeFromMapCellTypeInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt object_ a1 = jmethod object_ "getCellTypeFromMapCellTypeInt" (\() -> (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) () a1

getCellTypeFromMapCellTypeInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_super object_ a1 = (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: BaseRaceTrackGeographicMap)) a1

getCellTypeFromMapCellTypeInt_impl :: BaseRaceTrackGeographicMap -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_impl this cellTypeId = do
        (BasicGeographicMap.getCellTypeFromMapCellTypeInt_super this.base cellTypeId)


-- throws Exception
getCellTypeAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt object_ a1 = jmethod object_ "getCellTypeAt" (\() -> (getCellTypeAt_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) () a1

getCellTypeAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_super object_ a1 = (getCellTypeAt_impl (javaCast object_ :: BaseRaceTrackGeographicMap)) a1

getCellTypeAt_impl :: BaseRaceTrackGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_impl this cellPosition = do
        (BasicGeographicMap.getCellTypeAt_super this.base cellPosition)


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getForegroundBasicColor_impl :: BaseRaceTrackGeographicMap -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = do
        (BasicGeographicMap.getForegroundBasicColor_super this.base)


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: BaseRaceTrackGeographicMap))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: BaseRaceTrackGeographicMap))

getBackgroundBasicColor_impl :: BaseRaceTrackGeographicMap -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = do
        (BasicGeographicMap.getBackgroundBasicColor_super this.base)


