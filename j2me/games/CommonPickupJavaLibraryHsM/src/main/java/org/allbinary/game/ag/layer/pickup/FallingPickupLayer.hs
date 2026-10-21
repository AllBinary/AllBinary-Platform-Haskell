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
-- package org.allbinary.game.ag.layer.pickup
module FallingPickupLayer (module FallingPickupLayer, module PickupLayer) where

import PickupLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processTick, processTick_super, processTick_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, nAME)
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
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified CountedPickedUpLayerInterfaceFactory -- org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
import qualified PickupLayer -- org.allbinary.game.layer.pickup.PickupLayer
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ViewPosition -- org.allbinary.view.ViewPosition

-- implements TickableInterface
data FallingPickupLayer = FallingPickupLayer
    { header_ :: JavaHeader
    , base :: PickupLayer.PickupLayer
    }

instance JavaNull FallingPickupLayer where
    javaNull = javaNullRecord "FallingPickupLayer"

instance JavaEquals FallingPickupLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FallingPickupLayer where
    (==) = jrecordEquals

instance JavaObjectClass FallingPickupLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "FallingPickupLayer"

newRecord_ :: IO FallingPickupLayer
newRecord_ = do
    base <- PickupLayer.newRecord_
    let header_ = base.header_
    let this = FallingPickupLayer header_ base
    jregisterLevel header_ this
    TickableInterface.registerInterface_ header_
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "implmentsTickableInterface" (\() -> implmentsTickableInterface_impl this)
    pure this

initFields_ :: FallingPickupLayer -> IO ()
initFields_ this = do
    pure ()

new_1 :: RemoteInfo.RemoteInfo -> IO FallingPickupLayer
new_1 remoteInfo = do
    this <- newRecord_
    init_1 this remoteInfo
    pure this

init_1 :: FallingPickupLayer -> RemoteInfo.RemoteInfo -> IO ()
init_1 this remoteInfo = do
        PickupLayer.init_7 this.base (FallingPickupLayer.nAME) (remoteInfo) (0) (CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY) (jio (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 0 0)) (jio (ViewPosition.getInstanceD))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: FallingPickupLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: FallingPickupLayer)) a1

processTick_impl :: FallingPickupLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        Control.Monad.void (PickupLayer.setPosition this (jget (this).base.base.base.base.base.base.base.x) ((jget (this).base.base.base.base.base.base.base.y) + 1) (jget (this).base.base.base.base.base.base.base.z))
        pure ()


implmentsTickableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface object_ = jmethod object_ "implmentsTickableInterface" (\() -> (implmentsTickableInterface_impl (javaCast object_ :: FallingPickupLayer))) ()

implmentsTickableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface_super object_ = (implmentsTickableInterface_impl (javaCast object_ :: FallingPickupLayer))

implmentsTickableInterface_impl :: FallingPickupLayer -> IO (Bool)
implmentsTickableInterface_impl this = do
        pure (True)


