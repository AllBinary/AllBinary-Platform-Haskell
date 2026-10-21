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
module RaceTrackGeographicMap (module RaceTrackGeographicMap, module BaseRaceTrackGeographicMap) where

import BaseRaceTrackGeographicMap hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCustomMapGenerator, getCustomMapGenerator_super, getCustomMapGenerator_impl, isValid, isValid_super, isValid_impl, customMapGenerator)
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
import qualified CustomMapGeneratorBase -- same package or java.lang
import qualified BasicGeographicMapFactory -- same package or java.lang
import qualified RaceTrackInfo -- same package or java.lang
import qualified RaceTrackData -- same package or java.lang
import qualified AllBinaryTiledLayerFactoryInterface -- same package or java.lang
import qualified CustomMapGeneratorBaseFactory -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellPositionBaseFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory
import qualified GeographicMapCellPositionFactoryInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified BaseRaceTrackGeographicMap

data RaceTrackGeographicMap = RaceTrackGeographicMap
    { header_ :: JavaHeader
    , base :: BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap
    , customMapGenerator :: IORef (CustomMapGeneratorBase.CustomMapGeneratorBase)
    }

instance JavaNull RaceTrackGeographicMap where
    javaNull = javaNullRecord "RaceTrackGeographicMap"

instance JavaEquals RaceTrackGeographicMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackGeographicMap where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackGeographicMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RaceTrackGeographicMap
newRecord_ = do
    base <- BaseRaceTrackGeographicMap.newRecord_
    let header_ = base.header_
    customMapGenerator <- newIORef javaNull
    let this = RaceTrackGeographicMap header_ base customMapGenerator
    jregisterLevel header_ this
    jregisterMethod header_ "getCustomMapGenerator" (\() -> getCustomMapGenerator_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: RaceTrackGeographicMap -> IO ()
initFields_ this = do
    jset this.customMapGenerator (javaNull)
    pure ()

new_7 :: RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayerFactoryInterface.AllBinaryTiledLayerFactoryInterface -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> CustomMapGeneratorBaseFactory.CustomMapGeneratorBaseFactory -> IO RaceTrackGeographicMap
new_7 raceTrackInfo raceTrackData tiledLayerFactoryInterface geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory customMapGeneratorBaseFactory = do
    this <- newRecord_
    init_7 this raceTrackInfo raceTrackData tiledLayerFactoryInterface geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory customMapGeneratorBaseFactory
    pure this

init_7 :: RaceTrackGeographicMap -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> AllBinaryTiledLayerFactoryInterface.AllBinaryTiledLayerFactoryInterface -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> CustomMapGeneratorBaseFactory.CustomMapGeneratorBaseFactory -> IO ()
init_7 this raceTrackInfo raceTrackData tiledLayerFactoryInterface geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory customMapGeneratorBaseFactory = do
        BaseRaceTrackGeographicMap.init_7 this.base (raceTrackInfo) (raceTrackData) (jio (AllBinaryTiledLayerFactoryInterface.getInstance tiledLayerFactoryInterface raceTrackInfo raceTrackData)) (jio (BasicGeographicMapFactory.getInstance ((jio (BasicGeographicMapFactory.new_))) raceTrackInfo raceTrackData tiledLayerFactoryInterface geographicMapCellPositionFactoryInterface geographicMapCellTypeFactory)) (geographicMapCellPositionFactoryInterface) (geographicMapCellPositionBaseFactory) (geographicMapCellTypeFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (CustomMapGeneratorBaseFactory.create customMapGeneratorBaseFactory this)
        jset (this).customMapGenerator (assignedValue)
        pure ()


getCustomMapGenerator :: (JavaObjectClass this_) => this_ -> IO (CustomMapGeneratorBase.CustomMapGeneratorBase)
getCustomMapGenerator object_ = jmethod object_ "getCustomMapGenerator" (\() -> (getCustomMapGenerator_impl (javaCast object_ :: RaceTrackGeographicMap))) ()

getCustomMapGenerator_super :: (JavaObjectClass this_) => this_ -> IO (CustomMapGeneratorBase.CustomMapGeneratorBase)
getCustomMapGenerator_super object_ = (getCustomMapGenerator_impl (javaCast object_ :: RaceTrackGeographicMap))

getCustomMapGenerator_impl :: RaceTrackGeographicMap -> IO (CustomMapGeneratorBase.CustomMapGeneratorBase)
getCustomMapGenerator_impl this = do
        pure ((jget (this).customMapGenerator))


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: RaceTrackGeographicMap))) () a1

isValid_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: RaceTrackGeographicMap)) a1

isValid_impl :: RaceTrackGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isValid_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        customMapArray <- (CustomMapGeneratorBase.getCustomMapArray ((jget (this).customMapGenerator)))
        if ((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) >= (jlength (jindex customMapArray (0)))) then do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Column: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)))))
            Control.Monad.void (StringMaker.append stringBuffer " not in: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jlength (jindex customMapArray (0))))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.base.commonStrings)).iS_VALID))
            if ((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) == (jlength (jindex customMapArray (0)))) then do
                javaReturn (True)
            else do
                javaReturn (False)
        else when ((jio (GeographicMapCellPosition.getRow geographicMapCellPosition)) > (jlength customMapArray)) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Row: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (GeographicMapCellPosition.getRow geographicMapCellPosition)))))
            Control.Monad.void (StringMaker.append stringBuffer " not in: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jlength customMapArray))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.base.commonStrings)).iS_VALID))
            if ((jio (GeographicMapCellPosition.getRow geographicMapCellPosition)) == (jlength customMapArray)) then do
                javaReturn (True)
            else do
                javaReturn (False)
        pure (True)


