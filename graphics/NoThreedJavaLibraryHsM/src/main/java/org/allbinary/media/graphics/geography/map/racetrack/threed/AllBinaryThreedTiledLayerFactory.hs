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
-- package org.allbinary.media.graphics.geography.map.racetrack.threed
module AllBinaryThreedTiledLayerFactory where

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
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified RaceTrackData -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData
import qualified RaceTrackInfo -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo

data AllBinaryThreedTiledLayerFactory = AllBinaryThreedTiledLayerFactory
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryThreedTiledLayerFactory where
    javaNull = javaNullRecord "AllBinaryThreedTiledLayerFactory"

instance JavaEquals AllBinaryThreedTiledLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryThreedTiledLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryThreedTiledLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryThreedTiledLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryThreedTiledLayerFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    pure this

initFields_ :: AllBinaryThreedTiledLayerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryThreedTiledLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryThreedTiledLayerFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AllBinaryThreedTiledLayerFactory)
getInstance = do
        pure (AllBinaryThreedTiledLayerFactory.instance_)


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: AllBinaryThreedTiledLayerFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: AllBinaryThreedTiledLayerFactory)) a1 a2

getInstance_2_impl :: AllBinaryThreedTiledLayerFactory -> RaceTrackInfo.RaceTrackInfo -> RaceTrackData.RaceTrackData -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getInstance_2_impl this raceTrackInfo raceTrackData = do
        javaThrow ((JavaException "Exception" "No Threed"))


