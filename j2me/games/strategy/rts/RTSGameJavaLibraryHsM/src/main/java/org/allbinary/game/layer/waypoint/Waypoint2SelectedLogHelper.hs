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
module Waypoint2SelectedLogHelper (module Waypoint2SelectedLogHelper, module Waypoint2LogHelper) where

import Waypoint2LogHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, initRange, initRange_super, initRange_impl, processPossibleTarget, processPossibleTarget_super, processPossibleTarget_impl, processSetTarget, processSetTarget_super, processSetTarget_impl, processPossibleTargetCloser, processPossibleTargetCloser_super, processPossibleTargetCloser_impl, setTarget, setTarget_super, setTarget_impl, setTargetPath, setTargetPath_super, setTargetPath_impl, setTargetPathIgnoreNewPath, setTargetPathIgnoreNewPath_super, setTargetPathIgnoreNewPath_impl, processWaypoint, processWaypoint_super, processWaypoint_impl, processWaypointTracked, processWaypointTracked_super, processWaypointTracked_impl, processWaypointTrackedVisit, processWaypointTrackedVisit_super, processWaypointTrackedVisit_impl, processWaypointTrackedWithoutProgress, processWaypointTrackedWithoutProgress_super, processWaypointTrackedWithoutProgress_impl, wander, wander_super, wander_impl, targetDestroyed, targetDestroyed_super, targetDestroyed_impl, processTargeting, processTargeting_super, processTargeting_impl, processTargetingNonWayPoint, processTargetingNonWayPoint_super, processTargetingNonWayPoint_impl, removeWaypoint, removeWaypoint_super, removeWaypoint_impl, removeWaypointList, removeWaypointList_super, removeWaypointList_impl, removeWaypointClear, removeWaypointClear_super, removeWaypointClear_impl, clearTarget, clearTarget_super, clearTarget_impl, addWaypointFromUser, addWaypointFromUser_super, addWaypointFromUser_impl, targetMovedSoRetarget, targetMovedSoRetarget_super, targetMovedSoRetarget_impl, logUtil, instanceC, commonSeps, positionStrings, stringUtil, eNEMY_POSSIBLE_TARGET, cLOSE_RANGE, sENSOR_RANGE, oNLY_TARGETS, sHORTER_THAN_CURRENT_TARGET_DISTANCE, cURRENT_TARGET_DESTROYED, cURRENT_TARGET_NOT_AVAILABLE, pROCESS_POSSIBLE_TARGET)
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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Waypoint2LogHelper

data Waypoint2SelectedLogHelper = Waypoint2SelectedLogHelper
    { header_ :: JavaHeader
    , base :: Waypoint2LogHelper.Waypoint2LogHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , positionStrings :: IORef (PositionStrings.PositionStrings)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , eNEMY_POSSIBLE_TARGET :: IORef (String)
    , cLOSE_RANGE :: IORef (String)
    , sENSOR_RANGE :: IORef (String)
    , oNLY_TARGETS :: IORef (String)
    , sHORTER_THAN_CURRENT_TARGET_DISTANCE :: IORef (String)
    , cURRENT_TARGET_DESTROYED :: IORef (String)
    , cURRENT_TARGET_NOT_AVAILABLE :: IORef (String)
    , pROCESS_POSSIBLE_TARGET :: IORef (String)
    }

instance JavaNull Waypoint2SelectedLogHelper where
    javaNull = javaNullRecord "Waypoint2SelectedLogHelper"

instance JavaEquals Waypoint2SelectedLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Waypoint2SelectedLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass Waypoint2SelectedLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO Waypoint2SelectedLogHelper
newRecord_ = do
    base <- Waypoint2LogHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonSeps <- newIORef javaNull
    positionStrings <- newIORef javaNull
    stringUtil <- newIORef javaNull
    eNEMY_POSSIBLE_TARGET <- newIORef ""
    cLOSE_RANGE <- newIORef ""
    sENSOR_RANGE <- newIORef ""
    oNLY_TARGETS <- newIORef ""
    sHORTER_THAN_CURRENT_TARGET_DISTANCE <- newIORef ""
    cURRENT_TARGET_DESTROYED <- newIORef ""
    cURRENT_TARGET_NOT_AVAILABLE <- newIORef ""
    pROCESS_POSSIBLE_TARGET <- newIORef ""
    let this = Waypoint2SelectedLogHelper header_ base logUtil commonSeps positionStrings stringUtil eNEMY_POSSIBLE_TARGET cLOSE_RANGE sENSOR_RANGE oNLY_TARGETS sHORTER_THAN_CURRENT_TARGET_DISTANCE cURRENT_TARGET_DESTROYED cURRENT_TARGET_NOT_AVAILABLE pROCESS_POSSIBLE_TARGET
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

initFields_ :: Waypoint2SelectedLogHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.positionStrings =<< (PositionStrings.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.eNEMY_POSSIBLE_TARGET (" Enemy Possible Target: ")
    jset this.cLOSE_RANGE ("closeRange: ")
    jset this.sENSOR_RANGE (" sensorRange: ")
    jset this.oNLY_TARGETS (" Only Targets: ")
    jset this.sHORTER_THAN_CURRENT_TARGET_DISTANCE (" isShorterThanCurrentTargetDistance: ")
    jset this.cURRENT_TARGET_DESTROYED (" isCurrentTargetDestroyed: ")
    jset this.cURRENT_TARGET_NOT_AVAILABLE (" isCurrentTargetNotAvailable: ")
    jset this.pROCESS_POSSIBLE_TARGET ("selected: processPossibleTarget1")
    pure ()

new_ :: IO Waypoint2SelectedLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Waypoint2SelectedLogHelper -> IO ()
init_ this = do
    Waypoint2LogHelper.init_ this.base
    initFields_ this


getInstance :: IO (Waypoint2LogHelper.Waypoint2LogHelper)
getInstance = do
        pure ((javaCast Waypoint2SelectedLogHelper.instanceC :: Waypoint2LogHelper.Waypoint2LogHelper))


initRange :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
initRange object_ a1 a2 a3 = jmethod object_ "initRange" (\() -> (initRange_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3

initRange_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
initRange_super object_ a1 a2 a3 = (initRange_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3

initRange_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
initRange_impl this associatedAdvancedRTSGameLayer closeRange sensorRange = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).cLOSE_RANGE))
        Control.Monad.void (StringMaker.appendint stringBuffer closeRange)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sENSOR_RANGE))
        Control.Monad.void (StringMaker.appendint stringBuffer sensorRange)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: initRange")
        pure ()


processPossibleTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Bool -> Bool -> IO (())
processPossibleTarget object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "processPossibleTarget" (\() -> (processPossibleTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3 a4 a5 a6

processPossibleTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Bool -> Bool -> IO (())
processPossibleTarget_super object_ a1 a2 a3 a4 a5 a6 = (processPossibleTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3 a4 a5 a6

processPossibleTarget_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Bool -> Bool -> IO (())
processPossibleTarget_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase layerInterface anotherTargetDistance isShorterThanCurrentTargetDistance isCurrentTargetDestroyed = do
        when ((jio (WaypointBehaviorBase.isWaypointListEmptyOrOnlyTargets waypointBehaviorBase)) && (jio (WaypointBehaviorBase.isInSensorRange waypointBehaviorBase (javaCast layerInterface :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer) anotherTargetDistance))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).oNLY_TARGETS))
            Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (WaypointBehaviorBase.isWaypointListEmptyOrOnlyTargets waypointBehaviorBase)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sHORTER_THAN_CURRENT_TARGET_DISTANCE))
            Control.Monad.void (StringMaker.appendboolean stringBuffer isShorterThanCurrentTargetDistance)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).cURRENT_TARGET_DESTROYED))
            Control.Monad.void (StringMaker.appendboolean stringBuffer isCurrentTargetDestroyed)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).cURRENT_TARGET_NOT_AVAILABLE))
            Control.Monad.void (StringMaker.appendboolean stringBuffer (((jio (WaypointBehaviorBase.getCurrentTargetLayerInterface waypointBehaviorBase)) == javaNull)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).pROCESS_POSSIBLE_TARGET))
        pure ()


processSetTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processSetTarget object_ a1 a2 a3 a4 = jmethod object_ "processSetTarget" (\() -> (processSetTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3 a4

processSetTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processSetTarget_super object_ a1 a2 a3 a4 = (processSetTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3 a4

processSetTarget_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processSetTarget_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase layerInterface anotherTargetDistance = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (WaypointBehaviorBase.getCurrentTargetingStateString waypointBehaviorBase)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).eNEMY_POSSIBLE_TARGET))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName layerInterface)))
        Control.Monad.void (StringMaker.append stringBuffer " anotherTargetDistance: ")
        Control.Monad.void (StringMaker.appendint stringBuffer anotherTargetDistance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processPossibleTarget2")
        pure ()


processPossibleTargetCloser :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processPossibleTargetCloser object_ a1 a2 a3 a4 = jmethod object_ "processPossibleTargetCloser" (\() -> (processPossibleTargetCloser_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3 a4

processPossibleTargetCloser_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processPossibleTargetCloser_super object_ a1 a2 a3 a4 = (processPossibleTargetCloser_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3 a4

processPossibleTargetCloser_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processPossibleTargetCloser_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase layerInterface anotherTargetDistance = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (WaypointBehaviorBase.getCurrentTargetingStateString waypointBehaviorBase)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).eNEMY_POSSIBLE_TARGET))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName layerInterface)))
        Control.Monad.void (StringMaker.append stringBuffer " anotherTargetDistance: ")
        Control.Monad.void (StringMaker.appendint stringBuffer anotherTargetDistance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processPossibleTarget3")
        pure ()


setTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTarget object_ a1 a2 a3 a4 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3 a4

setTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTarget_super object_ a1 a2 a3 a4 = (setTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3 a4

setTarget_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
setTarget_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase layerInterface anotherTargetDistance = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (WaypointBehaviorBase.getName waypointBehaviorBase)))
        Control.Monad.void (StringMaker.append stringBuffer " targeting: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName layerInterface)))
        Control.Monad.void (StringMaker.append stringBuffer " at: ")
        Control.Monad.void (StringMaker.appendint stringBuffer anotherTargetDistance)
        Control.Monad.void (StringMaker.append stringBuffer " instead of: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (WaypointBehaviorBase.getCurrentTargetingStateString waypointBehaviorBase)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: setTarget")
        pure ()


setTargetPath :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetPath object_ a1 = jmethod object_ "setTargetPath" (\() -> (setTargetPath_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1

setTargetPath_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetPath_super object_ a1 = (setTargetPath_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1

setTargetPath_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetPath_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Target Destroyed" this "selected: setTargetPath")
        pure ()


setTargetPathIgnoreNewPath :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setTargetPathIgnoreNewPath object_ a1 a2 = jmethod object_ "setTargetPathIgnoreNewPath" (\() -> (setTargetPathIgnoreNewPath_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2

setTargetPathIgnoreNewPath_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setTargetPathIgnoreNewPath_super object_ a1 a2 = (setTargetPathIgnoreNewPath_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2

setTargetPathIgnoreNewPath_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
setTargetPathIgnoreNewPath_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Set Path To Target: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableDestroyableDamageableLayer.getName ((jio (WaypointBehaviorBase.getCurrentTargetLayerInterface waypointBehaviorBase))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (WaypointBehaviorBase.getCurrentTargetLayerInterface waypointBehaviorBase)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: setTargetPath")
        pure ()


processWaypoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processWaypoint object_ a1 a2 a3 a4 = jmethod object_ "processWaypoint" (\() -> (processWaypoint_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3 a4

processWaypoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processWaypoint_super object_ a1 a2 a3 a4 = (processWaypoint_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3 a4

processWaypoint_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
processWaypoint_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase targetLayer size = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Size: ")
        Control.Monad.void (StringMaker.appendint stringBuffer size)
        Control.Monad.void (StringMaker.append stringBuffer " Waypoint: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName targetLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Target: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (WaypointBehaviorBase.getCurrentTargetLayerInterface waypointBehaviorBase)))))
        Control.Monad.void (StringMaker.append stringBuffer " isTrackingWaypoint: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (WaypointBehaviorBase.isTrackingWaypoint waypointBehaviorBase)))
        Control.Monad.void (StringMaker.append stringBuffer " WaypointOverridesAttacking: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (WaypointBehaviorBase.isWaypointOverridesAttacking waypointBehaviorBase)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processWaypoint")
        pure ()


processWaypointTracked :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
processWaypointTracked object_ a1 a2 = jmethod object_ "processWaypointTracked" (\() -> (processWaypointTracked_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2

processWaypointTracked_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
processWaypointTracked_super object_ a1 a2 = (processWaypointTracked_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2

processWaypointTracked_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
processWaypointTracked_impl this associatedAdvancedRTSGameLayer waypointBehaviorBase = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " currentPathGeographicMapCellPosition: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (WaypointBehaviorBase.getCurrentPathGeographicMapCellPosition waypointBehaviorBase)))))
        Control.Monad.void (StringMaker.append stringBuffer " nextUnvisitedPathGeographicMapCellPosition: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (WaypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition waypointBehaviorBase)))))
        Control.Monad.void (StringMaker.append stringBuffer " Tracked: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (GeographicMapCellHistory.getTracked ((jio (WaypointBehaviorBase.getCurrentGeographicMapCellHistory waypointBehaviorBase))))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processWaypoint")
        pure ()


processWaypointTrackedVisit :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processWaypointTrackedVisit object_ a1 a2 = jmethod object_ "processWaypointTrackedVisit" (\() -> (processWaypointTrackedVisit_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2

processWaypointTrackedVisit_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processWaypointTrackedVisit_super object_ a1 a2 = (processWaypointTrackedVisit_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2

processWaypointTrackedVisit_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
processWaypointTrackedVisit_impl this associatedAdvancedRTSGameLayer geographicMapCellPosition = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Visited: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) geographicMapCellPosition)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processWaypoint")
        pure ()


processWaypointTrackedWithoutProgress :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
processWaypointTrackedWithoutProgress object_ a1 a2 = jmethod object_ "processWaypointTrackedWithoutProgress" (\() -> (processWaypointTrackedWithoutProgress_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2

processWaypointTrackedWithoutProgress_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
processWaypointTrackedWithoutProgress_super object_ a1 a2 = (processWaypointTrackedWithoutProgress_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2

processWaypointTrackedWithoutProgress_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
processWaypointTrackedWithoutProgress_impl this associatedAdvancedRTSGameLayer reason = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) reason))))) this "turnTo")
        pure ()


wander :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
wander object_ a1 = jmethod object_ "wander" (\() -> (wander_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1

wander_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
wander_super object_ a1 = (wander_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1

wander_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
wander_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)) this "wander")
        pure ()


targetDestroyed :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetDestroyed object_ a1 = jmethod object_ "targetDestroyed" (\() -> (targetDestroyed_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1

targetDestroyed_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetDestroyed_super object_ a1 = (targetDestroyed_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1

targetDestroyed_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetDestroyed_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " Target Destroyed"))))) this "selected: processTargeting")
        pure ()


processTargeting :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargeting object_ a1 a2 a3 = jmethod object_ "processTargeting" (\() -> (processTargeting_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3

processTargeting_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargeting_super object_ a1 a2 a3 = (processTargeting_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3

processTargeting_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargeting_impl this associatedAdvancedRTSGameLayer dx dy = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dX_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dx)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dY_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dy)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processTargeting")
        pure ()


processTargetingNonWayPoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargetingNonWayPoint object_ a1 a2 a3 = jmethod object_ "processTargetingNonWayPoint" (\() -> (processTargetingNonWayPoint_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3

processTargetingNonWayPoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargetingNonWayPoint_super object_ a1 a2 a3 = (processTargetingNonWayPoint_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3

processTargetingNonWayPoint_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> IO (())
processTargetingNonWayPoint_impl this associatedAdvancedRTSGameLayer dx dy = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Targeting Non Waypoint ")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dX_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dx)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dY_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dy)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: processTargeting")
        pure ()


removeWaypoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
removeWaypoint object_ a1 a2 a3 a4 = jmethod object_ "removeWaypoint" (\() -> (removeWaypoint_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3 a4

removeWaypoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
removeWaypoint_super object_ a1 a2 a3 a4 = (removeWaypoint_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3 a4

removeWaypoint_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> PathFindingLayerInterface.PathFindingLayerInterface -> String -> IO (())
removeWaypoint_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 waypointLayer reason = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (WaypointBehaviorBase.getName unitWaypointBehavior2)))
        Control.Monad.void (StringMaker.append stringBuffer " remove: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName waypointLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " because: ")
        Control.Monad.void (StringMaker.append stringBuffer reason)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: removeWaypoint")
        pure ()


removeWaypointList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
removeWaypointList object_ a1 a2 a3 = jmethod object_ "removeWaypointList" (\() -> (removeWaypointList_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2 a3

removeWaypointList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
removeWaypointList_super object_ a1 a2 a3 = (removeWaypointList_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2 a3

removeWaypointList_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> BasicArrayList.BasicArrayList -> IO (())
removeWaypointList_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior2 list = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (WaypointBehaviorBase.getName unitWaypointBehavior2)))
        Control.Monad.void (StringMaker.append stringBuffer " Waypoints: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) list)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: removeWaypoint")
        pure ()


removeWaypointClear :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
removeWaypointClear object_ a1 = jmethod object_ "removeWaypointClear" (\() -> (removeWaypointClear_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1

removeWaypointClear_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
removeWaypointClear_super object_ a1 = (removeWaypointClear_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1

removeWaypointClear_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
removeWaypointClear_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " Clearing removed waypoint"))))) this "selected: removeWaypoint")
        pure ()


clearTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
clearTarget object_ a1 = jmethod object_ "clearTarget" (\() -> (clearTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1

clearTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
clearTarget_super object_ a1 = (clearTarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1

clearTarget_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
clearTarget_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " Cleared Target"))))) this "selected: clearTarget")
        pure ()


addWaypointFromUser :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromUser object_ a1 a2 = jmethod object_ "addWaypointFromUser" (\() -> (addWaypointFromUser_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1 a2

addWaypointFromUser_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromUser_super object_ a1 a2 = (addWaypointFromUser_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1 a2

addWaypointFromUser_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromUser_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Adding Waypoint to Selected: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName advancedRTSGameLayer)))
        when ((jio (PathFindingLayerInterface.getParentLayer advancedRTSGameLayer)) /= javaNull) $ do
            Control.Monad.void (StringMaker.append stringBuffer " With Parent: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName ((jio (PathFindingLayerInterface.getParentLayer advancedRTSGameLayer))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: onWaypointEvent")
        pure ()


targetMovedSoRetarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetMovedSoRetarget object_ a1 = jmethod object_ "targetMovedSoRetarget" (\() -> (targetMovedSoRetarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper))) () a1

targetMovedSoRetarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetMovedSoRetarget_super object_ a1 = (targetMovedSoRetarget_impl (javaCast object_ :: Waypoint2SelectedLogHelper)) a1

targetMovedSoRetarget_impl :: Waypoint2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
targetMovedSoRetarget_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " - target moved so retargeting"))))) this "turnTo")
        pure ()


