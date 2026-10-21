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
-- package org.allbinary.thirdparty.store
module LongArrayIdentifierInterface where

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
data LongArrayIdentifierInterface = LongArrayIdentifierInterface
    { header_ :: JavaHeader
    }

instance JavaNull LongArrayIdentifierInterface where
    javaNull = javaNullRecord "LongArrayIdentifierInterface"

instance JavaEquals LongArrayIdentifierInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LongArrayIdentifierInterface where
    (==) = jrecordEquals

instance JavaObjectClass LongArrayIdentifierInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LongArrayIdentifierInterface
fromHeader_ header = LongArrayIdentifierInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LongArrayIdentifierInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getLongArrayIdentifier :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int64))
getLongArrayIdentifier object_ = jmethod object_ "getLongArrayIdentifier" (\() -> (getLongArrayIdentifier_impl (javaCast object_ :: LongArrayIdentifierInterface))) ()

getLongArrayIdentifier_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int64))
getLongArrayIdentifier_super object_ = (getLongArrayIdentifier_impl (javaCast object_ :: LongArrayIdentifierInterface))

getLongArrayIdentifier_impl :: LongArrayIdentifierInterface -> IO (JavaArray (Int64))
getLongArrayIdentifier_impl this = javaAbstractMethod "getLongArrayIdentifier"


