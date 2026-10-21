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
-- package org.allbinary.game.layer
module CollidableVehicleBehavior (module CollidableVehicleBehavior, module CollidableDestroyableDamageableBehavior) where

import CollidableDestroyableDamageableBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, collide, collide_super, collide_impl, collideInterface, collideInterface_super, collideInterface_impl, collideVehicle, collideVehicle_super, collideVehicle_impl, collideFriction, collideFriction_super, collideFriction_impl, totalImpactVelocity, halfImpactVelocityX, halfImpactVelocityY)
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
import qualified VehiclePropertiesCompositeInterface -- same package or java.lang
import qualified CollidableCompositeLayer -- same package or java.lang
import qualified VehicleProperties -- same package or java.lang
import qualified VehicleFrictionProperties -- same package or java.lang
import qualified PickedUpLayerInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified CollidableInterfaceCompositeInterface -- org.allbinary.game.collision.CollidableInterfaceCompositeInterface
import qualified CollisionType -- org.allbinary.game.collision.CollisionType
import qualified CollisionTypeFactory -- org.allbinary.game.collision.CollisionTypeFactory
import qualified CollidableDestroyableDamageableBehavior -- org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer

data CollidableVehicleBehavior = CollidableVehicleBehavior
    { header_ :: JavaHeader
    , base :: CollidableDestroyableDamageableBehavior.CollidableDestroyableDamageableBehavior
    , totalImpactVelocity :: IORef (Int64)
    , halfImpactVelocityX :: IORef (Int64)
    , halfImpactVelocityY :: IORef (Int64)
    }

instance JavaNull CollidableVehicleBehavior where
    javaNull = javaNullRecord "CollidableVehicleBehavior"

instance JavaEquals CollidableVehicleBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableVehicleBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableVehicleBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableVehicleBehavior
newRecord_ = do
    base <- CollidableDestroyableDamageableBehavior.newRecord_
    let header_ = base.header_
    totalImpactVelocity <- newIORef 0
    halfImpactVelocityX <- newIORef 0
    halfImpactVelocityY <- newIORef 0
    let this = CollidableVehicleBehavior header_ base totalImpactVelocity halfImpactVelocityX halfImpactVelocityY
    jregisterLevel header_ this
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "collideInterface" (\() -> collideInterface_impl this)
    jregisterMethod header_ "collideVehicle" (\() -> collideVehicle_impl this)
    jregisterMethod header_ "collideFriction" (\() -> collideFriction_impl this)
    pure this

initFields_ :: CollidableVehicleBehavior -> IO ()
initFields_ this = do
    jset this.totalImpactVelocity (0)
    jset this.halfImpactVelocityX (0)
    jset this.halfImpactVelocityY (0)
    pure ()

new_1 :: Bool -> IO CollidableVehicleBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableVehicleBehavior -> Bool -> IO ()
init_1 this collidable = do
        CollidableDestroyableDamageableBehavior.init_1 this.base (collidable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableVehicleBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableVehicleBehavior)) a1 a2

collide_impl :: CollidableVehicleBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer collidableInterfaceCompositeInterface = do
        collisionTypeFactory <- (CollisionTypeFactory.getInstance)
        collisionType <- (CollidableBaseBehavior.getCollisionTypeWith ((jio (CollidableCompositeLayer.getCollidableInferface collidableInterfaceCompositeInterface))) ownerLayer)
        if (collisionType == (jget (collisionTypeFactory).pICKUP)) then do
            let collidableDestroyableDamageableLayer = ((javaCast ownerLayer :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer))
            Control.Monad.void (PickupBehavior.doPickupLayer ((jio (CollidableDestroyableDamageableLayer.getPickupBehavior collidableDestroyableDamageableLayer))) (javaCast collidableInterfaceCompositeInterface :: PickedUpLayerInterface.PickedUpLayerInterface))
        else if (collisionType == (jget (collisionTypeFactory).cOLLISION)) then do
            Control.Monad.void (CollidableDestroyableDamageableBehavior.collide_super this.base ownerLayer collidableInterfaceCompositeInterface)
        else do
            Control.Monad.void (CollidableVehicleBehavior.collideVehicle this ownerLayer (javaCast collidableInterfaceCompositeInterface :: VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface))
        pure ()


collideInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface object_ a1 a2 = jmethod object_ "collideInterface" (\() -> (collideInterface_impl (javaCast object_ :: CollidableVehicleBehavior))) () a1 a2

collideInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_super object_ a1 a2 = (collideInterface_impl (javaCast object_ :: CollidableVehicleBehavior)) a1 a2

collideInterface_impl :: CollidableVehicleBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        Control.Monad.void (ForcedLogUtil.log "Don't Use Interface Version It Is Slower" this)
        pure ()


collideVehicle :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface -> IO (())
collideVehicle object_ a1 a2 = jmethod object_ "collideVehicle" (\() -> (collideVehicle_impl (javaCast object_ :: CollidableVehicleBehavior))) () a1 a2

collideVehicle_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface -> IO (())
collideVehicle_super object_ a1 a2 = (collideVehicle_impl (javaCast object_ :: CollidableVehicleBehavior)) a1 a2

collideVehicle_impl :: CollidableVehicleBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface -> IO (())
collideVehicle_impl this ownerLayer vehiclePropertiesCompositeInterface = do
        let ownerVehicleLayerInterface = ((javaCast ownerLayer :: VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface))
        ownerVehicleProperties <- (VehiclePropertiesCompositeInterface.getVehicleProperties ownerVehicleLayerInterface)
        vehicleProperties <- (VehiclePropertiesCompositeInterface.getVehicleProperties vehiclePropertiesCompositeInterface)
        let impactVelocityX = ((jio (BasicDecimal.getUnscaled ((jio (VelocityProperties.getVelocityXBasicDecimalP ((jio (VehicleProperties.getVelocityProperties ownerVehicleProperties)))))))) - (jio (BasicDecimal.getUnscaled ((jio (VelocityProperties.getVelocityXBasicDecimalP ((jio (VehicleProperties.getVelocityProperties vehicleProperties)))))))))
        let impactVelocityY = ((jio (BasicDecimal.getUnscaled ((jio (VelocityProperties.getVelocityYBasicDecimalP ((jio (VehicleProperties.getVelocityProperties ownerVehicleProperties)))))))) - (jio (BasicDecimal.getUnscaled ((jio (VelocityProperties.getVelocityYBasicDecimalP ((jio (VehicleProperties.getVelocityProperties vehicleProperties)))))))))
        if (impactVelocityX /= 0) then do
            jset (this).halfImpactVelocityX (((impactVelocityX `Data.Bits.shiftR` 1)))
            Control.Monad.void (BasicDecimal.addlong ((jio (VelocityProperties.getVelocityXBasicDecimalP ((jio (VehicleProperties.getVelocityProperties ownerVehicleProperties)))))) (jget (this).halfImpactVelocityX))
            Control.Monad.void (BasicDecimal.addlong ((jio (VelocityProperties.getVelocityXBasicDecimalP ((jio (VehicleProperties.getVelocityProperties vehicleProperties)))))) (jget (this).halfImpactVelocityX))
        else do
            pure ()
        if (impactVelocityY /= 0) then do
            jset (this).halfImpactVelocityY (((impactVelocityY `Data.Bits.shiftR` 1)))
            Control.Monad.void (BasicDecimal.addlong ((jio (VelocityProperties.getVelocityYBasicDecimalP ((jio (VehicleProperties.getVelocityProperties ownerVehicleProperties)))))) (jget (this).halfImpactVelocityY))
            Control.Monad.void (BasicDecimal.addlong ((jio (VelocityProperties.getVelocityXBasicDecimalP ((jio (VehicleProperties.getVelocityProperties vehicleProperties)))))) (jget (this).halfImpactVelocityY))
        else do
            pure ()
        Control.Monad.void (CollidableVehicleBehavior.collideFriction this ownerVehicleLayerInterface)
        Control.Monad.void (CollidableVehicleBehavior.collideFriction this vehiclePropertiesCompositeInterface)
        jset (this).totalImpactVelocity ((impactVelocityX + impactVelocityY))
        pure ()


collideFriction :: (JavaObjectClass this_) => this_ -> VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface -> IO (())
collideFriction object_ a1 = jmethod object_ "collideFriction" (\() -> (collideFriction_impl (javaCast object_ :: CollidableVehicleBehavior))) () a1

collideFriction_super :: (JavaObjectClass this_) => this_ -> VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface -> IO (())
collideFriction_super object_ a1 = (collideFriction_impl (javaCast object_ :: CollidableVehicleBehavior)) a1

collideFriction_impl :: CollidableVehicleBehavior -> VehiclePropertiesCompositeInterface.VehiclePropertiesCompositeInterface -> IO (())
collideFriction_impl this vehiclePropertiesCompositeInterface = do
        vehicleFrictionProperties <- (VehiclePropertiesCompositeInterface.getVehicleFrictionProperties ((jio (VehiclePropertiesCompositeInterface.getVehicleProperties vehiclePropertiesCompositeInterface))))
        Control.Monad.void (VehiclePropertiesCompositeInterface.friction ((jio (VehiclePropertiesCompositeInterface.getVehicleFrictionProperties ((jio (VehiclePropertiesCompositeInterface.getVehicleProperties vehiclePropertiesCompositeInterface)))))) (jio (VehiclePropertiesCompositeInterface.getVelocityProperties ((jio (VehiclePropertiesCompositeInterface.getVehicleProperties vehiclePropertiesCompositeInterface))))) (jio (VehicleFrictionProperties.getCrashFrictionNominator vehicleFrictionProperties)))
        pure ()


