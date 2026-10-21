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
module PickedUpLayerInterfaceFactory (module PickedUpLayerInterfaceFactory, module PickedUpLayerInterfaceFactoryBase) where

import PickedUpLayerInterfaceFactoryBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getIconLayer, getIconLayer_super, getIconLayer_impl, getAnimationInterface, getAnimationInterface_super, getAnimationInterface_impl, getPickedUpLayerType, getPickedUpLayerType_super, getPickedUpLayerType_impl, pickedUpLayerType, iconLayer, animationInterface)
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
import qualified PickedUpLayerType -- same package or java.lang
import qualified IconLayer -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified PickedUpLayerInterfaceFactoryBase

data PickedUpLayerInterfaceFactory = PickedUpLayerInterfaceFactory
    { header_ :: JavaHeader
    , base :: PickedUpLayerInterfaceFactoryBase.PickedUpLayerInterfaceFactoryBase
    , pickedUpLayerType :: IORef (PickedUpLayerType.PickedUpLayerType)
    , iconLayer :: IORef (IconLayer.IconLayer)
    , animationInterface :: IORef (Animation.Animation)
    }

instance JavaNull PickedUpLayerInterfaceFactory where
    javaNull = javaNullRecord "PickedUpLayerInterfaceFactory"

instance JavaEquals PickedUpLayerInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickedUpLayerInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass PickedUpLayerInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PickedUpLayerInterfaceFactory
newRecord_ = do
    base <- PickedUpLayerInterfaceFactoryBase.newRecord_
    let header_ = base.header_
    pickedUpLayerType <- newIORef javaNull
    iconLayer <- newIORef javaNull
    animationInterface <- newIORef javaNull
    let this = PickedUpLayerInterfaceFactory header_ base pickedUpLayerType iconLayer animationInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getIconLayer" (\() -> getIconLayer_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "getPickedUpLayerType" (\() -> getPickedUpLayerType_impl this)
    pure this

initFields_ :: PickedUpLayerInterfaceFactory -> IO ()
initFields_ this = do
    jset this.pickedUpLayerType (javaNull)
    jset this.iconLayer (javaNull)
    jset this.animationInterface (javaNull)
    pure ()

new_3 :: PickedUpLayerType.PickedUpLayerType -> IconLayer.IconLayer -> Animation.Animation -> IO PickedUpLayerInterfaceFactory
new_3 pickeUpLayerType iconLayer animationInterface = do
    this <- newRecord_
    init_3 this pickeUpLayerType iconLayer animationInterface
    pure this

init_3 :: PickedUpLayerInterfaceFactory -> PickedUpLayerType.PickedUpLayerType -> IconLayer.IconLayer -> Animation.Animation -> IO ()
init_3 this pickeUpLayerType iconLayer animationInterface = do
        PickedUpLayerInterfaceFactoryBase.init_ this.base
        initFields_ this
        jset (this).pickedUpLayerType (pickeUpLayerType)
        jset (this).animationInterface (animationInterface)
        jset (this).iconLayer (iconLayer)
        pure ()


getIconLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer object_ = jmethod object_ "getIconLayer" (\() -> (getIconLayer_impl (javaCast object_ :: PickedUpLayerInterfaceFactory))) ()

getIconLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer_super object_ = (getIconLayer_impl (javaCast object_ :: PickedUpLayerInterfaceFactory))

getIconLayer_impl :: PickedUpLayerInterfaceFactory -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer_impl this = do
        pure ((javaCast (jget (this).iconLayer) :: AllBinaryLayer.AllBinaryLayer))


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: PickedUpLayerInterfaceFactory))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: PickedUpLayerInterfaceFactory))

getAnimationInterface_impl :: PickedUpLayerInterfaceFactory -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


getPickedUpLayerType :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType object_ = jmethod object_ "getPickedUpLayerType" (\() -> (getPickedUpLayerType_impl (javaCast object_ :: PickedUpLayerInterfaceFactory))) ()

getPickedUpLayerType_super :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType_super object_ = (getPickedUpLayerType_impl (javaCast object_ :: PickedUpLayerInterfaceFactory))

getPickedUpLayerType_impl :: PickedUpLayerInterfaceFactory -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType_impl this = do
        pure ((jget (this).pickedUpLayerType))


