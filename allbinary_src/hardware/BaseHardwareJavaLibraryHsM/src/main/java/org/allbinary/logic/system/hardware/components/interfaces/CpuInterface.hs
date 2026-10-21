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
-- package org.allbinary.logic.system.hardware.components.interfaces
module CpuInterface where

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
data CpuInterface = CpuInterface
    { header_ :: JavaHeader
    }

instance JavaNull CpuInterface where
    javaNull = javaNullRecord "CpuInterface"

instance JavaEquals CpuInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CpuInterface where
    (==) = jrecordEquals

instance JavaObjectClass CpuInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CpuInterface
fromHeader_ header = CpuInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CpuInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getProcessor :: (JavaObjectClass this_) => this_ -> IO (String)
getProcessor object_ = jmethod object_ "getProcessor" (\() -> (getProcessor_impl (javaCast object_ :: CpuInterface))) ()

getProcessor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProcessor_super object_ = (getProcessor_impl (javaCast object_ :: CpuInterface))

getProcessor_impl :: CpuInterface -> IO (String)
getProcessor_impl this = javaAbstractMethod "getProcessor"


getVendorId :: (JavaObjectClass this_) => this_ -> IO (String)
getVendorId object_ = jmethod object_ "getVendorId" (\() -> (getVendorId_impl (javaCast object_ :: CpuInterface))) ()

getVendorId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVendorId_super object_ = (getVendorId_impl (javaCast object_ :: CpuInterface))

getVendorId_impl :: CpuInterface -> IO (String)
getVendorId_impl this = javaAbstractMethod "getVendorId"


getCpuFamily :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuFamily object_ = jmethod object_ "getCpuFamily" (\() -> (getCpuFamily_impl (javaCast object_ :: CpuInterface))) ()

getCpuFamily_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuFamily_super object_ = (getCpuFamily_impl (javaCast object_ :: CpuInterface))

getCpuFamily_impl :: CpuInterface -> IO (String)
getCpuFamily_impl this = javaAbstractMethod "getCpuFamily"


getModel :: (JavaObjectClass this_) => this_ -> IO (String)
getModel object_ = jmethod object_ "getModel" (\() -> (getModel_impl (javaCast object_ :: CpuInterface))) ()

getModel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getModel_super object_ = (getModel_impl (javaCast object_ :: CpuInterface))

getModel_impl :: CpuInterface -> IO (String)
getModel_impl this = javaAbstractMethod "getModel"


getModelName :: (JavaObjectClass this_) => this_ -> IO (String)
getModelName object_ = jmethod object_ "getModelName" (\() -> (getModelName_impl (javaCast object_ :: CpuInterface))) ()

getModelName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getModelName_super object_ = (getModelName_impl (javaCast object_ :: CpuInterface))

getModelName_impl :: CpuInterface -> IO (String)
getModelName_impl this = javaAbstractMethod "getModelName"


getStepping :: (JavaObjectClass this_) => this_ -> IO (String)
getStepping object_ = jmethod object_ "getStepping" (\() -> (getStepping_impl (javaCast object_ :: CpuInterface))) ()

getStepping_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStepping_super object_ = (getStepping_impl (javaCast object_ :: CpuInterface))

getStepping_impl :: CpuInterface -> IO (String)
getStepping_impl this = javaAbstractMethod "getStepping"


getCpuSpeed :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuSpeed object_ = jmethod object_ "getCpuSpeed" (\() -> (getCpuSpeed_impl (javaCast object_ :: CpuInterface))) ()

getCpuSpeed_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuSpeed_super object_ = (getCpuSpeed_impl (javaCast object_ :: CpuInterface))

getCpuSpeed_impl :: CpuInterface -> IO (String)
getCpuSpeed_impl this = javaAbstractMethod "getCpuSpeed"


getCacheSize :: (JavaObjectClass this_) => this_ -> IO (String)
getCacheSize object_ = jmethod object_ "getCacheSize" (\() -> (getCacheSize_impl (javaCast object_ :: CpuInterface))) ()

getCacheSize_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCacheSize_super object_ = (getCacheSize_impl (javaCast object_ :: CpuInterface))

getCacheSize_impl :: CpuInterface -> IO (String)
getCacheSize_impl this = javaAbstractMethod "getCacheSize"


compareTo :: (JavaObjectClass this_) => this_ -> CpuInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: CpuInterface))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> CpuInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: CpuInterface)) a1

compareTo_impl :: CpuInterface -> CpuInterface -> IO (Bool)
compareTo_impl this cpuInterface = javaAbstractMethod "compareTo"


