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
-- package org.allbinary.game.health
module HealthVisitorInterface where

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
import qualified HealthInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data HealthVisitorInterface = HealthVisitorInterface
    { header_ :: JavaHeader
    }

instance JavaNull HealthVisitorInterface where
    javaNull = javaNullRecord "HealthVisitorInterface"

instance JavaEquals HealthVisitorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthVisitorInterface where
    (==) = jrecordEquals

instance JavaObjectClass HealthVisitorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HealthVisitorInterface
fromHeader_ header = HealthVisitorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HealthVisitorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


visit :: (JavaObjectClass this_) => this_ -> HealthInterface.HealthInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: HealthVisitorInterface))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> HealthInterface.HealthInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: HealthVisitorInterface)) a1

visit_impl :: HealthVisitorInterface -> HealthInterface.HealthInterface -> IO (())
visit_impl this healthInterface = javaAbstractMethod "visit"


