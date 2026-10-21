{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.thread
module NullThread where

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
import qualified Thread -- same package or java.lang
import qualified NullRunnable -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data NullThread = NullThread
    { header_ :: JavaHeader
    }

instance JavaNull NullThread where
    javaNull = javaNullRecord "NullThread"

instance JavaEquals NullThread where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullThread where
    (==) = jrecordEquals

instance JavaObjectClass NullThread where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_THREAD #-}
nULL_THREAD = unsafePerformIO ((Thread.new_2 (jio (NullRunnable.getInstance)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullThread
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullThread header_
    jregisterLevel header_ this
    pure this

initFields_ :: NullThread -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullThread
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullThread -> IO ()
init_ this = do
    initFields_ this


