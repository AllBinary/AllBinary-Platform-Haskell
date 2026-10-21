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
-- package org.allbinary.game.layer.special
module AnalogInputBuilder where

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
import qualified SpecialUpGameInputProcessor -- same package or java.lang
import qualified SpecialDownGameInputProcessor -- same package or java.lang
import qualified SpecialRightGameInputProcessor -- same package or java.lang
import qualified SpecialLeftGameInputProcessor -- same package or java.lang
import qualified Special1GameInputProcessor -- same package or java.lang
import qualified Special3GameInputProcessor -- same package or java.lang
import qualified CollidableDestroyableDamageableLayer -- same package or java.lang
import qualified SpecialAnalogUpGameInputProcessor -- same package or java.lang
import qualified SpecialAnalogDownGameInputProcessor -- same package or java.lang
import qualified SpecialAnalogRightGameInputProcessor -- same package or java.lang
import qualified SpecialAnalogLeftGameInputProcessor -- same package or java.lang
import qualified SpecialAnalogLeftTriggerGameInputProcessor -- same package or java.lang
import qualified SpecialAnalogRightTriggerGameInputProcessor -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified GameInputProcessor -- org.allbinary.game.input.GameInputProcessor

data AnalogInputBuilder = AnalogInputBuilder
    { header_ :: JavaHeader
    }

instance JavaNull AnalogInputBuilder where
    javaNull = javaNullRecord "AnalogInputBuilder"

instance JavaEquals AnalogInputBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogInputBuilder where
    (==) = jrecordEquals

instance JavaObjectClass AnalogInputBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogInputBuilder
newRecord_ = do
    header_ <- newJavaHeader
    let this = AnalogInputBuilder header_
    jregisterLevel header_ this
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    jregisterMethod header_ "enable" (\() -> enable_impl this)
    pure this

initFields_ :: AnalogInputBuilder -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AnalogInputBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnalogInputBuilder -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AnalogInputBuilder)
getInstance = do
        pure (AnalogInputBuilder.instance_)


disable :: (JavaObjectClass this_) => this_ -> JavaArray (GameInputProcessor.GameInputProcessor) -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
disable object_ a1 a2 = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: AnalogInputBuilder))) () a1 a2

disable_super :: (JavaObjectClass this_) => this_ -> JavaArray (GameInputProcessor.GameInputProcessor) -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
disable_super object_ a1 a2 = (disable_impl (javaCast object_ :: AnalogInputBuilder)) a1 a2

disable_impl :: AnalogInputBuilder -> JavaArray (GameInputProcessor.GameInputProcessor) -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
disable_impl this inputProcessorArray collidableDestroyableDamageableLayer = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialUpGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.uP) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialDownGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.dOWN) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialRightGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.rIGHT) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialLeftGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.lEFT) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (Special1GameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.kEY_NUM0) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (Special3GameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.kEY_NUM5) (assignedValue)
        pure ()


enable :: (JavaObjectClass this_) => this_ -> JavaArray (GameInputProcessor.GameInputProcessor) -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
enable object_ a1 a2 = jmethod object_ "enable" (\() -> (enable_impl (javaCast object_ :: AnalogInputBuilder))) () a1 a2

enable_super :: (JavaObjectClass this_) => this_ -> JavaArray (GameInputProcessor.GameInputProcessor) -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
enable_super object_ a1 a2 = (enable_impl (javaCast object_ :: AnalogInputBuilder)) a1 a2

enable_impl :: AnalogInputBuilder -> JavaArray (GameInputProcessor.GameInputProcessor) -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO (())
enable_impl this inputProcessorArray collidableDestroyableDamageableLayer = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialAnalogUpGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.uP) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialAnalogDownGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.dOWN) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialAnalogRightGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.rIGHT) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialAnalogLeftGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.lEFT) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialAnalogLeftTriggerGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.kEY_NUM0) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (SpecialAnalogRightTriggerGameInputProcessor.new_1 collidableDestroyableDamageableLayer))
        jsetIndex inputProcessorArray (Canvas.kEY_NUM5) (assignedValue)
        pure ()


