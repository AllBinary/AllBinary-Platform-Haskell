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
-- package org.allbinary.game.layer
module VehiclePropertiesCompositeInterface where

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
import qualified VehicleProperties -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data VehiclePropertiesCompositeInterface = VehiclePropertiesCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull VehiclePropertiesCompositeInterface where
    javaNull = javaNullRecord "VehiclePropertiesCompositeInterface"

instance JavaEquals VehiclePropertiesCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VehiclePropertiesCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass VehiclePropertiesCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> VehiclePropertiesCompositeInterface
fromHeader_ header = VehiclePropertiesCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (VehiclePropertiesCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getVehicleProperties :: (JavaObjectClass this_) => this_ -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties object_ = jmethod object_ "getVehicleProperties" (\() -> (getVehicleProperties_impl (javaCast object_ :: VehiclePropertiesCompositeInterface))) ()

getVehicleProperties_super :: (JavaObjectClass this_) => this_ -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties_super object_ = (getVehicleProperties_impl (javaCast object_ :: VehiclePropertiesCompositeInterface))

getVehicleProperties_impl :: VehiclePropertiesCompositeInterface -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties_impl this = javaAbstractMethod "getVehicleProperties"


