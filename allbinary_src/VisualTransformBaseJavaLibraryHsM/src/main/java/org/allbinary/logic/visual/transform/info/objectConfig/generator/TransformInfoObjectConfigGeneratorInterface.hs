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
-- package org.allbinary.logic.visual.transform.info.objectConfig.generator
module TransformInfoObjectConfigGeneratorInterface where

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
data TransformInfoObjectConfigGeneratorInterface = TransformInfoObjectConfigGeneratorInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoObjectConfigGeneratorInterface where
    javaNull = javaNullRecord "TransformInfoObjectConfigGeneratorInterface"

instance JavaEquals TransformInfoObjectConfigGeneratorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigGeneratorInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigGeneratorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoObjectConfigGeneratorInterface
fromHeader_ header = TransformInfoObjectConfigGeneratorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoObjectConfigGeneratorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TransformInfoObjectConfigGeneratorInterface))) () a1

process_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process_super object_ a1 = (process_impl (javaCast object_ :: TransformInfoObjectConfigGeneratorInterface)) a1

process_impl :: TransformInfoObjectConfigGeneratorInterface -> String -> IO (String)
process_impl this input = javaAbstractMethod "process"


