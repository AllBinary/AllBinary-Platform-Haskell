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
-- package org.allbinary.graphics.displayable
module StateControlledInterface where

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
data StateControlledInterface = StateControlledInterface
    { header_ :: JavaHeader
    }

instance JavaNull StateControlledInterface where
    javaNull = javaNullRecord "StateControlledInterface"

instance JavaEquals StateControlledInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StateControlledInterface where
    (==) = jrecordEquals

instance JavaObjectClass StateControlledInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StateControlledInterface
fromHeader_ header = StateControlledInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StateControlledInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: StateControlledInterface))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: StateControlledInterface)) a1

setState_impl :: StateControlledInterface -> Int -> IO (())
setState_impl this state = javaAbstractMethod "setState"


