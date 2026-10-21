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
-- package org.allbinary.game.input.form
module AssignWaypointsUtil where

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
import qualified PrimaryWaypointHelper -- same package or java.lang
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified UnitLayer -- org.allbinary.game.layer.unit.UnitLayer
import qualified UnitWaypointBehavior -- org.allbinary.game.layer.unit.UnitWaypointBehavior
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data AssignWaypointsUtil = AssignWaypointsUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , wAYPOINT_EVENT :: IORef (RTSLayerEvent.RTSLayerEvent)
    }

instance JavaNull AssignWaypointsUtil where
    javaNull = javaNullRecord "AssignWaypointsUtil"

instance JavaEquals AssignWaypointsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AssignWaypointsUtil where
    (==) = jrecordEquals

instance JavaObjectClass AssignWaypointsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AssignWaypointsUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    wAYPOINT_EVENT <- newIORef javaNull
    let this = AssignWaypointsUtil header_ logUtil wAYPOINT_EVENT
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: AssignWaypointsUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.wAYPOINT_EVENT =<< (RTSLayerEvent.new_1 (NullPathFindingLayer.nULL_PATH_FINDING_LAYER))
    pure ()

new_ :: IO AssignWaypointsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AssignWaypointsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AssignWaypointsUtil)
getInstance = do
        pure (AssignWaypointsUtil.instance_)


set :: (JavaObjectClass this_) => this_ -> UnitLayer.UnitLayer -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
set object_ a1 a2 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: AssignWaypointsUtil))) () a1 a2

set_super :: (JavaObjectClass this_) => this_ -> UnitLayer.UnitLayer -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
set_super object_ a1 a2 = (set_impl (javaCast object_ :: AssignWaypointsUtil)) a1 a2

set_impl :: AssignWaypointsUtil -> UnitLayer.UnitLayer -> AdvancedRTSGameLayer.AdvancedRTSGameLayer -> IO (())
set_impl this unitLayer ownerAdvancedRTSGameLayer = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "set" e)
            ) $ do
            list <- (WaypointBehaviorBase.getOwnedWaypointList ((jio (AdvancedRTSGameLayer.getWaypointBehavior ownerAdvancedRTSGameLayer))))
            let unitWaypointBehavior = (javaCast (jio (UnitLayer.getWaypointBehavior unitLayer)) :: UnitWaypointBehavior.UnitWaypointBehavior)
            forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                let waypointLayer = (javaCast (jio (BasicArrayList.get list index)) :: RTSLayer.RTSLayer)
                Control.Monad.void (RTSLayerEvent.setRtsLayer ((jget (this).wAYPOINT_EVENT)) waypointLayer)
                Control.Monad.void (UnitWaypointBehavior.onWaypointEvent unitWaypointBehavior (jget (this).wAYPOINT_EVENT))
            waypointLayer <- (PrimaryWaypointHelper.getWaypointLayer ((jio (PrimaryWaypointHelper.getInstance))))
            when ((jtoObject waypointLayer) /= (jtoObject NullPathFindingLayer.nULL_PATH_FINDING_LAYER)) $ do
                Control.Monad.void (RTSLayerEvent.setRtsLayer ((jget (this).wAYPOINT_EVENT)) waypointLayer)
                Control.Monad.void (UnitWaypointBehavior.onWaypointEvent unitWaypointBehavior (jget (this).wAYPOINT_EVENT))
        pure ()


