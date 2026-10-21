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
module WaypointSelectedLogHelper (module WaypointSelectedLogHelper, module WaypointLogHelper) where

import WaypointLogHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, onWaypointEvent, onWaypointEvent_super, onWaypointEvent_impl, addWaypointFromBuilding, addWaypointFromBuilding_super, addWaypointFromBuilding_impl, addWaypointFromBuildingList, addWaypointFromBuildingList_super, addWaypointFromBuildingList_impl, insertWaypoint, insertWaypoint_super, insertWaypoint_impl, insertWaypointList, insertWaypointList_super, insertWaypointList_impl, setRandomGeographicMapCellHistoryList, setRandomGeographicMapCellHistoryList_super, setRandomGeographicMapCellHistoryList_impl, moveAwayFromBuilding, moveAwayFromBuilding_super, moveAwayFromBuilding_impl, needToMove, needToMove_super, needToMove_impl, setRandomGeographicMapCellHistory, setRandomGeographicMapCellHistory_super, setRandomGeographicMapCellHistory_impl, setCurrentPathGeographicMapCellPosition, setCurrentPathGeographicMapCellPosition_super, setCurrentPathGeographicMapCellPosition_impl, setNextUnvisitedPathGeographicMapCellPosition, setNextUnvisitedPathGeographicMapCellPosition_super, setNextUnvisitedPathGeographicMapCellPosition_impl, logUtil, instanceC, commonSeps, stringUtil)
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
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified WaypointLogHelper

data WaypointSelectedLogHelper = WaypointSelectedLogHelper
    { header_ :: JavaHeader
    , base :: WaypointLogHelper.WaypointLogHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , stringUtil :: IORef (StringUtil.StringUtil)
    }

instance JavaNull WaypointSelectedLogHelper where
    javaNull = javaNullRecord "WaypointSelectedLogHelper"

instance JavaEquals WaypointSelectedLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointSelectedLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass WaypointSelectedLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO WaypointSelectedLogHelper
newRecord_ = do
    base <- WaypointLogHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonSeps <- newIORef javaNull
    stringUtil <- newIORef javaNull
    let this = WaypointSelectedLogHelper header_ base logUtil commonSeps stringUtil
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

initFields_ :: WaypointSelectedLogHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    pure ()

new_ :: IO WaypointSelectedLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointSelectedLogHelper -> IO ()
init_ this = do
    WaypointLogHelper.init_ this.base
    initFields_ this


getInstance :: IO (WaypointSelectedLogHelper)
getInstance = do
        pure (WaypointSelectedLogHelper.instanceC)


onWaypointEvent :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
onWaypointEvent object_ a1 a2 = jmethod object_ "onWaypointEvent" (\() -> (onWaypointEvent_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2

onWaypointEvent_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
onWaypointEvent_super object_ a1 a2 = (onWaypointEvent_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2

onWaypointEvent_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
onWaypointEvent_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " onWaypointEvent: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName advancedRTSGameLayer)))
        when ((jio (PathFindingLayerInterface.getParentLayer advancedRTSGameLayer)) /= javaNull) $ do
            Control.Monad.void (StringMaker.append stringBuffer " With Parent: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName ((jio (PathFindingLayerInterface.getParentLayer advancedRTSGameLayer))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "onWaypointEvent")
        pure ()


addWaypointFromBuilding :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromBuilding object_ a1 a2 = jmethod object_ "addWaypointFromBuilding" (\() -> (addWaypointFromBuilding_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2

addWaypointFromBuilding_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromBuilding_super object_ a1 a2 = (addWaypointFromBuilding_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2

addWaypointFromBuilding_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
addWaypointFromBuilding_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Adding Waypoint: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName advancedRTSGameLayer)))
        when ((jio (PathFindingLayerInterface.getParentLayer advancedRTSGameLayer)) /= javaNull) $ do
            Control.Monad.void (StringMaker.append stringBuffer " With Parent: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName ((jio (PathFindingLayerInterface.getParentLayer advancedRTSGameLayer))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: onWaypointEvent")
        pure ()


addWaypointFromBuildingList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
addWaypointFromBuildingList object_ a1 a2 a3 = jmethod object_ "addWaypointFromBuildingList" (\() -> (addWaypointFromBuildingList_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2 a3

addWaypointFromBuildingList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
addWaypointFromBuildingList_super object_ a1 a2 a3 = (addWaypointFromBuildingList_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2 a3

addWaypointFromBuildingList_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
addWaypointFromBuildingList_impl this associatedAdvancedRTSGameLayer advancedRTSGameLayer list = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Waypoints: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) list)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: onWaypointEvent")
        pure ()


insertWaypoint :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> IO (())
insertWaypoint object_ a1 a2 a3 a4 = jmethod object_ "insertWaypoint" (\() -> (insertWaypoint_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2 a3 a4

insertWaypoint_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> IO (())
insertWaypoint_super object_ a1 a2 a3 a4 = (insertWaypoint_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2 a3 a4

insertWaypoint_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> IO (())
insertWaypoint_impl this associatedAdvancedRTSGameLayer index rtsLayer waypointName = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer waypointName)
        Control.Monad.void (StringMaker.append stringBuffer " Insert: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableDestroyableDamageableLayer.getName rtsLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " for Waypoint: ")
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: insertWaypoint")
        pure ()


insertWaypointList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> BasicArrayList.BasicArrayList -> IO (())
insertWaypointList object_ a1 a2 a3 a4 a5 = jmethod object_ "insertWaypointList" (\() -> (insertWaypointList_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2 a3 a4 a5

insertWaypointList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> BasicArrayList.BasicArrayList -> IO (())
insertWaypointList_super object_ a1 a2 a3 a4 a5 = (insertWaypointList_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2 a3 a4 a5

insertWaypointList_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> String -> BasicArrayList.BasicArrayList -> IO (())
insertWaypointList_impl this associatedAdvancedRTSGameLayer index rtsLayer waypointName list = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer waypointName)
        Control.Monad.void (StringMaker.append stringBuffer " Insert: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableDestroyableDamageableLayer.getName rtsLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " Waypoints: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) list)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: insertWaypoint")
        pure ()


setRandomGeographicMapCellHistoryList :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistoryList object_ a1 a2 = jmethod object_ "setRandomGeographicMapCellHistoryList" (\() -> (setRandomGeographicMapCellHistoryList_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2

setRandomGeographicMapCellHistoryList_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistoryList_super object_ a1 a2 = (setRandomGeographicMapCellHistoryList_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2

setRandomGeographicMapCellHistoryList_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setRandomGeographicMapCellHistoryList_impl this associatedAdvancedRTSGameLayer pathsList = do
        size <- (BasicArrayList.size pathsList)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).sTART))
        Control.Monad.void (StringMaker.appendint stringBuffer size)
        Control.Monad.void (StringMaker.append stringBuffer " -> ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) pathsList)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: setRandomGeographicMapCellHistory")
        pure ()


moveAwayFromBuilding :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
moveAwayFromBuilding object_ a1 = jmethod object_ "moveAwayFromBuilding" (\() -> (moveAwayFromBuilding_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1

moveAwayFromBuilding_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
moveAwayFromBuilding_super object_ a1 = (moveAwayFromBuilding_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1

moveAwayFromBuilding_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
moveAwayFromBuilding_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " Trying to move away from building"))))) this "selected: moveAwayFromBuilding")
        pure ()


needToMove :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
needToMove object_ a1 a2 = jmethod object_ "needToMove" (\() -> (needToMove_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2

needToMove_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
needToMove_super object_ a1 a2 = (needToMove_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2

needToMove_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> WaypointBehaviorBase.WaypointBehaviorBase -> IO (())
needToMove_impl this associatedAdvancedRTSGameLayer unitWaypointBehavior = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) (jio (WaypointBehaviorBase.getMovementLogicAsString unitWaypointBehavior))))))) this "needToMove")
        pure ()


setRandomGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRandomGeographicMapCellHistory object_ a1 = jmethod object_ "setRandomGeographicMapCellHistory" (\() -> (setRandomGeographicMapCellHistory_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1

setRandomGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRandomGeographicMapCellHistory_super object_ a1 = (setRandomGeographicMapCellHistory_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1

setRandomGeographicMapCellHistory_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRandomGeographicMapCellHistory_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " pathsList is null"))))) this "setRandomGeographicMapCellHistory")
        pure ()


setCurrentPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition object_ a1 a2 a3 = jmethod object_ "setCurrentPathGeographicMapCellPosition" (\() -> (setCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2 a3

setCurrentPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition_super object_ a1 a2 a3 = (setCurrentPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2 a3

setCurrentPathGeographicMapCellPosition_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setCurrentPathGeographicMapCellPosition_impl this associatedAdvancedRTSGameLayer existingCurrentPathGeographicMapCellPosition currentPathGeographicMapCellPosition = do
        when (existingCurrentPathGeographicMapCellPosition == javaNull) $ do
            Control.Monad.void (jio (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " currentPathGeographicMapCellPosition: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) currentPathGeographicMapCellPosition))))))) this "setCurrentPathGeographicMapCellPosition"))
        pure ()


setNextUnvisitedPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedPathGeographicMapCellPosition object_ a1 a2 a3 = jmethod object_ "setNextUnvisitedPathGeographicMapCellPosition" (\() -> (setNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointSelectedLogHelper))) () a1 a2 a3

setNextUnvisitedPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedPathGeographicMapCellPosition_super object_ a1 a2 a3 = (setNextUnvisitedPathGeographicMapCellPosition_impl (javaCast object_ :: WaypointSelectedLogHelper)) a1 a2 a3

setNextUnvisitedPathGeographicMapCellPosition_impl :: WaypointSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedPathGeographicMapCellPosition_impl this associatedAdvancedRTSGameLayer existingNextUnvisitedPathGeographicMapCellPosition nextUnvisitedPathGeographicMapCellPosition = do
        when (existingNextUnvisitedPathGeographicMapCellPosition /= nextUnvisitedPathGeographicMapCellPosition) $ do
            Control.Monad.void (jio (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " nextUnvisitedPathGeographicMapCellPosition: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) nextUnvisitedPathGeographicMapCellPosition))))))) this "setNextUnvisitedPathGeographicMapCellPosition"))
        pure ()


