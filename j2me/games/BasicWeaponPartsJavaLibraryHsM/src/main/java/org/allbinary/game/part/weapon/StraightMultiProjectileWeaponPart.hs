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
module StraightMultiProjectileWeaponPart (module StraightMultiProjectileWeaponPart, module BasicWeaponPart) where

import BasicWeaponPart hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createStraightMultiProjectileWeaponPart, createStraightMultiProjectileWeaponPart_super, createStraightMultiProjectileWeaponPart_impl, processScore, processScore_super, processScore_impl, weaponLayerCircularStaticPool, total, noDecimalTrigTable)
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
import qualified NoDecimalTrigTable -- org.allbinary.math.NoDecimalTrigTable
import qualified BasicWeaponPart

data StraightMultiProjectileWeaponPart = StraightMultiProjectileWeaponPart
    { header_ :: JavaHeader
    , base :: BasicWeaponPart.BasicWeaponPart
    , weaponLayerCircularStaticPool :: IORef (WeaponLayerCircularPool.WeaponLayerCircularPool)
    , total :: IORef (Int)
    , noDecimalTrigTable :: IORef (NoDecimalTrigTable.NoDecimalTrigTable)
    }

instance JavaNull StraightMultiProjectileWeaponPart where
    javaNull = javaNullRecord "StraightMultiProjectileWeaponPart"

instance JavaEquals StraightMultiProjectileWeaponPart where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StraightMultiProjectileWeaponPart where
    (==) = jrecordEquals

instance JavaObjectClass StraightMultiProjectileWeaponPart where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StraightMultiProjectileWeaponPart
newRecord_ = do
    base <- BasicWeaponPart.newRecord_
    let header_ = base.header_
    weaponLayerCircularStaticPool <- newIORef javaNull
    total <- newIORef 0
    noDecimalTrigTable <- newIORef javaNull
    let this = StraightMultiProjectileWeaponPart header_ base weaponLayerCircularStaticPool total noDecimalTrigTable
    jregisterLevel header_ this
    jregisterMethod header_ "processScore" (\() -> processScore_impl this)
    pure this

initFields_ :: StraightMultiProjectileWeaponPart -> IO ()
initFields_ this = do
    jset this.weaponLayerCircularStaticPool (javaNull)
    jset this.total (0)
    jset this.noDecimalTrigTable =<< (NoDecimalTrigTable.getInstance)
    pure ()


createStraightMultiProjectileWeaponPart :: Animation.Animation -> WeaponLayerCircularPool.WeaponLayerCircularPool -> IO (StraightMultiProjectileWeaponPart)
createStraightMultiProjectileWeaponPart animationInterface weaponLayerCircularStaticPool = do
        (new_7 animationInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER) weaponLayerCircularStaticPool 2 (WeaponProperties.nULL_WEAPON_PROPERTIES) (jio (NoScoreable.getInstance)) (RelativeRelationship.nULL_RELATIVE_RELATIONSHIP))

new_7 :: Animation.Animation -> AllBinaryLayer.AllBinaryLayer -> WeaponLayerCircularPool.WeaponLayerCircularPool -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO StraightMultiProjectileWeaponPart
new_7 animationInterface sourceLayerInterface weaponLayerCircularStaticPool total weaponProperties scoreableInterface relativeRelationship = do
    this <- newRecord_
    init_7 this animationInterface sourceLayerInterface weaponLayerCircularStaticPool total weaponProperties scoreableInterface relativeRelationship
    pure this

init_7 :: StraightMultiProjectileWeaponPart -> Animation.Animation -> AllBinaryLayer.AllBinaryLayer -> WeaponLayerCircularPool.WeaponLayerCircularPool -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO ()
init_7 this animationInterface sourceLayerInterface weaponLayerCircularStaticPool total weaponProperties scoreableInterface relativeRelationship = do
        BasicWeaponPart.init_5 this.base (animationInterface) (sourceLayerInterface) (weaponProperties) (scoreableInterface) (relativeRelationship)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).total (total)
        jset (this).weaponLayerCircularStaticPool (weaponLayerCircularStaticPool)
        pure ()


-- throws Exception
processScore :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore object_ a1 a2 a3 a4 a5 = jmethod object_ "processScore" (\() -> (processScore_impl (javaCast object_ :: StraightMultiProjectileWeaponPart))) () a1 a2 a3 a4 a5

processScore_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_super object_ a1 a2 a3 a4 a5 = (processScore_impl (javaCast object_ :: StraightMultiProjectileWeaponPart)) a1 a2 a3 a4 a5

processScore_impl :: StraightMultiProjectileWeaponPart -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_impl this allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface = do
        sourceLayerInterface <- (BasicWeaponPart.getOwnerLayerInterface this)
        let reducedWidth = ((((jio (AllBinaryLayer.getWidth sourceLayerInterface)) * 8) `quot` 10))
        let halfWidth = ((reducedWidth `Data.Bits.shiftR` 1))
        x <- (RelativeRelationship.getX ((jget (this).base.relativeRelationship)))
        y <- (RelativeRelationship.getY ((jget (this).base.relativeRelationship)))
        sine <- newIORef (0)
        beamX <- newIORef (0)
        cosine <- newIORef (0)
        beamY <- newIORef (0)
        weaponLayer <- newIORef (javaNull)
        let increment = (reducedWidth `quot` (((jget (this).total) - 1)))
        next <- newIORef ((Prelude.negate halfWidth))
        forM_ [0 .. (jget (this).total) - 1] $ \index -> javaIteration (pure ()) $ do
            jset sine ((((Prelude.fromIntegral (jget next)) * (jio (NoDecimalTrigTable.sin ((jget (this).noDecimalTrigTable)) (Prelude.fromIntegral angle))))))
            jset beamX ((Prelude.fromIntegral (((jget sine) `quot` (Prelude.fromIntegral (jget ((jget (this).noDecimalTrigTable)).sCALE))))))
            jset cosine ((((Prelude.fromIntegral (jget next)) * (jio (NoDecimalTrigTable.cos ((jget (this).noDecimalTrigTable)) (Prelude.fromIntegral angle))))))
            jset beamY ((Prelude.negate (Prelude.fromIntegral (((jget cosine) `quot` (Prelude.fromIntegral (jget ((jget (this).noDecimalTrigTable)).sCALE)))))))
            assignedValue <- (WeaponLayerCircularPool.getInstanceWeaponLayer ((jget (this).weaponLayerCircularStaticPool)) sourceLayerInterface (x + (jget beamX)) (y + (jget beamY)) 0 (Prelude.fromIntegral angle) (Prelude.fromIntegral otherAngle) weaponProperties scoreableInterface)
            jset weaponLayer (assignedValue)
            Control.Monad.void (AllBinaryLayerManager.append allbinaryLayerManager (jget weaponLayer))
            jset next (((jget next) + increment))
        pure ()


