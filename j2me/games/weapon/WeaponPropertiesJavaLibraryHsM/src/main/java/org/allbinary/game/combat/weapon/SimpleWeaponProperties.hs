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
-- package org.allbinary.game.combat.weapon
module SimpleWeaponProperties where

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

data SimpleWeaponProperties = SimpleWeaponProperties
    { header_ :: JavaHeader
    , damage :: IORef (Int)
    , dissipation :: IORef (Int16)
    , range :: IORef (Int)
    }

instance JavaNull SimpleWeaponProperties where
    javaNull = javaNullRecord "SimpleWeaponProperties"

instance JavaEquals SimpleWeaponProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleWeaponProperties where
    (==) = jrecordEquals

instance JavaObjectClass SimpleWeaponProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimpleWeaponProperties
newRecord_ = do
    header_ <- newJavaHeader
    damage <- newIORef 0
    dissipation <- newIORef 0
    range <- newIORef 0
    let this = SimpleWeaponProperties header_ damage dissipation range
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "setDamage" (\() -> setDamage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "setDissipation" (\() -> setDissipation_impl this)
    jregisterMethod header_ "getDissipation" (\() -> getDissipation_impl this)
    jregisterMethod header_ "getRange" (\() -> getRange_impl this)
    jregisterMethod header_ "setRange" (\() -> setRange_impl this)
    pure this

initFields_ :: SimpleWeaponProperties -> IO ()
initFields_ this = do
    jset this.damage (0)
    jset this.dissipation (0)
    jset this.range (0)
    pure ()

new_ :: IO SimpleWeaponProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SimpleWeaponProperties -> IO ()
init_ this = do
    initFields_ this


set :: (JavaObjectClass this_) => this_ -> SimpleWeaponProperties -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: SimpleWeaponProperties))) () a1

set_super :: (JavaObjectClass this_) => this_ -> SimpleWeaponProperties -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: SimpleWeaponProperties)) a1

set_impl :: SimpleWeaponProperties -> SimpleWeaponProperties -> IO (())
set_impl this simpleWeaponProperties = do
        Control.Monad.void (SimpleWeaponProperties.setDamage this (jio (SimpleWeaponProperties.getDamage simpleWeaponProperties)))
        Control.Monad.void (SimpleWeaponProperties.setDissipation this (jio (SimpleWeaponProperties.getDissipation simpleWeaponProperties)))
        Control.Monad.void (SimpleWeaponProperties.setRange this (jio (SimpleWeaponProperties.getRange simpleWeaponProperties)))
        pure ()


setDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDamage object_ a1 = jmethod object_ "setDamage" (\() -> (setDamage_impl (javaCast object_ :: SimpleWeaponProperties))) () a1

setDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDamage_super object_ a1 = (setDamage_impl (javaCast object_ :: SimpleWeaponProperties)) a1

setDamage_impl :: SimpleWeaponProperties -> Int -> IO (())
setDamage_impl this damage = do
        jset (this).damage (damage)
        pure ()


getDamage :: (JavaObjectClass this_) => this_ -> IO (Int)
getDamage object_ = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: SimpleWeaponProperties))) ()

getDamage_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDamage_super object_ = (getDamage_impl (javaCast object_ :: SimpleWeaponProperties))

getDamage_impl :: SimpleWeaponProperties -> IO (Int)
getDamage_impl this = do
        pure ((jget (this).damage))


setDissipation :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setDissipation object_ a1 = jmethod object_ "setDissipation" (\() -> (setDissipation_impl (javaCast object_ :: SimpleWeaponProperties))) () a1

setDissipation_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setDissipation_super object_ a1 = (setDissipation_impl (javaCast object_ :: SimpleWeaponProperties)) a1

setDissipation_impl :: SimpleWeaponProperties -> Int16 -> IO (())
setDissipation_impl this dissipation = do
        jset (this).dissipation (dissipation)
        pure ()


getDissipation :: (JavaObjectClass this_) => this_ -> IO (Int16)
getDissipation object_ = jmethod object_ "getDissipation" (\() -> (getDissipation_impl (javaCast object_ :: SimpleWeaponProperties))) ()

getDissipation_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getDissipation_super object_ = (getDissipation_impl (javaCast object_ :: SimpleWeaponProperties))

getDissipation_impl :: SimpleWeaponProperties -> IO (Int16)
getDissipation_impl this = do
        pure ((jget (this).dissipation))


getRange :: (JavaObjectClass this_) => this_ -> IO (Int)
getRange object_ = jmethod object_ "getRange" (\() -> (getRange_impl (javaCast object_ :: SimpleWeaponProperties))) ()

getRange_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRange_super object_ = (getRange_impl (javaCast object_ :: SimpleWeaponProperties))

getRange_impl :: SimpleWeaponProperties -> IO (Int)
getRange_impl this = do
        pure ((jget (this).range))


setRange :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRange object_ a1 = jmethod object_ "setRange" (\() -> (setRange_impl (javaCast object_ :: SimpleWeaponProperties))) () a1

setRange_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRange_super object_ a1 = (setRange_impl (javaCast object_ :: SimpleWeaponProperties)) a1

setRange_impl :: SimpleWeaponProperties -> Int -> IO (())
setRange_impl this range = do
        jset (this).range (range)
        pure ()


