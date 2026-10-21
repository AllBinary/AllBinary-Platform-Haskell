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
-- package org.allbinary.game.health
module HealthListenerInterface where

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

-- Java interface: the classes that implement it have these functions
data HealthListenerInterface = HealthListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull HealthListenerInterface where
    javaNull = javaNullRecord "HealthListenerInterface"

instance JavaEquals HealthListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass HealthListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HealthListenerInterface
fromHeader_ header = HealthListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HealthListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onHealthChange :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange object_ = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: HealthListenerInterface))) ()

onHealthChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange_super object_ = (onHealthChange_impl (javaCast object_ :: HealthListenerInterface))

onHealthChange_impl :: HealthListenerInterface -> IO (())
onHealthChange_impl this = javaAbstractMethod "onHealthChange"


