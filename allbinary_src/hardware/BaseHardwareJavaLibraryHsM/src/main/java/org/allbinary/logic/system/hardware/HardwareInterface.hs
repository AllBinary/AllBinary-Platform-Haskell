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
-- package org.allbinary.logic.system.hardware
module HardwareInterface where

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
import qualified Any -- same package or java.lang
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- Java interface: the classes that implement it have these functions
data HardwareInterface = HardwareInterface
    { header_ :: JavaHeader
    }

instance JavaNull HardwareInterface where
    javaNull = javaNullRecord "HardwareInterface"

instance JavaEquals HardwareInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HardwareInterface where
    (==) = jrecordEquals

instance JavaObjectClass HardwareInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HardwareInterface
fromHeader_ header = HardwareInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HardwareInterface header)


getComponent :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent object_ a1 = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: HardwareInterface))) () a1

getComponent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_super object_ a1 = (getComponent_impl (javaCast object_ :: HardwareInterface)) a1

getComponent_impl :: HardwareInterface -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_impl this index = javaAbstractMethod "getComponent"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HardwareInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HardwareInterface))

toString_impl :: HardwareInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


compareTo :: (JavaObjectClass this_) => this_ -> HardwareInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: HardwareInterface))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: HardwareInterface)) a1

compareTo_impl :: HardwareInterface -> HardwareInterface -> IO (Bool)
compareTo_impl this hardwareInterface = javaAbstractMethod "compareTo"


difference :: (JavaObjectClass this_) => this_ -> HardwareInterface -> IO (ABHashtable.ABHashtable)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: HardwareInterface))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_super object_ a1 = (difference_impl (javaCast object_ :: HardwareInterface)) a1

difference_impl :: HardwareInterface -> HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_impl this hardwareInterface = javaAbstractMethod "difference"


