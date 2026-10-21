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
-- package org.allbinary.game.media.graphics.geography.map.racetrack
module DynamicRaceTracksPathPrinter (module DynamicRaceTracksPathPrinter, module RaceTracksPathPrinter) where

import RaceTracksPathPrinter hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, printAllPaths, printAllPaths_super, printAllPaths_impl, logUtil)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified RaceTrackGeographicMapInterfaceFactoryInterface -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface
import qualified RaceTrackRoadsGeographicMapCellHistoryFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory
import qualified RaceTracksPathPrinter -- org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified PathGenerator -- org.allbinary.media.graphics.geography.pathfinding.PathGenerator

data DynamicRaceTracksPathPrinter = DynamicRaceTracksPathPrinter
    { header_ :: JavaHeader
    , base :: RaceTracksPathPrinter.RaceTracksPathPrinter
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull DynamicRaceTracksPathPrinter where
    javaNull = javaNullRecord "DynamicRaceTracksPathPrinter"

instance JavaEquals DynamicRaceTracksPathPrinter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DynamicRaceTracksPathPrinter where
    (==) = jrecordEquals

instance JavaObjectClass DynamicRaceTracksPathPrinter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DynamicRaceTracksPathPrinter
newRecord_ = do
    base <- RaceTracksPathPrinter.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = DynamicRaceTracksPathPrinter header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "printAllPaths" (\() -> printAllPaths_impl this)
    pure this

initFields_ :: DynamicRaceTracksPathPrinter -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO DynamicRaceTracksPathPrinter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DynamicRaceTracksPathPrinter -> IO ()
init_ this = do
    RaceTracksPathPrinter.init_ this.base
    initFields_ this


printAllPaths :: (JavaObjectClass this_) => this_ -> RaceTrackGeographicMapInterfaceFactoryInterface.RaceTrackGeographicMapInterfaceFactoryInterface -> PathFindingInfo.PathFindingInfo -> Int -> IO (())
printAllPaths object_ a1 a2 a3 = jmethod object_ "printAllPaths" (\() -> (printAllPaths_impl (javaCast object_ :: DynamicRaceTracksPathPrinter))) () a1 a2 a3

printAllPaths_super :: (JavaObjectClass this_) => this_ -> RaceTrackGeographicMapInterfaceFactoryInterface.RaceTrackGeographicMapInterfaceFactoryInterface -> PathFindingInfo.PathFindingInfo -> Int -> IO (())
printAllPaths_super object_ a1 a2 a3 = (printAllPaths_impl (javaCast object_ :: DynamicRaceTracksPathPrinter)) a1 a2 a3

printAllPaths_impl :: DynamicRaceTracksPathPrinter -> RaceTrackGeographicMapInterfaceFactoryInterface.RaceTrackGeographicMapInterfaceFactoryInterface -> PathFindingInfo.PathFindingInfo -> Int -> IO (())
printAllPaths_impl this raceTrackGeographicMapInterfaceFactoryInterface pathFindingInfo size = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).pROCESS) e)
            ) $ do
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                geographicMapInterface <- (RaceTrackGeographicMapInterfaceFactoryInterface.getTrackInstance raceTrackGeographicMapInterfaceFactoryInterface (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) index)))
                list <- (PathGenerator.createList ((jio (PathGenerator.getInstance))) geographicMapInterface (jio (RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance)) pathFindingInfo 10)
                Control.Monad.void (putStrLn (javaToString ("Track " ++ javaToString index)))
                Control.Monad.void (RaceTracksPathPrinter.printPaths this list)
        pure ()


