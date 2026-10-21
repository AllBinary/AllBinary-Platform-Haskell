{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
module TempExplosionWeaponLayer (module TempExplosionWeaponLayer, module SimpleWeaponLayer) where

import SimpleWeaponLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processTick, processTick_super, processTick_impl, weaponProperties, timeDelayHelper)
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
import qualified Animation -- org.allbinary.animation.Animation
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified Movement -- org.allbinary.physics.movement.Movement
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified SimpleWeaponLayer

data TempExplosionWeaponLayer = TempExplosionWeaponLayer
    { header_ :: JavaHeader
    , base :: SimpleWeaponLayer.SimpleWeaponLayer
    , weaponProperties :: IORef (WeaponProperties.WeaponProperties)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull TempExplosionWeaponLayer where
    javaNull = javaNullRecord "TempExplosionWeaponLayer"

instance JavaEquals TempExplosionWeaponLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TempExplosionWeaponLayer where
    (==) = jrecordEquals

instance JavaObjectClass TempExplosionWeaponLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TempExplosionWeaponLayer
newRecord_ = do
    base <- SimpleWeaponLayer.newRecord_
    let header_ = base.header_
    weaponProperties <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    let this = TempExplosionWeaponLayer header_ base weaponProperties timeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    pure this

initFields_ :: TempExplosionWeaponLayer -> IO ()
initFields_ this = do
    jset this.weaponProperties =<< (WeaponProperties.new_5 (Prelude.negate 1) (Prelude.negate 1) 0 1000 (Prelude.fromIntegral (0 :: Int)))
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 0)
    pure ()

new_6 :: String -> Movement.Movement -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> Int -> IO TempExplosionWeaponLayer
new_6 name movement animationInterface rectangle viewPosition timeDelay = do
    this <- newRecord_
    init_6 this name movement animationInterface rectangle viewPosition timeDelay
    pure this

init_6 :: TempExplosionWeaponLayer -> String -> Movement.Movement -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> Int -> IO ()
init_6 this name movement animationInterface rectangle viewPosition timeDelay = do
        SimpleWeaponLayer.init_8 this.base (name) (RemoteInfo.rEMOTE_INFO) (Prelude.negate 1) (movement) (animationInterface) (jio (SimpleWeaponLayer.createDestroyed)) (rectangle) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        jset ((jget (this).timeDelayHelper)).delay (timeDelay)
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: TempExplosionWeaponLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: TempExplosionWeaponLayer)) a1

processTick_impl :: TempExplosionWeaponLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            Control.Monad.void (CollidableBaseBehavior.collide ((jio (SimpleWeaponLayer.getCollidableInferface this))) this this)
            jset (this).base.base.totalDamage (((jio (SimpleWeaponLayer.getInitDamage this)) + 1))
        Control.Monad.void (SimpleWeaponLayer.processTick_super this.base allBinaryLayerManager)
        pure ()


