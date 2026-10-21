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
-- package org.allbinary.vector
module VectorInterface where

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
data VectorInterface = VectorInterface
    { header_ :: JavaHeader
    }

instance JavaNull VectorInterface where
    javaNull = javaNullRecord "VectorInterface"

instance JavaEquals VectorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorInterface where
    (==) = jrecordEquals

instance JavaObjectClass VectorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> VectorInterface
fromHeader_ header = VectorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (VectorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints object_ a1 = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: VectorInterface))) () a1

getPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints_super object_ a1 = (getPoints_impl (javaCast object_ :: VectorInterface)) a1

getPoints_impl :: VectorInterface -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints_impl this frame = javaAbstractMethod "getPoints"


setPoints :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints object_ a1 = jmethod object_ "setPoints" (\() -> (setPoints_impl (javaCast object_ :: VectorInterface))) () a1

setPoints_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints_super object_ a1 = (setPoints_impl (javaCast object_ :: VectorInterface)) a1

setPoints_impl :: VectorInterface -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints_impl this currentPoints = javaAbstractMethod "setPoints"


