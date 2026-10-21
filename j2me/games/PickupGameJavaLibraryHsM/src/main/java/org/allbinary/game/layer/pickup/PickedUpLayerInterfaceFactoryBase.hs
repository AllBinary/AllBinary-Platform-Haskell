{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module PickedUpLayerInterfaceFactoryBase where

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
import qualified Animation -- org.allbinary.animation.Animation
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified PickedUpLayerInterfaceFactoryInterface

-- implements PickedUpLayerInterfaceFactoryInterface
data PickedUpLayerInterfaceFactoryBase = PickedUpLayerInterfaceFactoryBase
    { header_ :: JavaHeader
    }

instance JavaNull PickedUpLayerInterfaceFactoryBase where
    javaNull = javaNullRecord "PickedUpLayerInterfaceFactoryBase"

instance JavaEquals PickedUpLayerInterfaceFactoryBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickedUpLayerInterfaceFactoryBase where
    (==) = jrecordEquals

instance JavaObjectClass PickedUpLayerInterfaceFactoryBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PICKED_UP_LAYER_FACTORY_BASE #-}
nULL_PICKED_UP_LAYER_FACTORY_BASE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PickedUpLayerInterfaceFactoryBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = PickedUpLayerInterfaceFactoryBase header_
    jregisterLevel header_ this
    PickedUpLayerInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getIconLayer" (\() -> getIconLayer_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "getPickedUpLayerType" (\() -> getPickedUpLayerType_impl this)
    pure this

initFields_ :: PickedUpLayerInterfaceFactoryBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PickedUpLayerInterfaceFactoryBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PickedUpLayerInterfaceFactoryBase -> IO ()
init_ this = do
    initFields_ this


getIconLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer object_ = jmethod object_ "getIconLayer" (\() -> (getIconLayer_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryBase))) ()

getIconLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer_super object_ = (getIconLayer_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryBase))

getIconLayer_impl :: PickedUpLayerInterfaceFactoryBase -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryBase))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryBase))

getAnimationInterface_impl :: PickedUpLayerInterfaceFactoryBase -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getPickedUpLayerType :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType object_ = jmethod object_ "getPickedUpLayerType" (\() -> (getPickedUpLayerType_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryBase))) ()

getPickedUpLayerType_super :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType_super object_ = (getPickedUpLayerType_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryBase))

getPickedUpLayerType_impl :: PickedUpLayerInterfaceFactoryBase -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


