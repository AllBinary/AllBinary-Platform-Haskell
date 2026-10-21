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
-- package org.allbinary.game.layer.special
module CollidableDestroyableDamageableBehavior (module CollidableDestroyableDamageableBehavior, module CollidableBaseBehavior) where

import CollidableBaseBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isCollision, isCollision_super, isCollision_impl, collide, collide_super, collide_impl, isCollisionInterface, isCollisionInterface_super, isCollisionInterface_impl, collideInterface, collideInterface_super, collideInterface_impl, damageUtil)
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
import qualified CollidableDestroyableDamageableLayer -- same package or java.lang
import qualified CollidableBaseBehavior -- org.allbinary.game.collision.CollidableBaseBehavior
import qualified CollidableInterfaceCompositeInterface -- org.allbinary.game.collision.CollidableInterfaceCompositeInterface
import qualified DamageUtil -- org.allbinary.game.combat.damage.DamageUtil
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil

data CollidableDestroyableDamageableBehavior = CollidableDestroyableDamageableBehavior
    { header_ :: JavaHeader
    , base :: CollidableBaseBehavior.CollidableBaseBehavior
    , damageUtil :: IORef (DamageUtil.DamageUtil)
    }

instance JavaNull CollidableDestroyableDamageableBehavior where
    javaNull = javaNullRecord "CollidableDestroyableDamageableBehavior"

instance JavaEquals CollidableDestroyableDamageableBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableDestroyableDamageableBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableDestroyableDamageableBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableDestroyableDamageableBehavior
newRecord_ = do
    base <- CollidableBaseBehavior.newRecord_
    let header_ = base.header_
    damageUtil <- newIORef javaNull
    let this = CollidableDestroyableDamageableBehavior header_ base damageUtil
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "isCollisionInterface" (\() -> isCollisionInterface_impl this)
    jregisterMethod header_ "collideInterface" (\() -> collideInterface_impl this)
    pure this

initFields_ :: CollidableDestroyableDamageableBehavior -> IO ()
initFields_ this = do
    jset this.damageUtil =<< (DamageUtil.getInstance)
    pure ()

new_1 :: Bool -> IO CollidableDestroyableDamageableBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableDestroyableDamageableBehavior -> Bool -> IO ()
init_1 this collidable = do
        CollidableBaseBehavior.init_1 this.base (collidable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior)) a1 a2

isCollision_impl :: CollidableDestroyableDamageableBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_impl this ownerLayer collisionLayer = do
    javaCatchReturn $ do
        when ((jindex ((jio (CollidableCompositeLayer.getGroupInterface ownerLayer))) (0)) /= (jindex ((jio (CollidableCompositeLayer.getGroupInterface collisionLayer))) (0))) $ do
            javaReturn =<< (CollidableBaseBehavior.isCollision_super this.base ownerLayer collisionLayer)
        pure (False)


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior)) a1 a2

collide_impl :: CollidableDestroyableDamageableBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer collidableInterfaceCompositeInterface = do
        let ownerCollidableDestroyableDamageableLayer = (javaCast ownerLayer :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        let collidableDestroyableDamageableLayer = (javaCast collidableInterfaceCompositeInterface :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        Control.Monad.void (CollidableDestroyableDamageableLayer.damage ownerCollidableDestroyableDamageableLayer (jio (CollidableDestroyableDamageableLayer.getDamage collidableDestroyableDamageableLayer 0)) 0)
        pure ()


isCollisionInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface object_ a1 a2 = jmethod object_ "isCollisionInterface" (\() -> (isCollisionInterface_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior))) () a1 a2

isCollisionInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_super object_ a1 a2 = (isCollisionInterface_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior)) a1 a2

isCollisionInterface_impl :: CollidableDestroyableDamageableBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        Control.Monad.void (ForcedLogUtil.log "No Longer Used" this)
        pure (False)


-- throws Exception
collideInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface object_ a1 a2 = jmethod object_ "collideInterface" (\() -> (collideInterface_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior))) () a1 a2

collideInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_super object_ a1 a2 = (collideInterface_impl (javaCast object_ :: CollidableDestroyableDamageableBehavior)) a1 a2

collideInterface_impl :: CollidableDestroyableDamageableBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        Control.Monad.void (ForcedLogUtil.log "No Longer Used" this)
        pure ()


