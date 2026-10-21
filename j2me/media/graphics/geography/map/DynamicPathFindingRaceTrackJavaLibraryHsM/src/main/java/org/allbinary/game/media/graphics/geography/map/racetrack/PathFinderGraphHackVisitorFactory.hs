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
module PathFinderGraphHackVisitorFactory (module PathFinderGraphHackVisitorFactory, module PathFinderGraphVisitorFactoryBase) where

import PathFinderGraphVisitorFactoryBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, edgeMinimum, minPathWeight, maxPathWeight)
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
import qualified PathFinderGraphHackVisitor -- same package or java.lang
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified PathFinderGraphVisitorFactoryBase -- org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase
import qualified PathFinderGraphVisitorBase -- org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase

data PathFinderGraphHackVisitorFactory = PathFinderGraphHackVisitorFactory
    { header_ :: JavaHeader
    , base :: PathFinderGraphVisitorFactoryBase.PathFinderGraphVisitorFactoryBase
    , edgeMinimum :: IORef (Int)
    , minPathWeight :: IORef (Int)
    , maxPathWeight :: IORef (Int)
    }

instance JavaNull PathFinderGraphHackVisitorFactory where
    javaNull = javaNullRecord "PathFinderGraphHackVisitorFactory"

instance JavaEquals PathFinderGraphHackVisitorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFinderGraphHackVisitorFactory where
    (==) = jrecordEquals

instance JavaObjectClass PathFinderGraphHackVisitorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFinderGraphHackVisitorFactory
newRecord_ = do
    base <- PathFinderGraphVisitorFactoryBase.newRecord_
    let header_ = base.header_
    edgeMinimum <- newIORef 0
    minPathWeight <- newIORef 0
    maxPathWeight <- newIORef 0
    let this = PathFinderGraphHackVisitorFactory header_ base edgeMinimum minPathWeight maxPathWeight
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: PathFinderGraphHackVisitorFactory -> IO ()
initFields_ this = do
    jset this.edgeMinimum (0)
    jset this.minPathWeight (0)
    jset this.maxPathWeight (0)
    pure ()

new_3 :: Int -> Int -> Int -> IO PathFinderGraphHackVisitorFactory
new_3 edgeMinimum minPathWeight maxPathWeight = do
    this <- newRecord_
    init_3 this edgeMinimum minPathWeight maxPathWeight
    pure this

init_3 :: PathFinderGraphHackVisitorFactory -> Int -> Int -> Int -> IO ()
init_3 this edgeMinimum minPathWeight maxPathWeight = do
        PathFinderGraphVisitorFactoryBase.init_ this.base
        initFields_ this
        jset (this).edgeMinimum (edgeMinimum)
        jset (this).minPathWeight (minPathWeight)
        jset (this).maxPathWeight (maxPathWeight)
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (PathFinderGraphVisitorBase.PathFinderGraphVisitorBase)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PathFinderGraphHackVisitorFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (PathFinderGraphVisitorBase.PathFinderGraphVisitorBase)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: PathFinderGraphHackVisitorFactory)) a1

getInstance_impl :: PathFinderGraphHackVisitorFactory -> BasicGeographicMap.BasicGeographicMap -> IO (PathFinderGraphVisitorBase.PathFinderGraphVisitorBase)
getInstance_impl this geographicMapInterface = do
        (fmap (\value_ -> javaCast value_ :: PathFinderGraphVisitorBase.PathFinderGraphVisitorBase) (PathFinderGraphHackVisitor.new_4 geographicMapInterface (jget (this).edgeMinimum) (jget (this).minPathWeight) (jget (this).maxPathWeight)))


