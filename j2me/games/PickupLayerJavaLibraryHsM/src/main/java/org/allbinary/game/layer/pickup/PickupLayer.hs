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
-- package org.allbinary.game.layer.pickup
module PickupLayer (module PickupLayer, module MultiPlayerGameLayer) where

import MultiPlayerGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, initXYZ, initXYZ_super, initXYZ_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, getPickedUpLayerInterfaceFactoryInterface, getPickedUpLayerInterfaceFactoryInterface_super, getPickedUpLayerInterfaceFactoryInterface_impl, setPickedUp, setPickedUp_super, setPickedUp_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, damage, damage_super, damage_impl, getDamage, getDamage_super, getDamage_impl, set, set_super, set_impl, pickedUpLayerInterfaceFactoryInterface, destroyed, animationInterface)
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
import qualified CountedPickedUpLayerInterfaceFactory -- same package or java.lang
import qualified PickedUpLayerInterfaceFactoryInterface -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified CollidableAlwaysPickupNeverCollideBehaviorFactory -- org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory
import qualified DestroyedLayerProcessor -- org.allbinary.game.combat.destroy.DestroyedLayerProcessor
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified MultiPlayerGameLayer -- org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified OpenGLSurfaceChangedInterface -- org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified PickedUpLayerInterface
import qualified PickupableInterface

-- implements PickedUpLayerInterface
-- implements PickupableInterface
data PickupLayer = PickupLayer
    { header_ :: JavaHeader
    , base :: MultiPlayerGameLayer.MultiPlayerGameLayer
    , pickedUpLayerInterfaceFactoryInterface :: IORef (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
    , destroyed :: IORef (Bool)
    , animationInterface :: IORef (Animation.Animation)
    }

instance JavaNull PickupLayer where
    javaNull = javaNullRecord "PickupLayer"

instance JavaEquals PickupLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickupLayer where
    (==) = jrecordEquals

instance JavaObjectClass PickupLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PickupLayer
newRecord_ = do
    base <- MultiPlayerGameLayer.newRecord_
    let header_ = base.header_
    pickedUpLayerInterfaceFactoryInterface <- newIORef javaNull
    destroyed <- newIORef False
    animationInterface <- newIORef javaNull
    let this = PickupLayer header_ base pickedUpLayerInterfaceFactoryInterface destroyed animationInterface
    jregisterLevel header_ this
    PickedUpLayerInterface.registerInterface_ header_
    PickupableInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initXYZ" (\() -> initXYZ_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getPickedUpLayerInterfaceFactoryInterface" (\() -> getPickedUpLayerInterfaceFactoryInterface_impl this)
    jregisterMethod header_ "setPickedUp" (\() -> setPickedUp_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: PickupLayer -> IO ()
initFields_ this = do
    jset this.pickedUpLayerInterfaceFactoryInterface ((javaCast CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY :: PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface))
    jset this.destroyed (False)
    jset this.animationInterface =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    pure ()

new_7 :: String -> RemoteInfo.RemoteInfo -> Int -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO PickupLayer
new_7 name remoteInfo total pickedUpLayerInterfaceFactoryInterface animationInterface rectangle viewPosition = do
    this <- newRecord_
    init_7 this name remoteInfo total pickedUpLayerInterfaceFactoryInterface animationInterface rectangle viewPosition
    pure this

init_7 :: PickupLayer -> String -> RemoteInfo.RemoteInfo -> Int -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_7 this name remoteInfo total pickedUpLayerInterfaceFactoryInterface animationInterface rectangle viewPosition = do
        MultiPlayerGameLayer.init_5 this.base (remoteInfo) (jget ((jio (BasicGroupFactory.getInstance))).nONE_ARRAY) (name) (rectangle) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (MultiPlayerGameLayer.setCollidableInferface this (jio (CollidableAlwaysPickupNeverCollideBehaviorFactory.createBehavior ((jio (CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance))))))
        Control.Monad.void (MultiPlayerGameLayer.setLayerWidth this 10)
        Control.Monad.void (MultiPlayerGameLayer.setLayerHeight this 10)
        Control.Monad.void (PickupLayer.init this pickedUpLayerInterfaceFactoryInterface animationInterface)
        pure ()


init :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Animation.Animation -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PickupLayer))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Animation.Animation -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: PickupLayer)) a1 a2

init_impl :: PickupLayer -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Animation.Animation -> IO (())
init_impl this pickedUpLayerInterfaceFactoryInterface animationInterface = do
        jset (this).pickedUpLayerInterfaceFactoryInterface (pickedUpLayerInterfaceFactoryInterface)
        jset (this).animationInterface (animationInterface)
        Control.Monad.void (PickupLayer.setDestroyed this False)
        pure ()


initXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initXYZ object_ a1 a2 a3 = jmethod object_ "initXYZ" (\() -> (initXYZ_impl (javaCast object_ :: PickupLayer))) () a1 a2 a3

initXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initXYZ_super object_ a1 a2 a3 = (initXYZ_impl (javaCast object_ :: PickupLayer)) a1 a2 a3

initXYZ_impl :: PickupLayer -> Int -> Int -> Int -> IO (())
initXYZ_impl this x y z = do
        Control.Monad.void (MultiPlayerGameLayer.setPosition this x y z)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PickupLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PickupLayer)) a1

paint_impl :: PickupLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        viewPosition <- (MultiPlayerGameLayer.getViewPosition this)
        viewX <- (ViewPositionBase.getX viewPosition)
        viewY <- (ViewPositionBase.getY viewPosition)
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics viewX viewY)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: PickupLayer))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: PickupLayer)) a1

paintThreed_impl :: PickupLayer -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        viewPosition <- (MultiPlayerGameLayer.getViewPosition this)
        viewX <- (ViewPositionBase.getX viewPosition)
        viewY <- (ViewPositionBase.getY viewPosition)
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).animationInterface)) graphics viewX viewY 3)
        pure ()


getPickedUpLayerInterfaceFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getPickedUpLayerInterfaceFactoryInterface object_ = jmethod object_ "getPickedUpLayerInterfaceFactoryInterface" (\() -> (getPickedUpLayerInterfaceFactoryInterface_impl (javaCast object_ :: PickupLayer))) ()

getPickedUpLayerInterfaceFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getPickedUpLayerInterfaceFactoryInterface_super object_ = (getPickedUpLayerInterfaceFactoryInterface_impl (javaCast object_ :: PickupLayer))

getPickedUpLayerInterfaceFactoryInterface_impl :: PickupLayer -> IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getPickedUpLayerInterfaceFactoryInterface_impl this = do
        pure ((jget (this).pickedUpLayerInterfaceFactoryInterface))


setPickedUp :: (JavaObjectClass this_) => this_ -> IO (())
setPickedUp object_ = jmethod object_ "setPickedUp" (\() -> (setPickedUp_impl (javaCast object_ :: PickupLayer))) ()

setPickedUp_super :: (JavaObjectClass this_) => this_ -> IO (())
setPickedUp_super object_ = (setPickedUp_impl (javaCast object_ :: PickupLayer))

setPickedUp_impl :: PickupLayer -> IO (())
setPickedUp_impl this = do
        Control.Monad.void (PickupLayer.setDestroyed this True)
        pure ()


isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: PickupLayer))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: PickupLayer))

isDestroyed_impl :: PickupLayer -> IO (Bool)
isDestroyed_impl this = do
        pure ((jget (this).destroyed))


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: PickupLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: PickupLayer)) a1

setDestroyed_impl :: PickupLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        jset (this).destroyed (destroyed)
        when (jio (PickupLayer.isDestroyed this)) $ do
            Control.Monad.void (BasicLayerProcessor.add ((jio (DestroyedLayerProcessor.getInstance))) (javaCast this))
        pure ()


damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: PickupLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: PickupLayer)) a1 a2

damage_impl :: PickupLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        pure ()


getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: PickupLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: PickupLayer)) a1

getDamage_impl :: PickupLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
        pure (0)


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: PickupLayer))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: PickupLayer)) a1

set_impl :: PickupLayer -> GL.GL -> IO (())
set_impl this gl = do
        let openGLSurfaceChangedInterface = (javaCast (jget (this).animationInterface) :: OpenGLSurfaceChangedInterface.OpenGLSurfaceChangedInterface)
        Control.Monad.void (OpenGLSurfaceChangedInterface.set openGLSurfaceChangedInterface gl)
        pure ()


