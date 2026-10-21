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
-- package org.allbinary.game.ag.ai.scroller
module TimeFiredInterface where

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
data TimeFiredInterface = TimeFiredInterface
    { header_ :: JavaHeader
    }

instance JavaNull TimeFiredInterface where
    javaNull = javaNullRecord "TimeFiredInterface"

instance JavaEquals TimeFiredInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeFiredInterface where
    (==) = jrecordEquals

instance JavaObjectClass TimeFiredInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TimeFiredInterface
fromHeader_ header = TimeFiredInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TimeFiredInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getLastFireTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastFireTime object_ = jmethod object_ "getLastFireTime" (\() -> (getLastFireTime_impl (javaCast object_ :: TimeFiredInterface))) ()

getLastFireTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastFireTime_super object_ = (getLastFireTime_impl (javaCast object_ :: TimeFiredInterface))

getLastFireTime_impl :: TimeFiredInterface -> IO (Int64)
getLastFireTime_impl this = javaAbstractMethod "getLastFireTime"


