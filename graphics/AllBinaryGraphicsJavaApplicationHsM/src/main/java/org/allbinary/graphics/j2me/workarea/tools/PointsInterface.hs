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
-- package org.allbinary.graphics.j2me.workarea.tools
module PointsInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data PointsInterface = PointsInterface
    { header_ :: JavaHeader
    }

instance JavaNull PointsInterface where
    javaNull = javaNullRecord "PointsInterface"

instance JavaEquals PointsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsInterface where
    (==) = jrecordEquals

instance JavaObjectClass PointsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PointsInterface
fromHeader_ header = PointsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PointsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPoints :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPoints object_ = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: PointsInterface))) ()

getPoints_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPoints_super object_ = (getPoints_impl (javaCast object_ :: PointsInterface))

getPoints_impl :: PointsInterface -> IO (BasicArrayList.BasicArrayList)
getPoints_impl this = javaAbstractMethod "getPoints"


addPoints :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addPoints object_ a1 = jmethod object_ "addPoints" (\() -> (addPoints_impl (javaCast object_ :: PointsInterface))) () a1

addPoints_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addPoints_super object_ a1 = (addPoints_impl (javaCast object_ :: PointsInterface)) a1

addPoints_impl :: PointsInterface -> BasicArrayList.BasicArrayList -> IO (())
addPoints_impl this vector = javaAbstractMethod "addPoints"


