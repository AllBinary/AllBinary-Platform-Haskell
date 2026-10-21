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
module MineCountedPickedUpLayerInterfaceFactory (module MineCountedPickedUpLayerInterfaceFactory, module CountedPickedUpLayerInterfaceFactory) where

import CountedPickedUpLayerInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, getInstance, getInstance_super, getInstance_impl, getTotal, getTotal_super, getTotal_impl, getNextInstance, getNextInstance_super, getNextInstance_impl, weaponLayerCircularStaticPool, pickedUpLayerInterfaceFactoryInterface, weaponProperties, smallIntegerSingletonFactory)
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
import qualified MineLayerCircularStaticPool -- same package or java.lang
import qualified MineWeaponResources -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified CountedPickedUpLayerInterfaceFactory -- org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
import qualified IconLayerFactory -- org.allbinary.game.layer.pickup.IconLayerFactory
import qualified PickedUpLayerInterfaceFactoryInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
import qualified PickedUpLayerTypeFactory -- org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory
import qualified WeaponLayerCircularPool -- org.allbinary.game.layer.weapon.WeaponLayerCircularPool
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data MineCountedPickedUpLayerInterfaceFactory = MineCountedPickedUpLayerInterfaceFactory
    { header_ :: JavaHeader
    , base :: CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory
    , weaponLayerCircularStaticPool :: IORef (WeaponLayerCircularPool.WeaponLayerCircularPool)
    , weaponProperties :: IORef (WeaponProperties.WeaponProperties)
    , smallIntegerSingletonFactory :: IORef (SmallIntegerSingletonFactory.SmallIntegerSingletonFactory)
    }

instance JavaNull MineCountedPickedUpLayerInterfaceFactory where
    javaNull = javaNullRecord "MineCountedPickedUpLayerInterfaceFactory"

instance JavaEquals MineCountedPickedUpLayerInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MineCountedPickedUpLayerInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass MineCountedPickedUpLayerInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE pickedUpLayerInterfaceFactoryInterface #-}
pickedUpLayerInterfaceFactoryInterface = unsafePerformIO (newIORef ((javaCast CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY :: PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)))

newRecord_ :: IO MineCountedPickedUpLayerInterfaceFactory
newRecord_ = do
    base <- CountedPickedUpLayerInterfaceFactory.newRecord_
    let header_ = base.header_
    weaponLayerCircularStaticPool <- newIORef javaNull
    weaponProperties <- newIORef javaNull
    smallIntegerSingletonFactory <- newIORef javaNull
    let this = MineCountedPickedUpLayerInterfaceFactory header_ base weaponLayerCircularStaticPool weaponProperties smallIntegerSingletonFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "getNextInstance" (\() -> getNextInstance_impl this)
    pure this

initFields_ :: MineCountedPickedUpLayerInterfaceFactory -> IO ()
initFields_ this = do
    jset this.weaponLayerCircularStaticPool =<< (MineLayerCircularStaticPool.getInstance)
    jset this.weaponProperties =<< (WeaponProperties.new_5 (Prelude.negate 1) (Prelude.negate 1) 0 8000 (Prelude.fromIntegral (10 :: Int)))
    jset this.smallIntegerSingletonFactory =<< (SmallIntegerSingletonFactory.getInstance)
    pure ()


-- throws Exception
init :: IO (())
init = do
        assignedValue <- (new_)
        jset MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface (assignedValue)
        pure ()

new_ :: IO MineCountedPickedUpLayerInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MineCountedPickedUpLayerInterfaceFactory -> IO ()
init_ this = do
        CountedPickedUpLayerInterfaceFactory.init_3 this.base (jget ((jio (PickedUpLayerTypeFactory.getInstance))).mINE) (jio (IconLayerFactory.getInstance (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (MineWeaponResources.getInstance))).dROP_ICON_RESOURCE)))) 0)) 10 10)) (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (MineWeaponResources.getInstance))).dROP_RESOURCE)))) 0))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getInstance :: IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getInstance = do
        pure ((jget MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: MineCountedPickedUpLayerInterfaceFactory))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: MineCountedPickedUpLayerInterfaceFactory))

getTotal_impl :: MineCountedPickedUpLayerInterfaceFactory -> IO (Int)
getTotal_impl this = do
        pure (3)


-- throws Exception
getNextInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance object_ a1 a2 a3 a4 = jmethod object_ "getNextInstance" (\() -> (getNextInstance_impl (javaCast object_ :: MineCountedPickedUpLayerInterfaceFactory))) () a1 a2 a3 a4

getNextInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance_super object_ a1 a2 a3 a4 = (getNextInstance_impl (javaCast object_ :: MineCountedPickedUpLayerInterfaceFactory)) a1 a2 a3 a4

getNextInstance_impl :: MineCountedPickedUpLayerInterfaceFactory -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance_impl this hashtable x y z = do
        let sourceLayerInterface = (javaCast (jio (ABHashtable.get hashtable (javaCast (jio (SmallIntegerSingletonFactory.getAt ((jget (this).smallIntegerSingletonFactory)) 0)) :: Any.Any))) :: AllBinaryLayer.AllBinaryLayer)
        let angle = (javaCast (jio (ABHashtable.get hashtable (javaCast (jio (SmallIntegerSingletonFactory.getAt ((jget (this).smallIntegerSingletonFactory)) 1)) :: Any.Any))) :: Int)
        let scoreableInterface = (javaCast sourceLayerInterface :: ScoreableInterface.ScoreableInterface)
        (fmap (\value_ -> javaCast value_ :: AllBinaryLayer.AllBinaryLayer) (WeaponLayerCircularPool.getInstanceWeaponLayer ((jget (this).weaponLayerCircularStaticPool)) sourceLayerInterface x y z (angle) 0 (jget (this).weaponProperties) scoreableInterface))


