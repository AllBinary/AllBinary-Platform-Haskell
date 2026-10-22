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
module CollidableCharacterBehavior (module CollidableCharacterBehavior, module CollidableDestroyableDamageableBehavior) where

import CollidableDestroyableDamageableBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, collide, collide_super, collide_impl, collideInterface, collideInterface_super, collideInterface_impl)
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
import qualified CommonStrings -- same package or java.lang
import qualified CollidableInterfaceCompositeInterface -- org.allbinary.game.collision.CollidableInterfaceCompositeInterface
import qualified CollisionType -- org.allbinary.game.collision.CollisionType
import qualified CollisionTypeFactory -- org.allbinary.game.collision.CollisionTypeFactory
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified PickedUpLayerInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified CollidableDestroyableDamageableBehavior

data CollidableCharacterBehavior = CollidableCharacterBehavior
    { header_ :: JavaHeader
    , base :: CollidableDestroyableDamageableBehavior.CollidableDestroyableDamageableBehavior
    }

instance JavaNull CollidableCharacterBehavior where
    javaNull = javaNullRecord "CollidableCharacterBehavior"

instance JavaEquals CollidableCharacterBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableCharacterBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableCharacterBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableCharacterBehavior
newRecord_ = do
    base <- CollidableDestroyableDamageableBehavior.newRecord_
    let header_ = base.header_
    let this = CollidableCharacterBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "collideInterface" (\() -> collideInterface_impl this)
    pure this

initFields_ :: CollidableCharacterBehavior -> IO ()
initFields_ this = do
    pure ()

new_1 :: Bool -> IO CollidableCharacterBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableCharacterBehavior -> Bool -> IO ()
init_1 this collidable = do
        CollidableDestroyableDamageableBehavior.init_1 this.base (collidable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableCharacterBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableCharacterBehavior)) a1 a2

collide_impl :: CollidableCharacterBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer collidableInterfaceCompositeInterface = do
        collisionTypeFactory <- (CollisionTypeFactory.getInstance)
        collisionType <- (CollidableBaseBehavior.getCollisionTypeWith ((jio (CollidableCompositeLayer.getCollidableInferface collidableInterfaceCompositeInterface))) (javaCast ownerLayer))
        if (collisionType == (jget (collisionTypeFactory).pICKUP)) then do
            let collidableDestroyableDamageableLayer = (javaCast ownerLayer :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
            Control.Monad.void (PickupBehavior.doPickupLayer ((jio (CollidableDestroyableDamageableLayer.getPickupBehavior collidableDestroyableDamageableLayer))) (javaCast collidableInterfaceCompositeInterface :: PickedUpLayerInterface.PickedUpLayerInterface))
        else do
            Control.Monad.void (CollidableDestroyableDamageableBehavior.collide_super this.base ownerLayer collidableInterfaceCompositeInterface)
        pure ()


-- throws Exception
collideInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface object_ a1 a2 = jmethod object_ "collideInterface" (\() -> (collideInterface_impl (javaCast object_ :: CollidableCharacterBehavior))) () a1 a2

collideInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_super object_ a1 a2 = (collideInterface_impl (javaCast object_ :: CollidableCharacterBehavior)) a1 a2

collideInterface_impl :: CollidableCharacterBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED) this)
        pure ()


