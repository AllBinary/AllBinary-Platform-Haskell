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
module BasicAccelerationProperties where

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

data BasicAccelerationProperties = BasicAccelerationProperties
    { header_ :: JavaHeader
    , forward :: IORef (Int)
    , reverse :: IORef (Int)
    }

instance JavaNull BasicAccelerationProperties where
    javaNull = javaNullRecord "BasicAccelerationProperties"

instance JavaEquals BasicAccelerationProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicAccelerationProperties where
    (==) = jrecordEquals

instance JavaObjectClass BasicAccelerationProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicAccelerationProperties
newRecord_ = do
    header_ <- newJavaHeader
    forward <- newIORef 0
    reverse <- newIORef 0
    let this = BasicAccelerationProperties header_ forward reverse
    jregisterLevel header_ this
    jregisterMethod header_ "setReverse" (\() -> setReverse_impl this)
    jregisterMethod header_ "getReverse" (\() -> getReverse_impl this)
    jregisterMethod header_ "setForward" (\() -> setForward_impl this)
    jregisterMethod header_ "getForward" (\() -> getForward_impl this)
    pure this

initFields_ :: BasicAccelerationProperties -> IO ()
initFields_ this = do
    jset this.forward (0)
    jset this.reverse (0)
    pure ()

new_2 :: Int -> Int -> IO BasicAccelerationProperties
new_2 forward reverse = do
    this <- newRecord_
    init_2 this forward reverse
    pure this

init_2 :: BasicAccelerationProperties -> Int -> Int -> IO ()
init_2 this forward reverse = do
        initFields_ this
        Control.Monad.void (BasicAccelerationProperties.setForward this forward)
        Control.Monad.void (BasicAccelerationProperties.setReverse this reverse)
        pure ()


setReverse :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setReverse object_ a1 = jmethod object_ "setReverse" (\() -> (setReverse_impl (javaCast object_ :: BasicAccelerationProperties))) () a1

setReverse_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setReverse_super object_ a1 = (setReverse_impl (javaCast object_ :: BasicAccelerationProperties)) a1

setReverse_impl :: BasicAccelerationProperties -> Int -> IO (())
setReverse_impl this reverse = do
        jset (this).reverse (reverse)
        pure ()


getReverse :: (JavaObjectClass this_) => this_ -> IO (Int)
getReverse object_ = jmethod object_ "getReverse" (\() -> (getReverse_impl (javaCast object_ :: BasicAccelerationProperties))) ()

getReverse_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getReverse_super object_ = (getReverse_impl (javaCast object_ :: BasicAccelerationProperties))

getReverse_impl :: BasicAccelerationProperties -> IO (Int)
getReverse_impl this = do
        pure ((jget (this).reverse))


setForward :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setForward object_ a1 = jmethod object_ "setForward" (\() -> (setForward_impl (javaCast object_ :: BasicAccelerationProperties))) () a1

setForward_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setForward_super object_ a1 = (setForward_impl (javaCast object_ :: BasicAccelerationProperties)) a1

setForward_impl :: BasicAccelerationProperties -> Int -> IO (())
setForward_impl this forward = do
        jset (this).forward (forward)
        pure ()


getForward :: (JavaObjectClass this_) => this_ -> IO (Int)
getForward object_ = jmethod object_ "getForward" (\() -> (getForward_impl (javaCast object_ :: BasicAccelerationProperties))) ()

getForward_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getForward_super object_ = (getForward_impl (javaCast object_ :: BasicAccelerationProperties))

getForward_impl :: BasicAccelerationProperties -> IO (Int)
getForward_impl this = do
        pure ((jget (this).forward))


