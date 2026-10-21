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
-- package org.allbinary.logic.system.security.licensing
module LockedUtil where

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
import qualified LockedUtilInterface

-- implements LockedUtilInterface
data LockedUtil = LockedUtil
    { header_ :: JavaHeader
    }

instance JavaNull LockedUtil where
    javaNull = javaNullRecord "LockedUtil"

instance JavaEquals LockedUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockedUtil where
    (==) = jrecordEquals

instance JavaObjectClass LockedUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LockedUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LockedUtil header_
    jregisterLevel header_ this
    LockedUtilInterface.registerInterface_ header_
    jregisterMethod header_ "isLocked" (\() -> isLocked_impl this)
    jregisterMethod header_ "isLockedFeature" (\() -> isLockedFeature_impl this)
    pure this

initFields_ :: LockedUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LockedUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LockedUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LockedUtil)
getInstance = do
        pure (LockedUtil.instance_)


isLocked :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLocked object_ = jmethod object_ "isLocked" (\() -> (isLocked_impl (javaCast object_ :: LockedUtil))) ()

isLocked_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLocked_super object_ = (isLocked_impl (javaCast object_ :: LockedUtil))

isLocked_impl :: LockedUtil -> IO (Bool)
isLocked_impl this = do
        pure (False)


isLockedFeature :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isLockedFeature object_ a1 = jmethod object_ "isLockedFeature" (\() -> (isLockedFeature_impl (javaCast object_ :: LockedUtil))) () a1

isLockedFeature_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isLockedFeature_super object_ a1 = (isLockedFeature_impl (javaCast object_ :: LockedUtil)) a1

isLockedFeature_impl :: LockedUtil -> LockableFeature.LockableFeature -> IO (Bool)
isLockedFeature_impl this lockableFeatrue = do
        pure (False)


