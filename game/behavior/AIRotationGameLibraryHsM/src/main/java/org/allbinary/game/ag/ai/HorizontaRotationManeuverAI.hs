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
module HorizontaRotationManeuverAI (module HorizontaRotationManeuverAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, transition, transition_super, transition_impl, processAI, processAI_super, processAI_impl, reverse, reverse_super, reverse_impl, accelerate, accelerate_super, accelerate_impl, drop, drop_super, drop_impl, getId, getId_super, getId_impl, circularIndexUtil, currentSpeedDivisor, rotationAnimationInterface, baseVelocityInterface, velocityInterface)
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
import qualified ArtificialIntelligence -- org.allbinary.ai.ArtificialIntelligence
import qualified ArtificialIntelligenceTransitionInterface -- org.allbinary.ai.ArtificialIntelligenceTransitionInterface
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified RotationAnimationInterface -- org.allbinary.animation.RotationAnimationInterface
import qualified RotationAnimationInterfaceCompositeInterface -- org.allbinary.animation.RotationAnimationInterfaceCompositeInterface
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties
import qualified VelocityInterface -- org.allbinary.game.physics.velocity.VelocityInterface
import qualified VelocityInterfaceCompositeInterface -- org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified AngleIncrementInfo -- org.allbinary.math.AngleIncrementInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

-- implements ArtificialIntelligenceTransitionInterface
data HorizontaRotationManeuverAI = HorizontaRotationManeuverAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , currentSpeedDivisor :: IORef (Int)
    , rotationAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , baseVelocityInterface :: IORef (BasicVelocityProperties.BasicVelocityProperties)
    , velocityInterface :: IORef (VelocityInterface.VelocityInterface)
    }

instance JavaNull HorizontaRotationManeuverAI where
    javaNull = javaNullRecord "HorizontaRotationManeuverAI"

instance JavaEquals HorizontaRotationManeuverAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HorizontaRotationManeuverAI where
    (==) = jrecordEquals

instance JavaObjectClass HorizontaRotationManeuverAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HorizontaRotationManeuverAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    circularIndexUtil <- newIORef javaNull
    currentSpeedDivisor <- newIORef 0
    rotationAnimationInterface <- newIORef javaNull
    baseVelocityInterface <- newIORef javaNull
    velocityInterface <- newIORef javaNull
    let this = HorizontaRotationManeuverAI header_ base circularIndexUtil currentSpeedDivisor rotationAnimationInterface baseVelocityInterface velocityInterface
    jregisterLevel header_ this
    ArtificialIntelligenceTransitionInterface.registerInterface_ header_
    jregisterMethod header_ "transition" (\() -> transition_impl this)
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "reverse" (\() -> reverse_impl this)
    jregisterMethod header_ "accelerate" (\() -> accelerate_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: HorizontaRotationManeuverAI -> IO ()
initFields_ this = do
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstanceAt 10 (2147483647 :: Int))
    jset this.currentSpeedDivisor (5)
    jset this.rotationAnimationInterface (javaNull)
    jset this.baseVelocityInterface (javaNull)
    jset this.velocityInterface (javaNull)
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO HorizontaRotationManeuverAI
new_2 ownerLayerInterface gameInput = do
    this <- newRecord_
    init_2 this ownerLayerInterface gameInput
    pure this

init_2 :: HorizontaRotationManeuverAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_2 this ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
        assignedValue <- (RotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface rotationAnimationInterfaceCompositeInterface)
        jset (this).rotationAnimationInterface (assignedValue)
        let velocityInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: VelocityInterfaceCompositeInterface.VelocityInterfaceCompositeInterface)
        assignedValue <- (VelocityInterfaceCompositeInterface.getVelocityProperties velocityInterfaceCompositeInterface)
        jset (this).baseVelocityInterface (assignedValue)
        jset (this).velocityInterface ((javaCast (jget (this).baseVelocityInterface) :: VelocityInterface.VelocityInterface))
        let rotationAnimationInterface = (javaCast (jget (this).rotationAnimationInterface) :: RotationAnimationInterface.RotationAnimationInterface)
        angleIncrementInfo <- (RotationAnimationInterface.getAngleIncrementInfo ((jio (RotationAnimationInterface.getAngleInfoP rotationAnimationInterface))))
        Control.Monad.void (RotationAnimationInterfaceCompositeInterface.setFrame rotationAnimationInterfaceCompositeInterface (jget (angleIncrementInfo).rIGHT_FRAME))
        pure ()


transition :: (JavaObjectClass this_) => this_ -> IO (())
transition object_ = jmethod object_ "transition" (\() -> (transition_impl (javaCast object_ :: HorizontaRotationManeuverAI))) ()

transition_super :: (JavaObjectClass this_) => this_ -> IO (())
transition_super object_ = (transition_impl (javaCast object_ :: HorizontaRotationManeuverAI))

transition_impl :: HorizontaRotationManeuverAI -> IO (())
transition_impl this = do
        let rotationAnimationInterface = (javaCast (jget (this).rotationAnimationInterface) :: RotationAnimationInterface.RotationAnimationInterface)
        angleIncrementInfo <- (RotationAnimationInterface.getAngleIncrementInfo ((jio (RotationAnimationInterface.getAngleInfoP rotationAnimationInterface))))
        let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
        Control.Monad.void (RotationAnimationInterfaceCompositeInterface.setFrame rotationAnimationInterfaceCompositeInterface (jget (angleIncrementInfo).rIGHT_FRAME))
        allbinaryLayer <- (BasicAI.getOwnerLayerInterface this)
        Control.Monad.void (AllBinaryLayer.setPosition allbinaryLayer (jio (AllBinaryLayer.getXP allbinaryLayer)) 1 (jio (AllBinaryLayer.getZP allbinaryLayer)))
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: HorizontaRotationManeuverAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: HorizontaRotationManeuverAI)) a1

processAI_impl :: HorizontaRotationManeuverAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        let rotationAnimationInterface = ((javaCast (jget (this).rotationAnimationInterface) :: RotationAnimationInterface.RotationAnimationInterface))
        angleIncrementInfo <- (RotationAnimationInterface.getAngleIncrementInfo ((jio (RotationAnimationInterface.getAngleInfoP rotationAnimationInterface))))
        frame <- (RotationAnimationInterface.getFrame ((jget (this).rotationAnimationInterface)))
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        when ((((jio (AllBinaryLayer.getXP ownerLayerInterface)) - (jio (AllBinaryLayer.getWidth ownerLayerInterface))) <= 0) && (frame == (jget (angleIncrementInfo).lEFT_FRAME))) $ do
            Control.Monad.void (HorizontaRotationManeuverAI.reverse this)
            Control.Monad.void (HorizontaRotationManeuverAI.drop this)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        when ((((jio (AllBinaryLayer.getX2 ownerLayerInterface)) + (jio (AllBinaryLayer.getWidth ownerLayerInterface))) > (jio (DisplayInfoSingleton.getLastWidth displayInfo))) && (frame == (jget (angleIncrementInfo).rIGHT_FRAME))) $ do
            Control.Monad.void (HorizontaRotationManeuverAI.reverse this)
            Control.Monad.void (HorizontaRotationManeuverAI.accelerate this)
            Control.Monad.void (HorizontaRotationManeuverAI.drop this)
        index <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        when (((index `rem` (jget (this).currentSpeedDivisor)) == 0) && ((index `rem` 2) == 0)) $ do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.uP))
            Control.Monad.void (VelocityInterface.limitMaxXYVelocity ((jget (this).velocityInterface)) ((jio (VelocityInterface.getMaxForwardVelocity ((jget (this).velocityInterface)))) / (jget (this).currentSpeedDivisor)))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        if (frame == (jget (angleIncrementInfo).lEFT_FRAME)) then do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_NUM0))
        else when (frame == (jget (angleIncrementInfo).rIGHT_FRAME)) $ do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_POUND))
        pure ()


reverse :: (JavaObjectClass this_) => this_ -> IO (())
reverse object_ = jmethod object_ "reverse" (\() -> (reverse_impl (javaCast object_ :: HorizontaRotationManeuverAI))) ()

reverse_super :: (JavaObjectClass this_) => this_ -> IO (())
reverse_super object_ = (reverse_impl (javaCast object_ :: HorizontaRotationManeuverAI))

reverse_impl :: HorizontaRotationManeuverAI -> IO (())
reverse_impl this = do
        let rotationAnimationInterface = (javaCast (jget (this).rotationAnimationInterface) :: RotationAnimationInterface.RotationAnimationInterface)
        angleIncrementInfo <- (RotationAnimationInterface.getAngleIncrementInfo ((jio (RotationAnimationInterface.getAngleInfoP rotationAnimationInterface))))
        frame <- (RotationAnimationInterface.getFrame ((jget (this).rotationAnimationInterface)))
        if (frame == (jget (angleIncrementInfo).lEFT_FRAME)) then do
            let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
            Control.Monad.void (RotationAnimationInterfaceCompositeInterface.setFrame rotationAnimationInterfaceCompositeInterface (jget (angleIncrementInfo).rIGHT_FRAME))
            Control.Monad.void (BasicVelocityProperties.zero ((jget (this).baseVelocityInterface)))
        else when (frame == (jget (angleIncrementInfo).rIGHT_FRAME)) $ do
            let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
            Control.Monad.void (RotationAnimationInterfaceCompositeInterface.setFrame rotationAnimationInterfaceCompositeInterface (jget (angleIncrementInfo).lEFT_FRAME))
            Control.Monad.void (BasicVelocityProperties.zero ((jget (this).baseVelocityInterface)))
        pure ()


accelerate :: (JavaObjectClass this_) => this_ -> IO (())
accelerate object_ = jmethod object_ "accelerate" (\() -> (accelerate_impl (javaCast object_ :: HorizontaRotationManeuverAI))) ()

accelerate_super :: (JavaObjectClass this_) => this_ -> IO (())
accelerate_super object_ = (accelerate_impl (javaCast object_ :: HorizontaRotationManeuverAI))

accelerate_impl :: HorizontaRotationManeuverAI -> IO (())
accelerate_impl this = do
        when ((jget (this).currentSpeedDivisor) > 1) $ do
            jset (this).currentSpeedDivisor ((jget (this).currentSpeedDivisor) - 1)
        pure ()


drop :: (JavaObjectClass this_) => this_ -> IO (())
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: HorizontaRotationManeuverAI))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (())
drop_super object_ = (drop_impl (javaCast object_ :: HorizontaRotationManeuverAI))

drop_impl :: HorizontaRotationManeuverAI -> IO (())
drop_impl this = do
        displayInfo <- (DisplayInfoSingleton.getInstance)
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        y <- newIORef =<< (AllBinaryLayer.getYP ownerLayerInterface)
        if (((jio (AllBinaryLayer.getY2 ownerLayerInterface)) + (jio (AllBinaryLayer.getHeight ownerLayerInterface))) > (jio (DisplayInfoSingleton.getLastHeight displayInfo))) then do
            jset y (0)
        else do
            jset y (((jget y) + ((jio (AllBinaryLayer.getHeight ownerLayerInterface)) + 1)))
        Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface (jio (AllBinaryLayer.getXP ownerLayerInterface)) (jget y) (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: HorizontaRotationManeuverAI))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: HorizontaRotationManeuverAI))

getId_impl :: HorizontaRotationManeuverAI -> IO (Int)
getId_impl this = do
        pure (ArtificialIntelligence.aI_ID)


