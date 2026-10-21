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
module PickedUpLayerInterfaceFactoryInterface where

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

-- Java interface: the classes that implement it have these functions
data PickedUpLayerInterfaceFactoryInterface = PickedUpLayerInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull PickedUpLayerInterfaceFactoryInterface where
    javaNull = javaNullRecord "PickedUpLayerInterfaceFactoryInterface"

instance JavaEquals PickedUpLayerInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickedUpLayerInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass PickedUpLayerInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PickedUpLayerInterfaceFactoryInterface
fromHeader_ header = PickedUpLayerInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PickedUpLayerInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPickedUpLayerType :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType object_ = jmethod object_ "getPickedUpLayerType" (\() -> (getPickedUpLayerType_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryInterface))) ()

getPickedUpLayerType_super :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType_super object_ = (getPickedUpLayerType_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryInterface))

getPickedUpLayerType_impl :: PickedUpLayerInterfaceFactoryInterface -> IO (PickedUpLayerType.PickedUpLayerType)
getPickedUpLayerType_impl this = javaAbstractMethod "getPickedUpLayerType"


getIconLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer object_ = jmethod object_ "getIconLayer" (\() -> (getIconLayer_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryInterface))) ()

getIconLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer_super object_ = (getIconLayer_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryInterface))

getIconLayer_impl :: PickedUpLayerInterfaceFactoryInterface -> IO (AllBinaryLayer.AllBinaryLayer)
getIconLayer_impl this = javaAbstractMethod "getIconLayer"


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryInterface))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: PickedUpLayerInterfaceFactoryInterface))

getAnimationInterface_impl :: PickedUpLayerInterfaceFactoryInterface -> IO (Animation.Animation)
getAnimationInterface_impl this = javaAbstractMethod "getAnimationInterface"


