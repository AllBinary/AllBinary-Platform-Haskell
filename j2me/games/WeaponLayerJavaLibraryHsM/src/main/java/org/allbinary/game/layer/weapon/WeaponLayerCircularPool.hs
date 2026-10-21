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
module WeaponLayerCircularPool (module WeaponLayerCircularPool, module AllBinaryLayerCircularPool) where

import AllBinaryLayerCircularPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstanceWeaponLayer, getInstanceWeaponLayer_super, getInstanceWeaponLayer_impl)
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
import qualified WeaponLayer -- same package or java.lang
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerCircularPool -- org.allbinary.layer.AllBinaryLayerCircularPool

data WeaponLayerCircularPool = WeaponLayerCircularPool
    { header_ :: JavaHeader
    , base :: AllBinaryLayerCircularPool.AllBinaryLayerCircularPool
    }

instance JavaNull WeaponLayerCircularPool where
    javaNull = javaNullRecord "WeaponLayerCircularPool"

instance JavaEquals WeaponLayerCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeaponLayerCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass WeaponLayerCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WeaponLayerCircularPool
newRecord_ = do
    base <- AllBinaryLayerCircularPool.newRecord_
    let header_ = base.header_
    let this = WeaponLayerCircularPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceWeaponLayer" (\() -> getInstanceWeaponLayer_impl this)
    pure this

initFields_ :: WeaponLayerCircularPool -> IO ()
initFields_ this = do
    pure ()

new_ :: IO WeaponLayerCircularPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WeaponLayerCircularPool -> IO ()
init_ this = do
        AllBinaryLayerCircularPool.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstanceWeaponLayer :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> Int -> Int -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (WeaponLayer.WeaponLayer)
getInstanceWeaponLayer object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "getInstanceWeaponLayer" (\() -> (getInstanceWeaponLayer_impl (javaCast object_ :: WeaponLayerCircularPool))) () a1 a2 a3 a4 a5 a6 a7 a8

getInstanceWeaponLayer_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> Int -> Int -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (WeaponLayer.WeaponLayer)
getInstanceWeaponLayer_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (getInstanceWeaponLayer_impl (javaCast object_ :: WeaponLayerCircularPool)) a1 a2 a3 a4 a5 a6 a7 a8

getInstanceWeaponLayer_impl :: WeaponLayerCircularPool -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> Int -> Int -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (WeaponLayer.WeaponLayer)
getInstanceWeaponLayer_impl this sourceLayerInterface x y z angle otherAngle weaponProperties scoreable = do
        let weaponLayer = (javaCast (jio (AllBinaryLayerCircularPool.getNextInstance_super this.base)) :: WeaponLayer.WeaponLayer)
        Control.Monad.void (WeaponLayer.initXYZ weaponLayer x y z)
        Control.Monad.void (WeaponLayer.init weaponLayer sourceLayerInterface angle otherAngle weaponProperties scoreable)
        pure (weaponLayer)


