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
module ScalableListener where

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
data ScalableListener = ScalableListener
    { header_ :: JavaHeader
    }

instance JavaNull ScalableListener where
    javaNull = javaNullRecord "ScalableListener"

instance JavaEquals ScalableListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScalableListener where
    (==) = jrecordEquals

instance JavaObjectClass ScalableListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ScalableListener
fromHeader_ header = ScalableListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ScalableListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRatio :: (JavaObjectClass this_) => this_ -> Float -> IO (Float)
getRatio object_ a1 = jmethod object_ "getRatio" (\() -> (getRatio_impl (javaCast object_ :: ScalableListener))) () a1

getRatio_super :: (JavaObjectClass this_) => this_ -> Float -> IO (Float)
getRatio_super object_ a1 = (getRatio_impl (javaCast object_ :: ScalableListener)) a1

getRatio_impl :: ScalableListener -> Float -> IO (Float)
getRatio_impl this ratio = javaAbstractMethod "getRatio"


getLeft :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getLeft object_ a1 = jmethod object_ "getLeft" (\() -> (getLeft_impl (javaCast object_ :: ScalableListener))) () a1

getLeft_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getLeft_super object_ a1 = (getLeft_impl (javaCast object_ :: ScalableListener)) a1

getLeft_impl :: ScalableListener -> Int -> IO (Int)
getLeft_impl this xOffset = javaAbstractMethod "getLeft"


getTop :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getTop object_ a1 = jmethod object_ "getTop" (\() -> (getTop_impl (javaCast object_ :: ScalableListener))) () a1

getTop_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getTop_super object_ a1 = (getTop_impl (javaCast object_ :: ScalableListener)) a1

getTop_impl :: ScalableListener -> Int -> IO (Int)
getTop_impl this yOffset = javaAbstractMethod "getTop"


scale :: (JavaObjectClass this_) => this_ -> Float -> IO (())
scale object_ a1 = jmethod object_ "scale" (\() -> (scale_impl (javaCast object_ :: ScalableListener))) () a1

scale_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
scale_super object_ a1 = (scale_impl (javaCast object_ :: ScalableListener)) a1

scale_impl :: ScalableListener -> Float -> IO (())
scale_impl this ratio = javaAbstractMethod "scale"


