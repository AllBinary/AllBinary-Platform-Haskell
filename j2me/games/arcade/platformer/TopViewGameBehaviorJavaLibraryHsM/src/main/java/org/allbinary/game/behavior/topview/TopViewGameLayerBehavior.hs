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
-- package org.allbinary.game.behavior.topview
module TopViewGameLayerBehavior (module TopViewGameLayerBehavior, module GameLayerBehavior) where

import GameLayerBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, gravity, gravity_super, gravity_impl, land, land_super, land_impl, landReset, landReset_super, landReset_impl, up, up_super, up_impl, inputFrames, inputFrames_super, inputFrames_impl, maxGravityActionIndex, isJumpAction, isJumpOver, isFallingWithoutJumpAttempt, gravityActionIndex)
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
import qualified InitialJumpBehavior -- same package or java.lang
import qualified GameLayerBehavior -- org.allbinary.game.layer.behavior.GameLayerBehavior
import qualified BasicAccelerationProperties -- org.allbinary.game.physics.acceleration.BasicAccelerationProperties
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties

data TopViewGameLayerBehavior = TopViewGameLayerBehavior
    { header_ :: JavaHeader
    , base :: GameLayerBehavior.GameLayerBehavior
    , maxGravityActionIndex :: IORef (Int)
    , isJumpAction :: IORef (Bool)
    , isJumpOver :: IORef (Bool)
    , isFallingWithoutJumpAttempt :: IORef (Bool)
    , gravityActionIndex :: IORef (Int)
    }

instance JavaNull TopViewGameLayerBehavior where
    javaNull = javaNullRecord "TopViewGameLayerBehavior"

instance JavaEquals TopViewGameLayerBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TopViewGameLayerBehavior where
    (==) = jrecordEquals

instance JavaObjectClass TopViewGameLayerBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TopViewGameLayerBehavior
newRecord_ = do
    base <- GameLayerBehavior.newRecord_
    let header_ = base.header_
    maxGravityActionIndex <- newIORef 0
    isJumpAction <- newIORef False
    isJumpOver <- newIORef False
    isFallingWithoutJumpAttempt <- newIORef False
    gravityActionIndex <- newIORef 0
    let this = TopViewGameLayerBehavior header_ base maxGravityActionIndex isJumpAction isJumpOver isFallingWithoutJumpAttempt gravityActionIndex
    jregisterLevel header_ this
    jregisterMethod header_ "gravity" (\() -> gravity_impl this)
    jregisterMethod header_ "land" (\() -> land_impl this)
    jregisterMethod header_ "landReset" (\() -> landReset_impl this)
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "inputFrames" (\() -> inputFrames_impl this)
    pure this

initFields_ :: TopViewGameLayerBehavior -> IO ()
initFields_ this = do
    jset this.maxGravityActionIndex (0)
    jset this.isJumpAction (True)
    jset this.isJumpOver (False)
    jset this.isFallingWithoutJumpAttempt (False)
    jset this.gravityActionIndex (0)
    pure ()

new_1 :: Int -> IO TopViewGameLayerBehavior
new_1 maxGravityActionIndex = do
    this <- newRecord_
    init_1 this maxGravityActionIndex
    pure this

init_1 :: TopViewGameLayerBehavior -> Int -> IO ()
init_1 this maxGravityActionIndex = do
        GameLayerBehavior.init_ this.base
        initFields_ this
        jset (this).maxGravityActionIndex (maxGravityActionIndex)
        pure ()


gravity :: (JavaObjectClass this_) => this_ -> IO (())
gravity object_ = jmethod object_ "gravity" (\() -> (gravity_impl (javaCast object_ :: TopViewGameLayerBehavior))) ()

gravity_super :: (JavaObjectClass this_) => this_ -> IO (())
gravity_super object_ = (gravity_impl (javaCast object_ :: TopViewGameLayerBehavior))

gravity_impl :: TopViewGameLayerBehavior -> IO (())
gravity_impl this = do
        when ((jget (this).gravityActionIndex) == 0) $ do
            jset (this).gravityActionIndex ((jget (this).gravityActionIndex) + 1)
            jset (this).isFallingWithoutJumpAttempt (True)
        pure ()


land :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> IO (())
land object_ a1 = jmethod object_ "land" (\() -> (land_impl (javaCast object_ :: TopViewGameLayerBehavior))) () a1

land_super :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> IO (())
land_super object_ a1 = (land_impl (javaCast object_ :: TopViewGameLayerBehavior)) a1

land_impl :: TopViewGameLayerBehavior -> VelocityProperties.VelocityProperties -> IO (())
land_impl this velocityProperties = do
        Control.Monad.void (VelocityProperties.setint ((jio (VelocityProperties.getVelocityYBasicDecimalP velocityProperties))) 0)
        Control.Monad.void (TopViewGameLayerBehavior.landReset this)
        pure ()


landReset :: (JavaObjectClass this_) => this_ -> IO (())
landReset object_ = jmethod object_ "landReset" (\() -> (landReset_impl (javaCast object_ :: TopViewGameLayerBehavior))) ()

landReset_super :: (JavaObjectClass this_) => this_ -> IO (())
landReset_super object_ = (landReset_impl (javaCast object_ :: TopViewGameLayerBehavior))

landReset_impl :: TopViewGameLayerBehavior -> IO (())
landReset_impl this = do
        jset (this).gravityActionIndex (0)
        jset (this).isFallingWithoutJumpAttempt (False)
        jset (this).isJumpAction (True)
        jset (this).isJumpOver (False)
        pure ()


up :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> BasicAccelerationProperties.BasicAccelerationProperties -> InitialJumpBehavior.InitialJumpBehavior -> Int -> IO (())
up object_ a1 a2 a3 a4 = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: TopViewGameLayerBehavior))) () a1 a2 a3 a4

up_super :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> BasicAccelerationProperties.BasicAccelerationProperties -> InitialJumpBehavior.InitialJumpBehavior -> Int -> IO (())
up_super object_ a1 a2 a3 a4 = (up_impl (javaCast object_ :: TopViewGameLayerBehavior)) a1 a2 a3 a4

up_impl :: TopViewGameLayerBehavior -> VelocityProperties.VelocityProperties -> BasicAccelerationProperties.BasicAccelerationProperties -> InitialJumpBehavior.InitialJumpBehavior -> Int -> IO (())
up_impl this velocityProperties acceleration jumpBehavior accelerationMultiplier = do
        if (Prelude.not (jget (this).isJumpOver)) then do
            if ((jget (this).gravityActionIndex) < (jget (this).maxGravityActionIndex)) then do
                let acceleration2 = ((Prelude.negate (jio (BasicAccelerationProperties.getForward acceleration))) * accelerationMultiplier)
                Control.Monad.void (VelocityProperties.addint ((jio (VelocityProperties.getVelocityYBasicDecimalP velocityProperties))) acceleration2)
                Control.Monad.void (VelocityProperties.limitXYToForwardAndReverseMaxVelocity velocityProperties)
                jset (this).gravityActionIndex ((jget (this).gravityActionIndex) + 1)
            else do
                pure ()
        else do
            pure ()
        when (jget (this).isJumpAction) $ do
            Control.Monad.void (InitialJumpBehavior.process jumpBehavior)
            jset (this).isJumpAction (False)
        pure ()


inputFrames :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> IO (())
inputFrames object_ a1 = jmethod object_ "inputFrames" (\() -> (inputFrames_impl (javaCast object_ :: TopViewGameLayerBehavior))) () a1

inputFrames_super :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> IO (())
inputFrames_super object_ a1 = (inputFrames_impl (javaCast object_ :: TopViewGameLayerBehavior)) a1

inputFrames_impl :: TopViewGameLayerBehavior -> VelocityProperties.VelocityProperties -> IO (())
inputFrames_impl this velocityProperties = do
        when (((jget (this).gravityActionIndex) > 0) && ((jio (VelocityProperties.getUnscaled ((jio (VelocityProperties.getVelocityYBasicDecimalP velocityProperties))))) > 0)) $ do
            jset (this).isJumpOver (True)
        pure ()


