{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
module WorkWaypoint (module WorkWaypoint, module Waypoint) where

import Waypoint hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, getType, getType_super, getType_impl, iD)
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
import qualified WaypointInfoHudPaintable -- same package or java.lang
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified GeologicalGeographicMapCellPosition -- org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition
import qualified GeologicalResource -- org.allbinary.game.layer.geological.resources.GeologicalResource
import qualified UnitLayer -- org.allbinary.game.layer.unit.UnitLayer
import qualified UnitWaypointBehavior -- org.allbinary.game.layer.unit.UnitWaypointBehavior
import qualified WorkSound -- org.allbinary.media.audio.WorkSound
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified Waypoint

data WorkWaypoint = WorkWaypoint
    { header_ :: JavaHeader
    , base :: Waypoint.Waypoint
    }

instance JavaNull WorkWaypoint where
    javaNull = javaNullRecord "WorkWaypoint"

instance JavaEquals WorkWaypoint where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkWaypoint where
    (==) = jrecordEquals

instance JavaObjectClass WorkWaypoint where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iD #-}
iD = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 25))

newRecord_ :: IO WorkWaypoint
newRecord_ = do
    base <- Waypoint.newRecord_
    let header_ = base.header_
    let this = WorkWaypoint header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: WorkWaypoint -> IO ()
initFields_ this = do
    pure ()

new_1 :: PathFindingLayerInterface.PathFindingLayerInterface -> IO WorkWaypoint
new_1 ownerLayer = do
    this <- newRecord_
    init_1 this ownerLayer
    pure this

init_1 :: WorkWaypoint -> PathFindingLayerInterface.PathFindingLayerInterface -> IO ()
init_1 this ownerLayer = do
        Waypoint.init_2 this.base (ownerLayer) (jio (WorkSound.getInstance))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> UnitLayer.UnitLayer -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: WorkWaypoint))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> UnitLayer.UnitLayer -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: WorkWaypoint)) a1

visit_impl :: WorkWaypoint -> UnitLayer.UnitLayer -> IO (())
visit_impl this unitLayer = do
    javaCatchReturn $ do
        when ((jindex ((jio (UnitLayer.getGroupInterface unitLayer))) (0)) /= (jindex ((jio (PathFindingLayerInterface.getGroupInterface ((jget (this).base.ownerLayer))))) (0))) $ do
            javaReturn (())
        size <- (BasicArrayList.size ((jio (Waypoint.getConnectedWaypointList this))))
        when (size > 0) $ do
            occupyList <- (PathFindingLayerInterface.getOccupyingGeographicMapCellPositionList ((jio (PathFindingLayerInterface.getGeographicMapCellPositionArea ((jget (this).base.ownerLayer))))))
            outOfResources <- newIORef (True)
            geologicalGeographicMapCellPosition <- newIORef (javaNull)
            geologicalResource <- newIORef (javaNull)
            index <- newIORef =<< (BasicArrayList.size occupyList)
            fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                jset geologicalGeographicMapCellPosition ((javaCast (jio (BasicArrayList.get occupyList (jget index))) :: GeologicalGeographicMapCellPosition.GeologicalGeographicMapCellPosition))
                assignedValue <- (GeologicalGeographicMapCellPosition.getGeologicalResource ((jget geologicalGeographicMapCellPosition)))
                jset geologicalResource (assignedValue)
                when ((jio (GeologicalResource.getTotal ((jget geologicalResource)))) >= 1) $ do
                    jset outOfResources (False)
                    let maxResourceLoad = (Prelude.fromIntegral (jio (UnitLayer.getMaxResourceLoad unitLayer)))
                    Control.Monad.void (GeologicalResource.remove ((jget geologicalResource)) maxResourceLoad)
                    Control.Monad.void (UnitLayer.setLoad unitLayer maxResourceLoad)
            let waypointInfoHudPaintable = (javaCast (jio (PathFindingLayerInterface.getHudPaintable ((jget (this).base.ownerLayer)))) :: WaypointInfoHudPaintable.WaypointInfoHudPaintable)
            when ((jget (this).base.ownerLayer) == (jio (WaypointInfoHudPaintable.getRtsLayer waypointInfoHudPaintable))) $ do
                Control.Monad.void (WaypointInfoHudPaintable.updateSelectionInfo waypointInfoHudPaintable)
            when (Prelude.not (jget outOfResources)) $ do
                let unitWaypointBehavior = (javaCast (jio (UnitLayer.getWaypointBehavior unitLayer)) :: UnitWaypointBehavior.UnitWaypointBehavior)
                rtsLayer <- newIORef (javaNull)
                fix $ \loop -> when ((jio (BasicArrayList.size ((jio (Waypoint.getConnectedWaypointList this))))) > 0) $ javaIteration (loop) $ do
                    jset rtsLayer ((javaCast (jio (BasicArrayList.get ((jio (Waypoint.getConnectedWaypointList this))) 0)) :: RTSLayer.RTSLayer))
                    if (jio (RTSLayer.isDestroyed ((jget rtsLayer)))) then do
                        Control.Monad.void (BasicArrayList.remove ((jio (Waypoint.getConnectedWaypointList this))) (jget rtsLayer))
                    else do
                        Control.Monad.void (UnitWaypointBehavior.insertWaypoint unitWaypointBehavior 0 (jget rtsLayer))
                        throwIO JavaBreak
    pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: WorkWaypoint))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: WorkWaypoint))

getType_impl :: WorkWaypoint -> IO (Int)
getType_impl this = do
        pure (2)


