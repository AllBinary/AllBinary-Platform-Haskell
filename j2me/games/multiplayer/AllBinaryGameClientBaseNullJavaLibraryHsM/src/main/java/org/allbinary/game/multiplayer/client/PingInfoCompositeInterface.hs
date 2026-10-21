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
-- package org.allbinary.game.multiplayer.client
module PingInfoCompositeInterface where

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
data PingInfoCompositeInterface = PingInfoCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull PingInfoCompositeInterface where
    javaNull = javaNullRecord "PingInfoCompositeInterface"

instance JavaEquals PingInfoCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PingInfoCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass PingInfoCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PingInfoCompositeInterface
fromHeader_ header = PingInfoCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PingInfoCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setPingInfo :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPingInfo object_ a1 = jmethod object_ "setPingInfo" (\() -> (setPingInfo_impl (javaCast object_ :: PingInfoCompositeInterface))) () a1

setPingInfo_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPingInfo_super object_ a1 = (setPingInfo_impl (javaCast object_ :: PingInfoCompositeInterface)) a1

setPingInfo_impl :: PingInfoCompositeInterface -> Bool -> IO (())
setPingInfo_impl this show = javaAbstractMethod "setPingInfo"


