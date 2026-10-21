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
-- package org.allbinary.direction
module DirectionalCompositeInterface where

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
import qualified DirectionalInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data DirectionalCompositeInterface = DirectionalCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull DirectionalCompositeInterface where
    javaNull = javaNullRecord "DirectionalCompositeInterface"

instance JavaEquals DirectionalCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectionalCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass DirectionalCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DirectionalCompositeInterface
fromHeader_ header = DirectionalCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DirectionalCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDirectionalInterface :: (JavaObjectClass this_) => this_ -> IO (DirectionalInterface.DirectionalInterface)
getDirectionalInterface object_ = jmethod object_ "getDirectionalInterface" (\() -> (getDirectionalInterface_impl (javaCast object_ :: DirectionalCompositeInterface))) ()

getDirectionalInterface_super :: (JavaObjectClass this_) => this_ -> IO (DirectionalInterface.DirectionalInterface)
getDirectionalInterface_super object_ = (getDirectionalInterface_impl (javaCast object_ :: DirectionalCompositeInterface))

getDirectionalInterface_impl :: DirectionalCompositeInterface -> IO (DirectionalInterface.DirectionalInterface)
getDirectionalInterface_impl this = javaAbstractMethod "getDirectionalInterface"


