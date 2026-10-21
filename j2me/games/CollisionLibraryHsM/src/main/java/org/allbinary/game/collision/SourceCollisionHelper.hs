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
module SourceCollisionHelper (module SourceCollisionHelper, module CollisionHelper) where

import CollisionHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isCollidable, isCollidable_super, isCollidable_impl)
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
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified CollisionHelper

data SourceCollisionHelper = SourceCollisionHelper
    { header_ :: JavaHeader
    , base :: CollisionHelper.CollisionHelper
    }

instance JavaNull SourceCollisionHelper where
    javaNull = javaNullRecord "SourceCollisionHelper"

instance JavaEquals SourceCollisionHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SourceCollisionHelper where
    (==) = jrecordEquals

instance JavaObjectClass SourceCollisionHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SourceCollisionHelper
newRecord_ = do
    base <- CollisionHelper.newRecord_
    let header_ = base.header_
    let this = SourceCollisionHelper header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isCollidable" (\() -> isCollidable_impl this)
    pure this

initFields_ :: SourceCollisionHelper -> IO ()
initFields_ this = do
    pure ()

new_1 :: AllBinaryLayer.AllBinaryLayer -> IO SourceCollisionHelper
new_1 layerInterface = do
    this <- newRecord_
    init_1 this layerInterface
    pure this

init_1 :: SourceCollisionHelper -> AllBinaryLayer.AllBinaryLayer -> IO ()
init_1 this layerInterface = do
        CollisionHelper.init_1 this.base (layerInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isCollidable :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable object_ a1 = jmethod object_ "isCollidable" (\() -> (isCollidable_impl (javaCast object_ :: SourceCollisionHelper))) () a1

isCollidable_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_super object_ a1 = (isCollidable_impl (javaCast object_ :: SourceCollisionHelper)) a1

isCollidable_impl :: SourceCollisionHelper -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_impl this layerInterface = do
    javaCatchReturn $ do
        when ((jtoObject (jget (this).base.sourceLayerInterface)) /= (jtoObject layerInterface)) $ do
            javaReturn (True)
        pure (False)


