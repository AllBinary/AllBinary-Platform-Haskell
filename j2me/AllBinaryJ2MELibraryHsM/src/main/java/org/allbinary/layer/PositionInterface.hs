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
-- package org.allbinary.layer
module PositionInterface where

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
data PositionInterface = PositionInterface
    { header_ :: JavaHeader
    }

instance JavaNull PositionInterface where
    javaNull = javaNullRecord "PositionInterface"

instance JavaEquals PositionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PositionInterface where
    (==) = jrecordEquals

instance JavaObjectClass PositionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PositionInterface
fromHeader_ header = PositionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PositionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setPosition :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition object_ a1 a2 a3 = jmethod object_ "setPosition" (\() -> (setPosition_impl (javaCast object_ :: PositionInterface))) () a1 a2 a3

setPosition_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition_super object_ a1 a2 a3 = (setPosition_impl (javaCast object_ :: PositionInterface)) a1 a2 a3

setPosition_impl :: PositionInterface -> Int -> Int -> Int -> IO (())
setPosition_impl this x y z = javaAbstractMethod "setPosition"


