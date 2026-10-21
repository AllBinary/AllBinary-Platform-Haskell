{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.input.event
module RawKeyEventListener where

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
data RawKeyEventListener = RawKeyEventListener
    { header_ :: JavaHeader
    }

instance JavaNull RawKeyEventListener where
    javaNull = javaNullRecord "RawKeyEventListener"

instance JavaEquals RawKeyEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RawKeyEventListener where
    (==) = jrecordEquals

instance JavaObjectClass RawKeyEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RawKeyEventListener
fromHeader_ header = RawKeyEventListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RawKeyEventListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onEventRaw :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
onEventRaw object_ a1 a2 a3 = jmethod object_ "onEventRaw" (\() -> (onEventRaw_impl (javaCast object_ :: RawKeyEventListener))) () a1 a2 a3

onEventRaw_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
onEventRaw_super object_ a1 a2 a3 = (onEventRaw_impl (javaCast object_ :: RawKeyEventListener)) a1 a2 a3

onEventRaw_impl :: RawKeyEventListener -> Int -> Int -> Bool -> IO (())
onEventRaw_impl this keyCode deviceId repeated = javaAbstractMethod "onEventRaw"


