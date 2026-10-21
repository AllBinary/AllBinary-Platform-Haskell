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
module LayerCollisionUtil where

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
import qualified CollisionProcessor -- same package or java.lang
import qualified Collision2DProcessor -- same package or java.lang
import qualified CollisionThreedProcessor -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data LayerCollisionUtil = LayerCollisionUtil
    { header_ :: JavaHeader
    , collisionProcessor :: IORef (CollisionProcessor.CollisionProcessor)
    }

instance JavaNull LayerCollisionUtil where
    javaNull = javaNullRecord "LayerCollisionUtil"

instance JavaEquals LayerCollisionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerCollisionUtil where
    (==) = jrecordEquals

instance JavaObjectClass LayerCollisionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerCollisionUtil
newRecord_ = do
    header_ <- newJavaHeader
    collisionProcessor <- newIORef javaNull
    let this = LayerCollisionUtil header_ collisionProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    pure this

initFields_ :: LayerCollisionUtil -> IO ()
initFields_ this = do
    jset this.collisionProcessor (javaNull)
    pure ()


getInstance :: IO (LayerCollisionUtil)
getInstance = do
        pure (LayerCollisionUtil.instance_)

new_ :: IO LayerCollisionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerCollisionUtil -> IO ()
init_ this = do
        initFields_ this
        features <- (Features.getInstance)
        gameFeatureFactory <- (GameFeatureFactory.getInstance)
        if ((jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) && (Prelude.not (jio (Features.isFeature features (jget (gameFeatureFactory).cOLLISIONS_FORCED_TWO_DIMENSIONAL))))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: CollisionProcessor.CollisionProcessor) (CollisionThreedProcessor.new_))
            jset (this).collisionProcessor (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: CollisionProcessor.CollisionProcessor) (Collision2DProcessor.new_))
            jset (this).collisionProcessor (assignedValue)
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: LayerCollisionUtil))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: LayerCollisionUtil)) a1 a2

isCollision_impl :: LayerCollisionUtil -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision_impl this myLayer myLayer2 = do
        (CollisionProcessor.isCollision ((jget (this).collisionProcessor)) myLayer myLayer2)


