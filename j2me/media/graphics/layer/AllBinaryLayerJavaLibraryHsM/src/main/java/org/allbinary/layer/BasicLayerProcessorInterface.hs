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
-- package org.allbinary.layer
module BasicLayerProcessorInterface where

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
import qualified AllBinaryLayerManager -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data BasicLayerProcessorInterface = BasicLayerProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicLayerProcessorInterface where
    javaNull = javaNullRecord "BasicLayerProcessorInterface"

instance JavaEquals BasicLayerProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicLayerProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicLayerProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicLayerProcessorInterface
fromHeader_ header = BasicLayerProcessorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicLayerProcessorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicLayerProcessorInterface))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: BasicLayerProcessorInterface)) a1

process_impl :: BasicLayerProcessorInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this allBinaryLayerManager = javaAbstractMethod "process"


