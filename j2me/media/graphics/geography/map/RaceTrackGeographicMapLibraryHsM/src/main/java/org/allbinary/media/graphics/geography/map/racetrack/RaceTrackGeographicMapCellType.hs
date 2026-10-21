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
module RaceTrackGeographicMapCellType (module RaceTrackGeographicMapCellType, module GeographicMapCellType) where

import GeographicMapCellType hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTravelCost, getTravelCost_super, getTravelCost_impl, name, travelCost)
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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType

data RaceTrackGeographicMapCellType = RaceTrackGeographicMapCellType
    { header_ :: JavaHeader
    , base :: GeographicMapCellType.GeographicMapCellType
    , name :: IORef (String)
    , travelCost :: IORef (Int)
    }

instance JavaNull RaceTrackGeographicMapCellType where
    javaNull = javaNullRecord "RaceTrackGeographicMapCellType"

instance JavaEquals RaceTrackGeographicMapCellType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackGeographicMapCellType where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackGeographicMapCellType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RaceTrackGeographicMapCellType
newRecord_ = do
    base <- GeographicMapCellType.newRecord_
    let header_ = base.header_
    name <- newIORef ""
    travelCost <- newIORef 0
    let this = RaceTrackGeographicMapCellType header_ base name travelCost
    jregisterLevel header_ this
    jregisterMethod header_ "getTravelCost" (\() -> getTravelCost_impl this)
    pure this

initFields_ :: RaceTrackGeographicMapCellType -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.travelCost (0)
    pure ()

new_4 :: String -> Int -> Int -> Int -> IO RaceTrackGeographicMapCellType
new_4 name type_ travelCost reset = do
    this <- newRecord_
    init_4 this name type_ travelCost reset
    pure this

init_4 :: RaceTrackGeographicMapCellType -> String -> Int -> Int -> Int -> IO ()
init_4 this name type_ travelCost reset = do
        GeographicMapCellType.init_2 this.base (type_) (reset)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).name (name)
        jset (this).travelCost (travelCost)
        pure ()


getTravelCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getTravelCost object_ = jmethod object_ "getTravelCost" (\() -> (getTravelCost_impl (javaCast object_ :: RaceTrackGeographicMapCellType))) ()

getTravelCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTravelCost_super object_ = (getTravelCost_impl (javaCast object_ :: RaceTrackGeographicMapCellType))

getTravelCost_impl :: RaceTrackGeographicMapCellType -> IO (Int)
getTravelCost_impl this = do
        pure ((jget (this).travelCost))


