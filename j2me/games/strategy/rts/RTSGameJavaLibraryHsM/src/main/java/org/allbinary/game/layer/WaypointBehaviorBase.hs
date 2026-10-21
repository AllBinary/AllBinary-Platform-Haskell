{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
module WaypointBehaviorBase where

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
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified WaypointBase -- org.allbinary.game.layer.waypoint.WaypointBase
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

-- implements TickableInterface
data WaypointBehaviorBase = WaypointBehaviorBase
    { header_ :: JavaHeader
    , ownedWaypointList :: IORef (BasicArrayList.BasicArrayList)
    , waypointOverridesAttacking :: IORef (Bool)
    , waypoint :: IORef (WaypointBase.WaypointBase)
    , steeringVisitorList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull WaypointBehaviorBase where
    javaNull = javaNullRecord "WaypointBehaviorBase"

instance JavaEquals WaypointBehaviorBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointBehaviorBase where
    (==) = jrecordEquals

instance JavaObjectClass WaypointBehaviorBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WaypointBehaviorBase
newRecord_ = do
    header_ <- newJavaHeader
    ownedWaypointList <- newIORef javaNull
    waypointOverridesAttacking <- newIORef False
    waypoint <- newIORef javaNull
    steeringVisitorList <- newIORef javaNull
    let this = WaypointBehaviorBase header_ ownedWaypointList waypointOverridesAttacking waypoint steeringVisitorList
    jregisterLevel header_ this
    TickableInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "getOwnedWaypointList" (\() -> getOwnedWaypointList_impl this)
    jregisterMethod header_ "getWaypoint" (\() -> getWaypoint_impl this)
    jregisterMethod header_ "setWaypoint" (\() -> setWaypoint_impl this)
    jregisterMethod header_ "getSteeringVisitorList" (\() -> getSteeringVisitorList_impl this)
    jregisterMethod header_ "getMovementLogicAsString" (\() -> getMovementLogicAsString_impl this)
    jregisterMethod header_ "isWaypointListEmptyOrOnlyTargets" (\() -> isWaypointListEmptyOrOnlyTargets_impl this)
    jregisterMethod header_ "isInSensorRange" (\() -> isInSensorRange_impl this)
    jregisterMethod header_ "getCurrentTargetLayerInterface" (\() -> getCurrentTargetLayerInterface_impl this)
    jregisterMethod header_ "getCurrentTargetingStateString" (\() -> getCurrentTargetingStateString_impl this)
    jregisterMethod header_ "isTrackingWaypoint" (\() -> isTrackingWaypoint_impl this)
    jregisterMethod header_ "getCurrentPathGeographicMapCellPosition" (\() -> getCurrentPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getCurrentGeographicMapCellHistory" (\() -> getCurrentGeographicMapCellHistory_impl this)
    jregisterMethod header_ "isWaypointOverridesAttacking" (\() -> isWaypointOverridesAttacking_impl this)
    jregisterMethod header_ "getNextUnvisitedPathGeographicMapCellPosition" (\() -> getNextUnvisitedPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "needToMove" (\() -> needToMove_impl this)
    jregisterMethod header_ "setWaypointPathsList" (\() -> setWaypointPathsList_impl this)
    jregisterMethod header_ "getWaypointPathsList" (\() -> getWaypointPathsList_impl this)
    jregisterMethod header_ "setTarget" (\() -> setTarget_impl this)
    jregisterMethod header_ "setTargetWithDistance" (\() -> setTargetWithDistance_impl this)
    jregisterMethod header_ "clearTarget" (\() -> clearTarget_impl this)
    jregisterMethod header_ "updatePathOnTargetMove" (\() -> updatePathOnTargetMove_impl this)
    pure this

initFields_ :: WaypointBehaviorBase -> IO ()
initFields_ this = do
    jset this.ownedWaypointList (javaNull)
    jset this.waypointOverridesAttacking (True)
    jset this.waypoint ((jget WaypointBase.nULL_WAYPOINT_BASE))
    jset this.steeringVisitorList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO WaypointBehaviorBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointBehaviorBase -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 1))
        jset (this).ownedWaypointList (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: WaypointBehaviorBase))

getName_impl :: WaypointBehaviorBase -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: WaypointBehaviorBase))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: WaypointBehaviorBase))

isRunning_impl :: WaypointBehaviorBase -> IO (Bool)
isRunning_impl this = do
        pure (False)


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: WaypointBehaviorBase))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: WaypointBehaviorBase)) a1

processTick_impl :: WaypointBehaviorBase -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        pure ()


getOwnedWaypointList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOwnedWaypointList object_ = jmethod object_ "getOwnedWaypointList" (\() -> (getOwnedWaypointList_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getOwnedWaypointList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOwnedWaypointList_super object_ = (getOwnedWaypointList_impl (javaCast object_ :: WaypointBehaviorBase))

getOwnedWaypointList_impl :: WaypointBehaviorBase -> IO (BasicArrayList.BasicArrayList)
getOwnedWaypointList_impl this = do
        pure ((jget (this).ownedWaypointList))


getWaypoint :: (JavaObjectClass this_) => this_ -> IO (WaypointBase.WaypointBase)
getWaypoint object_ = jmethod object_ "getWaypoint" (\() -> (getWaypoint_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getWaypoint_super :: (JavaObjectClass this_) => this_ -> IO (WaypointBase.WaypointBase)
getWaypoint_super object_ = (getWaypoint_impl (javaCast object_ :: WaypointBehaviorBase))

getWaypoint_impl :: WaypointBehaviorBase -> IO (WaypointBase.WaypointBase)
getWaypoint_impl this = do
        pure ((jget (this).waypoint))


setWaypoint :: (JavaObjectClass this_) => this_ -> WaypointBase.WaypointBase -> IO (())
setWaypoint object_ a1 = jmethod object_ "setWaypoint" (\() -> (setWaypoint_impl (javaCast object_ :: WaypointBehaviorBase))) () a1

setWaypoint_super :: (JavaObjectClass this_) => this_ -> WaypointBase.WaypointBase -> IO (())
setWaypoint_super object_ a1 = (setWaypoint_impl (javaCast object_ :: WaypointBehaviorBase)) a1

setWaypoint_impl :: WaypointBehaviorBase -> WaypointBase.WaypointBase -> IO (())
setWaypoint_impl this waypoint = do
        jset (this).waypoint (waypoint)
        pure ()


getSteeringVisitorList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSteeringVisitorList object_ = jmethod object_ "getSteeringVisitorList" (\() -> (getSteeringVisitorList_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getSteeringVisitorList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSteeringVisitorList_super object_ = (getSteeringVisitorList_impl (javaCast object_ :: WaypointBehaviorBase))

getSteeringVisitorList_impl :: WaypointBehaviorBase -> IO (BasicArrayList.BasicArrayList)
getSteeringVisitorList_impl this = do
        pure ((jget (this).steeringVisitorList))


getMovementLogicAsString :: (JavaObjectClass this_) => this_ -> IO (String)
getMovementLogicAsString object_ = jmethod object_ "getMovementLogicAsString" (\() -> (getMovementLogicAsString_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getMovementLogicAsString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMovementLogicAsString_super object_ = (getMovementLogicAsString_impl (javaCast object_ :: WaypointBehaviorBase))

getMovementLogicAsString_impl :: WaypointBehaviorBase -> IO (String)
getMovementLogicAsString_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isWaypointListEmptyOrOnlyTargets :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets object_ = jmethod object_ "isWaypointListEmptyOrOnlyTargets" (\() -> (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: WaypointBehaviorBase))) ()

isWaypointListEmptyOrOnlyTargets_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_super object_ = (isWaypointListEmptyOrOnlyTargets_impl (javaCast object_ :: WaypointBehaviorBase))

isWaypointListEmptyOrOnlyTargets_impl :: WaypointBehaviorBase -> IO (Bool)
isWaypointListEmptyOrOnlyTargets_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isInSensorRange :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (Bool)
isInSensorRange object_ a1 a2 = jmethod object_ "isInSensorRange" (\() -> (isInSensorRange_impl (javaCast object_ :: WaypointBehaviorBase))) () a1 a2

isInSensorRange_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (Bool)
isInSensorRange_super object_ a1 a2 = (isInSensorRange_impl (javaCast object_ :: WaypointBehaviorBase)) a1 a2

isInSensorRange_impl :: WaypointBehaviorBase -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (Bool)
isInSensorRange_impl this layerInterface targetDistance = do
        javaThrow ((JavaException "RuntimeException" ""))


getCurrentTargetLayerInterface :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getCurrentTargetLayerInterface object_ = jmethod object_ "getCurrentTargetLayerInterface" (\() -> (getCurrentTargetLayerInterface_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getCurrentTargetLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getCurrentTargetLayerInterface_super object_ = (getCurrentTargetLayerInterface_impl (javaCast object_ :: WaypointBehaviorBase))

getCurrentTargetLayerInterface_impl :: WaypointBehaviorBase -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getCurrentTargetLayerInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getCurrentTargetingStateString :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentTargetingStateString object_ = jmethod object_ "getCurrentTargetingStateString" (\() -> (getCurrentTargetingStateString_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getCurrentTargetingStateString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentTargetingStateString_super object_ = (getCurrentTargetingStateString_impl (javaCast object_ :: WaypointBehaviorBase))

getCurrentTargetingStateString_impl :: WaypointBehaviorBase -> IO (String)
getCurrentTargetingStateString_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isTrackingWaypoint :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTrackingWaypoint object_ = jmethod object_ "isTrackingWaypoint" (\() -> (isTrackingWaypoint_impl (javaCast object_ :: WaypointBehaviorBase))) ()

isTrackingWaypoint_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTrackingWaypoint_super object_ = (isTrackingWaypoint_impl (javaCast object_ :: WaypointBehaviorBase))

isTrackingWaypoint_impl :: WaypointBehaviorBase -> IO (Bool)
isTrackingWaypoint_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getCurrentPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentPathGeographicMapCellPosition object_ = jmethod object_ "getCurrentPathGeographicMapCellPosition" (\() -> (getCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getCurrentPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentPathGeographicMapCellPosition_super object_ = (getCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointBehaviorBase))

getCurrentPathGeographicMapCellPosition_impl :: WaypointBehaviorBase -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentPathGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getCurrentGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getCurrentGeographicMapCellHistory object_ = jmethod object_ "getCurrentGeographicMapCellHistory" (\() -> (getCurrentGeographicMapCellHistory_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getCurrentGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getCurrentGeographicMapCellHistory_super object_ = (getCurrentGeographicMapCellHistory_impl (javaCast object_ :: WaypointBehaviorBase))

getCurrentGeographicMapCellHistory_impl :: WaypointBehaviorBase -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getCurrentGeographicMapCellHistory_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isWaypointOverridesAttacking :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointOverridesAttacking object_ = jmethod object_ "isWaypointOverridesAttacking" (\() -> (isWaypointOverridesAttacking_impl (javaCast object_ :: WaypointBehaviorBase))) ()

isWaypointOverridesAttacking_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isWaypointOverridesAttacking_super object_ = (isWaypointOverridesAttacking_impl (javaCast object_ :: WaypointBehaviorBase))

isWaypointOverridesAttacking_impl :: WaypointBehaviorBase -> IO (Bool)
isWaypointOverridesAttacking_impl this = do
        pure ((jget (this).waypointOverridesAttacking))


getNextUnvisitedPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedPathGeographicMapCellPosition object_ = jmethod object_ "getNextUnvisitedPathGeographicMapCellPosition" (\() -> (getNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getNextUnvisitedPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedPathGeographicMapCellPosition_super object_ = (getNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointBehaviorBase))

getNextUnvisitedPathGeographicMapCellPosition_impl :: WaypointBehaviorBase -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedPathGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


needToMove :: (JavaObjectClass this_) => this_ -> IO (Bool)
needToMove object_ = jmethod object_ "needToMove" (\() -> (needToMove_impl (javaCast object_ :: WaypointBehaviorBase))) ()

needToMove_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
needToMove_super object_ = (needToMove_impl (javaCast object_ :: WaypointBehaviorBase))

needToMove_impl :: WaypointBehaviorBase -> IO (Bool)
needToMove_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setWaypointPathsList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setWaypointPathsList object_ a1 = jmethod object_ "setWaypointPathsList" (\() -> (setWaypointPathsList_impl (javaCast object_ :: WaypointBehaviorBase))) () a1

setWaypointPathsList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setWaypointPathsList_super object_ a1 = (setWaypointPathsList_impl (javaCast object_ :: WaypointBehaviorBase)) a1

setWaypointPathsList_impl :: WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
setWaypointPathsList_impl this waypointPathsList = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getWaypointPathsList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWaypointPathsList object_ = jmethod object_ "getWaypointPathsList" (\() -> (getWaypointPathsList_impl (javaCast object_ :: WaypointBehaviorBase))) ()

getWaypointPathsList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWaypointPathsList_super object_ = (getWaypointPathsList_impl (javaCast object_ :: WaypointBehaviorBase))

getWaypointPathsList_impl :: WaypointBehaviorBase -> IO (BasicArrayList.BasicArrayList)
getWaypointPathsList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
setTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget object_ a1 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: WaypointBehaviorBase))) () a1

setTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget_super object_ a1 = (setTarget_impl (javaCast object_ :: WaypointBehaviorBase)) a1

setTarget_impl :: WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTarget_impl this layerInterface = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
setTargetWithDistance :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTargetWithDistance object_ a1 a2 = jmethod object_ "setTargetWithDistance" (\() -> (setTargetWithDistance_impl (javaCast object_ :: WaypointBehaviorBase))) () a1 a2

setTargetWithDistance_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTargetWithDistance_super object_ a1 a2 = (setTargetWithDistance_impl (javaCast object_ :: WaypointBehaviorBase)) a1 a2

setTargetWithDistance_impl :: WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTargetWithDistance_impl this layerInterface anotherTargetDistance = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
clearTarget :: (JavaObjectClass this_) => this_ -> IO (())
clearTarget object_ = jmethod object_ "clearTarget" (\() -> (clearTarget_impl (javaCast object_ :: WaypointBehaviorBase))) ()

clearTarget_super :: (JavaObjectClass this_) => this_ -> IO (())
clearTarget_super object_ = (clearTarget_impl (javaCast object_ :: WaypointBehaviorBase))

clearTarget_impl :: WaypointBehaviorBase -> IO (())
clearTarget_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
updatePathOnTargetMove :: (JavaObjectClass this_) => this_ -> String -> IO (())
updatePathOnTargetMove object_ a1 = jmethod object_ "updatePathOnTargetMove" (\() -> (updatePathOnTargetMove_impl (javaCast object_ :: WaypointBehaviorBase))) () a1

updatePathOnTargetMove_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
updatePathOnTargetMove_super object_ a1 = (updatePathOnTargetMove_impl (javaCast object_ :: WaypointBehaviorBase)) a1

updatePathOnTargetMove_impl :: WaypointBehaviorBase -> String -> IO (())
updatePathOnTargetMove_impl this reason = do
        pure ()


