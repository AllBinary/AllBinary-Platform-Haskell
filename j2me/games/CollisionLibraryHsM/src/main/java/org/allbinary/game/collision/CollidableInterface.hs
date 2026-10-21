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
module CollidableInterface (module CollidableInterface, module NamedInterface) where

import NamedInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isCollidable, isCollidable_super, isCollidable_impl, isCollision, isCollision_super, isCollision_impl, collide, collide_super, collide_impl, getCollisionTypeWith, getCollisionTypeWith_super, getCollisionTypeWith_impl, toString)
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
import qualified CollisionType -- same package or java.lang
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified NamedInterface -- org.allbinary.layer.NamedInterface

-- Java interface: the classes that implement it have these functions
data CollidableInterface = CollidableInterface
    { header_ :: JavaHeader
    }

instance JavaNull CollidableInterface where
    javaNull = javaNullRecord "CollidableInterface"

instance JavaEquals CollidableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableInterface where
    (==) = jrecordEquals

instance JavaObjectClass CollidableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CollidableInterface
fromHeader_ header = CollidableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CollidableInterface header)
    NamedInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
isCollidable :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable object_ a1 = jmethod object_ "isCollidable" (\() -> (isCollidable_impl (javaCast object_ :: CollidableInterface))) () a1

isCollidable_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_super object_ a1 = (isCollidable_impl (javaCast object_ :: CollidableInterface)) a1

isCollidable_impl :: CollidableInterface -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_impl this ownerLayer = javaAbstractMethod "isCollidable"


-- throws Exception
isCollision :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollidableInterface))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollidableInterface)) a1 a2

isCollision_impl :: CollidableInterface -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_impl this ownerLayer collidableInterfaceCompositeInterface = javaAbstractMethod "isCollision"


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableInterface))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableInterface)) a1 a2

collide_impl :: CollidableInterface -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer collidableInterfaceCompositeInterface = javaAbstractMethod "collide"


getCollisionTypeWith :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith object_ a1 = jmethod object_ "getCollisionTypeWith" (\() -> (getCollisionTypeWith_impl (javaCast object_ :: CollidableInterface))) () a1

getCollisionTypeWith_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_super object_ a1 = (getCollisionTypeWith_impl (javaCast object_ :: CollidableInterface)) a1

getCollisionTypeWith_impl :: CollidableInterface -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_impl this layerInterface = javaAbstractMethod "getCollisionTypeWith"


