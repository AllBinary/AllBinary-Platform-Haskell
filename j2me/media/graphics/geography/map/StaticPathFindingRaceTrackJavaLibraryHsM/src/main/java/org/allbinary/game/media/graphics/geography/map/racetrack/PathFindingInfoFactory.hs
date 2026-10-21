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
module PathFindingInfoFactory (module PathFindingInfoFactory, module BasePathFindingInfoFactory) where

import BasePathFindingInfoFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstancePathFindingInfo, getInstancePathFindingInfo_super, getInstancePathFindingInfo_impl, instance_)
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
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasePathFindingInfoFactory -- org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory
import qualified RaceTrackRoadsGeographicMapCellHistoryFactory -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified PathFindingNodeCostInfoFactoryBase -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data PathFindingInfoFactory = PathFindingInfoFactory
    { header_ :: JavaHeader
    , base :: BasePathFindingInfoFactory.BasePathFindingInfoFactory
    }

instance JavaNull PathFindingInfoFactory where
    javaNull = javaNullRecord "PathFindingInfoFactory"

instance JavaEquals PathFindingInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO PathFindingInfoFactory
newRecord_ = do
    base <- BasePathFindingInfoFactory.newRecord_
    let header_ = base.header_
    let this = PathFindingInfoFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstancePathFindingInfo" (\() -> getInstancePathFindingInfo_impl this)
    pure this

initFields_ :: PathFindingInfoFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (PathFindingInfoFactory)
getInstance = do
        pure (PathFindingInfoFactory.instance_)

new_ :: IO PathFindingInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathFindingInfoFactory -> IO ()
init_ this = do
        BasePathFindingInfoFactory.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstancePathFindingInfo :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo object_ a1 a2 = jmethod object_ "getInstancePathFindingInfo" (\() -> (getInstancePathFindingInfo_impl (javaCast object_ :: PathFindingInfoFactory))) () a1 a2

getInstancePathFindingInfo_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo_super object_ a1 a2 = (getInstancePathFindingInfo_impl (javaCast object_ :: PathFindingInfoFactory)) a1 a2

getInstancePathFindingInfo_impl :: PathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo_impl this geographicMapInterface graphArray = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (PreLogUtil.put (jget (commonStrings).sTART) this (jget (commonStrings).gET_INSTANCE))
        pathFindingInfo <- (PathFindingInfo.new_3 (jio (PathFindingNodeCostInfoFactoryBase.new_)) (jio (BasicArrayListS.new_1 1)) (jio (BasicArrayListS.new_1 1)))
        Control.Monad.void (GeographicMapCellHistory.init ((jio (RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance))))
        Control.Monad.void (BasePathFindingInfoFactory.init this geographicMapInterface pathFindingInfo graphArray)
        pure (pathFindingInfo)


