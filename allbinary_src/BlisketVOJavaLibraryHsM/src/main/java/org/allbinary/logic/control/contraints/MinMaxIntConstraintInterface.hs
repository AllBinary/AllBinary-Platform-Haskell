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
-- package org.allbinary.logic.control.contraints
module MinMaxIntConstraintInterface where

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
data MinMaxIntConstraintInterface = MinMaxIntConstraintInterface
    { header_ :: JavaHeader
    }

instance JavaNull MinMaxIntConstraintInterface where
    javaNull = javaNullRecord "MinMaxIntConstraintInterface"

instance JavaEquals MinMaxIntConstraintInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MinMaxIntConstraintInterface where
    (==) = jrecordEquals

instance JavaObjectClass MinMaxIntConstraintInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MinMaxIntConstraintInterface
fromHeader_ header = MinMaxIntConstraintInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MinMaxIntConstraintInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMax :: (JavaObjectClass this_) => this_ -> IO (Int)
getMax object_ = jmethod object_ "getMax" (\() -> (getMax_impl (javaCast object_ :: MinMaxIntConstraintInterface))) ()

getMax_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMax_super object_ = (getMax_impl (javaCast object_ :: MinMaxIntConstraintInterface))

getMax_impl :: MinMaxIntConstraintInterface -> IO (Int)
getMax_impl this = javaAbstractMethod "getMax"


getMin :: (JavaObjectClass this_) => this_ -> IO (Int)
getMin object_ = jmethod object_ "getMin" (\() -> (getMin_impl (javaCast object_ :: MinMaxIntConstraintInterface))) ()

getMin_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMin_super object_ = (getMin_impl (javaCast object_ :: MinMaxIntConstraintInterface))

getMin_impl :: MinMaxIntConstraintInterface -> IO (Int)
getMin_impl this = javaAbstractMethod "getMin"


setMax :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMax object_ a1 = jmethod object_ "setMax" (\() -> (setMax_impl (javaCast object_ :: MinMaxIntConstraintInterface))) () a1

setMax_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMax_super object_ a1 = (setMax_impl (javaCast object_ :: MinMaxIntConstraintInterface)) a1

setMax_impl :: MinMaxIntConstraintInterface -> Int -> IO (())
setMax_impl this max = javaAbstractMethod "setMax"


setMin :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMin object_ a1 = jmethod object_ "setMin" (\() -> (setMin_impl (javaCast object_ :: MinMaxIntConstraintInterface))) () a1

setMin_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMin_super object_ a1 = (setMin_impl (javaCast object_ :: MinMaxIntConstraintInterface)) a1

setMin_impl :: MinMaxIntConstraintInterface -> Int -> IO (())
setMin_impl this min = javaAbstractMethod "setMin"


