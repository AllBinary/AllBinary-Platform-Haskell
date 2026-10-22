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
module BasePathFindingInfoFactory where

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
import qualified RaceTrackRoadsGeographicMapCellHistoryFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified PathFindingNode -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNode
import qualified GeographicMapCellPositionFactoryInitVisitorInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data BasePathFindingInfoFactory = BasePathFindingInfoFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasePathFindingInfoFactory where
    javaNull = javaNullRecord "BasePathFindingInfoFactory"

instance JavaEquals BasePathFindingInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasePathFindingInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasePathFindingInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasePathFindingInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = BasePathFindingInfoFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "addStartPathFindingNode" (\() -> addStartPathFindingNode_impl this)
    jregisterMethod header_ "addEndPathFindingNode" (\() -> addEndPathFindingNode_impl this)
    jregisterMethod header_ "getInstancePathFindingInfo" (\() -> getInstancePathFindingInfo_impl this)
    pure this

initFields_ :: BasePathFindingInfoFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO BasePathFindingInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasePathFindingInfoFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasePathFindingInfoFactory))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: BasePathFindingInfoFactory)) a1 a2 a3

init_impl :: BasePathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> JavaArray (JavaArray (Int)) -> IO (())
init_impl this geographicMapInterface pathFindingInfo mapArray = do
        -- Java nested class RaceTrackGeographicMapCellPositionFactoryInitVisitor: move it to its own module

        Control.Monad.void (BasicGeographicMapCellPositionFactory.visit ((jio (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface))) (javaCast (jio (RaceTrackGeographicMapCellPositionFactoryInitVisitor.new_))))
        pure ()


-- throws Exception
addStartPathFindingNode :: (JavaObjectClass this_) => this_ -> PathFindingInfo.PathFindingInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addStartPathFindingNode object_ a1 a2 = jmethod object_ "addStartPathFindingNode" (\() -> (addStartPathFindingNode_impl (javaCast object_ :: BasePathFindingInfoFactory))) () a1 a2

addStartPathFindingNode_super :: (JavaObjectClass this_) => this_ -> PathFindingInfo.PathFindingInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addStartPathFindingNode_super object_ a1 a2 = (addStartPathFindingNode_impl (javaCast object_ :: BasePathFindingInfoFactory)) a1 a2

addStartPathFindingNode_impl :: BasePathFindingInfoFactory -> PathFindingInfo.PathFindingInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addStartPathFindingNode_impl this pathFindingInfo startGeographicMapCellPosition = do
        Control.Monad.void (PathFindingInfo.addStartPathFindingNode pathFindingInfo (jio (PathFindingNode.new_2 (jget ((jio (NullUtil.getInstance))).nULL_OBJECT) startGeographicMapCellPosition)))
        pure ()


-- throws Exception
addEndPathFindingNode :: (JavaObjectClass this_) => this_ -> PathFindingInfo.PathFindingInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addEndPathFindingNode object_ a1 a2 = jmethod object_ "addEndPathFindingNode" (\() -> (addEndPathFindingNode_impl (javaCast object_ :: BasePathFindingInfoFactory))) () a1 a2

addEndPathFindingNode_super :: (JavaObjectClass this_) => this_ -> PathFindingInfo.PathFindingInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addEndPathFindingNode_super object_ a1 a2 = (addEndPathFindingNode_impl (javaCast object_ :: BasePathFindingInfoFactory)) a1 a2

addEndPathFindingNode_impl :: BasePathFindingInfoFactory -> PathFindingInfo.PathFindingInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
addEndPathFindingNode_impl this pathFindingInfo endGeographicMapCellPosition = do
        Control.Monad.void (PathFindingInfo.addEndPathFindingNode pathFindingInfo (jio (PathFindingNode.new_2 (jget ((jio (NullUtil.getInstance))).nULL_OBJECT) endGeographicMapCellPosition)))
        pure ()


-- throws Exception
getInstancePathFindingInfo :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo object_ a1 a2 = jmethod object_ "getInstancePathFindingInfo" (\() -> (getInstancePathFindingInfo_impl (javaCast object_ :: BasePathFindingInfoFactory))) () a1 a2

getInstancePathFindingInfo_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo_super object_ a1 a2 = (getInstancePathFindingInfo_impl (javaCast object_ :: BasePathFindingInfoFactory)) a1 a2

getInstancePathFindingInfo_impl :: BasePathFindingInfoFactory -> BasicGeographicMap.BasicGeographicMap -> JavaArray (JavaArray (Int)) -> IO (PathFindingInfo.PathFindingInfo)
getInstancePathFindingInfo_impl this geographicMapInterface graphArray = do
        javaThrow ((JavaException "RuntimeException" ""))


