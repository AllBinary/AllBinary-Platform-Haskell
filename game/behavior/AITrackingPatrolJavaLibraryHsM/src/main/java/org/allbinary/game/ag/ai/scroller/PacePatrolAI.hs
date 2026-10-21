{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
-- package org.allbinary.game.ag.ai.scroller
module PacePatrolAI (module PacePatrolAI, module BasePatrolAI) where

import BasePatrolAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, setFiringDirectionForTargetIfInRange, setFiringDirectionForTargetIfInRange_super, setFiringDirectionForTargetIfInRange_impl, disable, disable_super, disable_impl, onEvent, onEvent_super, onEvent_impl, onMovement, onMovement_super, onMovement_impl, getFiringDistance, getFiringDistance_super, getFiringDistance_impl, setFiringDistance, setFiringDistance_super, setFiringDistance_impl, trackingList, firingDistance, isFollowLimitedByTerrain)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionCompositeInterface -- org.allbinary.direction.DirectionCompositeInterface
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified TrackingEventListenerInterface -- org.allbinary.game.tracking.TrackingEventListenerInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LayerInterface -- org.allbinary.layer.LayerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasePatrolAI

-- implements TrackingEventListenerInterface
data PacePatrolAI = PacePatrolAI
    { header_ :: JavaHeader
    , base :: BasePatrolAI.BasePatrolAI
    , trackingList :: IORef (BasicArrayList.BasicArrayList)
    , firingDistance :: IORef (Int)
    , isFollowLimitedByTerrain :: IORef (Bool)
    }

instance JavaNull PacePatrolAI where
    javaNull = javaNullRecord "PacePatrolAI"

instance JavaEquals PacePatrolAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PacePatrolAI where
    (==) = jrecordEquals

instance JavaObjectClass PacePatrolAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PacePatrolAI
newRecord_ = do
    base <- BasePatrolAI.newRecord_
    let header_ = base.header_
    trackingList <- newIORef javaNull
    firingDistance <- newIORef 0
    isFollowLimitedByTerrain <- newIORef False
    let this = PacePatrolAI header_ base trackingList firingDistance isFollowLimitedByTerrain
    jregisterLevel header_ this
    TrackingEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "setFiringDirectionForTargetIfInRange" (\() -> setFiringDirectionForTargetIfInRange_impl this)
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onMovement" (\() -> onMovement_impl this)
    jregisterMethod header_ "getFiringDistance" (\() -> getFiringDistance_impl this)
    jregisterMethod header_ "setFiringDistance" (\() -> setFiringDistance_impl this)
    pure this

initFields_ :: PacePatrolAI -> IO ()
initFields_ this = do
    jset this.trackingList (javaNull)
    jset this.firingDistance (0)
    jset this.isFollowLimitedByTerrain (False)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO PacePatrolAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: PacePatrolAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        BasePatrolAI.init_3 this.base (hashtable) (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TrackingEventHandler.addListenerInterface ((jio (TrackingEventHandler.getInstance))) this)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).trackingList (assignedValue)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: PacePatrolAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: PacePatrolAI)) a1

processAI_impl :: PacePatrolAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        Control.Monad.void (BasePatrolAI.update this)
        direction <- (PacePatrolAI.setFiringDirectionForTargetIfInRange this)
        directionFactory <- (DirectionFactory.getInstance)
        if (direction == (jget (directionFactory).lEFT)) then do
            when (((jget (this).base.lastKeyDirection) /= (jget this.base.keyDirection)) || (Prelude.not (jget (this).isFollowLimitedByTerrain))) $ do
                Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (Canvas.lEFT))
            jset this.base.keyDirection (Canvas.lEFT)
            jset (this).base.lastKeyDirection ((jget this.base.keyDirection))
            jset this.base.xTotalDistance (0)
            Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
        else if (direction == (jget (directionFactory).rIGHT)) then do
            when (((jget (this).base.lastKeyDirection) /= (jget this.base.keyDirection)) || (Prelude.not (jget (this).isFollowLimitedByTerrain))) $ do
                Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (Canvas.rIGHT))
            jset this.base.keyDirection (Canvas.rIGHT)
            jset (this).base.lastKeyDirection ((jget this.base.keyDirection))
            jset this.base.xTotalDistance (0)
            Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
        else do
            Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (jget (this).base.keyDirection))
        pure ()


setFiringDirectionForTargetIfInRange :: (JavaObjectClass this_) => this_ -> IO (Direction.Direction)
setFiringDirectionForTargetIfInRange object_ = jmethod object_ "setFiringDirectionForTargetIfInRange" (\() -> (setFiringDirectionForTargetIfInRange_impl (javaCast object_ :: PacePatrolAI))) ()

setFiringDirectionForTargetIfInRange_super :: (JavaObjectClass this_) => this_ -> IO (Direction.Direction)
setFiringDirectionForTargetIfInRange_super object_ = (setFiringDirectionForTargetIfInRange_impl (javaCast object_ :: PacePatrolAI))

setFiringDirectionForTargetIfInRange_impl :: PacePatrolAI -> IO (Direction.Direction)
setFiringDirectionForTargetIfInRange_impl this = do
        directionFactory <- (DirectionFactory.getInstance)
        ownerLayerInterface <- (BasePatrolAI.getOwnerLayerInterface this)
        direction <- newIORef ((jget (directionFactory).nOT_BORDERED_WITH))
        lastTrackingEvent <- newIORef (javaNull)
        lastTrackingLayerInterface <- newIORef (javaNull)
        directionCompositeInterface <- newIORef (javaNull)
        size <- (BasicArrayList.size ((jget (this).trackingList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset lastTrackingEvent ((javaCast (jio (BasicArrayList.get ((jget (this).trackingList)) 0)) :: TrackingEvent.TrackingEvent))
            assignedValue <- (TrackingEvent.getLayerInterface ((jget lastTrackingEvent)))
            jset lastTrackingLayerInterface (assignedValue)
            x <- (LayerInterface.getXP ((jget lastTrackingLayerInterface)))
            y <- (LayerInterface.getYP ((jget lastTrackingLayerInterface)))
            let yDistance = (((jio (AllBinaryLayer.getYP ownerLayerInterface)) - y) - (jio (AllBinaryLayer.getHeight ownerLayerInterface)))
            let xDistance = (((jio (AllBinaryLayer.getXP ownerLayerInterface)) - x) - (jio (AllBinaryLayer.getWidth ownerLayerInterface)))
            let absXDistance = (Prelude.abs xDistance)
            let absYDistance = (Prelude.abs yDistance)
            when (absYDistance <= 100) $ do
                when (absXDistance < ((jio (PacePatrolAI.getFiringDistance this)) `quot` 2)) $ do
                    jset directionCompositeInterface ((javaCast (jio (BasePatrolAI.getOwnerLayerInterface this)) :: DirectionCompositeInterface.DirectionCompositeInterface))
                    if ((xDistance < 0) && ((jio (DirectionCompositeInterface.getDirection ((jget directionCompositeInterface)))) == (jget (directionFactory).rIGHT))) then do
                        jset direction ((jget (directionFactory).rIGHT))
                    else when ((xDistance > 0) && ((jio (DirectionCompositeInterface.getDirection ((jget directionCompositeInterface)))) == (jget (directionFactory).lEFT))) $ do
                        jset direction ((jget (directionFactory).lEFT))
        pure ((jget direction))


disable :: (JavaObjectClass this_) => this_ -> IO (())
disable object_ = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: PacePatrolAI))) ()

disable_super :: (JavaObjectClass this_) => this_ -> IO (())
disable_super object_ = (disable_impl (javaCast object_ :: PacePatrolAI))

disable_impl :: PacePatrolAI -> IO (())
disable_impl this = do
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: PacePatrolAI))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: PacePatrolAI)) a1

onEvent_impl :: PacePatrolAI -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onMovement :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement object_ a1 = jmethod object_ "onMovement" (\() -> (onMovement_impl (javaCast object_ :: PacePatrolAI))) () a1

onMovement_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement_super object_ a1 = (onMovement_impl (javaCast object_ :: PacePatrolAI)) a1

onMovement_impl :: PacePatrolAI -> TrackingEvent.TrackingEvent -> IO (())
onMovement_impl this trackingEvent = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).trackingList)))
        Control.Monad.void (BasicArrayList.add ((jget (this).trackingList)) trackingEvent)
        pure ()


getFiringDistance :: (JavaObjectClass this_) => this_ -> IO (Int)
getFiringDistance object_ = jmethod object_ "getFiringDistance" (\() -> (getFiringDistance_impl (javaCast object_ :: PacePatrolAI))) ()

getFiringDistance_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFiringDistance_super object_ = (getFiringDistance_impl (javaCast object_ :: PacePatrolAI))

getFiringDistance_impl :: PacePatrolAI -> IO (Int)
getFiringDistance_impl this = do
        pure ((jget (this).firingDistance))


setFiringDistance :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFiringDistance object_ a1 = jmethod object_ "setFiringDistance" (\() -> (setFiringDistance_impl (javaCast object_ :: PacePatrolAI))) () a1

setFiringDistance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFiringDistance_super object_ a1 = (setFiringDistance_impl (javaCast object_ :: PacePatrolAI)) a1

setFiringDistance_impl :: PacePatrolAI -> Int -> IO (())
setFiringDistance_impl this firingDistance = do
        jset (this).firingDistance (firingDistance)
        pure ()


