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
-- package org.allbinary.logic.control.contraints.size
module TwoDimensionalConstraintInterface where

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
import qualified SizeConstraintInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data TwoDimensionalConstraintInterface = TwoDimensionalConstraintInterface
    { header_ :: JavaHeader
    }

instance JavaNull TwoDimensionalConstraintInterface where
    javaNull = javaNullRecord "TwoDimensionalConstraintInterface"

instance JavaEquals TwoDimensionalConstraintInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TwoDimensionalConstraintInterface where
    (==) = jrecordEquals

instance JavaObjectClass TwoDimensionalConstraintInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TwoDimensionalConstraintInterface
fromHeader_ header = TwoDimensionalConstraintInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TwoDimensionalConstraintInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: TwoDimensionalConstraintInterface))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: TwoDimensionalConstraintInterface))

getHeight_impl :: TwoDimensionalConstraintInterface -> IO (SizeConstraintInterface.SizeConstraintInterface)
getHeight_impl this = javaAbstractMethod "getHeight"


getWidth :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: TwoDimensionalConstraintInterface))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: TwoDimensionalConstraintInterface))

getWidth_impl :: TwoDimensionalConstraintInterface -> IO (SizeConstraintInterface.SizeConstraintInterface)
getWidth_impl this = javaAbstractMethod "getWidth"


setHeight :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: TwoDimensionalConstraintInterface))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: TwoDimensionalConstraintInterface)) a1

setHeight_impl :: TwoDimensionalConstraintInterface -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setHeight_impl this heightSizeConstraintInterface = javaAbstractMethod "setHeight"


setWidth :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: TwoDimensionalConstraintInterface))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: TwoDimensionalConstraintInterface)) a1

setWidth_impl :: TwoDimensionalConstraintInterface -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setWidth_impl this widthSizeConstraintInterface = javaAbstractMethod "setWidth"


