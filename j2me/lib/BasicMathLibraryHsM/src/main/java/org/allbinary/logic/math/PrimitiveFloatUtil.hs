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
-- package org.allbinary.logic.math
module PrimitiveFloatUtil where

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

data PrimitiveFloatUtil = PrimitiveFloatUtil
    { header_ :: JavaHeader
    }

instance JavaNull PrimitiveFloatUtil where
    javaNull = javaNullRecord "PrimitiveFloatUtil"

instance JavaEquals PrimitiveFloatUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimitiveFloatUtil where
    (==) = jrecordEquals

instance JavaObjectClass PrimitiveFloatUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PrimitiveFloatUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PrimitiveFloatUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: PrimitiveFloatUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PrimitiveFloatUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PrimitiveFloatUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getArrayInstance :: IO (JavaArray (Float))
getArrayInstance = do
        pure ((jnewArray (0) 0.0))


