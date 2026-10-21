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
-- package org.allbinary.input.automation.actions.script
module ProfileActionScriptItemInterface where

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
data ProfileActionScriptItemInterface = ProfileActionScriptItemInterface
    { header_ :: JavaHeader
    }

instance JavaNull ProfileActionScriptItemInterface where
    javaNull = javaNullRecord "ProfileActionScriptItemInterface"

instance JavaEquals ProfileActionScriptItemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptItemInterface where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptItemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ProfileActionScriptItemInterface
fromHeader_ header = ProfileActionScriptItemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ProfileActionScriptItemInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ProfileActionScriptItemInterface))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ProfileActionScriptItemInterface)) a1

process_impl :: ProfileActionScriptItemInterface -> Int64 -> IO (())
process_impl this frame = javaAbstractMethod "process"


