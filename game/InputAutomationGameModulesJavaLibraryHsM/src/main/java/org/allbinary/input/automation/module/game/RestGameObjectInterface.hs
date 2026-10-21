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
module RestGameObjectInterface where

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
data RestGameObjectInterface = RestGameObjectInterface
    { header_ :: JavaHeader
    }

instance JavaNull RestGameObjectInterface where
    javaNull = javaNullRecord "RestGameObjectInterface"

instance JavaEquals RestGameObjectInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RestGameObjectInterface where
    (==) = jrecordEquals

instance JavaObjectClass RestGameObjectInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RestGameObjectInterface
fromHeader_ header = RestGameObjectInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RestGameObjectInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isRestNeeded :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRestNeeded object_ = jmethod object_ "isRestNeeded" (\() -> (isRestNeeded_impl (javaCast object_ :: RestGameObjectInterface))) ()

isRestNeeded_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRestNeeded_super object_ = (isRestNeeded_impl (javaCast object_ :: RestGameObjectInterface))

isRestNeeded_impl :: RestGameObjectInterface -> IO (Bool)
isRestNeeded_impl this = javaAbstractMethod "isRestNeeded"


isAGoodTimeToRest :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAGoodTimeToRest object_ = jmethod object_ "isAGoodTimeToRest" (\() -> (isAGoodTimeToRest_impl (javaCast object_ :: RestGameObjectInterface))) ()

isAGoodTimeToRest_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAGoodTimeToRest_super object_ = (isAGoodTimeToRest_impl (javaCast object_ :: RestGameObjectInterface))

isAGoodTimeToRest_impl :: RestGameObjectInterface -> IO (Bool)
isAGoodTimeToRest_impl this = javaAbstractMethod "isAGoodTimeToRest"


