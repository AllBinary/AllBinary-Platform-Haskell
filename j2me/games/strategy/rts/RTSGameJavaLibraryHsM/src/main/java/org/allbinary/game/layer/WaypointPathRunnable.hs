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
module WaypointPathRunnable (module WaypointPathRunnable, module WaypointPathRunnableBase) where

import WaypointPathRunnableBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, run, run_super, run_impl, isDone, isDone_super, isDone_impl, logUtil)
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
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified WaypointPathRunnableBase

data WaypointPathRunnable = WaypointPathRunnable
    { header_ :: JavaHeader
    , base :: WaypointPathRunnableBase.WaypointPathRunnableBase
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull WaypointPathRunnable where
    javaNull = javaNullRecord "WaypointPathRunnable"

instance JavaEquals WaypointPathRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointPathRunnable where
    (==) = jrecordEquals

instance JavaObjectClass WaypointPathRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WaypointPathRunnable
newRecord_ = do
    base <- WaypointPathRunnableBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = WaypointPathRunnable header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "isDone" (\() -> isDone_impl this)
    pure this

initFields_ :: WaypointPathRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO WaypointPathRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointPathRunnable -> IO ()
init_ this = do
        WaypointPathRunnableBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: WaypointPathRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: WaypointPathRunnable))

run_impl :: WaypointPathRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            Control.Monad.void (WaypointPathRunnableBase.setRunning this False)
            ) $ do
            Control.Monad.void (PathFindingLayerInterface.start ((jio (PathFindingLayerInterface.getWaypointRunnableLogHelper ((jget (this).base.pathFindingLayer))))) (jget (this).base.pathFindingLayer))
            waypointBehavior <- (PathFindingLayerInterface.getWaypointBehavior ((jget (this).base.pathFindingLayer)))
            geographicMapCellPosition <- (PathFindingLayerInterface.getCurrentGeographicMapCellPosition ((jget (this).base.pathFindingLayer)))
            when (geographicMapCellPosition == javaNull) $ do
                javaThrow ((JavaException "Exception" "Should never be running here"))
            Control.Monad.void (WaypointBehaviorBase.setWaypointPathsList waypointBehavior (jio (PathFindingLayerInterface.getPathsListRunnable ((jio (PathFindingLayerInterface.getWaypoint ((jio (PathFindingLayerInterface.getWaypointBehavior ((jget (this).base.targetPathFindingLayer)))))))) geographicMapCellPosition)))
            Control.Monad.void (PathFindingLayerInterface.end ((jio (PathFindingLayerInterface.getWaypointRunnableLogHelper ((jget (this).base.pathFindingLayer))))) (jget (this).base.pathFindingLayer))
            Control.Monad.void (threadDelay (Prelude.fromIntegral (15 + (((jget (this).base.priorityP) * 2))) * 1000))
        pure ()


isDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone object_ = jmethod object_ "isDone" (\() -> (isDone_impl (javaCast object_ :: WaypointPathRunnable))) ()

isDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone_super object_ = (isDone_impl (javaCast object_ :: WaypointPathRunnable))

isDone_impl :: WaypointPathRunnable -> IO (Bool)
isDone_impl this = do
        pure (True)


