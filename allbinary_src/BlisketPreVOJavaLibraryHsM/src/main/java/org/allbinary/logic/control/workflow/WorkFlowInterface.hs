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
-- package org.allbinary.logic.control.workflow
module WorkFlowInterface where

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
data WorkFlowInterface = WorkFlowInterface
    { header_ :: JavaHeader
    }

instance JavaNull WorkFlowInterface where
    javaNull = javaNullRecord "WorkFlowInterface"

instance JavaEquals WorkFlowInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowInterface where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> WorkFlowInterface
fromHeader_ header = WorkFlowInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (WorkFlowInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: WorkFlowInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: WorkFlowInterface))

getName_impl :: WorkFlowInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (Int)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: WorkFlowInterface))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (Int)
process_super object_ = (process_impl (javaCast object_ :: WorkFlowInterface))

process_impl :: WorkFlowInterface -> IO (Int)
process_impl this = javaAbstractMethod "process"


