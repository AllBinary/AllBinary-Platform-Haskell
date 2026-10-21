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
module WaypointBase where

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
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified NoSound -- org.allbinary.media.audio.NoSound
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified MultipassState -- org.allbinary.media.graphics.geography.pathfinding.MultipassState
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements EventListenerInterface
data WaypointBase = WaypointBase
    { header_ :: JavaHeader
    , connectedWaypointList :: IORef (BasicArrayList.BasicArrayList)
    , sound :: IORef (Sound.Sound)
    , allBinaryGameLayerManagerP :: IORef (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
    }

instance JavaNull WaypointBase where
    javaNull = javaNullRecord "WaypointBase"

instance JavaEquals WaypointBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointBase where
    (==) = jrecordEquals

instance JavaObjectClass WaypointBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_WAYPOINT_BASE #-}
nULL_WAYPOINT_BASE = unsafePerformIO ((new_1 (jio (NoSound.getInstance))) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WaypointBase
newRecord_ = do
    header_ <- newJavaHeader
    connectedWaypointList <- newIORef javaNull
    sound <- newIORef javaNull
    allBinaryGameLayerManagerP <- newIORef javaNull
    let this = WaypointBase header_ connectedWaypointList sound allBinaryGameLayerManagerP
    jregisterLevel header_ this
    EventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "getSound" (\() -> getSound_impl this)
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "getConnectedWaypointList" (\() -> getConnectedWaypointList_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "getPathFindingInfo" (\() -> getPathFindingInfo_impl this)
    jregisterMethod header_ "getPathsList" (\() -> getPathsList_impl this)
    jregisterMethod header_ "getPathsListRunnable" (\() -> getPathsListRunnable_impl this)
    jregisterMethod header_ "getPathsListFromCacheOnly" (\() -> getPathsListFromCacheOnly_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: WaypointBase -> IO ()
initFields_ this = do
    jset this.connectedWaypointList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.sound (javaNull)
    jset this.allBinaryGameLayerManagerP =<< (AllBinaryGameLayerManager.getNullInstance)
    pure ()

new_1 :: Sound.Sound -> IO WaypointBase
new_1 sound = do
    this <- newRecord_
    init_1 this sound
    pure this

init_1 :: WaypointBase -> Sound.Sound -> IO ()
init_1 this sound = do
        initFields_ this
        jset (this).sound (sound)
        pure ()


getSound :: (JavaObjectClass this_) => this_ -> IO (Sound.Sound)
getSound object_ = jmethod object_ "getSound" (\() -> (getSound_impl (javaCast object_ :: WaypointBase))) ()

getSound_super :: (JavaObjectClass this_) => this_ -> IO (Sound.Sound)
getSound_super object_ = (getSound_impl (javaCast object_ :: WaypointBase))

getSound_impl :: WaypointBase -> IO (Sound.Sound)
getSound_impl this = do
        pure ((jget (this).sound))


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: WaypointBase))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: WaypointBase)) a1

setAllBinaryGameLayerManager_impl :: WaypointBase -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        jset (this).allBinaryGameLayerManagerP (allBinaryGameLayerManager)
        pure ()


getConnectedWaypointList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getConnectedWaypointList object_ = jmethod object_ "getConnectedWaypointList" (\() -> (getConnectedWaypointList_impl (javaCast object_ :: WaypointBase))) ()

getConnectedWaypointList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getConnectedWaypointList_super object_ = (getConnectedWaypointList_impl (javaCast object_ :: WaypointBase))

getConnectedWaypointList_impl :: WaypointBase -> IO (BasicArrayList.BasicArrayList)
getConnectedWaypointList_impl this = do
        pure ((jget (this).connectedWaypointList))


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: WaypointBase))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: WaypointBase)) a1

onEvent_impl :: WaypointBase -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
getPathFindingInfo :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (PathFindingInfo.PathFindingInfo)
getPathFindingInfo object_ a1 = jmethod object_ "getPathFindingInfo" (\() -> (getPathFindingInfo_impl (javaCast object_ :: WaypointBase))) () a1

getPathFindingInfo_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (PathFindingInfo.PathFindingInfo)
getPathFindingInfo_super object_ a1 = (getPathFindingInfo_impl (javaCast object_ :: WaypointBase)) a1

getPathFindingInfo_impl :: WaypointBase -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (PathFindingInfo.PathFindingInfo)
getPathFindingInfo_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getPathsList :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingInfo.PathFindingInfo -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
getPathsList object_ a1 a2 a3 = jmethod object_ "getPathsList" (\() -> (getPathsList_impl (javaCast object_ :: WaypointBase))) () a1 a2 a3

getPathsList_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingInfo.PathFindingInfo -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
getPathsList_super object_ a1 a2 a3 = (getPathsList_impl (javaCast object_ :: WaypointBase)) a1 a2 a3

getPathsList_impl :: WaypointBase -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingInfo.PathFindingInfo -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
getPathsList_impl this geographicMapCellPosition pathFindingInfo multipassState = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getPathsListRunnable :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListRunnable object_ a1 = jmethod object_ "getPathsListRunnable" (\() -> (getPathsListRunnable_impl (javaCast object_ :: WaypointBase))) () a1

getPathsListRunnable_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListRunnable_super object_ a1 = (getPathsListRunnable_impl (javaCast object_ :: WaypointBase)) a1

getPathsListRunnable_impl :: WaypointBase -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListRunnable_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getPathsListFromCacheOnly :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListFromCacheOnly object_ a1 = jmethod object_ "getPathsListFromCacheOnly" (\() -> (getPathsListFromCacheOnly_impl (javaCast object_ :: WaypointBase))) () a1

getPathsListFromCacheOnly_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListFromCacheOnly_super object_ a1 = (getPathsListFromCacheOnly_impl (javaCast object_ :: WaypointBase)) a1

getPathsListFromCacheOnly_impl :: WaypointBase -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
getPathsListFromCacheOnly_impl this geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: WaypointBase))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: WaypointBase)) a1

visit_impl :: WaypointBase -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
visit_impl this unitLayer = do
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: WaypointBase))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: WaypointBase))

reset_impl :: WaypointBase -> IO (())
reset_impl this = do
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: WaypointBase))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: WaypointBase))

getType_impl :: WaypointBase -> IO (Int)
getType_impl this = do
        pure (0)


