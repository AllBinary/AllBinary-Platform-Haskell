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
-- package org.allbinary.input.automation.module.game
module MeteredGameObjectInterface where

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
data MeteredGameObjectInterface = MeteredGameObjectInterface
    { header_ :: JavaHeader
    }

instance JavaNull MeteredGameObjectInterface where
    javaNull = javaNullRecord "MeteredGameObjectInterface"

instance JavaEquals MeteredGameObjectInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MeteredGameObjectInterface where
    (==) = jrecordEquals

instance JavaObjectClass MeteredGameObjectInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MeteredGameObjectInterface
fromHeader_ header = MeteredGameObjectInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MeteredGameObjectInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRatios :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Double))
getRatios object_ = jmethod object_ "getRatios" (\() -> (getRatios_impl (javaCast object_ :: MeteredGameObjectInterface))) ()

getRatios_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Double))
getRatios_super object_ = (getRatios_impl (javaCast object_ :: MeteredGameObjectInterface))

getRatios_impl :: MeteredGameObjectInterface -> IO (JavaArray (Double))
getRatios_impl this = javaAbstractMethod "getRatios"


isGood :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGood object_ = jmethod object_ "isGood" (\() -> (isGood_impl (javaCast object_ :: MeteredGameObjectInterface))) ()

isGood_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGood_super object_ = (isGood_impl (javaCast object_ :: MeteredGameObjectInterface))

isGood_impl :: MeteredGameObjectInterface -> IO (Bool)
isGood_impl this = javaAbstractMethod "isGood"


isDropping :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDropping object_ = jmethod object_ "isDropping" (\() -> (isDropping_impl (javaCast object_ :: MeteredGameObjectInterface))) ()

isDropping_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDropping_super object_ = (isDropping_impl (javaCast object_ :: MeteredGameObjectInterface))

isDropping_impl :: MeteredGameObjectInterface -> IO (Bool)
isDropping_impl this = javaAbstractMethod "isDropping"


