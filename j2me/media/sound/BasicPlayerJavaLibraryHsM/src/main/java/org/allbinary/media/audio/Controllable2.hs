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
-- package org.allbinary.media.audio
module Controllable2 where

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
data Controllable2 = Controllable2
    { header_ :: JavaHeader
    }

instance JavaNull Controllable2 where
    javaNull = javaNullRecord "Controllable2"

instance JavaEquals Controllable2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Controllable2 where
    (==) = jrecordEquals

instance JavaObjectClass Controllable2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> Controllable2
fromHeader_ header = Controllable2 header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (Controllable2 header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setVolume :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume object_ a1 a2 = jmethod object_ "setVolume" (\() -> (setVolume_impl (javaCast object_ :: Controllable2))) () a1 a2

setVolume_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume_super object_ a1 a2 = (setVolume_impl (javaCast object_ :: Controllable2)) a1 a2

setVolume_impl :: Controllable2 -> Int -> Int -> IO (())
setVolume_impl this leftVolume rightVolume = javaAbstractMethod "setVolume"


