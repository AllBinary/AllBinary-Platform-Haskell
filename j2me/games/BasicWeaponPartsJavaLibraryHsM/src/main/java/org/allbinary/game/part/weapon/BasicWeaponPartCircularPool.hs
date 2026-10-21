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
-- package org.allbinary.game.part.weapon
module BasicWeaponPartCircularPool where

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
import qualified BasicWeaponPart -- same package or java.lang
import qualified BasicWeaponPartFactoryInterface -- same package or java.lang
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data BasicWeaponPartCircularPool = BasicWeaponPartCircularPool
    { header_ :: JavaHeader
    , basicWeaponPart :: IORef (BasicWeaponPart.BasicWeaponPart)
    }

instance JavaNull BasicWeaponPartCircularPool where
    javaNull = javaNullRecord "BasicWeaponPartCircularPool"

instance JavaEquals BasicWeaponPartCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicWeaponPartCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass BasicWeaponPartCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_BASIC_WEAPON_PART_CIRCULAR_POOL #-}
nULL_BASIC_WEAPON_PART_CIRCULAR_POOL = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicWeaponPartCircularPool
newRecord_ = do
    header_ <- newJavaHeader
    basicWeaponPart <- newIORef javaNull
    let this = BasicWeaponPartCircularPool header_ basicWeaponPart
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BasicWeaponPartCircularPool -> IO ()
initFields_ this = do
    jset this.basicWeaponPart (BasicWeaponPart.nULL_BASIC_WEAPON_PART)
    pure ()

new_ :: IO BasicWeaponPartCircularPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicWeaponPartCircularPool -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> BasicWeaponPartFactoryInterface.BasicWeaponPartFactoryInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicWeaponPartCircularPool))) () a1

init_super :: (JavaObjectClass this_) => this_ -> BasicWeaponPartFactoryInterface.BasicWeaponPartFactoryInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BasicWeaponPartCircularPool)) a1

init_impl :: BasicWeaponPartCircularPool -> BasicWeaponPartFactoryInterface.BasicWeaponPartFactoryInterface -> IO (())
init_impl this basicWeaponPartFactoryInterface = do
        assignedValue <- (BasicWeaponPartFactoryInterface.getInstance basicWeaponPartFactoryInterface)
        jset (this).basicWeaponPart (assignedValue)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO (BasicWeaponPart.BasicWeaponPart)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicWeaponPartCircularPool))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO (BasicWeaponPart.BasicWeaponPart)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: BasicWeaponPartCircularPool)) a1 a2 a3 a4

getInstance_impl :: BasicWeaponPartCircularPool -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO (BasicWeaponPart.BasicWeaponPart)
getInstance_impl this sourceLayerInterface weaponProperties scoreableInterface relativeRelationship = do
        Control.Monad.void (BasicWeaponPart.init ((jget (this).basicWeaponPart)) sourceLayerInterface weaponProperties scoreableInterface relativeRelationship)
        pure ((jget (this).basicWeaponPart))


