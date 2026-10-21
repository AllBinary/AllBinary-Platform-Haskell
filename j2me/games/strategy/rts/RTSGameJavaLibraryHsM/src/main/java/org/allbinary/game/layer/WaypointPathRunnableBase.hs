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
-- package org.allbinary.game.layer
module WaypointPathRunnableBase where

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
import qualified NullPathFindingLayer -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LayerDistanceUtil -- org.allbinary.math.LayerDistanceUtil
import qualified PriorityRunnable -- org.allbinary.thread.PriorityRunnable
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface

-- implements RunnableInterface
-- implements PriorityRunnable
data WaypointPathRunnableBase = WaypointPathRunnableBase
    { header_ :: JavaHeader
    , layerDistanceUtil :: IORef (LayerDistanceUtil.LayerDistanceUtil)
    , pathFindingLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    , targetPathFindingLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    , priorityP :: IORef (Int)
    , runningP :: IORef (Bool)
    }

instance JavaNull WaypointPathRunnableBase where
    javaNull = javaNullRecord "WaypointPathRunnableBase"

instance JavaEquals WaypointPathRunnableBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointPathRunnableBase where
    (==) = jrecordEquals

instance JavaObjectClass WaypointPathRunnableBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WaypointPathRunnableBase
newRecord_ = do
    header_ <- newJavaHeader
    layerDistanceUtil <- newIORef javaNull
    pathFindingLayer <- newIORef javaNull
    targetPathFindingLayer <- newIORef javaNull
    priorityP <- newIORef 0
    runningP <- newIORef False
    let this = WaypointPathRunnableBase header_ layerDistanceUtil pathFindingLayer targetPathFindingLayer priorityP runningP
    jregisterLevel header_ this
    RunnableInterface.registerInterface_ header_
    PriorityRunnable.registerInterface_ header_
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "setTargetLayer" (\() -> setTargetLayer_impl this)
    jregisterMethod header_ "setPriority" (\() -> setPriority_impl this)
    jregisterMethod header_ "getTargetLayer" (\() -> getTargetLayer_impl this)
    jregisterMethod header_ "setUnitLayer" (\() -> setUnitLayer_impl this)
    jregisterMethod header_ "getPriority" (\() -> getPriority_impl this)
    jregisterMethod header_ "isDone" (\() -> isDone_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    pure this

initFields_ :: WaypointPathRunnableBase -> IO ()
initFields_ this = do
    jset this.layerDistanceUtil =<< (LayerDistanceUtil.getInstance)
    jset this.pathFindingLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    jset this.targetPathFindingLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    jset this.priorityP ((2147483647 :: Int))
    jset this.runningP (False)
    pure ()

new_ :: IO WaypointPathRunnableBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointPathRunnableBase -> IO ()
init_ this = do
    initFields_ this


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: WaypointPathRunnableBase))

isRunning_impl :: WaypointPathRunnableBase -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).runningP))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: WaypointPathRunnableBase))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: WaypointPathRunnableBase)) a1

setRunning_impl :: WaypointPathRunnableBase -> Bool -> IO (())
setRunning_impl this isRunning = do
        jset (this).runningP (isRunning)
        pure ()


-- throws Exception
setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: WaypointPathRunnableBase))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: WaypointPathRunnableBase)) a1

setThread_impl :: WaypointPathRunnableBase -> Thread.Thread -> IO (())
setThread_impl this thread = do
        pure ()


setTargetLayer :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetLayer object_ a1 = jmethod object_ "setTargetLayer" (\() -> (setTargetLayer_impl (javaCast object_ :: WaypointPathRunnableBase))) () a1

setTargetLayer_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetLayer_super object_ a1 = (setTargetLayer_impl (javaCast object_ :: WaypointPathRunnableBase)) a1

setTargetLayer_impl :: WaypointPathRunnableBase -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setTargetLayer_impl this waypointLayer = do
        jset (this).targetPathFindingLayer (waypointLayer)
        Control.Monad.void (WaypointPathRunnableBase.setPriority this)
        pure ()


setPriority :: (JavaObjectClass this_) => this_ -> IO (())
setPriority object_ = jmethod object_ "setPriority" (\() -> (setPriority_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

setPriority_super :: (JavaObjectClass this_) => this_ -> IO (())
setPriority_super object_ = (setPriority_impl (javaCast object_ :: WaypointPathRunnableBase))

setPriority_impl :: WaypointPathRunnableBase -> IO (())
setPriority_impl this = do
        let pathFindingLayer = (javaCast (jget (this).pathFindingLayer) :: AllBinaryLayer.AllBinaryLayer)
        let targetLayer = (javaCast (jget (this).targetPathFindingLayer) :: AllBinaryLayer.AllBinaryLayer)
        when (targetLayer /= javaNull) $ do
            distance <- (LayerDistanceUtil.getDistance ((jget (this).layerDistanceUtil)) targetLayer pathFindingLayer)
            let distanceCategory = (distance `quot` 70)
            jset (this).priorityP (distanceCategory)
        pure ()


getTargetLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getTargetLayer object_ = jmethod object_ "getTargetLayer" (\() -> (getTargetLayer_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

getTargetLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getTargetLayer_super object_ = (getTargetLayer_impl (javaCast object_ :: WaypointPathRunnableBase))

getTargetLayer_impl :: WaypointPathRunnableBase -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getTargetLayer_impl this = do
        pure ((jget (this).targetPathFindingLayer))


setUnitLayer :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setUnitLayer object_ a1 = jmethod object_ "setUnitLayer" (\() -> (setUnitLayer_impl (javaCast object_ :: WaypointPathRunnableBase))) () a1

setUnitLayer_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setUnitLayer_super object_ a1 = (setUnitLayer_impl (javaCast object_ :: WaypointPathRunnableBase)) a1

setUnitLayer_impl :: WaypointPathRunnableBase -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setUnitLayer_impl this unitLayer = do
        jset (this).pathFindingLayer (unitLayer)
        pure ()


getPriority :: (JavaObjectClass this_) => this_ -> IO (Int)
getPriority object_ = jmethod object_ "getPriority" (\() -> (getPriority_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

getPriority_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPriority_super object_ = (getPriority_impl (javaCast object_ :: WaypointPathRunnableBase))

getPriority_impl :: WaypointPathRunnableBase -> IO (Int)
getPriority_impl this = do
        pure ((jget (this).priorityP))


isDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone object_ = jmethod object_ "isDone" (\() -> (isDone_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

isDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone_super object_ = (isDone_impl (javaCast object_ :: WaypointPathRunnableBase))

isDone_impl :: WaypointPathRunnableBase -> IO (Bool)
isDone_impl this = do
        pure (True)


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: WaypointPathRunnableBase))

run_impl :: WaypointPathRunnableBase -> IO (())
run_impl this = do
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: WaypointPathRunnableBase))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: WaypointPathRunnableBase))

reset_impl :: WaypointPathRunnableBase -> IO (())
reset_impl this = do
        pure ()


