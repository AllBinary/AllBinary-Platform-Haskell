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
-- package org.allbinary.game.layer.weapon
module SimpleWeaponLayer (module SimpleWeaponLayer, module WeaponLayer) where

import WeaponLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createDestroyed, createDestroyed_super, createDestroyed_impl)
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
import qualified CollidableWeaponBehavior -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified NullIndexedAnimationFactory -- org.allbinary.animation.NullIndexedAnimationFactory
import qualified ExplosionResources -- org.allbinary.game.combat.damage.ExplosionResources
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified Movement -- org.allbinary.physics.movement.Movement
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified WeaponLayer

data SimpleWeaponLayer = SimpleWeaponLayer
    { header_ :: JavaHeader
    , base :: WeaponLayer.WeaponLayer
    }

instance JavaNull SimpleWeaponLayer where
    javaNull = javaNullRecord "SimpleWeaponLayer"

instance JavaEquals SimpleWeaponLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleWeaponLayer where
    (==) = jrecordEquals

instance JavaObjectClass SimpleWeaponLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SimpleWeaponLayer
newRecord_ = do
    base <- WeaponLayer.newRecord_
    let header_ = base.header_
    let this = SimpleWeaponLayer header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: SimpleWeaponLayer -> IO ()
initFields_ this = do
    pure ()


-- throws Exception
createDestroyed :: IO (Animation.Animation)
createDestroyed = do
        (ProceduralAnimationInterfaceFactoryInterface.getInstanceAnimation ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getProcedural ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (ExplosionResources.getInstance))).tHIRD_EXPLOSION_RESOURCE)))) (jio (NullIndexedAnimationFactory.getInstance ((jio (NullIndexedAnimationFactory.getFactoryInstance))) 0)))

new_8 :: String -> RemoteInfo.RemoteInfo -> Int -> Movement.Movement -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO SimpleWeaponLayer
new_8 name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition = do
    this <- newRecord_
    init_8 this name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition
    pure this

init_8 :: SimpleWeaponLayer -> String -> RemoteInfo.RemoteInfo -> Int -> Movement.Movement -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_8 this name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition = do
        WeaponLayer.init_8 this.base (name) (remoteInfo) (multiPlayerType) (movement) (animationInterface) (destroyedAnimationInterface) (rectangle) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (WeaponLayer.setCollidableInferface this (javaCast (jio (CollidableWeaponBehavior.new_1 True))))
        pure ()


