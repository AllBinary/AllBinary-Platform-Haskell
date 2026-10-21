{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
module CollidableRTSBehavior (module CollidableRTSBehavior, module CollidableDestroyableDamageableBehavior) where

import CollidableDestroyableDamageableBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isCollision, isCollision_super, isCollision_impl, collide, collide_super, collide_impl, collideNone, collideNone_super, collideNone_impl)
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
import qualified CollidableCompositeLayer -- same package or java.lang
import qualified CollisionType -- org.allbinary.game.collision.CollisionType
import qualified CollisionTypeFactory -- org.allbinary.game.collision.CollisionTypeFactory
import qualified CollidableDestroyableDamageableBehavior -- org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior

data CollidableRTSBehavior = CollidableRTSBehavior
    { header_ :: JavaHeader
    , base :: CollidableDestroyableDamageableBehavior.CollidableDestroyableDamageableBehavior
    }

instance JavaNull CollidableRTSBehavior where
    javaNull = javaNullRecord "CollidableRTSBehavior"

instance JavaEquals CollidableRTSBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableRTSBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableRTSBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableRTSBehavior
newRecord_ = do
    base <- CollidableDestroyableDamageableBehavior.newRecord_
    let header_ = base.header_
    let this = CollidableRTSBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "collideNone" (\() -> collideNone_impl this)
    pure this

initFields_ :: CollidableRTSBehavior -> IO ()
initFields_ this = do
    pure ()

new_1 :: Bool -> IO CollidableRTSBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableRTSBehavior -> Bool -> IO ()
init_1 this collidable = do
        CollidableDestroyableDamageableBehavior.init_1 this.base (collidable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollidableRTSBehavior))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollidableRTSBehavior)) a1 a2

isCollision_impl :: CollidableRTSBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_impl this ownerLayer collidableInterfaceCompositeInterface = do
    javaCatchReturn $ do
        collisionTypeFactory <- (CollisionTypeFactory.getInstance)
        collisionType <- (CollidableBaseBehavior.getCollisionTypeWith ((jio (CollidableCompositeLayer.getCollidableInferface collidableInterfaceCompositeInterface))) ownerLayer)
        if (collisionType == (jget (collisionTypeFactory).pICKUP)) then do
            pure ()
        else if (collisionType == (jget (collisionTypeFactory).cOLLISION)) then do
            javaReturn =<< (CollidableDestroyableDamageableBehavior.isCollision_super this.base ownerLayer collidableInterfaceCompositeInterface)
        else do
            if (((((jio (CollidableCompositeLayer.getX2 collidableInterfaceCompositeInterface)) <= (jio (CollidableCompositeLayer.getXP ownerLayer))) || ((jio (CollidableCompositeLayer.getY2 collidableInterfaceCompositeInterface)) <= (jio (CollidableCompositeLayer.getYP ownerLayer)))) || ((jio (CollidableCompositeLayer.getYP collidableInterfaceCompositeInterface)) >= (jio (CollidableCompositeLayer.getY2 ownerLayer)))) || ((jio (CollidableCompositeLayer.getXP collidableInterfaceCompositeInterface)) >= (jio (CollidableCompositeLayer.getX2 ownerLayer)))) then do
                javaReturn (False)
            else do
                javaReturn (True)
        pure (False)


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableRTSBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableRTSBehavior)) a1 a2

collide_impl :: CollidableRTSBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer collidableInterfaceCompositeInterface = do
        collisionTypeFactory <- (CollisionTypeFactory.getInstance)
        collisionType <- (CollidableBaseBehavior.getCollisionTypeWith ((jio (CollidableCompositeLayer.getCollidableInferface collidableInterfaceCompositeInterface))) ownerLayer)
        if (collisionType == (jget (collisionTypeFactory).pICKUP)) then do
            pure ()
        else if (collisionType == (jget (collisionTypeFactory).cOLLISION)) then do
            Control.Monad.void (CollidableDestroyableDamageableBehavior.collide_super this.base ownerLayer collidableInterfaceCompositeInterface)
        else do
            Control.Monad.void (CollidableRTSBehavior.collideNone this ownerLayer collidableInterfaceCompositeInterface)
        pure ()


-- throws Exception
collideNone :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collideNone object_ a1 a2 = jmethod object_ "collideNone" (\() -> (collideNone_impl (javaCast object_ :: CollidableRTSBehavior))) () a1 a2

collideNone_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collideNone_super object_ a1 a2 = (collideNone_impl (javaCast object_ :: CollidableRTSBehavior)) a1 a2

collideNone_impl :: CollidableRTSBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collideNone_impl this ownerLayer collidableInterface = do
        pure ()


