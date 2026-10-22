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
module DamageWeaponLayer (module DamageWeaponLayer, module WeaponLayer) where

import WeaponLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified CollidableDamageWeaponBehavior -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified Movement -- org.allbinary.physics.movement.Movement
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified WeaponLayer

data DamageWeaponLayer = DamageWeaponLayer
    { header_ :: JavaHeader
    , base :: WeaponLayer.WeaponLayer
    }

instance JavaNull DamageWeaponLayer where
    javaNull = javaNullRecord "DamageWeaponLayer"

instance JavaEquals DamageWeaponLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DamageWeaponLayer where
    (==) = jrecordEquals

instance JavaObjectClass DamageWeaponLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DamageWeaponLayer
newRecord_ = do
    base <- WeaponLayer.newRecord_
    let header_ = base.header_
    let this = DamageWeaponLayer header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: DamageWeaponLayer -> IO ()
initFields_ this = do
    pure ()

new_11 :: String -> RemoteInfo.RemoteInfo -> Movement.Movement -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> String -> Int -> Int -> Int -> IO DamageWeaponLayer
new_11 name remoteInfo movement animationInterface destroyedAnimationInterface rectangle viewPosition username actorSessionId id multiPlayerType = do
    this <- newRecord_
    init_11 this name remoteInfo movement animationInterface destroyedAnimationInterface rectangle viewPosition username actorSessionId id multiPlayerType
    pure this

init_11 :: DamageWeaponLayer -> String -> RemoteInfo.RemoteInfo -> Movement.Movement -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> String -> Int -> Int -> Int -> IO ()
init_11 this name remoteInfo movement animationInterface destroyedAnimationInterface rectangle viewPosition username actorSessionId id multiPlayerType = do
        WeaponLayer.init_8 this.base (name) (remoteInfo) (multiPlayerType) (movement) (animationInterface) (destroyedAnimationInterface) (rectangle) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (WeaponLayer.setCollidableInferface this (javaCast (jio (CollidableDamageWeaponBehavior.new_1 True))))
        pure ()


