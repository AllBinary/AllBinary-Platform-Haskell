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
-- package org.allbinary.game.combat
module CombatBaseBehavior where

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
import qualified DamageableBaseBehavior -- org.allbinary.game.combat.damage.DamageableBaseBehavior
import qualified DestroyableBaseBehavior -- org.allbinary.game.combat.destroy.DestroyableBaseBehavior

data CombatBaseBehavior = CombatBaseBehavior
    { header_ :: JavaHeader
    , damageableBaseBehavior :: IORef (DamageableBaseBehavior.DamageableBaseBehavior)
    , destroyableBaseBehavior :: IORef (DestroyableBaseBehavior.DestroyableBaseBehavior)
    , readyForExplosion :: IORef (Bool)
    }

instance JavaNull CombatBaseBehavior where
    javaNull = javaNullRecord "CombatBaseBehavior"

instance JavaEquals CombatBaseBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CombatBaseBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CombatBaseBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COMBAT_BEHAVIOR #-}
nULL_COMBAT_BEHAVIOR = unsafePerformIO ((new_2 (jio (DamageableBaseBehavior.getInstance)) (jio (DestroyableBaseBehavior.getInstance))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CombatBaseBehavior
newRecord_ = do
    header_ <- newJavaHeader
    damageableBaseBehavior <- newIORef javaNull
    destroyableBaseBehavior <- newIORef javaNull
    readyForExplosion <- newIORef False
    let this = CombatBaseBehavior header_ damageableBaseBehavior destroyableBaseBehavior readyForExplosion
    jregisterLevel header_ this
    jregisterMethod header_ "getDamageableBaseBehavior" (\() -> getDamageableBaseBehavior_impl this)
    jregisterMethod header_ "getDestroyableBaseBehavior" (\() -> getDestroyableBaseBehavior_impl this)
    jregisterMethod header_ "isReadyForExplosion" (\() -> isReadyForExplosion_impl this)
    jregisterMethod header_ "setReadyForExplosion" (\() -> setReadyForExplosion_impl this)
    pure this

initFields_ :: CombatBaseBehavior -> IO ()
initFields_ this = do
    jset this.damageableBaseBehavior (javaNull)
    jset this.destroyableBaseBehavior (javaNull)
    jset this.readyForExplosion (False)
    pure ()

new_2 :: DamageableBaseBehavior.DamageableBaseBehavior -> DestroyableBaseBehavior.DestroyableBaseBehavior -> IO CombatBaseBehavior
new_2 damageableBaseBehavior destroyableBaseBehavior = do
    this <- newRecord_
    init_2 this damageableBaseBehavior destroyableBaseBehavior
    pure this

init_2 :: CombatBaseBehavior -> DamageableBaseBehavior.DamageableBaseBehavior -> DestroyableBaseBehavior.DestroyableBaseBehavior -> IO ()
init_2 this damageableBaseBehavior destroyableBaseBehavior = do
        initFields_ this
        jset (this).damageableBaseBehavior (damageableBaseBehavior)
        jset (this).destroyableBaseBehavior (destroyableBaseBehavior)
        pure ()


getDamageableBaseBehavior :: (JavaObjectClass this_) => this_ -> IO (DamageableBaseBehavior.DamageableBaseBehavior)
getDamageableBaseBehavior object_ = jmethod object_ "getDamageableBaseBehavior" (\() -> (getDamageableBaseBehavior_impl (javaCast object_ :: CombatBaseBehavior))) ()

getDamageableBaseBehavior_super :: (JavaObjectClass this_) => this_ -> IO (DamageableBaseBehavior.DamageableBaseBehavior)
getDamageableBaseBehavior_super object_ = (getDamageableBaseBehavior_impl (javaCast object_ :: CombatBaseBehavior))

getDamageableBaseBehavior_impl :: CombatBaseBehavior -> IO (DamageableBaseBehavior.DamageableBaseBehavior)
getDamageableBaseBehavior_impl this = do
        pure ((jget (this).damageableBaseBehavior))


getDestroyableBaseBehavior :: (JavaObjectClass this_) => this_ -> IO (DestroyableBaseBehavior.DestroyableBaseBehavior)
getDestroyableBaseBehavior object_ = jmethod object_ "getDestroyableBaseBehavior" (\() -> (getDestroyableBaseBehavior_impl (javaCast object_ :: CombatBaseBehavior))) ()

getDestroyableBaseBehavior_super :: (JavaObjectClass this_) => this_ -> IO (DestroyableBaseBehavior.DestroyableBaseBehavior)
getDestroyableBaseBehavior_super object_ = (getDestroyableBaseBehavior_impl (javaCast object_ :: CombatBaseBehavior))

getDestroyableBaseBehavior_impl :: CombatBaseBehavior -> IO (DestroyableBaseBehavior.DestroyableBaseBehavior)
getDestroyableBaseBehavior_impl this = do
        pure ((jget (this).destroyableBaseBehavior))


isReadyForExplosion :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion object_ = jmethod object_ "isReadyForExplosion" (\() -> (isReadyForExplosion_impl (javaCast object_ :: CombatBaseBehavior))) ()

isReadyForExplosion_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion_super object_ = (isReadyForExplosion_impl (javaCast object_ :: CombatBaseBehavior))

isReadyForExplosion_impl :: CombatBaseBehavior -> IO (Bool)
isReadyForExplosion_impl this = do
        pure ((jget (this).readyForExplosion))


setReadyForExplosion :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setReadyForExplosion object_ a1 = jmethod object_ "setReadyForExplosion" (\() -> (setReadyForExplosion_impl (javaCast object_ :: CombatBaseBehavior))) () a1

setReadyForExplosion_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setReadyForExplosion_super object_ a1 = (setReadyForExplosion_impl (javaCast object_ :: CombatBaseBehavior)) a1

setReadyForExplosion_impl :: CombatBaseBehavior -> Bool -> IO (())
setReadyForExplosion_impl this readyForExplosion = do
        jset (this).readyForExplosion (readyForExplosion)
        pure ()


