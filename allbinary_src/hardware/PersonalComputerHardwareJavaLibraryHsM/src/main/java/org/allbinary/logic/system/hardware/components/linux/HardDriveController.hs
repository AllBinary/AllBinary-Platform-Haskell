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
module HardDriveController where

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
import qualified HardDriveControllerInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface

-- implements HardwareComponentInterface
-- implements HardDriveControllerInterface
data HardDriveController = HardDriveController
    { header_ :: JavaHeader
    , data_ :: IORef (String)
    }

instance JavaNull HardDriveController where
    javaNull = javaNullRecord "HardDriveController"

instance JavaEquals HardDriveController where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HardDriveController where
    (==) = jrecordEquals

instance JavaObjectClass HardDriveController where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HardDriveController
newRecord_ = do
    header_ <- newJavaHeader
    data_ <- newIORef ""
    let this = HardDriveController header_ data_
    jregisterLevel header_ this
    HardwareComponentInterface.registerInterface_ header_
    HardDriveControllerInterface.registerInterface_ header_
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HardDriveController -> IO ()
initFields_ this = do
    jset this.data_ (javaNull)
    pure ()

new_1 :: String -> IO HardDriveController
new_1 data_ = do
    this <- newRecord_
    init_1 this data_
    pure this

init_1 :: HardDriveController -> String -> IO ()
init_1 this data_ = do
        initFields_ this
        jset (this).data_ (data_)
        pure ()


compareTo :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: HardDriveController))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: HardDriveController)) a1

compareTo_impl :: HardDriveController -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_impl this componentInterface = do
        pure (True)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HardDriveController))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HardDriveController))

toString_impl :: HardDriveController -> IO (String)
toString_impl this = do
        pure ((jget (this).data_))


