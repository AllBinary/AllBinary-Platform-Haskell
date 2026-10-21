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
module CollidableDamageWeaponBehavior (module CollidableDamageWeaponBehavior, module CollidableDestroyableDamageableBehavior) where

import CollidableDestroyableDamageableBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isCollision, isCollision_super, isCollision_impl, collide, collide_super, collide_impl, isCollisionInterface, isCollisionInterface_super, isCollisionInterface_impl, collideInterface, collideInterface_super, collideInterface_impl, getCollisionTypeWith, getCollisionTypeWith_super, getCollisionTypeWith_impl, isCollided, isCollided_super, isCollided_impl, setCollided, setCollided_super, setCollided_impl, collided, collisionHelper)
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
import qualified LayerCollisionUtil -- same package or java.lang
import qualified DamageUtil -- same package or java.lang
import qualified CollidableHelperFactory -- org.allbinary.game.collision.CollidableHelperFactory
import qualified CollidableInterfaceCompositeInterface -- org.allbinary.game.collision.CollidableInterfaceCompositeInterface
import qualified CollisionHelper -- org.allbinary.game.collision.CollisionHelper
import qualified CollisionType -- org.allbinary.game.collision.CollisionType
import qualified CollisionTypeFactory -- org.allbinary.game.collision.CollisionTypeFactory
import qualified DamageableInterface -- org.allbinary.game.combat.damage.DamageableInterface
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified CollidableDestroyableDamageableBehavior -- org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data CollidableDamageWeaponBehavior = CollidableDamageWeaponBehavior
    { header_ :: JavaHeader
    , base :: CollidableDestroyableDamageableBehavior.CollidableDestroyableDamageableBehavior
    , collided :: IORef (Bool)
    , collisionHelper :: IORef (CollisionHelper.CollisionHelper)
    }

instance JavaNull CollidableDamageWeaponBehavior where
    javaNull = javaNullRecord "CollidableDamageWeaponBehavior"

instance JavaEquals CollidableDamageWeaponBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableDamageWeaponBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableDamageWeaponBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableDamageWeaponBehavior
newRecord_ = do
    base <- CollidableDestroyableDamageableBehavior.newRecord_
    let header_ = base.header_
    collided <- newIORef False
    collisionHelper <- newIORef javaNull
    let this = CollidableDamageWeaponBehavior header_ base collided collisionHelper
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "isCollisionInterface" (\() -> isCollisionInterface_impl this)
    jregisterMethod header_ "collideInterface" (\() -> collideInterface_impl this)
    jregisterMethod header_ "getCollisionTypeWith" (\() -> getCollisionTypeWith_impl this)
    jregisterMethod header_ "isCollided" (\() -> isCollided_impl this)
    jregisterMethod header_ "setCollided" (\() -> setCollided_impl this)
    pure this

initFields_ :: CollidableDamageWeaponBehavior -> IO ()
initFields_ this = do
    jset this.collided (False)
    jset this.collisionHelper (javaNull)
    pure ()

new_1 :: Bool -> IO CollidableDamageWeaponBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableDamageWeaponBehavior -> Bool -> IO ()
init_1 this collidable = do
        CollidableDestroyableDamageableBehavior.init_1 this.base (collidable)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (CollidableDamageWeaponBehavior.setCollided this False)
        Control.Monad.void (CollidableDestroyableDamageableBehavior.setCollidable this True)
        assignedValue <- (CollidableHelperFactory.getInstance)
        jset (this).collisionHelper (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1

init_impl :: CollidableDamageWeaponBehavior -> AllBinaryLayer.AllBinaryLayer -> IO (())
init_impl this sourceLayerInterface = do
        Control.Monad.void (CollidableDamageWeaponBehavior.setCollided this False)
        Control.Monad.void (CollisionHelper.setOwnerLayerInterface ((jget (this).collisionHelper)) sourceLayerInterface)
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1 a2

isCollision_impl :: CollidableDamageWeaponBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_impl this ownerLayer collisionLayer = do
    javaCatchReturn $ do
        when (jio (CollisionHelper.isCollidable ((jget (this).collisionHelper)) collisionLayer)) $ do
            when ((jindex ((jio (CollidableCompositeLayer.getGroupInterface ownerLayer))) (0)) /= (jindex ((jio (CollidableCompositeLayer.getGroupInterface collisionLayer))) (0))) $ do
                javaReturn =<< (CollidableDestroyableDamageableBehavior.isCollision_super this.base ownerLayer collisionLayer)
        pure (False)


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1 a2

collide_impl :: CollidableDamageWeaponBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer collisionLayer = do
        Control.Monad.void (CollidableDestroyableDamageableBehavior.collide_super this.base ownerLayer collisionLayer)
        jset (this).collided (True)
        pure ()


isCollisionInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface object_ a1 a2 = jmethod object_ "isCollisionInterface" (\() -> (isCollisionInterface_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1 a2

isCollisionInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_super object_ a1 a2 = (isCollisionInterface_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1 a2

isCollisionInterface_impl :: CollidableDamageWeaponBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
    javaCatchReturn $ do
        when (jio (CollisionHelper.isCollidable ((jget (this).collisionHelper)) (javaCast collidableInterfaceCompositeInterface :: CollidableCompositeLayer.CollidableCompositeLayer))) $ do
            let layerInterface = (javaCast collidableInterfaceCompositeInterface :: AllBinaryLayer.AllBinaryLayer)
            when ((jindex ((jio (CollidableCompositeLayer.getGroupInterface ownerLayer))) (0)) /= (jindex ((jio (AllBinaryLayer.getGroupInterface layerInterface))) (0))) $ do
                when (jio (LayerCollisionUtil.isCollision ((jget (this).base.base.layerCollisionUtil)) ownerLayer layerInterface)) $ do
                    javaReturn (True)
        pure (False)


-- throws Exception
collideInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface object_ a1 a2 = jmethod object_ "collideInterface" (\() -> (collideInterface_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1 a2

collideInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_super object_ a1 a2 = (collideInterface_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1 a2

collideInterface_impl :: CollidableDamageWeaponBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        Control.Monad.void (DamageUtil.process ((jget (this).base.damageUtil)) (javaCast ownerLayer :: DamageableInterface.DamageableInterface) (javaCast collidableInterfaceCompositeInterface :: DamageableInterface.DamageableInterface))
        jset (this).collided (True)
        pure ()


getCollisionTypeWith :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith object_ a1 = jmethod object_ "getCollisionTypeWith" (\() -> (getCollisionTypeWith_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1

getCollisionTypeWith_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_super object_ a1 = (getCollisionTypeWith_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1

getCollisionTypeWith_impl :: CollidableDamageWeaponBehavior -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_impl this layerInterface = do
        pure ((jget ((jio (CollisionTypeFactory.getInstance))).cOLLISION))


isCollided :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCollided object_ = jmethod object_ "isCollided" (\() -> (isCollided_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) ()

isCollided_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCollided_super object_ = (isCollided_impl (javaCast object_ :: CollidableDamageWeaponBehavior))

isCollided_impl :: CollidableDamageWeaponBehavior -> IO (Bool)
isCollided_impl this = do
        pure ((jget (this).collided))


setCollided :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCollided object_ a1 = jmethod object_ "setCollided" (\() -> (setCollided_impl (javaCast object_ :: CollidableDamageWeaponBehavior))) () a1

setCollided_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCollided_super object_ a1 = (setCollided_impl (javaCast object_ :: CollidableDamageWeaponBehavior)) a1

setCollided_impl :: CollidableDamageWeaponBehavior -> Bool -> IO (())
setCollided_impl this collided = do
        jset (this).collided (collided)
        pure ()


