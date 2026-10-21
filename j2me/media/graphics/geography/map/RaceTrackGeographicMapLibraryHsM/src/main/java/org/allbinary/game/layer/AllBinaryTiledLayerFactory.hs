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
-- package org.allbinary.game.layer
module AllBinaryTiledLayerFactory where

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
import qualified AllBinaryTiledLayer -- same package or java.lang
import qualified AllBinaryJ2METiledLayer -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified TiledLayer -- javax.microedition.lcdui.game.TiledLayer
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified AllBinaryTiledLayerFactoryInterface -- org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface
import qualified RaceTrackData -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData
import qualified RaceTrackInfo -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo
import qualified TiledLayerFactory -- org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory

-- implements AllBinaryTiledLayerFactoryInterface
data AllBinaryTiledLayerFactory = AllBinaryTiledLayerFactory
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryTiledLayerFactory where
    javaNull = javaNullRecord "AllBinaryTiledLayerFactory"

instance JavaEquals AllBinaryTiledLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryTiledLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryTiledLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryTiledLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryTiledLayerFactory header_
    jregisterLevel header_ this
    AllBinaryTiledLayerFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getMiniInstance" (\() -> getMiniInstance_impl this)
    pure this

initFields_ :: AllBinaryTiledLayerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryTiledLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryTiledLayerFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactory)) a1 a2

getInstance_impl :: AllBinaryTiledLayerFactory -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_impl this raceTrackInfo raceTrackData = do
        allbinaryTiledLayer <- newIORef (javaNull)
        tiledLayer <- (TiledLayerFactory.getInstance ((jio (TiledLayerFactory.new_))) raceTrackData)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: AllBinaryTiledLayer.AllBinaryTiledLayer) (AllBinaryJ2METiledLayer.new_4 (jio (RaceTrackData.getId raceTrackData)) tiledLayer (jio (RaceTrackData.getMapArray raceTrackData)) (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).rED))))))
        jset allbinaryTiledLayer (assignedValue)
        Control.Monad.void (AllBinaryTiledLayer.setCells ((jget allbinaryTiledLayer)) (jio (RaceTrackData.getMapArray raceTrackData)))
        pure ((jget allbinaryTiledLayer))


-- throws Exception
getMiniInstance :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getMiniInstance object_ a1 = jmethod object_ "getMiniInstance" (\() -> (getMiniInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactory))) () a1

getMiniInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getMiniInstance_super object_ a1 = (getMiniInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactory)) a1

getMiniInstance_impl :: AllBinaryTiledLayerFactory -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getMiniInstance_impl this raceTrackData = do
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        tiledLayer <- (TiledLayerFactory.getMiniInstance ((jio (TiledLayerFactory.new_))) raceTrackData)
        allbinaryTiledLayer <- (fmap (\value_ -> javaCast value_ :: AllBinaryTiledLayer.AllBinaryTiledLayer) (AllBinaryJ2METiledLayer.new_4 (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (((jio (RaceTrackData.getId raceTrackData)) + 100) + 1))) tiledLayer (jio (RaceTrackData.getMapArray raceTrackData)) (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).rED))))))
        Control.Monad.void (AllBinaryTiledLayer.setCells allbinaryTiledLayer (jio (RaceTrackData.getMapArray raceTrackData)))
        pure (allbinaryTiledLayer)


