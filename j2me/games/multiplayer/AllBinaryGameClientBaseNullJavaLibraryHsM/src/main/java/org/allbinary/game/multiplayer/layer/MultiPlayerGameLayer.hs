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
-- package org.allbinary.game.multiplayer.layer
module MultiPlayerGameLayer (module MultiPlayerGameLayer, module CollidableDestroyableDamageableLayer) where

import CollidableDestroyableDamageableLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getMultiplayerBehavior, getMultiplayerBehavior_super, getMultiplayerBehavior_impl, setPingInfo, setPingInfo_super, setPingInfo_impl, setFiring, setFiring_super, setFiring_impl, getFiring, getFiring_super, getFiring_impl)
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
import qualified RemoteInfo -- same package or java.lang
import qualified MultiplayerBehavior -- same package or java.lang
import qualified Group -- org.allbinary.game.identification.Group
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified MultiPlayerGameLayerInterface

-- implements MultiPlayerGameLayerInterface
data MultiPlayerGameLayer = MultiPlayerGameLayer
    { header_ :: JavaHeader
    , base :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer
    }

instance JavaNull MultiPlayerGameLayer where
    javaNull = javaNullRecord "MultiPlayerGameLayer"

instance JavaEquals MultiPlayerGameLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiPlayerGameLayer where
    (==) = jrecordEquals

instance JavaObjectClass MultiPlayerGameLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultiPlayerGameLayer
newRecord_ = do
    base <- CollidableDestroyableDamageableLayer.newRecord_
    let header_ = base.header_
    let this = MultiPlayerGameLayer header_ base
    jregisterLevel header_ this
    MultiPlayerGameLayerInterface.registerInterface_ header_
    jregisterMethod header_ "getMultiplayerBehavior" (\() -> getMultiplayerBehavior_impl this)
    jregisterMethod header_ "setPingInfo" (\() -> setPingInfo_impl this)
    jregisterMethod header_ "setFiring" (\() -> setFiring_impl this)
    jregisterMethod header_ "getFiring" (\() -> getFiring_impl this)
    pure this

initFields_ :: MultiPlayerGameLayer -> IO ()
initFields_ this = do
    pure ()

new_5 :: RemoteInfo.RemoteInfo -> JavaArray (Group.Group) -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO MultiPlayerGameLayer
new_5 remoteInfo groupInterface name layerInfo viewPosition = do
    this <- newRecord_
    init_5 this remoteInfo groupInterface name layerInfo viewPosition
    pure this

init_5 :: MultiPlayerGameLayer -> RemoteInfo.RemoteInfo -> JavaArray (Group.Group) -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_5 this remoteInfo groupInterface name layerInfo viewPosition = do
        CollidableDestroyableDamageableLayer.init_4 this.base (groupInterface) (name) (layerInfo) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getMultiplayerBehavior :: (JavaObjectClass this_) => this_ -> IO (MultiplayerBehavior.MultiplayerBehavior)
getMultiplayerBehavior object_ = jmethod object_ "getMultiplayerBehavior" (\() -> (getMultiplayerBehavior_impl (javaCast object_ :: MultiPlayerGameLayer))) ()

getMultiplayerBehavior_super :: (JavaObjectClass this_) => this_ -> IO (MultiplayerBehavior.MultiplayerBehavior)
getMultiplayerBehavior_super object_ = (getMultiplayerBehavior_impl (javaCast object_ :: MultiPlayerGameLayer))

getMultiplayerBehavior_impl :: MultiPlayerGameLayer -> IO (MultiplayerBehavior.MultiplayerBehavior)
getMultiplayerBehavior_impl this = do
        pure (MultiplayerBehavior.nULL_MULTIPLAYER_BEHAVIOR)


setPingInfo :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPingInfo object_ a1 = jmethod object_ "setPingInfo" (\() -> (setPingInfo_impl (javaCast object_ :: MultiPlayerGameLayer))) () a1

setPingInfo_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPingInfo_super object_ a1 = (setPingInfo_impl (javaCast object_ :: MultiPlayerGameLayer)) a1

setPingInfo_impl :: MultiPlayerGameLayer -> Bool -> IO (())
setPingInfo_impl this show = do
        pure ()


setFiring :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setFiring object_ a1 = jmethod object_ "setFiring" (\() -> (setFiring_impl (javaCast object_ :: MultiPlayerGameLayer))) () a1

setFiring_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setFiring_super object_ a1 = (setFiring_impl (javaCast object_ :: MultiPlayerGameLayer)) a1

setFiring_impl :: MultiPlayerGameLayer -> Int16 -> IO (())
setFiring_impl this firing = do
        pure ()


getFiring :: (JavaObjectClass this_) => this_ -> IO (Int16)
getFiring object_ = jmethod object_ "getFiring" (\() -> (getFiring_impl (javaCast object_ :: MultiPlayerGameLayer))) ()

getFiring_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getFiring_super object_ = (getFiring_impl (javaCast object_ :: MultiPlayerGameLayer))

getFiring_impl :: MultiPlayerGameLayer -> IO (Int16)
getFiring_impl this = do
        pure (0)


