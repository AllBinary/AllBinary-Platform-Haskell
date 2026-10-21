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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoFactoryInterface where

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
import qualified TransformInfoInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext

-- Java interface: the classes that implement it have these functions
data TransformInfoFactoryInterface = TransformInfoFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoFactoryInterface where
    javaNull = javaNullRecord "TransformInfoFactoryInterface"

instance JavaEquals TransformInfoFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoFactoryInterface
fromHeader_ header = TransformInfoFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformInfoFactoryInterface))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: TransformInfoFactoryInterface)) a1 a2 a3

getInstance_impl :: TransformInfoFactoryInterface -> HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance_impl this databaseHashMap propertiesHashMap pageContext = javaAbstractMethod "getInstance"


