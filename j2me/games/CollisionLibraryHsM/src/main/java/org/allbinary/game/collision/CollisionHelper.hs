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
module CollisionHelper where

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

data CollisionHelper = CollisionHelper
    { header_ :: JavaHeader
    , sourceLayerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull CollisionHelper where
    javaNull = javaNullRecord "CollisionHelper"

instance JavaEquals CollisionHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollisionHelper where
    (==) = jrecordEquals

instance JavaObjectClass CollisionHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CollisionHelper
newRecord_ = do
    header_ <- newJavaHeader
    sourceLayerInterface <- newIORef javaNull
    let this = CollisionHelper header_ sourceLayerInterface
    jregisterLevel header_ this
    jregisterMethod header_ "isCollidable" (\() -> isCollidable_impl this)
    jregisterMethod header_ "getOwnerLayerInterface" (\() -> getOwnerLayerInterface_impl this)
    jregisterMethod header_ "setOwnerLayerInterface" (\() -> setOwnerLayerInterface_impl this)
    pure this

initFields_ :: CollisionHelper -> IO ()
initFields_ this = do
    jset this.sourceLayerInterface (javaNull)
    pure ()

new_1 :: AllBinaryLayer.AllBinaryLayer -> IO CollisionHelper
new_1 sourceLayerInterface = do
    this <- newRecord_
    init_1 this sourceLayerInterface
    pure this

init_1 :: CollisionHelper -> AllBinaryLayer.AllBinaryLayer -> IO ()
init_1 this sourceLayerInterface = do
        initFields_ this
        jset (this).sourceLayerInterface (sourceLayerInterface)
        pure ()


isCollidable :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable object_ a1 = jmethod object_ "isCollidable" (\() -> (isCollidable_impl (javaCast object_ :: CollisionHelper))) () a1

isCollidable_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_super object_ a1 = (isCollidable_impl (javaCast object_ :: CollisionHelper)) a1

isCollidable_impl :: CollisionHelper -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_impl this layerInterface = do
        pure (True)


getOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface object_ = jmethod object_ "getOwnerLayerInterface" (\() -> (getOwnerLayerInterface_impl (javaCast object_ :: CollisionHelper))) ()

getOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_super object_ = (getOwnerLayerInterface_impl (javaCast object_ :: CollisionHelper))

getOwnerLayerInterface_impl :: CollisionHelper -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_impl this = do
        pure ((jget (this).sourceLayerInterface))


setOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface object_ a1 = jmethod object_ "setOwnerLayerInterface" (\() -> (setOwnerLayerInterface_impl (javaCast object_ :: CollisionHelper))) () a1

setOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface_super object_ a1 = (setOwnerLayerInterface_impl (javaCast object_ :: CollisionHelper)) a1

setOwnerLayerInterface_impl :: CollisionHelper -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface_impl this sourceLayerInterface = do
        jset (this).sourceLayerInterface (sourceLayerInterface)
        pure ()


