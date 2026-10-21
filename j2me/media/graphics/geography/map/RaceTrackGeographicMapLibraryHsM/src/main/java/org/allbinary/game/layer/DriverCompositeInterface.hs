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
module DriverCompositeInterface where

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
import qualified Driver -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data DriverCompositeInterface = DriverCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull DriverCompositeInterface where
    javaNull = javaNullRecord "DriverCompositeInterface"

instance JavaEquals DriverCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DriverCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass DriverCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DriverCompositeInterface
fromHeader_ header = DriverCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DriverCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDriver :: (JavaObjectClass this_) => this_ -> IO (Driver.Driver)
getDriver object_ = jmethod object_ "getDriver" (\() -> (getDriver_impl (javaCast object_ :: DriverCompositeInterface))) ()

getDriver_super :: (JavaObjectClass this_) => this_ -> IO (Driver.Driver)
getDriver_super object_ = (getDriver_impl (javaCast object_ :: DriverCompositeInterface))

getDriver_impl :: DriverCompositeInterface -> IO (Driver.Driver)
getDriver_impl this = javaAbstractMethod "getDriver"


