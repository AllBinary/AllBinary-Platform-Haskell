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
module BasicProjectileWeaponPart (module BasicProjectileWeaponPart, module BasicWeaponPart) where

import BasicWeaponPart hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createBasicProjectileWeaponPart, createBasicProjectileWeaponPart_super, createBasicProjectileWeaponPart_impl, processScore, processScore_super, processScore_impl, weaponLayerCircularStaticPool)
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
import qualified WeaponLayer -- org.allbinary.game.layer.weapon.WeaponLayer
import qualified WeaponLayerCircularPool -- org.allbinary.game.layer.weapon.WeaponLayerCircularPool
import qualified NoScoreable -- org.allbinary.game.score.NoScoreable
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicWeaponPart

data BasicProjectileWeaponPart = BasicProjectileWeaponPart
    { header_ :: JavaHeader
    , base :: BasicWeaponPart.BasicWeaponPart
    , weaponLayerCircularStaticPool :: IORef (WeaponLayerCircularPool.WeaponLayerCircularPool)
    }

instance JavaNull BasicProjectileWeaponPart where
    javaNull = javaNullRecord "BasicProjectileWeaponPart"

instance JavaEquals BasicProjectileWeaponPart where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProjectileWeaponPart where
    (==) = jrecordEquals

instance JavaObjectClass BasicProjectileWeaponPart where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicProjectileWeaponPart
newRecord_ = do
    base <- BasicWeaponPart.newRecord_
    let header_ = base.header_
    weaponLayerCircularStaticPool <- newIORef javaNull
    let this = BasicProjectileWeaponPart header_ base weaponLayerCircularStaticPool
    jregisterLevel header_ this
    jregisterMethod header_ "processScore" (\() -> processScore_impl this)
    pure this

initFields_ :: BasicProjectileWeaponPart -> IO ()
initFields_ this = do
    jset this.weaponLayerCircularStaticPool (javaNull)
    pure ()


createBasicProjectileWeaponPart :: Animation.Animation -> WeaponLayerCircularPool.WeaponLayerCircularPool -> IO (BasicProjectileWeaponPart)
createBasicProjectileWeaponPart animationInterface weaponLayerCircularStaticPool = do
        (new_6 animationInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER) weaponLayerCircularStaticPool (WeaponProperties.nULL_WEAPON_PROPERTIES) (jio (NoScoreable.getInstance)) (RelativeRelationship.nULL_RELATIVE_RELATIONSHIP))

new_6 :: Animation.Animation -> AllBinaryLayer.AllBinaryLayer -> WeaponLayerCircularPool.WeaponLayerCircularPool -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO BasicProjectileWeaponPart
new_6 animationInterface sourceLayerInterface weaponLayerCircularStaticPool weaponProperties scoreableInterface relativeRelationship = do
    this <- newRecord_
    init_6 this animationInterface sourceLayerInterface weaponLayerCircularStaticPool weaponProperties scoreableInterface relativeRelationship
    pure this

init_6 :: BasicProjectileWeaponPart -> Animation.Animation -> AllBinaryLayer.AllBinaryLayer -> WeaponLayerCircularPool.WeaponLayerCircularPool -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO ()
init_6 this animationInterface sourceLayerInterface weaponLayerCircularStaticPool weaponProperties scoreableInterface relativeRelationship = do
        BasicWeaponPart.init_5 this.base (animationInterface) (sourceLayerInterface) (weaponProperties) (scoreableInterface) (relativeRelationship)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).weaponLayerCircularStaticPool (weaponLayerCircularStaticPool)
        pure ()


-- throws Exception
processScore :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore object_ a1 a2 a3 a4 a5 = jmethod object_ "processScore" (\() -> (processScore_impl (javaCast object_ :: BasicProjectileWeaponPart))) () a1 a2 a3 a4 a5

processScore_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_super object_ a1 a2 a3 a4 a5 = (processScore_impl (javaCast object_ :: BasicProjectileWeaponPart)) a1 a2 a3 a4 a5

processScore_impl :: BasicProjectileWeaponPart -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_impl this allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface = do
        weaponLayer <- (WeaponLayerCircularPool.getInstanceWeaponLayer ((jget (this).weaponLayerCircularStaticPool)) (jio (BasicWeaponPart.getOwnerLayerInterface this)) (jio (RelativeRelationship.getX ((jget (this).base.relativeRelationship)))) (jio (RelativeRelationship.getY ((jget (this).base.relativeRelationship)))) (jio (RelativeRelationship.getZ ((jget (this).base.relativeRelationship)))) (Prelude.fromIntegral angle) (Prelude.fromIntegral otherAngle) weaponProperties scoreableInterface)
        Control.Monad.void (AllBinaryLayerManager.append allbinaryLayerManager (javaCast weaponLayer))
        pure ()


