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
-- package org.allbinary.logic.util.event
module AllBinaryEventObjectFactoryInterface where

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
import qualified AllBinaryEventObject -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data AllBinaryEventObjectFactoryInterface = AllBinaryEventObjectFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryEventObjectFactoryInterface where
    javaNull = javaNullRecord "AllBinaryEventObjectFactoryInterface"

instance JavaEquals AllBinaryEventObjectFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryEventObjectFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryEventObjectFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AllBinaryEventObjectFactoryInterface
fromHeader_ header = AllBinaryEventObjectFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AllBinaryEventObjectFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryEventObjectFactoryInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: AllBinaryEventObjectFactoryInterface))

getInstance_impl :: AllBinaryEventObjectFactoryInterface -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance_impl this = javaAbstractMethod "getInstance"


