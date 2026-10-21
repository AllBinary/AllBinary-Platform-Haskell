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
-- package org.allbinary.game.physics.velocity
module VelocityInterfaceCompositeInterface where

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
import qualified BasicVelocityProperties -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull VelocityInterfaceCompositeInterface where
    javaNull = javaNullRecord "VelocityInterfaceCompositeInterface"

instance JavaEquals VelocityInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VelocityInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass VelocityInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> VelocityInterfaceCompositeInterface
fromHeader_ header = VelocityInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (VelocityInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getVelocityProperties :: (JavaObjectClass this_) => this_ -> IO (BasicVelocityProperties.BasicVelocityProperties)
getVelocityProperties object_ = jmethod object_ "getVelocityProperties" (\() -> (getVelocityProperties_impl (javaCast object_ :: VelocityInterfaceCompositeInterface))) ()

getVelocityProperties_super :: (JavaObjectClass this_) => this_ -> IO (BasicVelocityProperties.BasicVelocityProperties)
getVelocityProperties_super object_ = (getVelocityProperties_impl (javaCast object_ :: VelocityInterfaceCompositeInterface))

getVelocityProperties_impl :: VelocityInterfaceCompositeInterface -> IO (BasicVelocityProperties.BasicVelocityProperties)
getVelocityProperties_impl this = javaAbstractMethod "getVelocityProperties"


