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
-- package org.allbinary.logic.system.hardware.components.linux
module MachineAccessControlAddress where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified MachineAccessControlAddressInterface -- org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface

-- implements HardwareComponentInterface
-- implements MachineAccessControlAddressInterface
data MachineAccessControlAddress = MachineAccessControlAddress
    { header_ :: JavaHeader
    }

instance JavaNull MachineAccessControlAddress where
    javaNull = javaNullRecord "MachineAccessControlAddress"

instance JavaEquals MachineAccessControlAddress where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MachineAccessControlAddress where
    (==) = jrecordEquals

instance JavaObjectClass MachineAccessControlAddress where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MachineAccessControlAddress
newRecord_ = do
    header_ <- newJavaHeader
    let this = MachineAccessControlAddress header_
    jregisterLevel header_ this
    HardwareComponentInterface.registerInterface_ header_
    MachineAccessControlAddressInterface.registerInterface_ header_
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: MachineAccessControlAddress -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MachineAccessControlAddress
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MachineAccessControlAddress -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


compareTo :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: MachineAccessControlAddress))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: MachineAccessControlAddress)) a1

compareTo_impl :: MachineAccessControlAddress -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_impl this componentInterface = do
        pure (True)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MachineAccessControlAddress))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MachineAccessControlAddress))

toString_impl :: MachineAccessControlAddress -> IO (String)
toString_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


