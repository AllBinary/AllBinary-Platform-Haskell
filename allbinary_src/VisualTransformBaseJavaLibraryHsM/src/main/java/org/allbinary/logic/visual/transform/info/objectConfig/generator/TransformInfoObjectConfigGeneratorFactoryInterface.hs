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
module TransformInfoObjectConfigGeneratorFactoryInterface where

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
import qualified TransformInfoObjectConfigGenerator -- same package or java.lang
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

-- Java interface: the classes that implement it have these functions
data TransformInfoObjectConfigGeneratorFactoryInterface = TransformInfoObjectConfigGeneratorFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoObjectConfigGeneratorFactoryInterface where
    javaNull = javaNullRecord "TransformInfoObjectConfigGeneratorFactoryInterface"

instance JavaEquals TransformInfoObjectConfigGeneratorFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigGeneratorFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigGeneratorFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoObjectConfigGeneratorFactoryInterface
fromHeader_ header = TransformInfoObjectConfigGeneratorFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoObjectConfigGeneratorFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformInfoObjectConfigGeneratorFactoryInterface))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: TransformInfoObjectConfigGeneratorFactoryInterface)) a1

getInstance_impl :: TransformInfoObjectConfigGeneratorFactoryInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator)
getInstance_impl this transformInfoInterface = javaAbstractMethod "getInstance"


