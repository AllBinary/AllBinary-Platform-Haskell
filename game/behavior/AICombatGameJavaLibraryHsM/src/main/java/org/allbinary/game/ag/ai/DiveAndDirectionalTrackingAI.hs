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
-- package org.allbinary.game.ag.ai
module DiveAndDirectionalTrackingAI (module DiveAndDirectionalTrackingAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, init, init_super, init_impl, target, target_super, target_impl, verticalTargeting, verticalTargeting_super, verticalTargeting_impl, horizontalTargeting, horizontalTargeting_super, horizontalTargeting_impl, setDive, setDive_super, setDive_impl, moveRight, moveRight_super, moveRight_impl, moveLeft, moveLeft_super, moveLeft_impl, moveDown, moveDown_super, moveDown_impl, moveUp, moveUp_super, moveUp_impl, dive, dive_super, dive_impl, attack, attack_super, attack_impl, drop, drop_super, drop_impl, isBeyondTarget, isBeyondTarget_super, isBeyondTarget_impl, onEvent, onEvent_super, onEvent_impl, onMovement, onMovement_super, onMovement_impl, onDestroyed, onDestroyed_super, onDestroyed_impl, setLastDirection, setLastDirection_super, setLastDirection_impl, setLastKey, setLastKey_super, setLastKey_impl, getLastDirection, getLastDirection_super, getLastDirection_impl, toString, toString_super, toString_impl, mathUtil, directionFactory, gameTickTimeDelayHelper, timeDelayHelper, list, directionalInterface, velocityInterface, directionToKeyMap, initialDropped, diveP, directionOfTarget, mIN_DISTANCE, lastTrackingLayerInterface, artificialIntelligenceInterface, aiVistor, lastDirection)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified DirectionalCompositeInterface -- org.allbinary.direction.DirectionalCompositeInterface
import qualified DirectionalInterface -- org.allbinary.direction.DirectionalInterface
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified DestroyedEvent -- org.allbinary.game.combat.destroy.event.DestroyedEvent
import qualified DestroyedEventHandler -- org.allbinary.game.combat.destroy.event.DestroyedEventHandler
import qualified DestroyedEventListenerInterface -- org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties
import qualified VelocityInterfaceCompositeInterface -- org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified TrackingEventListenerInterface -- org.allbinary.game.tracking.TrackingEventListenerInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements TrackingEventListenerInterface
-- implements DestroyedEventListenerInterface
data DiveAndDirectionalTrackingAI = DiveAndDirectionalTrackingAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , mathUtil :: IORef (MathUtil.MathUtil)
    , directionFactory :: IORef (DirectionFactory.DirectionFactory)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , directionalInterface :: IORef (DirectionalInterface.DirectionalInterface)
    , velocityInterface :: IORef (BasicVelocityProperties.BasicVelocityProperties)
    , directionToKeyMap :: IORef (JavaArray (Int))
    , initialDropped :: IORef (Bool)
    , diveP :: IORef (Bool)
    , directionOfTarget :: IORef (Direction.Direction)
    , mIN_DISTANCE :: IORef (Int)
    , lastTrackingLayerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , artificialIntelligenceInterface :: IORef (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
    , aiVistor :: IORef (Visitor.Visitor)
    , lastDirection :: IORef (Direction.Direction)
    }

instance JavaNull DiveAndDirectionalTrackingAI where
    javaNull = javaNullRecord "DiveAndDirectionalTrackingAI"

instance JavaEquals DiveAndDirectionalTrackingAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DiveAndDirectionalTrackingAI where
    (==) = jrecordEquals

instance JavaObjectClass DiveAndDirectionalTrackingAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DiveAndDirectionalTrackingAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    mathUtil <- newIORef javaNull
    directionFactory <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    list <- newIORef javaNull
    directionalInterface <- newIORef javaNull
    velocityInterface <- newIORef javaNull
    directionToKeyMap <- newIORef javaNull
    initialDropped <- newIORef False
    diveP <- newIORef False
    directionOfTarget <- newIORef javaNull
    mIN_DISTANCE <- newIORef 0
    lastTrackingLayerInterface <- newIORef javaNull
    artificialIntelligenceInterface <- newIORef javaNull
    aiVistor <- newIORef javaNull
    lastDirection <- newIORef javaNull
    let this = DiveAndDirectionalTrackingAI header_ base mathUtil directionFactory gameTickTimeDelayHelper timeDelayHelper list directionalInterface velocityInterface directionToKeyMap initialDropped diveP directionOfTarget mIN_DISTANCE lastTrackingLayerInterface artificialIntelligenceInterface aiVistor lastDirection
    jregisterLevel header_ this
    TrackingEventListenerInterface.registerInterface_ header_
    DestroyedEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "target" (\() -> target_impl this)
    jregisterMethod header_ "verticalTargeting" (\() -> verticalTargeting_impl this)
    jregisterMethod header_ "horizontalTargeting" (\() -> horizontalTargeting_impl this)
    jregisterMethod header_ "setDive" (\() -> setDive_impl this)
    jregisterMethod header_ "moveRight" (\() -> moveRight_impl this)
    jregisterMethod header_ "moveLeft" (\() -> moveLeft_impl this)
    jregisterMethod header_ "moveDown" (\() -> moveDown_impl this)
    jregisterMethod header_ "moveUp" (\() -> moveUp_impl this)
    jregisterMethod header_ "dive" (\() -> dive_impl this)
    jregisterMethod header_ "attack" (\() -> attack_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "isBeyondTarget" (\() -> isBeyondTarget_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onMovement" (\() -> onMovement_impl this)
    jregisterMethod header_ "onDestroyed" (\() -> onDestroyed_impl this)
    jregisterMethod header_ "setLastDirection" (\() -> setLastDirection_impl this)
    jregisterMethod header_ "setLastKey" (\() -> setLastKey_impl this)
    jregisterMethod header_ "getLastDirection" (\() -> getLastDirection_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: DiveAndDirectionalTrackingAI -> IO ()
initFields_ this = do
    jset this.mathUtil =<< (MathUtil.getInstance)
    jset this.directionFactory =<< (DirectionFactory.getInstance)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 500)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.directionalInterface (javaNull)
    jset this.velocityInterface (javaNull)
    jset this.directionToKeyMap ((jarrayFromList [Canvas.lEFT, Canvas.dOWN, Canvas.uP, Canvas.rIGHT]))
    jset this.initialDropped (False)
    jset this.diveP (False)
    jset this.directionOfTarget =<< (Direction.getInstance 0)
    jset this.mIN_DISTANCE (40)
    jset this.lastTrackingLayerInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    jset this.artificialIntelligenceInterface (javaNull)
    jset this.aiVistor (javaNull)
    jset this.lastDirection ((jget ((jio (DirectionFactory.getInstance))).nO_DIRECTION))
    pure ()

new_4 :: AllBinaryLayer.AllBinaryLayer -> ArtificialIntelligenceInterface.ArtificialIntelligenceInterface -> GameInput.GameInput -> Visitor.Visitor -> IO DiveAndDirectionalTrackingAI
new_4 ownerLayerInterface artificialIntelligenceInterface gameInput visitor = do
    this <- newRecord_
    init_4 this ownerLayerInterface artificialIntelligenceInterface gameInput visitor
    pure this

init_4 :: DiveAndDirectionalTrackingAI -> AllBinaryLayer.AllBinaryLayer -> ArtificialIntelligenceInterface.ArtificialIntelligenceInterface -> GameInput.GameInput -> Visitor.Visitor -> IO ()
init_4 this ownerLayerInterface artificialIntelligenceInterface gameInput visitor = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).aiVistor (visitor)
        jset (this).artificialIntelligenceInterface (artificialIntelligenceInterface)
        let directionalCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: DirectionalCompositeInterface.DirectionalCompositeInterface)
        assignedValue <- (DirectionalCompositeInterface.getDirectionalInterface directionalCompositeInterface)
        jset (this).directionalInterface (assignedValue)
        let velocityInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: VelocityInterfaceCompositeInterface.VelocityInterfaceCompositeInterface)
        assignedValue <- (VelocityInterfaceCompositeInterface.getVelocityProperties velocityInterfaceCompositeInterface)
        jset (this).velocityInterface (assignedValue)
        Control.Monad.void (DestroyedEventHandler.addListenerInterface ((jio (DestroyedEventHandler.getInstance))) (javaCast this))
        Control.Monad.void (DiveAndDirectionalTrackingAI.init this)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

processAI_impl :: DiveAndDirectionalTrackingAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        when (jio (DiveAndDirectionalTrackingAI.isBeyondTarget this)) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.init this)
            Control.Monad.void (BasicVelocityProperties.zero ((jget (this).velocityInterface)))
        if (Prelude.not (jget (this).diveP)) then do
            Control.Monad.void (DiveAndDirectionalTrackingAI.target this allBinaryLayerManager)
        else do
            Control.Monad.void (DiveAndDirectionalTrackingAI.dive this)
            Control.Monad.void (DiveAndDirectionalTrackingAI.attack this)
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

init_impl :: DiveAndDirectionalTrackingAI -> IO (())
init_impl this = do
        jset (this).diveP (False)
        jset (this).directionOfTarget ((jget ((jio (DirectionFactory.getInstance))).nOT_BORDERED_WITH))
        Control.Monad.void (TrackingEventHandler.addListenerInterface ((jio (TrackingEventHandler.getInstance))) (javaCast this))
        pure ()


-- throws Exception
target :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
target object_ a1 = jmethod object_ "target" (\() -> (target_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

target_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
target_super object_ a1 = (target_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

target_impl :: DiveAndDirectionalTrackingAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
target_impl this allBinaryLayerManager = do
    javaCatchReturn $ do
        when ((jio (BasicArrayList.size ((jget (this).list)))) == 0) $ do
            javaReturn (())
        let lastTrackingEvent = (javaCast (jio (BasicArrayList.removeAt ((jget (this).list)) 0)) :: TrackingEvent.TrackingEvent)
        assignedValue <- (TrackingEvent.getLayerInterface lastTrackingEvent)
        jset (this).lastTrackingLayerInterface (assignedValue)
        let layerInterface = (jget (this).lastTrackingLayerInterface)
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        when ((jio (AllBinaryLayer.getGroupInterface layerInterface)) == (jio (AllBinaryLayer.getGroupInterface ownerLayerInterface))) $ do
            javaReturn (())
        x <- (AllBinaryLayer.getXP ((jget (this).lastTrackingLayerInterface)))
        y <- (AllBinaryLayer.getYP ((jget (this).lastTrackingLayerInterface)))
        let yDistance = (((jio (AllBinaryLayer.getYP ownerLayerInterface)) - y) - (jio (AllBinaryLayer.getHeight ownerLayerInterface)))
        let xDistance = (((jio (AllBinaryLayer.getXP ownerLayerInterface)) - x) - (jio (AllBinaryLayer.getWidth ownerLayerInterface)))
        directionFactory <- (DirectionFactory.getInstance)
        if ((jio (MathUtil.abs ((jget (this).mathUtil)) yDistance)) > (jio (MathUtil.abs ((jget (this).mathUtil)) xDistance))) then do
            if (yDistance > (jget (this).mIN_DISTANCE)) then do
                jset (this).directionOfTarget ((jget (directionFactory).uP))
            else when (yDistance < (Prelude.negate (jget (this).mIN_DISTANCE))) $ do
                jset (this).directionOfTarget ((jget (directionFactory).dOWN))
        else do
            if (xDistance > (jget (this).mIN_DISTANCE)) then do
                jset (this).directionOfTarget ((jget (directionFactory).lEFT))
            else when (xDistance < (Prelude.negate (jget (this).mIN_DISTANCE))) $ do
                jset (this).directionOfTarget ((jget (directionFactory).rIGHT))
        when ((Prelude.not (jget (this).initialDropped)) && ((jget (this).directionOfTarget) /= (jget (directionFactory).nOT_BORDERED_WITH))) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.drop this)
        when (jget (this).initialDropped) $ do
            if (((jget (this).directionOfTarget) == (jget (directionFactory).uP)) || ((jget (this).directionOfTarget) == (jget (directionFactory).dOWN))) then do
                Control.Monad.void (DiveAndDirectionalTrackingAI.verticalTargeting this x)
            else if (((jget (this).directionOfTarget) == (jget (directionFactory).lEFT)) || ((jget (this).directionOfTarget) == (jget (directionFactory).rIGHT))) then do
                Control.Monad.void (DiveAndDirectionalTrackingAI.horizontalTargeting this y)
            else do
                Control.Monad.void (ArtificialIntelligenceInterface.processAI ((jget (this).artificialIntelligenceInterface)) allBinaryLayerManager)
    pure ()


-- throws Exception
verticalTargeting :: (JavaObjectClass this_) => this_ -> Int -> IO (())
verticalTargeting object_ a1 = jmethod object_ "verticalTargeting" (\() -> (verticalTargeting_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

verticalTargeting_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
verticalTargeting_super object_ a1 = (verticalTargeting_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

verticalTargeting_impl :: DiveAndDirectionalTrackingAI -> Int -> IO (())
verticalTargeting_impl this x = do
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        when ((jio (AllBinaryLayer.getXP ownerLayerInterface)) < x) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.moveRight this)
        when ((jio (AllBinaryLayer.getXP ownerLayerInterface)) > x) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.moveLeft this)
        when (((jio (AllBinaryLayer.getXP ownerLayerInterface)) > (x - 3)) && ((jio (AllBinaryLayer.getXP ownerLayerInterface)) < (x + 3))) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.setDive this)
        pure ()


-- throws Exception
horizontalTargeting :: (JavaObjectClass this_) => this_ -> Int -> IO (())
horizontalTargeting object_ a1 = jmethod object_ "horizontalTargeting" (\() -> (horizontalTargeting_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

horizontalTargeting_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
horizontalTargeting_super object_ a1 = (horizontalTargeting_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

horizontalTargeting_impl :: DiveAndDirectionalTrackingAI -> Int -> IO (())
horizontalTargeting_impl this y = do
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        when ((jio (AllBinaryLayer.getYP ownerLayerInterface)) < y) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.moveDown this)
        when ((jio (AllBinaryLayer.getYP ownerLayerInterface)) > y) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.moveUp this)
        when (((jio (AllBinaryLayer.getYP ownerLayerInterface)) > (y - 3)) && ((jio (AllBinaryLayer.getYP ownerLayerInterface)) < (y + 3))) $ do
            Control.Monad.void (DiveAndDirectionalTrackingAI.setDive this)
        pure ()


setDive :: (JavaObjectClass this_) => this_ -> IO (())
setDive object_ = jmethod object_ "setDive" (\() -> (setDive_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

setDive_super :: (JavaObjectClass this_) => this_ -> IO (())
setDive_super object_ = (setDive_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

setDive_impl :: DiveAndDirectionalTrackingAI -> IO (())
setDive_impl this = do
        jset (this).diveP (True)
        Control.Monad.void (BasicVelocityProperties.zero ((jget (this).velocityInterface)))
        Control.Monad.void (TrackingEventHandler.removeListener ((jio (TrackingEventHandler.getInstance))) (javaCast this))
        pure ()


-- throws Exception
moveRight :: (JavaObjectClass this_) => this_ -> IO (())
moveRight object_ = jmethod object_ "moveRight" (\() -> (moveRight_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

moveRight_super :: (JavaObjectClass this_) => this_ -> IO (())
moveRight_super object_ = (moveRight_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

moveRight_impl :: DiveAndDirectionalTrackingAI -> IO (())
moveRight_impl this = do
        Control.Monad.void (DiveAndDirectionalTrackingAI.setLastDirection this (jget ((jget (this).directionFactory)).rIGHT))
        Control.Monad.void (DirectionalInterface.setFrameByDirection ((jget (this).directionalInterface)) (jget (this).lastDirection))
        Control.Monad.void (Visitor.visit ((jget (this).aiVistor)) this)
        pure ()


-- throws Exception
moveLeft :: (JavaObjectClass this_) => this_ -> IO (())
moveLeft object_ = jmethod object_ "moveLeft" (\() -> (moveLeft_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

moveLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
moveLeft_super object_ = (moveLeft_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

moveLeft_impl :: DiveAndDirectionalTrackingAI -> IO (())
moveLeft_impl this = do
        Control.Monad.void (DiveAndDirectionalTrackingAI.setLastDirection this (jget ((jget (this).directionFactory)).lEFT))
        Control.Monad.void (DirectionalInterface.setFrameByDirection ((jget (this).directionalInterface)) (jget (this).lastDirection))
        Control.Monad.void (Visitor.visit ((jget (this).aiVistor)) this)
        pure ()


-- throws Exception
moveDown :: (JavaObjectClass this_) => this_ -> IO (())
moveDown object_ = jmethod object_ "moveDown" (\() -> (moveDown_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

moveDown_super :: (JavaObjectClass this_) => this_ -> IO (())
moveDown_super object_ = (moveDown_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

moveDown_impl :: DiveAndDirectionalTrackingAI -> IO (())
moveDown_impl this = do
        Control.Monad.void (DiveAndDirectionalTrackingAI.setLastDirection this (jget ((jget (this).directionFactory)).dOWN))
        Control.Monad.void (DirectionalInterface.setFrameByDirection ((jget (this).directionalInterface)) (jget (this).lastDirection))
        Control.Monad.void (Visitor.visit ((jget (this).aiVistor)) this)
        pure ()


-- throws Exception
moveUp :: (JavaObjectClass this_) => this_ -> IO (())
moveUp object_ = jmethod object_ "moveUp" (\() -> (moveUp_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

moveUp_super :: (JavaObjectClass this_) => this_ -> IO (())
moveUp_super object_ = (moveUp_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

moveUp_impl :: DiveAndDirectionalTrackingAI -> IO (())
moveUp_impl this = do
        Control.Monad.void (DiveAndDirectionalTrackingAI.setLastDirection this (jget ((jget (this).directionFactory)).uP))
        Control.Monad.void (DirectionalInterface.setFrameByDirection ((jget (this).directionalInterface)) (jget (this).lastDirection))
        Control.Monad.void (Visitor.visit ((jget (this).aiVistor)) this)
        pure ()


-- throws Exception
dive :: (JavaObjectClass this_) => this_ -> IO (())
dive object_ = jmethod object_ "dive" (\() -> (dive_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

dive_super :: (JavaObjectClass this_) => this_ -> IO (())
dive_super object_ = (dive_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

dive_impl :: DiveAndDirectionalTrackingAI -> IO (())
dive_impl this = do
        Control.Monad.void (DirectionalInterface.setFrameByDirection ((jget (this).directionalInterface)) (jget (this).directionOfTarget))
        Control.Monad.void (Visitor.visit ((jget (this).aiVistor)) this)
        pure ()


-- throws Exception
attack :: (JavaObjectClass this_) => this_ -> IO (())
attack object_ = jmethod object_ "attack" (\() -> (attack_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

attack_super :: (JavaObjectClass this_) => this_ -> IO (())
attack_super object_ = (attack_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

attack_impl :: DiveAndDirectionalTrackingAI -> IO (())
attack_impl this = do
        Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
        pure ()


-- throws Exception
drop :: (JavaObjectClass this_) => this_ -> IO (())
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (())
drop_super object_ = (drop_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

drop_impl :: DiveAndDirectionalTrackingAI -> IO (())
drop_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            jset (this).initialDropped (True)
            Control.Monad.void (Visitor.visit ((jget (this).aiVistor)) this)
        pure ()


isBeyondTarget :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBeyondTarget object_ = jmethod object_ "isBeyondTarget" (\() -> (isBeyondTarget_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

isBeyondTarget_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBeyondTarget_super object_ = (isBeyondTarget_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

isBeyondTarget_impl :: DiveAndDirectionalTrackingAI -> IO (Bool)
isBeyondTarget_impl this = do
    javaCatchReturn $ do
        if ((jget (this).directionOfTarget) == (jget ((jget (this).directionFactory)).dOWN)) then do
            if ((jio (AllBinaryLayer.getYP ((jio (BasicAI.getOwnerLayerInterface this))))) > ((jio (AllBinaryLayer.getYP ((jget (this).lastTrackingLayerInterface)))) + (jget (this).mIN_DISTANCE))) then do
                javaReturn (True)
            else do
                javaReturn (False)
        else if ((jget (this).directionOfTarget) == (jget ((jget (this).directionFactory)).uP)) then do
            if ((jio (AllBinaryLayer.getYP ((jio (BasicAI.getOwnerLayerInterface this))))) < ((jio (AllBinaryLayer.getYP ((jget (this).lastTrackingLayerInterface)))) + (jget (this).mIN_DISTANCE))) then do
                javaReturn (True)
            else do
                javaReturn (False)
        else if ((jget (this).directionOfTarget) == (jget ((jget (this).directionFactory)).rIGHT)) then do
            if ((jio (AllBinaryLayer.getXP ((jio (BasicAI.getOwnerLayerInterface this))))) > ((jio (AllBinaryLayer.getXP ((jget (this).lastTrackingLayerInterface)))) + (jget (this).mIN_DISTANCE))) then do
                javaReturn (True)
            else do
                javaReturn (False)
        else if ((jget (this).directionOfTarget) == (jget ((jget (this).directionFactory)).lEFT)) then do
            if ((jio (AllBinaryLayer.getXP ((jio (BasicAI.getOwnerLayerInterface this))))) < ((jio (AllBinaryLayer.getXP ((jget (this).lastTrackingLayerInterface)))) + (jget (this).mIN_DISTANCE))) then do
                javaReturn (True)
            else do
                javaReturn (False)
        else do
            javaReturn (False)


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

onEvent_impl :: DiveAndDirectionalTrackingAI -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onMovement :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement object_ a1 = jmethod object_ "onMovement" (\() -> (onMovement_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

onMovement_super :: (JavaObjectClass this_) => this_ -> TrackingEvent.TrackingEvent -> IO (())
onMovement_super object_ a1 = (onMovement_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

onMovement_impl :: DiveAndDirectionalTrackingAI -> TrackingEvent.TrackingEvent -> IO (())
onMovement_impl this trackingEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) trackingEvent)
        pure ()


onDestroyed :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed object_ a1 = jmethod object_ "onDestroyed" (\() -> (onDestroyed_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

onDestroyed_super :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_super object_ a1 = (onDestroyed_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

onDestroyed_impl :: DiveAndDirectionalTrackingAI -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_impl this destroyedEvent = do
        when ((jio (BasicAI.getOwnerLayerInterface this)) == (jio (DestroyedEvent.getLayerInterface destroyedEvent))) $ do
            Control.Monad.void (TrackingEventHandler.removeListener ((jio (TrackingEventHandler.getInstance))) (javaCast this))
            Control.Monad.void (DestroyedEventHandler.removeListener ((jio (DestroyedEventHandler.getInstance))) (javaCast this))
        pure ()


setLastDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setLastDirection object_ a1 = jmethod object_ "setLastDirection" (\() -> (setLastDirection_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

setLastDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setLastDirection_super object_ a1 = (setLastDirection_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

setLastDirection_impl :: DiveAndDirectionalTrackingAI -> Direction.Direction -> IO (())
setLastDirection_impl this lastDirection = do
        jset (this).lastDirection (lastDirection)
        value <- (Direction.getValue ((jio (DiveAndDirectionalTrackingAI.getLastDirection this))))
        when (value < 4) $ do
            Control.Monad.void (BasicAI.setLastKey_super this.base (jindex ((jget (this).directionToKeyMap)) (value)))
        pure ()


setLastKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLastKey object_ a1 = jmethod object_ "setLastKey" (\() -> (setLastKey_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) () a1

setLastKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLastKey_super object_ a1 = (setLastKey_impl (javaCast object_ :: DiveAndDirectionalTrackingAI)) a1

setLastKey_impl :: DiveAndDirectionalTrackingAI -> Int -> IO (())
setLastKey_impl this lastKey = do
        Control.Monad.void (BasicAI.setLastKey_super this.base lastKey)
        if ((jio (BasicAI.getLastKey this)) == Canvas.lEFT) then do
            jset (this).lastDirection ((jget ((jio (DirectionFactory.getInstance))).lEFT))
        else if ((jio (BasicAI.getLastKey this)) == Canvas.dOWN) then do
            jset (this).lastDirection ((jget ((jio (DirectionFactory.getInstance))).dOWN))
        else if ((jio (BasicAI.getLastKey this)) == Canvas.uP) then do
            jset (this).lastDirection ((jget ((jio (DirectionFactory.getInstance))).uP))
        else when ((jio (BasicAI.getLastKey this)) == Canvas.rIGHT) $ do
            jset (this).lastDirection ((jget ((jio (DirectionFactory.getInstance))).rIGHT))
        pure ()


getLastDirection :: (JavaObjectClass this_) => this_ -> IO (Direction.Direction)
getLastDirection object_ = jmethod object_ "getLastDirection" (\() -> (getLastDirection_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

getLastDirection_super :: (JavaObjectClass this_) => this_ -> IO (Direction.Direction)
getLastDirection_super object_ = (getLastDirection_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

getLastDirection_impl :: DiveAndDirectionalTrackingAI -> IO (Direction.Direction)
getLastDirection_impl this = do
        pure ((jget (this).lastDirection))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: DiveAndDirectionalTrackingAI))

toString_impl :: DiveAndDirectionalTrackingAI -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicAI.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer " LastDirection: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (DiveAndDirectionalTrackingAI.getLastDirection this)))))
        (StringMaker.toString stringBuffer)


