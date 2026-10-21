{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.input
module KeyInterface where

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
data KeyInterface = KeyInterface
    { header_ :: JavaHeader
    }

instance JavaNull KeyInterface where
    javaNull = javaNullRecord "KeyInterface"

instance JavaEquals KeyInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyInterface where
    (==) = jrecordEquals

instance JavaObjectClass KeyInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> KeyInterface
fromHeader_ header = KeyInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (KeyInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: KeyInterface))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: KeyInterface)) a1

keyPressed_impl :: KeyInterface -> Int -> IO (())
keyPressed_impl this keyCode = javaAbstractMethod "keyPressed"


keyReleased :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: KeyInterface))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: KeyInterface)) a1

keyReleased_impl :: KeyInterface -> Int -> IO (())
keyReleased_impl this keyCode = javaAbstractMethod "keyReleased"


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: KeyInterface))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: KeyInterface)) a1 a2

keyPressedByDevice_impl :: KeyInterface -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = javaAbstractMethod "keyPressedByDevice"


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: KeyInterface))) () a1 a2

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 = (keyReleasedByDevice_impl (javaCast object_ :: KeyInterface)) a1 a2

keyReleasedByDevice_impl :: KeyInterface -> Int -> Int -> IO (())
keyReleasedByDevice_impl this keyCode deviceId = javaAbstractMethod "keyReleasedByDevice"


