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
module Waypoint2LogHelper where

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
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data Waypoint2LogHelper = Waypoint2LogHelper
    { header_ :: JavaHeader
    }

instance JavaNull Waypoint2LogHelper where
    javaNull = javaNullRecord "Waypoint2LogHelper"

instance JavaEquals Waypoint2LogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Waypoint2LogHelper where
    (==) = jrecordEquals

instance JavaObjectClass Waypoint2LogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Waypoint2LogHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = Waypoint2LogHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "initRange" (\() -> initRange_impl this)
    jregisterMethod header_ "processPossibleTarget" (\() -> processPossibleTarget_impl this)
    jregisterMethod header_ "processSetTarget" (\() -> processSetTarget_impl this)
    jregisterMethod header_ "processPossibleTargetCloser" (\() -> processPossibleTargetCloser_impl this)
    jregisterMethod header_ "setTarget" (\() -> setTarget_impl this)
    jregisterMethod header_ "setTargetPath" (\() -> setTargetPath_impl this)
    jregisterMethod header_ "setTargetPathIgnoreNewPath" (\() -> setTargetPathIgnoreNewPath_impl this)
    jregisterMethod header_ "processWaypoint" (\() -> processWaypoint_impl this)
    jregisterMethod header_ "processWaypointTracked" (\() -> processWaypointTracked_impl this)
    jregisterMethod header_ "processWaypointTrackedVisit" (\() -> processWaypointTrackedVisit_impl this)
    jregisterMethod header_ "processWaypointTrackedWithoutProgress" (\() -> processWaypointTrackedWithoutProgress_impl this)
    jregisterMethod header_ "wander" (\() -> wander_impl this)
    jregisterMethod header_ "targetDestroyed" (\() -> targetDestroyed_impl this)
    jregisterMethod header_ "processTargeting" (\() -> processTargeting_impl this)
    jregisterMethod header_ "processTargetingNonWayPoint" (\() -> processTargetingNonWayPoint_impl this)
    jregisterMethod header_ "removeWaypoint" (\() -> removeWaypoint_impl this)
    jregisterMethod header_ "removeWaypointList" (\() -> removeWaypointList_impl this)
    jregisterMethod header_ "removeWaypointClear" (\() -> removeWaypointClear_impl this)
    jregisterMethod header_ "clearTarget" (\() -> clearTarget_impl this)
    jregisterMethod header_ "addWaypointFromUser" (\() -> addWaypointFromUser_impl this)
    jregisterMethod header_ "targetMovedSoRetarget" (\() -> targetMovedSoRetarget_impl this)
    pure this

initFields_ :: Waypoint2LogHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO Waypoint2LogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Waypoint2LogHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (Waypoint2LogHelper)
getInstance = do
        pure (Waypoint2LogHelper.instance_)


initRange :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
initRange object_ a1 a2 a3 = jmethod object_ "initRange" (\() -> (initRange_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3

initRange_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
initRange_super object_ a1 a2 a3 = (initRange_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3

initRange_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
initRange_impl this associatedAdvancedRTSGameLayer closeRange sensorRange = do
        pure ()


processPossibleTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Bool -> Bool -> IO (())
processPossibleTarget object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "processPossibleTarget" (\() -> (processPossibleTarget_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3 a4 a5 a6

processPossibleTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Bool -> Bool -> IO (())
processPossibleTarget_super object_ a1 a2 a3 a4 a5 a6 = (processPossibleTarget_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3 a4 a5 a6

processPossibleTarget_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Bool -> Bool -> IO (())
processPossibleTarget_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 layerInterface anotherTargetDistance isShorterThanCurrentTargetDistance isCurrentTargetDestroyed = do
        pure ()


processSetTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processSetTarget object_ a1 a2 a3 a4 = jmethod object_ "processSetTarget" (\() -> (processSetTarget_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3 a4

processSetTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processSetTarget_super object_ a1 a2 a3 a4 = (processSetTarget_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3 a4

processSetTarget_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processSetTarget_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 layerInterface anotherTargetDistance = do
        pure ()


processPossibleTargetCloser :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processPossibleTargetCloser object_ a1 a2 a3 a4 = jmethod object_ "processPossibleTargetCloser" (\() -> (processPossibleTargetCloser_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3 a4

processPossibleTargetCloser_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processPossibleTargetCloser_super object_ a1 a2 a3 a4 = (processPossibleTargetCloser_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3 a4

processPossibleTargetCloser_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processPossibleTargetCloser_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 layerInterface anotherTargetDistance = do
        pure ()


setTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTarget object_ a1 a2 a3 a4 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3 a4

setTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTarget_super object_ a1 a2 a3 a4 = (setTarget_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3 a4

setTarget_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTarget_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 layerInterface anotherTargetDistance = do
        pure ()


setTargetPath :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetPath object_ a1 = jmethod object_ "setTargetPath" (\() -> (setTargetPath_impl (javaCast object_ :: Waypoint2LogHelper))) () a1

setTargetPath_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetPath_super object_ a1 = (setTargetPath_impl (javaCast object_ :: Waypoint2LogHelper)) a1

setTargetPath_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetPath_impl this associatedAdvancedRTSGameLayer = do
        pure ()


setTargetPathIgnoreNewPath :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setTargetPathIgnoreNewPath object_ a1 a2 = jmethod object_ "setTargetPathIgnoreNewPath" (\() -> (setTargetPathIgnoreNewPath_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2

setTargetPathIgnoreNewPath_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setTargetPathIgnoreNewPath_super object_ a1 a2 = (setTargetPathIgnoreNewPath_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2

setTargetPathIgnoreNewPath_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setTargetPathIgnoreNewPath_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 = do
        pure ()


processWaypoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processWaypoint object_ a1 a2 a3 a4 = jmethod object_ "processWaypoint" (\() -> (processWaypoint_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3 a4

processWaypoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processWaypoint_super object_ a1 a2 a3 a4 = (processWaypoint_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3 a4

processWaypoint_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processWaypoint_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 targetLayer size = do
        pure ()


processWaypointTracked :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
processWaypointTracked object_ a1 a2 = jmethod object_ "processWaypointTracked" (\() -> (processWaypointTracked_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2

processWaypointTracked_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
processWaypointTracked_super object_ a1 a2 = (processWaypointTracked_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2

processWaypointTracked_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
processWaypointTracked_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 = do
        pure ()


processWaypointTrackedVisit :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processWaypointTrackedVisit object_ a1 a2 = jmethod object_ "processWaypointTrackedVisit" (\() -> (processWaypointTrackedVisit_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2

processWaypointTrackedVisit_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processWaypointTrackedVisit_super object_ a1 a2 = (processWaypointTrackedVisit_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2

processWaypointTrackedVisit_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processWaypointTrackedVisit_impl this associatedAdvancedRTSGameLayer geographicMapCellPosition = do
        pure ()


processWaypointTrackedWithoutProgress :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
processWaypointTrackedWithoutProgress object_ a1 a2 = jmethod object_ "processWaypointTrackedWithoutProgress" (\() -> (processWaypointTrackedWithoutProgress_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2

processWaypointTrackedWithoutProgress_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
processWaypointTrackedWithoutProgress_super object_ a1 a2 = (processWaypointTrackedWithoutProgress_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2

processWaypointTrackedWithoutProgress_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
processWaypointTrackedWithoutProgress_impl this associatedAdvancedRTSGameLayer reason = do
        pure ()


wander :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
wander object_ a1 = jmethod object_ "wander" (\() -> (wander_impl (javaCast object_ :: Waypoint2LogHelper))) () a1

wander_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
wander_super object_ a1 = (wander_impl (javaCast object_ :: Waypoint2LogHelper)) a1

wander_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
wander_impl this associatedAdvancedRTSGameLayer = do
        pure ()


targetDestroyed :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetDestroyed object_ a1 = jmethod object_ "targetDestroyed" (\() -> (targetDestroyed_impl (javaCast object_ :: Waypoint2LogHelper))) () a1

targetDestroyed_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetDestroyed_super object_ a1 = (targetDestroyed_impl (javaCast object_ :: Waypoint2LogHelper)) a1

targetDestroyed_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetDestroyed_impl this associatedAdvancedRTSGameLayer = do
        pure ()


processTargeting :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargeting object_ a1 a2 a3 = jmethod object_ "processTargeting" (\() -> (processTargeting_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3

processTargeting_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargeting_super object_ a1 a2 a3 = (processTargeting_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3

processTargeting_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargeting_impl this associatedAdvancedRTSGameLayer dx dy = do
        pure ()


processTargetingNonWayPoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargetingNonWayPoint object_ a1 a2 a3 = jmethod object_ "processTargetingNonWayPoint" (\() -> (processTargetingNonWayPoint_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3

processTargetingNonWayPoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargetingNonWayPoint_super object_ a1 a2 a3 = (processTargetingNonWayPoint_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3

processTargetingNonWayPoint_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargetingNonWayPoint_impl this associatedAdvancedRTSGameLayer dx dy = do
        pure ()


removeWaypoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
removeWaypoint object_ a1 a2 a3 a4 = jmethod object_ "removeWaypoint" (\() -> (removeWaypoint_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3 a4

removeWaypoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
removeWaypoint_super object_ a1 a2 a3 a4 = (removeWaypoint_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3 a4

removeWaypoint_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
removeWaypoint_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 waypointLayer reason = do
        pure ()


removeWaypointList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
removeWaypointList object_ a1 a2 a3 = jmethod object_ "removeWaypointList" (\() -> (removeWaypointList_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2 a3

removeWaypointList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
removeWaypointList_super object_ a1 a2 a3 = (removeWaypointList_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2 a3

removeWaypointList_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
removeWaypointList_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 list = do
        pure ()


removeWaypointClear :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
removeWaypointClear object_ a1 = jmethod object_ "removeWaypointClear" (\() -> (removeWaypointClear_impl (javaCast object_ :: Waypoint2LogHelper))) () a1

removeWaypointClear_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
removeWaypointClear_super object_ a1 = (removeWaypointClear_impl (javaCast object_ :: Waypoint2LogHelper)) a1

removeWaypointClear_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
removeWaypointClear_impl this associatedAdvancedRTSGameLayer = do
        pure ()


clearTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
clearTarget object_ a1 = jmethod object_ "clearTarget" (\() -> (clearTarget_impl (javaCast object_ :: Waypoint2LogHelper))) () a1

clearTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
clearTarget_super object_ a1 = (clearTarget_impl (javaCast object_ :: Waypoint2LogHelper)) a1

clearTarget_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
clearTarget_impl this associatedAdvancedRTSGameLayer = do
        pure ()


addWaypointFromUser :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromUser object_ a1 a2 = jmethod object_ "addWaypointFromUser" (\() -> (addWaypointFromUser_impl (javaCast object_ :: Waypoint2LogHelper))) () a1 a2

addWaypointFromUser_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromUser_super object_ a1 a2 = (addWaypointFromUser_impl (javaCast object_ :: Waypoint2LogHelper)) a1 a2

addWaypointFromUser_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromUser_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer = do
        pure ()


targetMovedSoRetarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetMovedSoRetarget object_ a1 = jmethod object_ "targetMovedSoRetarget" (\() -> (targetMovedSoRetarget_impl (javaCast object_ :: Waypoint2LogHelper))) () a1

targetMovedSoRetarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetMovedSoRetarget_super object_ a1 = (targetMovedSoRetarget_impl (javaCast object_ :: Waypoint2LogHelper)) a1

targetMovedSoRetarget_impl :: Waypoint2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetMovedSoRetarget_impl this associatedAdvancedRTSGameLayer = do
        pure ()


