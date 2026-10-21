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
module CollidableAlwaysPickupNeverCollideBehavior (module CollidableAlwaysPickupNeverCollideBehavior, module CollidableNeverCollideBehavior) where

import CollidableNeverCollideBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCollisionTypeWith, getCollisionTypeWith_super, getCollisionTypeWith_impl)
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
import qualified CollisionTypeFactory -- same package or java.lang
import qualified CollisionType -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified CollidableNeverCollideBehavior

data CollidableAlwaysPickupNeverCollideBehavior = CollidableAlwaysPickupNeverCollideBehavior
    { header_ :: JavaHeader
    , base :: CollidableNeverCollideBehavior.CollidableNeverCollideBehavior
    }

instance JavaNull CollidableAlwaysPickupNeverCollideBehavior where
    javaNull = javaNullRecord "CollidableAlwaysPickupNeverCollideBehavior"

instance JavaEquals CollidableAlwaysPickupNeverCollideBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableAlwaysPickupNeverCollideBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableAlwaysPickupNeverCollideBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableAlwaysPickupNeverCollideBehavior
newRecord_ = do
    base <- CollidableNeverCollideBehavior.newRecord_
    let header_ = base.header_
    let this = CollidableAlwaysPickupNeverCollideBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getCollisionTypeWith" (\() -> getCollisionTypeWith_impl this)
    pure this

initFields_ :: CollidableAlwaysPickupNeverCollideBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CollidableAlwaysPickupNeverCollideBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollidableAlwaysPickupNeverCollideBehavior -> IO ()
init_ this = do
        CollidableNeverCollideBehavior.init_1 this.base (True)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getCollisionTypeWith :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith object_ a1 = jmethod object_ "getCollisionTypeWith" (\() -> (getCollisionTypeWith_impl (javaCast object_ :: CollidableAlwaysPickupNeverCollideBehavior))) () a1

getCollisionTypeWith_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_super object_ a1 = (getCollisionTypeWith_impl (javaCast object_ :: CollidableAlwaysPickupNeverCollideBehavior)) a1

getCollisionTypeWith_impl :: CollidableAlwaysPickupNeverCollideBehavior -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_impl this layerInterface = do
        pure ((jget ((jio (CollisionTypeFactory.getInstance))).pICKUP))


