{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.layer.waypoint
module WaypointLogHelper where

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
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified WaypointBehaviorBase -- org.allbinary.game.layer.WaypointBehaviorBase
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data WaypointLogHelper = WaypointLogHelper
    { header_ :: JavaHeader
    }

instance JavaNull WaypointLogHelper where
    javaNull = javaNullRecord "WaypointLogHelper"

instance JavaEquals WaypointLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass WaypointLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WaypointLogHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = WaypointLogHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "onWaypointEvent" (\() -> onWaypointEvent_impl this)
    jregisterMethod header_ "addWaypointFromBuilding" (\() -> addWaypointFromBuilding_impl this)
    jregisterMethod header_ "addWaypointFromBuildingList" (\() -> addWaypointFromBuildingList_impl this)
    jregisterMethod header_ "insertWaypoint" (\() -> insertWaypoint_impl this)
    jregisterMethod header_ "insertWaypointList" (\() -> insertWaypointList_impl this)
    jregisterMethod header_ "setRandomGeographicMapCellHistoryList" (\() -> setRandomGeographicMapCellHistoryList_impl this)
    jregisterMethod header_ "moveAwayFromBuilding" (\() -> moveAwayFromBuilding_impl this)
    jregisterMethod header_ "needToMove" (\() -> needToMove_impl this)
    jregisterMethod header_ "setRandomGeographicMapCellHistory" (\() -> setRandomGeographicMapCellHistory_impl this)
    jregisterMethod header_ "setCurrentPathGeographicMapCellPosition" (\() -> setCurrentPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setNextUnvisitedPathGeographicMapCellPosition" (\() -> setNextUnvisitedPathGeographicMapCellPosition_impl this)
    pure this

initFields_ :: WaypointLogHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO WaypointLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointLogHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (WaypointLogHelper)
getInstance = do
        pure (WaypointLogHelper.instance_)


onWaypointEvent :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
onWaypointEvent object_ a1 a2 = jmethod object_ "onWaypointEvent" (\() -> (onWaypointEvent_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2

onWaypointEvent_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
onWaypointEvent_super object_ a1 a2 = (onWaypointEvent_impl (javaCast object_ :: WaypointLogHelper)) a1 a2

onWaypointEvent_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
onWaypointEvent_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer = do
        pure ()


addWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromBuilding object_ a1 a2 = jmethod object_ "addWaypointFromBuilding" (\() -> (addWaypointFromBuilding_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2

addWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromBuilding_super object_ a1 a2 = (addWaypointFromBuilding_impl (javaCast object_ :: WaypointLogHelper)) a1 a2

addWaypointFromBuilding_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromBuilding_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer = do
        pure ()


addWaypointFromBuildingList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
addWaypointFromBuildingList object_ a1 a2 a3 = jmethod object_ "addWaypointFromBuildingList" (\() -> (addWaypointFromBuildingList_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2 a3

addWaypointFromBuildingList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
addWaypointFromBuildingList_super object_ a1 a2 a3 = (addWaypointFromBuildingList_impl (javaCast object_ :: WaypointLogHelper)) a1 a2 a3

addWaypointFromBuildingList_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
addWaypointFromBuildingList_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer list = do
        pure ()


insertWaypoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> IO (())
insertWaypoint object_ a1 a2 a3 a4 = jmethod object_ "insertWaypoint" (\() -> (insertWaypoint_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2 a3 a4

insertWaypoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> IO (())
insertWaypoint_super object_ a1 a2 a3 a4 = (insertWaypoint_impl (javaCast object_ :: WaypointLogHelper)) a1 a2 a3 a4

insertWaypoint_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> IO (())
insertWaypoint_impl this associatedAdvancedRTSGameLayer index rtsLayer waypointName = do
        pure ()


insertWaypointList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> BasicArrayList.BasicArrayList -> IO (())
insertWaypointList object_ a1 a2 a3 a4 a5 = jmethod object_ "insertWaypointList" (\() -> (insertWaypointList_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2 a3 a4 a5

insertWaypointList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> BasicArrayList.BasicArrayList -> IO (())
insertWaypointList_super object_ a1 a2 a3 a4 a5 = (insertWaypointList_impl (javaCast object_ :: WaypointLogHelper)) a1 a2 a3 a4 a5

insertWaypointList_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> BasicArrayList.BasicArrayList -> IO (())
insertWaypointList_impl this associatedAdvancedRTSGameLayer index rtsLayer waypointName list = do
        pure ()


setRandomGeographicMapCellHistoryList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistoryList object_ a1 a2 = jmethod object_ "setRandomGeographicMapCellHistoryList" (\() -> (setRandomGeographicMapCellHistoryList_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2

setRandomGeographicMapCellHistoryList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistoryList_super object_ a1 a2 = (setRandomGeographicMapCellHistoryList_impl (javaCast object_ :: WaypointLogHelper)) a1 a2

setRandomGeographicMapCellHistoryList_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistoryList_impl this associatedAdvancedRTSGameLayer pathsList = do
        pure ()


moveAwayFromBuilding :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
moveAwayFromBuilding object_ a1 = jmethod object_ "moveAwayFromBuilding" (\() -> (moveAwayFromBuilding_impl (javaCast object_ :: WaypointLogHelper))) () a1

moveAwayFromBuilding_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
moveAwayFromBuilding_super object_ a1 = (moveAwayFromBuilding_impl (javaCast object_ :: WaypointLogHelper)) a1

moveAwayFromBuilding_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
moveAwayFromBuilding_impl this associatedAdvancedRTSGameLayer = do
        pure ()


needToMove :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
needToMove object_ a1 a2 = jmethod object_ "needToMove" (\() -> (needToMove_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2

needToMove_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
needToMove_super object_ a1 a2 = (needToMove_impl (javaCast object_ :: WaypointLogHelper)) a1 a2

needToMove_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
needToMove_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior = do
        pure ()


setRandomGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRandomGeographicMapCellHistory object_ a1 = jmethod object_ "setRandomGeographicMapCellHistory" (\() -> (setRandomGeographicMapCellHistory_impl (javaCast object_ :: WaypointLogHelper))) () a1

setRandomGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRandomGeographicMapCellHistory_super object_ a1 = (setRandomGeographicMapCellHistory_impl (javaCast object_ :: WaypointLogHelper)) a1

setRandomGeographicMapCellHistory_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRandomGeographicMapCellHistory_impl this associatedAdvancedRTSGameLayer = do
        pure ()


setCurrentPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition object_ a1 a2 a3 = jmethod object_ "setCurrentPathGeographicMapCellPosition" (\() -> (setCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2 a3

setCurrentPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition_super object_ a1 a2 a3 = (setCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointLogHelper)) a1 a2 a3

setCurrentPathGeographicMapCellPosition_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition_impl this associatedAdvancedRTSGameLayer existingCurrentPathGeographicMapCellPosition currentPathGeographicMapCellPosition = do
        pure ()


setNextUnvisitedPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedPathGeographicMapCellPosition object_ a1 a2 a3 = jmethod object_ "setNextUnvisitedPathGeographicMapCellPosition" (\() -> (setNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointLogHelper))) () a1 a2 a3

setNextUnvisitedPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedPathGeographicMapCellPosition_super object_ a1 a2 a3 = (setNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointLogHelper)) a1 a2 a3

setNextUnvisitedPathGeographicMapCellPosition_impl :: WaypointLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedPathGeographicMapCellPosition_impl this associatedAdvancedRTSGameLayer existingNextUnvisitedPathGeographicMapCellPosition nextUnvisitedPathGeographicMapCellPosition = do
        pure ()


