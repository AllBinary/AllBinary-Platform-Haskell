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
-- package org.allbinary.game.combat.destroy
module DestroyableSimpleBehavior (module DestroyableSimpleBehavior, module DestroyableBaseBehavior) where

import DestroyableBaseBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isDestroyed, isDestroyed_super, isDestroyed_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, ownerLayer, destroyed)
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
import qualified DestroyedLayerProcessor -- same package or java.lang
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified DestroyableBaseBehavior

data DestroyableSimpleBehavior = DestroyableSimpleBehavior
    { header_ :: JavaHeader
    , base :: DestroyableBaseBehavior.DestroyableBaseBehavior
    , ownerLayer :: IORef (CollidableCompositeLayer.CollidableCompositeLayer)
    , destroyed :: IORef (Bool)
    }

instance JavaNull DestroyableSimpleBehavior where
    javaNull = javaNullRecord "DestroyableSimpleBehavior"

instance JavaEquals DestroyableSimpleBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DestroyableSimpleBehavior where
    (==) = jrecordEquals

instance JavaObjectClass DestroyableSimpleBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DestroyableSimpleBehavior
newRecord_ = do
    base <- DestroyableBaseBehavior.newRecord_
    let header_ = base.header_
    ownerLayer <- newIORef javaNull
    destroyed <- newIORef False
    let this = DestroyableSimpleBehavior header_ base ownerLayer destroyed
    jregisterLevel header_ this
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    pure this

initFields_ :: DestroyableSimpleBehavior -> IO ()
initFields_ this = do
    jset this.ownerLayer (javaNull)
    jset this.destroyed (False)
    pure ()

new_1 :: CollidableCompositeLayer.CollidableCompositeLayer -> IO DestroyableSimpleBehavior
new_1 ownerLayer = do
    this <- newRecord_
    init_1 this ownerLayer
    pure this

init_1 :: DestroyableSimpleBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> IO ()
init_1 this ownerLayer = do
        DestroyableBaseBehavior.init_ this.base
        initFields_ this
        jset (this).ownerLayer (ownerLayer)
        pure ()


isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: DestroyableSimpleBehavior))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: DestroyableSimpleBehavior))

isDestroyed_impl :: DestroyableSimpleBehavior -> IO (Bool)
isDestroyed_impl this = do
        pure ((jget (this).destroyed))


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: DestroyableSimpleBehavior))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: DestroyableSimpleBehavior)) a1

setDestroyed_impl :: DestroyableSimpleBehavior -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        jset (this).destroyed (destroyed)
        when (jio (DestroyableSimpleBehavior.isDestroyed this)) $ do
            Control.Monad.void (BasicLayerProcessor.add ((jio (DestroyedLayerProcessor.getInstance))) (jget (this).ownerLayer))
        pure ()


