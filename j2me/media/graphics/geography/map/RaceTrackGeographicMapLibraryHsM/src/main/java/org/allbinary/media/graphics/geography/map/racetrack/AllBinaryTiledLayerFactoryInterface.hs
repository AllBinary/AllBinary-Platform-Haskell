{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.graphics.geography.map.racetrack
module AllBinaryTiledLayerFactoryInterface where

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

-- Java interface: the classes that implement it have these functions
data AllBinaryTiledLayerFactoryInterface = AllBinaryTiledLayerFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryTiledLayerFactoryInterface where
    javaNull = javaNullRecord "AllBinaryTiledLayerFactoryInterface"

instance JavaEquals AllBinaryTiledLayerFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryTiledLayerFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryTiledLayerFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AllBinaryTiledLayerFactoryInterface
fromHeader_ header = AllBinaryTiledLayerFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AllBinaryTiledLayerFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactoryInterface))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactoryInterface)) a1 a2

getInstance_impl :: AllBinaryTiledLayerFactoryInterface -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_impl this raceTrackInfo raceTrackData = javaAbstractMethod "getInstance"


-- throws Exception
getMiniInstance :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getMiniInstance object_ a1 = jmethod object_ "getMiniInstance" (\() -> (getMiniInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactoryInterface))) () a1

getMiniInstance_super :: (JavaObjectClass this_) => this_ -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getMiniInstance_super object_ a1 = (getMiniInstance_impl (javaCast object_ :: AllBinaryTiledLayerFactoryInterface)) a1

getMiniInstance_impl :: AllBinaryTiledLayerFactoryInterface -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getMiniInstance_impl this raceTrackData = javaAbstractMethod "getMiniInstance"


