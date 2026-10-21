{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.logic.system.security.licensing
module LockedUtilInterface where

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
import qualified LockableFeature -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data LockedUtilInterface = LockedUtilInterface
    { header_ :: JavaHeader
    }

instance JavaNull LockedUtilInterface where
    javaNull = javaNullRecord "LockedUtilInterface"

instance JavaEquals LockedUtilInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockedUtilInterface where
    (==) = jrecordEquals

instance JavaObjectClass LockedUtilInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LockedUtilInterface
fromHeader_ header = LockedUtilInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LockedUtilInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isLocked :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLocked object_ = jmethod object_ "isLocked" (\() -> (isLocked_impl (javaCast object_ :: LockedUtilInterface))) ()

isLocked_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLocked_super object_ = (isLocked_impl (javaCast object_ :: LockedUtilInterface))

isLocked_impl :: LockedUtilInterface -> IO (Bool)
isLocked_impl this = javaAbstractMethod "isLocked"


isLockedFeature :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isLockedFeature object_ a1 = jmethod object_ "isLockedFeature" (\() -> (isLockedFeature_impl (javaCast object_ :: LockedUtilInterface))) () a1

isLockedFeature_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isLockedFeature_super object_ a1 = (isLockedFeature_impl (javaCast object_ :: LockedUtilInterface)) a1

isLockedFeature_impl :: LockedUtilInterface -> LockableFeature.LockableFeature -> IO (Bool)
isLockedFeature_impl this lockableFeatrue = javaAbstractMethod "isLockedFeature"


