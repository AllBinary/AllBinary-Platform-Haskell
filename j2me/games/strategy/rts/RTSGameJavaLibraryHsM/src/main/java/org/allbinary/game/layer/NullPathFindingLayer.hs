{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.layer
module NullPathFindingLayer where

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
import qualified GeographicMapCellPositionAreaBase -- same package or java.lang
import qualified SelectionHudPaintable -- same package or java.lang
import qualified RTSLayer2LogHelper -- same package or java.lang
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified CaptionAnimationHelperBase -- org.allbinary.animation.caption.CaptionAnimationHelperBase
import qualified Group -- org.allbinary.game.identification.Group
import qualified Waypoint2LogHelper -- org.allbinary.game.layer.waypoint.Waypoint2LogHelper
import qualified WaypointLogHelper -- org.allbinary.game.layer.waypoint.WaypointLogHelper
import qualified WaypointRunnableLogHelper -- org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified PathFindingLayerInterface

-- implements PathFindingLayerInterface
data NullPathFindingLayer = NullPathFindingLayer
    { header_ :: JavaHeader
    }

instance JavaNull NullPathFindingLayer where
    javaNull = javaNullRecord "NullPathFindingLayer"

instance JavaEquals NullPathFindingLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullPathFindingLayer where
    (==) = jrecordEquals

instance JavaObjectClass NullPathFindingLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PATH_FINDING_LAYER #-}
nULL_PATH_FINDING_LAYER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullPathFindingLayer
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullPathFindingLayer header_
    jregisterLevel header_ this
    PathFindingLayerInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getEndGeographicMapCellPositionList" (\() -> getEndGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "shouldHandleStartSameAsEnd" (\() -> shouldHandleStartSameAsEnd_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionArea" (\() -> getGeographicMapCellPositionArea_impl this)
    jregisterMethod header_ "getHudPaintable" (\() -> getHudPaintable_impl this)
    jregisterMethod header_ "handleCost" (\() -> handleCost_impl this)
    jregisterMethod header_ "getParentLayer" (\() -> getParentLayer_impl this)
    jregisterMethod header_ "getRTSLayer2LogHelper" (\() -> getRTSLayer2LogHelper_impl this)
    jregisterMethod header_ "setTarget" (\() -> setTarget_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getMoveOutOfBuildAreaPath" (\() -> getMoveOutOfBuildAreaPath_impl this)
    jregisterMethod header_ "setClosestGeographicMapCellHistory" (\() -> setClosestGeographicMapCellHistory_impl this)
    jregisterMethod header_ "teleportTo" (\() -> teleportTo_impl this)
    jregisterMethod header_ "setLoad" (\() -> setLoad_impl this)
    jregisterMethod header_ "getSurroundingGeographicMapCellPositionList" (\() -> getSurroundingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "isSelected" (\() -> isSelected_impl this)
    jregisterMethod header_ "shouldAddWaypointFromBuilding" (\() -> shouldAddWaypointFromBuilding_impl this)
    jregisterMethod header_ "isShowMoreCaptionStates" (\() -> isShowMoreCaptionStates_impl this)
    jregisterMethod header_ "trackTo" (\() -> trackTo_impl this)
    jregisterMethod header_ "trackToDXY" (\() -> trackToDXY_impl this)
    jregisterMethod header_ "buildingChase" (\() -> buildingChase_impl this)
    jregisterMethod header_ "getTrackingEvent" (\() -> getTrackingEvent_impl this)
    jregisterMethod header_ "allStop" (\() -> allStop_impl this)
    jregisterMethod header_ "isWaypointListEmptyOrOnlyTargets" (\() -> isWaypointListEmptyOrOnlyTargets_impl this)
    jregisterMethod header_ "getCurrentGeographicMapCellPosition" (\() -> getCurrentGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getTopLeftGeographicMapCellPosition" (\() -> getTopLeftGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getCaptionAnimationHelper" (\() -> getCaptionAnimationHelper_impl this)
    jregisterMethod header_ "getWaypointBehavior" (\() -> getWaypointBehavior_impl this)
    jregisterMethod header_ "getWaypointLogHelper" (\() -> getWaypointLogHelper_impl this)
    jregisterMethod header_ "getWaypoint2LogHelper" (\() -> getWaypoint2LogHelper_impl this)
    jregisterMethod header_ "getWaypointRunnableLogHelper" (\() -> getWaypointRunnableLogHelper_impl this)
    jregisterMethod header_ "getGroupInterface" (\() -> getGroupInterface_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    pure this

initFields_ :: NullPathFindingLayer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullPathFindingLayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullPathFindingLayer -> IO ()
init_ this = do
    initFields_ this


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullPathFindingLayer))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullPathFindingLayer))

getName_impl :: NullPathFindingLayer -> IO (String)
getName_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getEndGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList object_ = jmethod object_ "getEndGeographicMapCellPositionList" (\() -> (getEndGeographicMapCellPositionList_impl (javaCast object_ :: NullPathFindingLayer))) ()

getEndGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_super object_ = (getEndGeographicMapCellPositionList_impl (javaCast object_ :: NullPathFindingLayer))

getEndGeographicMapCellPositionList_impl :: NullPathFindingLayer -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


shouldHandleStartSameAsEnd :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd object_ = jmethod object_ "shouldHandleStartSameAsEnd" (\() -> (shouldHandleStartSameAsEnd_impl (javaCast object_ :: NullPathFindingLayer))) ()

shouldHandleStartSameAsEnd_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd_super object_ = (shouldHandleStartSameAsEnd_impl (javaCast object_ :: NullPathFindingLayer))

shouldHandleStartSameAsEnd_impl :: NullPathFindingLayer -> IO (Bool)
shouldHandleStartSameAsEnd_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getGeographicMapCellPositionArea :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea object_ = jmethod object_ "getGeographicMapCellPositionArea" (\() -> (getGeographicMapCellPositionArea_impl (javaCast object_ :: NullPathFindingLayer))) ()

getGeographicMapCellPositionArea_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea_super object_ = (getGeographicMapCellPositionArea_impl (javaCast object_ :: NullPathFindingLayer))

getGeographicMapCellPositionArea_impl :: NullPathFindingLayer -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable object_ = jmethod object_ "getHudPaintable" (\() -> (getHudPaintable_impl (javaCast object_ :: NullPathFindingLayer))) ()

getHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_super object_ = (getHudPaintable_impl (javaCast object_ :: NullPathFindingLayer))

getHudPaintable_impl :: NullPathFindingLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
handleCost :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost object_ a1 = jmethod object_ "handleCost" (\() -> (handleCost_impl (javaCast object_ :: NullPathFindingLayer))) () a1

handleCost_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost_super object_ a1 = (handleCost_impl (javaCast object_ :: NullPathFindingLayer)) a1

handleCost_impl :: NullPathFindingLayer -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
handleCost_impl this ownerLayer = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getParentLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer object_ = jmethod object_ "getParentLayer" (\() -> (getParentLayer_impl (javaCast object_ :: NullPathFindingLayer))) ()

getParentLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer_super object_ = (getParentLayer_impl (javaCast object_ :: NullPathFindingLayer))

getParentLayer_impl :: NullPathFindingLayer -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getParentLayer_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getRTSLayer2LogHelper :: (JavaObjectClass this_) => this_ -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper object_ = jmethod object_ "getRTSLayer2LogHelper" (\() -> (getRTSLayer2LogHelper_impl (javaCast object_ :: NullPathFindingLayer))) ()

getRTSLayer2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper_super object_ = (getRTSLayer2LogHelper_impl (javaCast object_ :: NullPathFindingLayer))

getRTSLayer2LogHelper_impl :: NullPathFindingLayer -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
setTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget object_ a1 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: NullPathFindingLayer))) () a1

setTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget_super object_ a1 = (setTarget_impl (javaCast object_ :: NullPathFindingLayer)) a1

setTarget_impl :: NullPathFindingLayer -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget_impl this targetGameLayer = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: NullPathFindingLayer))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: NullPathFindingLayer)) a1 a2

init_impl :: NullPathFindingLayer -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_impl this geographicMapCellHistory geographicMapCellPositionBasicArrayList = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getMoveOutOfBuildAreaPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath object_ a1 = jmethod object_ "getMoveOutOfBuildAreaPath" (\() -> (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: NullPathFindingLayer))) () a1

getMoveOutOfBuildAreaPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_super object_ a1 = (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: NullPathFindingLayer)) a1

getMoveOutOfBuildAreaPath_impl :: NullPathFindingLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
setClosestGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory object_ a1 = jmethod object_ "setClosestGeographicMapCellHistory" (\() -> (setClosestGeographicMapCellHistory_impl (javaCast object_ :: NullPathFindingLayer))) () a1

setClosestGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_super object_ a1 = (setClosestGeographicMapCellHistory_impl (javaCast object_ :: NullPathFindingLayer)) a1

setClosestGeographicMapCellHistory_impl :: NullPathFindingLayer -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_impl this pathsList = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


teleportTo :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo object_ a1 = jmethod object_ "teleportTo" (\() -> (teleportTo_impl (javaCast object_ :: NullPathFindingLayer))) () a1

teleportTo_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_super object_ a1 = (teleportTo_impl (javaCast object_ :: NullPathFindingLayer)) a1

teleportTo_impl :: NullPathFindingLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
setLoad :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad object_ a1 = jmethod object_ "setLoad" (\() -> (setLoad_impl (javaCast object_ :: NullPathFindingLayer))) () a1

setLoad_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad_super object_ a1 = (setLoad_impl (javaCast object_ :: NullPathFindingLayer)) a1

setLoad_impl :: NullPathFindingLayer -> Int -> IO (())
setLoad_impl this resource = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: NullPathFindingLayer))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: NullPathFindingLayer))

getSurroundingGeographicMapCellPositionList_impl :: NullPathFindingLayer -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isSelected :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelected object_ = jmethod object_ "isSelected" (\() -> (isSelected_impl (javaCast object_ :: NullPathFindingLayer))) ()

isSelected_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelected_super object_ = (isSelected_impl (javaCast object_ :: NullPathFindingLayer))

isSelected_impl :: NullPathFindingLayer -> IO (Bool)
isSelected_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


shouldAddWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding object_ = jmethod object_ "shouldAddWaypointFromBuilding" (\() -> (shouldAddWaypointFromBuilding_impl (javaCast object_ :: NullPathFindingLayer))) ()

shouldAddWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding_super object_ = (shouldAddWaypointFromBuilding_impl (javaCast object_ :: NullPathFindingLayer))

shouldAddWaypointFromBuilding_impl :: NullPathFindingLayer -> IO (Bool)
shouldAddWaypointFromBuilding_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isShowMoreCaptionStates :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowMoreCaptionStates object_ = jmethod object_ "isShowMoreCaptionStates" (\() -> (isShowMoreCaptionStates_impl (javaCast object_ :: NullPathFindingLayer))) ()

isShowMoreCaptionStates_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowMoreCaptionStates_super object_ = (isShowMoreCaptionStates_impl (javaCast object_ :: NullPathFindingLayer))

isShowMoreCaptionStates_impl :: NullPathFindingLayer -> IO (Bool)
isShowMoreCaptionStates_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
trackTo :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo object_ a1 = jmethod object_ "trackTo" (\() -> (trackTo_impl (javaCast object_ :: NullPathFindingLayer))) () a1

trackTo_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo_super object_ a1 = (trackTo_impl (javaCast object_ :: NullPathFindingLayer)) a1

trackTo_impl :: NullPathFindingLayer -> String -> IO (())
trackTo_impl this reason = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
trackToDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY object_ a1 a2 = jmethod object_ "trackToDXY" (\() -> (trackToDXY_impl (javaCast object_ :: NullPathFindingLayer))) () a1 a2

trackToDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY_super object_ a1 a2 = (trackToDXY_impl (javaCast object_ :: NullPathFindingLayer)) a1 a2

trackToDXY_impl :: NullPathFindingLayer -> Int -> Int -> IO (())
trackToDXY_impl this dx dy = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
buildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase object_ a1 a2 = jmethod object_ "buildingChase" (\() -> (buildingChase_impl (javaCast object_ :: NullPathFindingLayer))) () a1 a2

buildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_super object_ a1 a2 = (buildingChase_impl (javaCast object_ :: NullPathFindingLayer)) a1 a2

buildingChase_impl :: NullPathFindingLayer -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_impl this allbinaryLayer cellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


getTrackingEvent :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent object_ = jmethod object_ "getTrackingEvent" (\() -> (getTrackingEvent_impl (javaCast object_ :: NullPathFindingLayer))) ()

getTrackingEvent_super :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_super object_ = (getTrackingEvent_impl (javaCast object_ :: NullPathFindingLayer))

getTrackingEvent_impl :: NullPathFindingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


allStop :: (JavaObjectClass this_) => this_ -> IO (())
allStop object_ = jmethod object_ "allStop" (\() -> (allStop_impl (javaCast object_ :: NullPathFindingLayer))) ()

allStop_super :: (JavaObjectClass this_) => this_ -> IO (())
allStop_super object_ = (allStop_impl (javaCast object_ :: NullPathFindingLayer))

allStop_impl :: NullPathFindingLayer -> IO (())
allStop_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: NullPathFindingLayer))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: NullPathFindingLayer))

isWaypointListEmptyOrOnlyTargets_impl :: NullPathFindingLayer -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getCurrentGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition object_ = jmethod object_ "getCurrentGeographicMapCellPosition" (\() -> (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: NullPathFindingLayer))) ()

getCurrentGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_super object_ = (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: NullPathFindingLayer))

getCurrentGeographicMapCellPosition_impl :: NullPathFindingLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getTopLeftGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition object_ = jmethod object_ "getTopLeftGeographicMapCellPosition" (\() -> (getTopLeftGeographicMapCellPosition_impl (javaCast object_ :: NullPathFindingLayer))) ()

getTopLeftGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition_super object_ = (getTopLeftGeographicMapCellPosition_impl (javaCast object_ :: NullPathFindingLayer))

getTopLeftGeographicMapCellPosition_impl :: NullPathFindingLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getCaptionAnimationHelper :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper object_ = jmethod object_ "getCaptionAnimationHelper" (\() -> (getCaptionAnimationHelper_impl (javaCast object_ :: NullPathFindingLayer))) ()

getCaptionAnimationHelper_super :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_super object_ = (getCaptionAnimationHelper_impl (javaCast object_ :: NullPathFindingLayer))

getCaptionAnimationHelper_impl :: NullPathFindingLayer -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getWaypointBehavior :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior object_ = jmethod object_ "getWaypointBehavior" (\() -> (getWaypointBehavior_impl (javaCast object_ :: NullPathFindingLayer))) ()

getWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_super object_ = (getWaypointBehavior_impl (javaCast object_ :: NullPathFindingLayer))

getWaypointBehavior_impl :: NullPathFindingLayer -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getWaypointLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper object_ = jmethod object_ "getWaypointLogHelper" (\() -> (getWaypointLogHelper_impl (javaCast object_ :: NullPathFindingLayer))) ()

getWaypointLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_super object_ = (getWaypointLogHelper_impl (javaCast object_ :: NullPathFindingLayer))

getWaypointLogHelper_impl :: NullPathFindingLayer -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getWaypoint2LogHelper :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper object_ = jmethod object_ "getWaypoint2LogHelper" (\() -> (getWaypoint2LogHelper_impl (javaCast object_ :: NullPathFindingLayer))) ()

getWaypoint2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_super object_ = (getWaypoint2LogHelper_impl (javaCast object_ :: NullPathFindingLayer))

getWaypoint2LogHelper_impl :: NullPathFindingLayer -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getWaypointRunnableLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper object_ = jmethod object_ "getWaypointRunnableLogHelper" (\() -> (getWaypointRunnableLogHelper_impl (javaCast object_ :: NullPathFindingLayer))) ()

getWaypointRunnableLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_super object_ = (getWaypointRunnableLogHelper_impl (javaCast object_ :: NullPathFindingLayer))

getWaypointRunnableLogHelper_impl :: NullPathFindingLayer -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getGroupInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface object_ = jmethod object_ "getGroupInterface" (\() -> (getGroupInterface_impl (javaCast object_ :: NullPathFindingLayer))) ()

getGroupInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface_super object_ = (getGroupInterface_impl (javaCast object_ :: NullPathFindingLayer))

getGroupInterface_impl :: NullPathFindingLayer -> IO (JavaArray (Group.Group))
getGroupInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: NullPathFindingLayer))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: NullPathFindingLayer))

isDestroyed_impl :: NullPathFindingLayer -> IO (Bool)
isDestroyed_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: NullPathFindingLayer))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: NullPathFindingLayer))

getSourceId_impl :: NullPathFindingLayer -> IO (Int)
getSourceId_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


