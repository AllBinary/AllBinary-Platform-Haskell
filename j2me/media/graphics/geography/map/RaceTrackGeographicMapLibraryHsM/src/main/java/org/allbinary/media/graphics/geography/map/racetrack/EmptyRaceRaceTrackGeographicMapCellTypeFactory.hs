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
module EmptyRaceRaceTrackGeographicMapCellTypeFactory (module EmptyRaceRaceTrackGeographicMapCellTypeFactory, module RaceTrackGeographicMapCellTypeFactory) where

import RaceTrackGeographicMapCellTypeFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instanceC)
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
import qualified RaceTrackGeographicMapCellType -- same package or java.lang
import qualified GeographicMapCellType -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PathFindingNodeCostInfoData -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData
import qualified RaceTrackGeographicMapCellTypeFactory

data EmptyRaceRaceTrackGeographicMapCellTypeFactory = EmptyRaceRaceTrackGeographicMapCellTypeFactory
    { header_ :: JavaHeader
    , base :: RaceTrackGeographicMapCellTypeFactory.RaceTrackGeographicMapCellTypeFactory
    }

instance JavaNull EmptyRaceRaceTrackGeographicMapCellTypeFactory where
    javaNull = javaNullRecord "EmptyRaceRaceTrackGeographicMapCellTypeFactory"

instance JavaEquals EmptyRaceRaceTrackGeographicMapCellTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmptyRaceRaceTrackGeographicMapCellTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass EmptyRaceRaceTrackGeographicMapCellTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO EmptyRaceRaceTrackGeographicMapCellTypeFactory
newRecord_ = do
    base <- RaceTrackGeographicMapCellTypeFactory.newRecord_
    let header_ = base.header_
    let this = EmptyRaceRaceTrackGeographicMapCellTypeFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: EmptyRaceRaceTrackGeographicMapCellTypeFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (EmptyRaceRaceTrackGeographicMapCellTypeFactory)
getInstance = do
        pure (EmptyRaceRaceTrackGeographicMapCellTypeFactory.instanceC)

new_ :: IO EmptyRaceRaceTrackGeographicMapCellTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EmptyRaceRaceTrackGeographicMapCellTypeFactory -> IO ()
init_ this = do
        RaceTrackGeographicMapCellTypeFactory.init_ this.base
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GeographicMapCellType.GeographicMapCellType) (RaceTrackGeographicMapCellType.new_4 (jget (commonStrings).eMPTY) 0 (jget ((jio (PathFindingNodeCostInfoData.getInstance))).mAX_NODE_COST) 1))
        jset (this).base.eMPTY_CELL_TYPE (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GeographicMapCellType.GeographicMapCellType) (RaceTrackGeographicMapCellType.new_4 "Easy" 19 1 0))
        jset (this).base.eASY_CELL_TYPE (assignedValue)
        jset (this).base.fINISH_LINE_ROAD_CELL_TYPE ((jget (this).base.dEFAULT_FINISH_LINE_ROAD_CELL_TYPE))
        pure ()


