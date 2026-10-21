{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
module AdvancedRTSLayerUtil where

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
import qualified RTSLayerUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified WorkWaypoint -- org.allbinary.game.layer.waypoint.WorkWaypoint
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified BaseRaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data AdvancedRTSLayerUtil = AdvancedRTSLayerUtil
    { header_ :: JavaHeader
    }

instance JavaNull AdvancedRTSLayerUtil where
    javaNull = javaNullRecord "AdvancedRTSLayerUtil"

instance JavaEquals AdvancedRTSLayerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvancedRTSLayerUtil where
    (==) = jrecordEquals

instance JavaObjectClass AdvancedRTSLayerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvancedRTSLayerUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = AdvancedRTSLayerUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "createFakeRTSLayerHashtable" (\() -> createFakeRTSLayerHashtable_impl this)
    pure this

initFields_ :: AdvancedRTSLayerUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AdvancedRTSLayerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvancedRTSLayerUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AdvancedRTSLayerUtil)
getInstance = do
        pure (AdvancedRTSLayerUtil.instance_)


createFakeRTSLayerHashtable :: (JavaObjectClass this_) => this_ -> BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap -> IO (ABHashtable.ABHashtable)
createFakeRTSLayerHashtable object_ a1 = jmethod object_ "createFakeRTSLayerHashtable" (\() -> (createFakeRTSLayerHashtable_impl (javaCast object_ :: AdvancedRTSLayerUtil))) () a1

createFakeRTSLayerHashtable_super :: (JavaObjectClass this_) => this_ -> BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap -> IO (ABHashtable.ABHashtable)
createFakeRTSLayerHashtable_super object_ a1 = (createFakeRTSLayerHashtable_impl (javaCast object_ :: AdvancedRTSLayerUtil)) a1

createFakeRTSLayerHashtable_impl :: AdvancedRTSLayerUtil -> BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap -> IO (ABHashtable.ABHashtable)
createFakeRTSLayerHashtable_impl this baseRaceTrackGeographicMap = do
        hashtable <- (RTSLayerUtil.createFakeRTSLayerHashtable ((jio (RTSLayerUtil.getInstance))) baseRaceTrackGeographicMap)
        Control.Monad.void (ABHashtable.put hashtable (WorkWaypoint.iD) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 50)))
        pure (hashtable)


