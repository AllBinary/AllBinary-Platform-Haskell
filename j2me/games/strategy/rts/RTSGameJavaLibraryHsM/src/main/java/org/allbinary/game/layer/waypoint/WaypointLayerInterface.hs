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
module WaypointLayerInterface where

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
import qualified WaypointLogHelper -- same package or java.lang
import qualified Waypoint2LogHelper -- same package or java.lang
import qualified WaypointRunnableLogHelper -- same package or java.lang
import qualified CaptionAnimationHelperBase -- org.allbinary.animation.caption.CaptionAnimationHelperBase
import qualified WaypointBehaviorBase -- org.allbinary.game.layer.WaypointBehaviorBase
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data WaypointLayerInterface = WaypointLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull WaypointLayerInterface where
    javaNull = javaNullRecord "WaypointLayerInterface"

instance JavaEquals WaypointLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass WaypointLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> WaypointLayerInterface
fromHeader_ header = WaypointLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (WaypointLayerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: WaypointLayerInterface))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: WaypointLayerInterface)) a1 a2

init_impl :: WaypointLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
init_impl this geographicMapCellHistory geographicMapCellPositionBasicArrayList = javaAbstractMethod "init"


getMoveOutOfBuildAreaPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath object_ a1 = jmethod object_ "getMoveOutOfBuildAreaPath" (\() -> (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: WaypointLayerInterface))) () a1

getMoveOutOfBuildAreaPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_super object_ a1 = (getMoveOutOfBuildAreaPath_impl (javaCast object_ :: WaypointLayerInterface)) a1

getMoveOutOfBuildAreaPath_impl :: WaypointLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getMoveOutOfBuildAreaPath_impl this geographicMapCellPosition = javaAbstractMethod "getMoveOutOfBuildAreaPath"


-- throws Exception
setClosestGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory object_ a1 = jmethod object_ "setClosestGeographicMapCellHistory" (\() -> (setClosestGeographicMapCellHistory_impl (javaCast object_ :: WaypointLayerInterface))) () a1

setClosestGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_super object_ a1 = (setClosestGeographicMapCellHistory_impl (javaCast object_ :: WaypointLayerInterface)) a1

setClosestGeographicMapCellHistory_impl :: WaypointLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_impl this pathsList = javaAbstractMethod "setClosestGeographicMapCellHistory"


teleportTo :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo object_ a1 = jmethod object_ "teleportTo" (\() -> (teleportTo_impl (javaCast object_ :: WaypointLayerInterface))) () a1

teleportTo_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_super object_ a1 = (teleportTo_impl (javaCast object_ :: WaypointLayerInterface)) a1

teleportTo_impl :: WaypointLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
teleportTo_impl this geographicMapCellPosition = javaAbstractMethod "teleportTo"


-- throws Exception
setLoad :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad object_ a1 = jmethod object_ "setLoad" (\() -> (setLoad_impl (javaCast object_ :: WaypointLayerInterface))) () a1

setLoad_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoad_super object_ a1 = (setLoad_impl (javaCast object_ :: WaypointLayerInterface)) a1

setLoad_impl :: WaypointLayerInterface -> Int -> IO (())
setLoad_impl this resource = javaAbstractMethod "setLoad"


-- throws Exception
getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: WaypointLayerInterface))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: WaypointLayerInterface))

getSurroundingGeographicMapCellPositionList_impl :: WaypointLayerInterface -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = javaAbstractMethod "getSurroundingGeographicMapCellPositionList"


isSelected :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelected object_ = jmethod object_ "isSelected" (\() -> (isSelected_impl (javaCast object_ :: WaypointLayerInterface))) ()

isSelected_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelected_super object_ = (isSelected_impl (javaCast object_ :: WaypointLayerInterface))

isSelected_impl :: WaypointLayerInterface -> IO (Bool)
isSelected_impl this = javaAbstractMethod "isSelected"


shouldAddWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding object_ = jmethod object_ "shouldAddWaypointFromBuilding" (\() -> (shouldAddWaypointFromBuilding_impl (javaCast object_ :: WaypointLayerInterface))) ()

shouldAddWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldAddWaypointFromBuilding_super object_ = (shouldAddWaypointFromBuilding_impl (javaCast object_ :: WaypointLayerInterface))

shouldAddWaypointFromBuilding_impl :: WaypointLayerInterface -> IO (Bool)
shouldAddWaypointFromBuilding_impl this = javaAbstractMethod "shouldAddWaypointFromBuilding"


isShowMoreCaptionStates :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowMoreCaptionStates object_ = jmethod object_ "isShowMoreCaptionStates" (\() -> (isShowMoreCaptionStates_impl (javaCast object_ :: WaypointLayerInterface))) ()

isShowMoreCaptionStates_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowMoreCaptionStates_super object_ = (isShowMoreCaptionStates_impl (javaCast object_ :: WaypointLayerInterface))

isShowMoreCaptionStates_impl :: WaypointLayerInterface -> IO (Bool)
isShowMoreCaptionStates_impl this = javaAbstractMethod "isShowMoreCaptionStates"


-- throws Exception
trackTo :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo object_ a1 = jmethod object_ "trackTo" (\() -> (trackTo_impl (javaCast object_ :: WaypointLayerInterface))) () a1

trackTo_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
trackTo_super object_ a1 = (trackTo_impl (javaCast object_ :: WaypointLayerInterface)) a1

trackTo_impl :: WaypointLayerInterface -> String -> IO (())
trackTo_impl this reason = javaAbstractMethod "trackTo"


-- throws Exception
trackToDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY object_ a1 a2 = jmethod object_ "trackToDXY" (\() -> (trackToDXY_impl (javaCast object_ :: WaypointLayerInterface))) () a1 a2

trackToDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
trackToDXY_super object_ a1 a2 = (trackToDXY_impl (javaCast object_ :: WaypointLayerInterface)) a1 a2

trackToDXY_impl :: WaypointLayerInterface -> Int -> Int -> IO (())
trackToDXY_impl this dx dy = javaAbstractMethod "trackToDXY"


-- throws Exception
buildingChase :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase object_ a1 a2 = jmethod object_ "buildingChase" (\() -> (buildingChase_impl (javaCast object_ :: WaypointLayerInterface))) () a1 a2

buildingChase_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_super object_ a1 a2 = (buildingChase_impl (javaCast object_ :: WaypointLayerInterface)) a1 a2

buildingChase_impl :: WaypointLayerInterface -> AllBinaryLayer.AllBinaryLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
buildingChase_impl this allbinaryLayer cellPosition = javaAbstractMethod "buildingChase"


getTrackingEvent :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent object_ = jmethod object_ "getTrackingEvent" (\() -> (getTrackingEvent_impl (javaCast object_ :: WaypointLayerInterface))) ()

getTrackingEvent_super :: (JavaObjectClass this_) => this_ -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_super object_ = (getTrackingEvent_impl (javaCast object_ :: WaypointLayerInterface))

getTrackingEvent_impl :: WaypointLayerInterface -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_impl this = javaAbstractMethod "getTrackingEvent"


allStop :: (JavaObjectClass this_) => this_ -> IO (())
allStop object_ = jmethod object_ "allStop" (\() -> (allStop_impl (javaCast object_ :: WaypointLayerInterface))) ()

allStop_super :: (JavaObjectClass this_) => this_ -> IO (())
allStop_super object_ = (allStop_impl (javaCast object_ :: WaypointLayerInterface))

allStop_impl :: WaypointLayerInterface -> IO (())
allStop_impl this = javaAbstractMethod "allStop"


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: WaypointLayerInterface))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: WaypointLayerInterface))

isWaypointListEmptyOrOnlyTargets_impl :: WaypointLayerInterface -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = javaAbstractMethod "isWaypointListEmptyOrOnlyTargets"


-- throws Exception
getCurrentGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition object_ = jmethod object_ "getCurrentGeographicMapCellPosition" (\() -> (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: WaypointLayerInterface))) ()

getCurrentGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_super object_ = (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: WaypointLayerInterface))

getCurrentGeographicMapCellPosition_impl :: WaypointLayerInterface -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_impl this = javaAbstractMethod "getCurrentGeographicMapCellPosition"


-- throws Exception
getTopLeftGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition object_ = jmethod object_ "getTopLeftGeographicMapCellPosition" (\() -> (getTopLeftGeographicMapCellPosition_impl (javaCast object_ :: WaypointLayerInterface))) ()

getTopLeftGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition_super object_ = (getTopLeftGeographicMapCellPosition_impl (javaCast object_ :: WaypointLayerInterface))

getTopLeftGeographicMapCellPosition_impl :: WaypointLayerInterface -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getTopLeftGeographicMapCellPosition_impl this = javaAbstractMethod "getTopLeftGeographicMapCellPosition"


getCaptionAnimationHelper :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper object_ = jmethod object_ "getCaptionAnimationHelper" (\() -> (getCaptionAnimationHelper_impl (javaCast object_ :: WaypointLayerInterface))) ()

getCaptionAnimationHelper_super :: (JavaObjectClass this_) => this_ -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_super object_ = (getCaptionAnimationHelper_impl (javaCast object_ :: WaypointLayerInterface))

getCaptionAnimationHelper_impl :: WaypointLayerInterface -> IO (CaptionAnimationHelperBase.CaptionAnimationHelperBase)
getCaptionAnimationHelper_impl this = javaAbstractMethod "getCaptionAnimationHelper"


getWaypointBehavior :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior object_ = jmethod object_ "getWaypointBehavior" (\() -> (getWaypointBehavior_impl (javaCast object_ :: WaypointLayerInterface))) ()

getWaypointBehavior_super :: (JavaObjectClass this_) => this_ -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_super object_ = (getWaypointBehavior_impl (javaCast object_ :: WaypointLayerInterface))

getWaypointBehavior_impl :: WaypointLayerInterface -> IO (WaypointBehaviorBase.WaypointBehaviorBase)
getWaypointBehavior_impl this = javaAbstractMethod "getWaypointBehavior"


getWaypointLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper object_ = jmethod object_ "getWaypointLogHelper" (\() -> (getWaypointLogHelper_impl (javaCast object_ :: WaypointLayerInterface))) ()

getWaypointLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_super object_ = (getWaypointLogHelper_impl (javaCast object_ :: WaypointLayerInterface))

getWaypointLogHelper_impl :: WaypointLayerInterface -> IO (WaypointLogHelper.WaypointLogHelper)
getWaypointLogHelper_impl this = javaAbstractMethod "getWaypointLogHelper"


getWaypoint2LogHelper :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper object_ = jmethod object_ "getWaypoint2LogHelper" (\() -> (getWaypoint2LogHelper_impl (javaCast object_ :: WaypointLayerInterface))) ()

getWaypoint2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_super object_ = (getWaypoint2LogHelper_impl (javaCast object_ :: WaypointLayerInterface))

getWaypoint2LogHelper_impl :: WaypointLayerInterface -> IO (Waypoint2LogHelper.Waypoint2LogHelper)
getWaypoint2LogHelper_impl this = javaAbstractMethod "getWaypoint2LogHelper"


getWaypointRunnableLogHelper :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper object_ = jmethod object_ "getWaypointRunnableLogHelper" (\() -> (getWaypointRunnableLogHelper_impl (javaCast object_ :: WaypointLayerInterface))) ()

getWaypointRunnableLogHelper_super :: (JavaObjectClass this_) => this_ -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_super object_ = (getWaypointRunnableLogHelper_impl (javaCast object_ :: WaypointLayerInterface))

getWaypointRunnableLogHelper_impl :: WaypointLayerInterface -> IO (WaypointRunnableLogHelper.WaypointRunnableLogHelper)
getWaypointRunnableLogHelper_impl this = javaAbstractMethod "getWaypointRunnableLogHelper"


