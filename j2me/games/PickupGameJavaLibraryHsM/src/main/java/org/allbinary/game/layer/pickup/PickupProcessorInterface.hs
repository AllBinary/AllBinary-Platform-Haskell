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
module PickupProcessorInterface where

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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

-- Java interface: the classes that implement it have these functions
data PickupProcessorInterface = PickupProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull PickupProcessorInterface where
    javaNull = javaNullRecord "PickupProcessorInterface"

instance JavaEquals PickupProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickupProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass PickupProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PickupProcessorInterface
fromHeader_ header = PickupProcessorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PickupProcessorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PickupProcessorInterface))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: PickupProcessorInterface)) a1

process_impl :: PickupProcessorInterface -> AllBinaryLayer.AllBinaryLayer -> IO (())
process_impl this sourceLayerInterface = javaAbstractMethod "process"


