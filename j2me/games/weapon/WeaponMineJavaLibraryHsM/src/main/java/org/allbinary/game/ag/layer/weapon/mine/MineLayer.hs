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
-- package org.allbinary.game.ag.layer.weapon.mine
module MineLayer (module MineLayer, module SimpleWeaponLayer) where

import SimpleWeaponLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initXYZ, initXYZ_super, initXYZ_impl, damage, damage_super, damage_impl, getDamage, getDamage_super, getDamage_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, nAME, viewPositionEventHandler)
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
import qualified MineWeaponResources -- same package or java.lang
import qualified DropWeaponSound -- org.allbinary.ag.weapon.media.audio.DropWeaponSound
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified SimpleWeaponLayer -- org.allbinary.game.layer.weapon.SimpleWeaponLayer
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified NoMovementFactory -- org.allbinary.physics.movement.NoMovementFactory
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified ViewPositionEventHandler -- org.allbinary.view.event.ViewPositionEventHandler

data MineLayer = MineLayer
    { header_ :: JavaHeader
    , base :: SimpleWeaponLayer.SimpleWeaponLayer
    , viewPositionEventHandler :: IORef (ViewPositionEventHandler.ViewPositionEventHandler)
    }

instance JavaNull MineLayer where
    javaNull = javaNullRecord "MineLayer"

instance JavaEquals MineLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MineLayer where
    (==) = jrecordEquals

instance JavaObjectClass MineLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "MineLayer"

newRecord_ :: IO MineLayer
newRecord_ = do
    base <- SimpleWeaponLayer.newRecord_
    let header_ = base.header_
    viewPositionEventHandler <- newIORef javaNull
    let this = MineLayer header_ base viewPositionEventHandler
    jregisterLevel header_ this
    jregisterMethod header_ "initXYZ" (\() -> initXYZ_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    pure this

initFields_ :: MineLayer -> IO ()
initFields_ this = do
    jset this.viewPositionEventHandler =<< (ViewPositionEventHandler.getInstance)
    pure ()

new_1 :: ViewPositionBase.ViewPositionBase -> IO MineLayer
new_1 viewPosition = do
    this <- newRecord_
    init_1 this viewPosition
    pure this

init_1 :: MineLayer -> ViewPositionBase.ViewPositionBase -> IO ()
init_1 this viewPosition = do
        SimpleWeaponLayer.init_8 this.base (MineLayer.nAME) (RemoteInfo.rEMOTE_INFO) (Prelude.negate 1) (jio (NoMovementFactory.getMovmentInstance ((jio (NoMovementFactory.getInstance))))) (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (MineWeaponResources.getInstance))).rESOURCE)))) 0)) (jio (SimpleWeaponLayer.createDestroyed)) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 10 10)) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


initXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initXYZ object_ a1 a2 a3 = jmethod object_ "initXYZ" (\() -> (initXYZ_impl (javaCast object_ :: MineLayer))) () a1 a2 a3

initXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initXYZ_super object_ a1 a2 a3 = (initXYZ_impl (javaCast object_ :: MineLayer)) a1 a2 a3

initXYZ_impl :: MineLayer -> Int -> Int -> Int -> IO (())
initXYZ_impl this x y z = do
        Control.Monad.void (SimpleWeaponLayer.setPosition this (x + 5) (y + 5) z)
        Control.Monad.void (ViewPositionEventHandler.addListener ((jget (this).viewPositionEventHandler)) (javaCast this :: AllBinaryLayer.AllBinaryLayer))
        Control.Monad.void (PlayerQueue.add ((jio (SecondaryPlayerQueueFactory.getInstance))) (jio (DropWeaponSound.getInstance)))
        pure ()


damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: MineLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: MineLayer)) a1 a2

damage_impl :: MineLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        jset (this).base.base.totalDamage (((jio (SimpleWeaponLayer.getInitDamage this)) + 1))
        pure ()


getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: MineLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: MineLayer)) a1

getDamage_impl :: MineLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
        Control.Monad.void (SimpleWeaponLayer.getDamage_super this.base damageType)
        (SimpleWeaponLayer.getInitDamage this)


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: MineLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: MineLayer)) a1

setDestroyed_impl :: MineLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        Control.Monad.void (SimpleWeaponLayer.setDestroyed_super this.base destroyed)
        when (jio (SimpleWeaponLayer.isDestroyed this)) $ do
            Control.Monad.void (ViewPositionEventHandler.removeListener ((jget (this).viewPositionEventHandler)) this)
        pure ()


