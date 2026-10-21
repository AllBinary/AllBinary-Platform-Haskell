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
module MultipassWaypointPathRunnable (module MultipassWaypointPathRunnable, module WaypointPathRunnableBase) where

import WaypointPathRunnableBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setRunning, setRunning_super, setRunning_impl, run, run_super, run_impl, reset2, reset2_super, reset2_impl, finish, finish_super, finish_impl, isDone, isDone_super, isDone_impl, reset, reset_super, reset_impl, processFirstRunnable, processFirstRunnable_super, processFirstRunnable_impl, processSecondRunnable, processSecondRunnable_super, processSecondRunnable_impl, processEndRunnable, processEndRunnable_super, processEndRunnable_impl, logUtil, basicArrayListUtil, multipassState, done, list, pathFindingInfo, fIRST_RUNNABLE, sECOND_RUNNABLE, eND_RUNNABLE, aLREADY_ENDED_RUNNABLE, currentPassRunnable)
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
import qualified Any -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified MultipassState -- org.allbinary.media.graphics.geography.pathfinding.MultipassState
import qualified PathFindingInfo -- org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified WaypointPathRunnableBase

data MultipassWaypointPathRunnable = MultipassWaypointPathRunnable
    { header_ :: JavaHeader
    , base :: WaypointPathRunnableBase.WaypointPathRunnableBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    , multipassState :: IORef (MultipassState.MultipassState)
    , done :: IORef (Bool)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , pathFindingInfo :: IORef (Any.Any)
    , fIRST_RUNNABLE :: IORef (Runnable.Runnable)
    , sECOND_RUNNABLE :: IORef (Runnable.Runnable)
    , eND_RUNNABLE :: IORef (Runnable.Runnable)
    , aLREADY_ENDED_RUNNABLE :: IORef (Runnable.Runnable)
    , currentPassRunnable :: IORef (Runnable.Runnable)
    }

instance JavaNull MultipassWaypointPathRunnable where
    javaNull = javaNullRecord "MultipassWaypointPathRunnable"

instance JavaEquals MultipassWaypointPathRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipassWaypointPathRunnable where
    (==) = jrecordEquals

instance JavaObjectClass MultipassWaypointPathRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultipassWaypointPathRunnable
newRecord_ = do
    base <- WaypointPathRunnableBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    multipassState <- newIORef javaNull
    done <- newIORef False
    list <- newIORef javaNull
    pathFindingInfo <- newIORef javaNull
    fIRST_RUNNABLE <- newIORef javaNull
    sECOND_RUNNABLE <- newIORef javaNull
    eND_RUNNABLE <- newIORef javaNull
    aLREADY_ENDED_RUNNABLE <- newIORef javaNull
    currentPassRunnable <- newIORef javaNull
    let this = MultipassWaypointPathRunnable header_ base logUtil basicArrayListUtil multipassState done list pathFindingInfo fIRST_RUNNABLE sECOND_RUNNABLE eND_RUNNABLE aLREADY_ENDED_RUNNABLE currentPassRunnable
    jregisterLevel header_ this
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "reset2" (\() -> reset2_impl this)
    jregisterMethod header_ "finish" (\() -> finish_impl this)
    jregisterMethod header_ "isDone" (\() -> isDone_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "processFirstRunnable" (\() -> processFirstRunnable_impl this)
    jregisterMethod header_ "processSecondRunnable" (\() -> processSecondRunnable_impl this)
    jregisterMethod header_ "processEndRunnable" (\() -> processEndRunnable_impl this)
    pure this

initFields_ :: MultipassWaypointPathRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    jset this.multipassState =<< (MultipassState.new_)
    jset this.done (False)
    jset this.list =<< (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
    jset this.pathFindingInfo ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    jset this.fIRST_RUNNABLE =<< (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (FirstRunnable.new_1 this))
    jset this.sECOND_RUNNABLE =<< (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (SecondRunnable.new_1 this))
    jset this.eND_RUNNABLE =<< (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (EndRunnable.new_1 this))
    jset this.aLREADY_ENDED_RUNNABLE =<< (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
        -- run
-}))
    jset this.currentPassRunnable ((jget (this).fIRST_RUNNABLE))
    pure ()

new_ :: IO MultipassWaypointPathRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MultipassWaypointPathRunnable -> IO ()
init_ this = do
        WaypointPathRunnableBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: MultipassWaypointPathRunnable))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: MultipassWaypointPathRunnable)) a1

setRunning_impl :: MultipassWaypointPathRunnable -> Bool -> IO (())
setRunning_impl this isRunning = do
        jset (this).base.runningP (isRunning)
        when (jget (this).base.runningP) $ do
            Control.Monad.void (MultipassWaypointPathRunnable.reset this)
            jset (this).done (False)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: MultipassWaypointPathRunnable))

run_impl :: MultipassWaypointPathRunnable -> IO (())
run_impl this = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            Control.Monad.void (MultipassWaypointPathRunnable.setRunning this False)
            ) $ do
            Control.Monad.void (Runnable.run ((jget (this).currentPassRunnable)))
        pure ()


reset2 :: (JavaObjectClass this_) => this_ -> IO (())
reset2 object_ = jmethod object_ "reset2" (\() -> (reset2_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

reset2_super :: (JavaObjectClass this_) => this_ -> IO (())
reset2_super object_ = (reset2_impl (javaCast object_ :: MultipassWaypointPathRunnable))

reset2_impl :: MultipassWaypointPathRunnable -> IO (())
reset2_impl this = do
        jset ((jget (this).multipassState)).step (0)
        jset ((jget (this).multipassState)).iteration (0)
        jset ((jget (this).multipassState)).iteration2 (0)
        jset (this).pathFindingInfo ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
        pure ()


finish :: (JavaObjectClass this_) => this_ -> IO (())
finish object_ = jmethod object_ "finish" (\() -> (finish_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

finish_super :: (JavaObjectClass this_) => this_ -> IO (())
finish_super object_ = (finish_impl (javaCast object_ :: MultipassWaypointPathRunnable))

finish_impl :: MultipassWaypointPathRunnable -> IO (())
finish_impl this = do
        Control.Monad.void (MultipassWaypointPathRunnable.reset2 this)
        jset (this).currentPassRunnable ((jget (this).aLREADY_ENDED_RUNNABLE))
        jset (this).done (True)
        pure ()


isDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone object_ = jmethod object_ "isDone" (\() -> (isDone_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

isDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone_super object_ = (isDone_impl (javaCast object_ :: MultipassWaypointPathRunnable))

isDone_impl :: MultipassWaypointPathRunnable -> IO (Bool)
isDone_impl this = do
        pure ((jget (this).done))


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: MultipassWaypointPathRunnable))

reset_impl :: MultipassWaypointPathRunnable -> IO (())
reset_impl this = do
        Control.Monad.void (MultipassWaypointPathRunnable.reset2 this)
        jset (this).currentPassRunnable ((jget (this).fIRST_RUNNABLE))
        jset (this).done (False)
        pure ()


processFirstRunnable :: (JavaObjectClass this_) => this_ -> IO (())
processFirstRunnable object_ = jmethod object_ "processFirstRunnable" (\() -> (processFirstRunnable_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

processFirstRunnable_super :: (JavaObjectClass this_) => this_ -> IO (())
processFirstRunnable_super object_ = (processFirstRunnable_impl (javaCast object_ :: MultipassWaypointPathRunnable))

processFirstRunnable_impl :: MultipassWaypointPathRunnable -> IO (())
processFirstRunnable_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            Control.Monad.void (MultipassWaypointPathRunnable.setRunning this False)
            Control.Monad.void (MultipassWaypointPathRunnable.finish this)
            ) $ do
            Control.Monad.void (PathFindingLayerInterface.start ((jio (PathFindingLayerInterface.getWaypointRunnableLogHelper ((jget (this).base.pathFindingLayer))))) (jget (this).base.pathFindingLayer))
            Control.Monad.void (MultipassWaypointPathRunnable.reset2 this)
            geographicMapCellPosition <- (PathFindingLayerInterface.getCurrentGeographicMapCellPosition ((jget (this).base.pathFindingLayer)))
            when (geographicMapCellPosition == javaNull) $ do
                javaThrow ((JavaException "Exception" "Should never be running here"))
            assignedValue <- (PathFindingLayerInterface.getPathFindingInfo ((jio (PathFindingLayerInterface.getWaypoint ((jio (PathFindingLayerInterface.getWaypointBehavior ((jget (this).base.targetPathFindingLayer)))))))) geographicMapCellPosition)
            jset (this).pathFindingInfo (assignedValue)
            let localPathFindingInfo = (javaCast (jget (this).pathFindingInfo) :: PathFindingInfo.PathFindingInfo)
            assignedValue <- (PathFindingLayerInterface.getPathsList ((jio (PathFindingLayerInterface.getWaypoint ((jio (PathFindingLayerInterface.getWaypointBehavior ((jget (this).base.targetPathFindingLayer)))))))) geographicMapCellPosition localPathFindingInfo (jget (this).multipassState))
            jset (this).list (assignedValue)
            if ((jget (this).list) /= (jio (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil))))) then do
                Control.Monad.void (Runnable.run ((jget (this).eND_RUNNABLE)))
            else do
                jset (this).currentPassRunnable ((jget (this).sECOND_RUNNABLE))
        pure ()


processSecondRunnable :: (JavaObjectClass this_) => this_ -> IO (())
processSecondRunnable object_ = jmethod object_ "processSecondRunnable" (\() -> (processSecondRunnable_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

processSecondRunnable_super :: (JavaObjectClass this_) => this_ -> IO (())
processSecondRunnable_super object_ = (processSecondRunnable_impl (javaCast object_ :: MultipassWaypointPathRunnable))

processSecondRunnable_impl :: MultipassWaypointPathRunnable -> IO (())
processSecondRunnable_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            Control.Monad.void (MultipassWaypointPathRunnable.setRunning this False)
            Control.Monad.void (MultipassWaypointPathRunnable.finish this)
            ) $ do
            geographicMapCellPosition <- (PathFindingLayerInterface.getCurrentGeographicMapCellPosition ((jget (this).base.pathFindingLayer)))
            let localPathFindingInfo = (javaCast (jget (this).pathFindingInfo) :: PathFindingInfo.PathFindingInfo)
            assignedValue <- (PathFindingLayerInterface.getPathsList ((jio (PathFindingLayerInterface.getWaypoint ((jio (PathFindingLayerInterface.getWaypointBehavior ((jget (this).base.targetPathFindingLayer)))))))) geographicMapCellPosition localPathFindingInfo (jget (this).multipassState))
            jset (this).list (assignedValue)
            when ((jget (this).list) /= (jio (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil))))) $ do
                Control.Monad.void (Runnable.run ((jget (this).eND_RUNNABLE)))
        pure ()


processEndRunnable :: (JavaObjectClass this_) => this_ -> IO (())
processEndRunnable object_ = jmethod object_ "processEndRunnable" (\() -> (processEndRunnable_impl (javaCast object_ :: MultipassWaypointPathRunnable))) ()

processEndRunnable_super :: (JavaObjectClass this_) => this_ -> IO (())
processEndRunnable_super object_ = (processEndRunnable_impl (javaCast object_ :: MultipassWaypointPathRunnable))

processEndRunnable_impl :: MultipassWaypointPathRunnable -> IO (())
processEndRunnable_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN) e)
            Control.Monad.void (MultipassWaypointPathRunnable.setRunning this False)
            ) $ do
            waypointBehavior <- (PathFindingLayerInterface.getWaypointBehavior ((jget (this).base.pathFindingLayer)))
            Control.Monad.void (WaypointBehaviorBase.setWaypointPathsList waypointBehavior (jget (this).list))
            Control.Monad.void (PathFindingLayerInterface.end ((jio (PathFindingLayerInterface.getWaypointRunnableLogHelper ((jget (this).base.pathFindingLayer))))) (jget (this).base.pathFindingLayer))
        Control.Monad.void (MultipassWaypointPathRunnable.finish this)
        pure ()

-- Java nested class FirstRunnable: move it to its own module FirstRunnable
-- Java nested class SecondRunnable: move it to its own module SecondRunnable
-- Java nested class EndRunnable: move it to its own module EndRunnable

