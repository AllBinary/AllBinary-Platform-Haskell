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
module PickupCompositeInterface where

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
import qualified PickupBehavior -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data PickupCompositeInterface = PickupCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull PickupCompositeInterface where
    javaNull = javaNullRecord "PickupCompositeInterface"

instance JavaEquals PickupCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickupCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass PickupCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PickupCompositeInterface
fromHeader_ header = PickupCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PickupCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPickupBehavior :: (JavaObjectClass this_) => this_ -> IO (PickupBehavior.PickupBehavior)
getPickupBehavior object_ = jmethod object_ "getPickupBehavior" (\() -> (getPickupBehavior_impl (javaCast object_ :: PickupCompositeInterface))) ()

getPickupBehavior_super :: (JavaObjectClass this_) => this_ -> IO (PickupBehavior.PickupBehavior)
getPickupBehavior_super object_ = (getPickupBehavior_impl (javaCast object_ :: PickupCompositeInterface))

getPickupBehavior_impl :: PickupCompositeInterface -> IO (PickupBehavior.PickupBehavior)
getPickupBehavior_impl this = javaAbstractMethod "getPickupBehavior"


setPickupBehavior :: (JavaObjectClass this_) => this_ -> PickupBehavior.PickupBehavior -> IO (())
setPickupBehavior object_ a1 = jmethod object_ "setPickupBehavior" (\() -> (setPickupBehavior_impl (javaCast object_ :: PickupCompositeInterface))) () a1

setPickupBehavior_super :: (JavaObjectClass this_) => this_ -> PickupBehavior.PickupBehavior -> IO (())
setPickupBehavior_super object_ a1 = (setPickupBehavior_impl (javaCast object_ :: PickupCompositeInterface)) a1

setPickupBehavior_impl :: PickupCompositeInterface -> PickupBehavior.PickupBehavior -> IO (())
setPickupBehavior_impl this pickupBehavior = javaAbstractMethod "setPickupBehavior"


