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
module HealthInterfaceCompositeInterface where

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
import qualified Health -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data HealthInterfaceCompositeInterface = HealthInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull HealthInterfaceCompositeInterface where
    javaNull = javaNullRecord "HealthInterfaceCompositeInterface"

instance JavaEquals HealthInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass HealthInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HealthInterfaceCompositeInterface
fromHeader_ header = HealthInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HealthInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getHealthInterface :: (JavaObjectClass this_) => this_ -> IO (Health.Health)
getHealthInterface object_ = jmethod object_ "getHealthInterface" (\() -> (getHealthInterface_impl (javaCast object_ :: HealthInterfaceCompositeInterface))) ()

getHealthInterface_super :: (JavaObjectClass this_) => this_ -> IO (Health.Health)
getHealthInterface_super object_ = (getHealthInterface_impl (javaCast object_ :: HealthInterfaceCompositeInterface))

getHealthInterface_impl :: HealthInterfaceCompositeInterface -> IO (Health.Health)
getHealthInterface_impl this = javaAbstractMethod "getHealthInterface"


