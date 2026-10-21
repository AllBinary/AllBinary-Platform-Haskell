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
-- package org.allbinary.game.physics.acceleration
module AccelerateableInterface where

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
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal

-- Java interface: the classes that implement it have these functions
data AccelerateableInterface = AccelerateableInterface
    { header_ :: JavaHeader
    }

instance JavaNull AccelerateableInterface where
    javaNull = javaNullRecord "AccelerateableInterface"

instance JavaEquals AccelerateableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AccelerateableInterface where
    (==) = jrecordEquals

instance JavaObjectClass AccelerateableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AccelerateableInterface
fromHeader_ header = AccelerateableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AccelerateableInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


accelerate :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
accelerate object_ a1 = jmethod object_ "accelerate" (\() -> (accelerate_impl (javaCast object_ :: AccelerateableInterface))) () a1

accelerate_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
accelerate_super object_ a1 = (accelerate_impl (javaCast object_ :: AccelerateableInterface)) a1

accelerate_impl :: AccelerateableInterface -> BasicDecimal.BasicDecimal -> IO (())
accelerate_impl this accelerate = javaAbstractMethod "accelerate"


