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
-- package org.allbinary.game.collision
module CollidableNeverCollideBehavior (module CollidableNeverCollideBehavior, module CollidableBaseBehavior) where

import CollidableBaseBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isCollision, isCollision_super, isCollision_impl, collide, collide_super, collide_impl, collideInterface, collideInterface_super, collideInterface_impl, isCollisionInterface, isCollisionInterface_super, isCollisionInterface_impl)
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
import qualified CollidableInterfaceCompositeInterface -- same package or java.lang
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified CollidableBaseBehavior

data CollidableNeverCollideBehavior = CollidableNeverCollideBehavior
    { header_ :: JavaHeader
    , base :: CollidableBaseBehavior.CollidableBaseBehavior
    }

instance JavaNull CollidableNeverCollideBehavior where
    javaNull = javaNullRecord "CollidableNeverCollideBehavior"

instance JavaEquals CollidableNeverCollideBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableNeverCollideBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableNeverCollideBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableNeverCollideBehavior
newRecord_ = do
    base <- CollidableBaseBehavior.newRecord_
    let header_ = base.header_
    let this = CollidableNeverCollideBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "collideInterface" (\() -> collideInterface_impl this)
    jregisterMethod header_ "isCollisionInterface" (\() -> isCollisionInterface_impl this)
    pure this

initFields_ :: CollidableNeverCollideBehavior -> IO ()
initFields_ this = do
    pure ()

new_1 :: Bool -> IO CollidableNeverCollideBehavior
new_1 isCollidable = do
    this <- newRecord_
    init_1 this isCollidable
    pure this

init_1 :: CollidableNeverCollideBehavior -> Bool -> IO ()
init_1 this isCollidable = do
        CollidableBaseBehavior.init_1 this.base (isCollidable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollidableNeverCollideBehavior))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollidableNeverCollideBehavior)) a1 a2

isCollision_impl :: CollidableNeverCollideBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_impl this ownerLayer allbinaryCollidableLayer = do
        pure (False)


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableNeverCollideBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableNeverCollideBehavior)) a1 a2

collide_impl :: CollidableNeverCollideBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer allbinaryCollidableLayer = do
        pure ()


collideInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface object_ a1 a2 = jmethod object_ "collideInterface" (\() -> (collideInterface_impl (javaCast object_ :: CollidableNeverCollideBehavior))) () a1 a2

collideInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_super object_ a1 a2 = (collideInterface_impl (javaCast object_ :: CollidableNeverCollideBehavior)) a1 a2

collideInterface_impl :: CollidableNeverCollideBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        pure ()


isCollisionInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface object_ a1 a2 = jmethod object_ "isCollisionInterface" (\() -> (isCollisionInterface_impl (javaCast object_ :: CollidableNeverCollideBehavior))) () a1 a2

isCollisionInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_super object_ a1 a2 = (isCollisionInterface_impl (javaCast object_ :: CollidableNeverCollideBehavior)) a1 a2

isCollisionInterface_impl :: CollidableNeverCollideBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        pure (False)


