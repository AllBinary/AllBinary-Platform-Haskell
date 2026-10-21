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
module LurchRotationAI (module LurchRotationAI, module LurchAI) where

import LurchAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, reverse, reverse_super, reverse_impl, update, update_super, update_impl, rotationAnimationInterface)
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
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified RotationAnimationInterface -- org.allbinary.animation.RotationAnimationInterface
import qualified RotationAnimationInterfaceCompositeInterface -- org.allbinary.animation.RotationAnimationInterfaceCompositeInterface
import qualified LurchAI -- org.allbinary.game.ag.ai.tactical.LurchAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AngleIncrementInfo -- org.allbinary.math.AngleIncrementInfo

data LurchRotationAI = LurchRotationAI
    { header_ :: JavaHeader
    , base :: LurchAI.LurchAI
    , rotationAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    }

instance JavaNull LurchRotationAI where
    javaNull = javaNullRecord "LurchRotationAI"

instance JavaEquals LurchRotationAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LurchRotationAI where
    (==) = jrecordEquals

instance JavaObjectClass LurchRotationAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LurchRotationAI
newRecord_ = do
    base <- LurchAI.newRecord_
    let header_ = base.header_
    rotationAnimationInterface <- newIORef javaNull
    let this = LurchRotationAI header_ base rotationAnimationInterface
    jregisterLevel header_ this
    jregisterMethod header_ "reverse" (\() -> reverse_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: LurchRotationAI -> IO ()
initFields_ this = do
    jset this.rotationAnimationInterface (javaNull)
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO LurchRotationAI
new_2 ownerLayerInterface gameInput = do
    this <- newRecord_
    init_2 this ownerLayerInterface gameInput
    pure this

init_2 :: LurchRotationAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_2 this ownerLayerInterface gameInput = do
        LurchAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (LurchAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
        assignedValue <- (RotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface rotationAnimationInterfaceCompositeInterface)
        jset (this).rotationAnimationInterface (assignedValue)
        Control.Monad.void (LurchRotationAI.update this)
        pure ()


reverse :: (JavaObjectClass this_) => this_ -> IO (())
reverse object_ = jmethod object_ "reverse" (\() -> (reverse_impl (javaCast object_ :: LurchRotationAI))) ()

reverse_super :: (JavaObjectClass this_) => this_ -> IO (())
reverse_super object_ = (reverse_impl (javaCast object_ :: LurchRotationAI))

reverse_impl :: LurchRotationAI -> IO (())
reverse_impl this = do
        Control.Monad.void (LurchAI.reverse_super this.base)
        Control.Monad.void (LurchRotationAI.update this)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: LurchRotationAI))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: LurchRotationAI))

update_impl :: LurchRotationAI -> IO (())
update_impl this = do
        if ((jget (this).base.currentRelativeAngle) == 0) then do
            let rotationAnimationInterface = (javaCast (jget (this).rotationAnimationInterface) :: RotationAnimationInterface.RotationAnimationInterface)
            angleIncrementInfo <- (RotationAnimationInterface.getAngleIncrementInfo ((jio (RotationAnimationInterface.getAngleInfoP rotationAnimationInterface))))
            let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (LurchAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
            Control.Monad.void (RotationAnimationInterfaceCompositeInterface.setFrame rotationAnimationInterfaceCompositeInterface (jget (angleIncrementInfo).rIGHT_FRAME))
        else when ((jget (this).base.currentRelativeAngle) == 180) $ do
            let rotationAnimationInterface = (javaCast (jget (this).rotationAnimationInterface) :: RotationAnimationInterface.RotationAnimationInterface)
            angleIncrementInfo <- (RotationAnimationInterface.getAngleIncrementInfo ((jio (RotationAnimationInterface.getAngleInfoP rotationAnimationInterface))))
            let rotationAnimationInterfaceCompositeInterface = (javaCast (jio (LurchAI.getOwnerLayerInterface this)) :: RotationAnimationInterfaceCompositeInterface.RotationAnimationInterfaceCompositeInterface)
            Control.Monad.void (RotationAnimationInterfaceCompositeInterface.setFrame rotationAnimationInterfaceCompositeInterface (jget (angleIncrementInfo).lEFT_FRAME))
        pure ()


