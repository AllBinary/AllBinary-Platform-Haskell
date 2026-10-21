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
module TiledLayerFactory where

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
import qualified RaceTrackData -- same package or java.lang
import qualified TiledLayer -- javax.microedition.lcdui.game.TiledLayer

data TiledLayerFactory = TiledLayerFactory
    { header_ :: JavaHeader
    }

instance JavaNull TiledLayerFactory where
    javaNull = javaNullRecord "TiledLayerFactory"

instance JavaEquals TiledLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TiledLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass TiledLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TiledLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TiledLayerFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getMiniInstance" (\() -> getMiniInstance_impl this)
    pure this

initFields_ :: TiledLayerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TiledLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TiledLayerFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (TiledLayer.TiledLayer)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TiledLayerFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (TiledLayer.TiledLayer)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: TiledLayerFactory)) a1

getInstance_impl :: TiledLayerFactory -> RaceTrackData.RaceTrackData -> IO (TiledLayer.TiledLayer)
getInstance_impl this raceTrackData = do
        mapArray <- (RaceTrackData.getMapArray raceTrackData)
        (TiledLayer.new_5 (jlength (jindex mapArray (0))) (jlength mapArray) (jio (RaceTrackData.getTileSetImage raceTrackData)) (jio (RaceTrackData.getCellWidth raceTrackData)) (jio (RaceTrackData.getCellHeight raceTrackData)))


getMiniInstance :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (TiledLayer.TiledLayer)
getMiniInstance object_ a1 = jmethod object_ "getMiniInstance" (\() -> (getMiniInstance_impl (javaCast object_ :: TiledLayerFactory))) () a1

getMiniInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (TiledLayer.TiledLayer)
getMiniInstance_super object_ a1 = (getMiniInstance_impl (javaCast object_ :: TiledLayerFactory)) a1

getMiniInstance_impl :: TiledLayerFactory -> RaceTrackData.RaceTrackData -> IO (TiledLayer.TiledLayer)
getMiniInstance_impl this raceTrackData = do
        mapArray <- (RaceTrackData.getMapArray raceTrackData)
        (TiledLayer.new_5 (jlength (jindex mapArray (0))) (jlength mapArray) (jio (RaceTrackData.getMiniTileSetImage raceTrackData)) (jio (RaceTrackData.getMiniCellWidth raceTrackData)) (jio (RaceTrackData.getMiniCellHeight raceTrackData)))


