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
module PickupBehaviorInterface where

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
import qualified PickupProcessorInterface -- same package or java.lang
import qualified PickedUpLayerInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data PickupBehaviorInterface = PickupBehaviorInterface
    { header_ :: JavaHeader
    }

instance JavaNull PickupBehaviorInterface where
    javaNull = javaNullRecord "PickupBehaviorInterface"

instance JavaEquals PickupBehaviorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickupBehaviorInterface where
    (==) = jrecordEquals

instance JavaObjectClass PickupBehaviorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PickupBehaviorInterface
fromHeader_ header = PickupBehaviorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PickupBehaviorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
doPickup :: (JavaObjectClass this_) => this_ -> PickupProcessorInterface.PickupProcessorInterface -> IO (())
doPickup object_ a1 = jmethod object_ "doPickup" (\() -> (doPickup_impl (javaCast object_ :: PickupBehaviorInterface))) () a1

doPickup_super :: (JavaObjectClass this_) => this_ -> PickupProcessorInterface.PickupProcessorInterface -> IO (())
doPickup_super object_ a1 = (doPickup_impl (javaCast object_ :: PickupBehaviorInterface)) a1

doPickup_impl :: PickupBehaviorInterface -> PickupProcessorInterface.PickupProcessorInterface -> IO (())
doPickup_impl this pickupProcessorInterface = javaAbstractMethod "doPickup"


doPickupLayer :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterface.PickedUpLayerInterface -> IO (())
doPickupLayer object_ a1 = jmethod object_ "doPickupLayer" (\() -> (doPickupLayer_impl (javaCast object_ :: PickupBehaviorInterface))) () a1

doPickupLayer_super :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterface.PickedUpLayerInterface -> IO (())
doPickupLayer_super object_ a1 = (doPickupLayer_impl (javaCast object_ :: PickupBehaviorInterface)) a1

doPickupLayer_impl :: PickupBehaviorInterface -> PickedUpLayerInterface.PickedUpLayerInterface -> IO (())
doPickupLayer_impl this pickupLayerInterface = javaAbstractMethod "doPickupLayer"


