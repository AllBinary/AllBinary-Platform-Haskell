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
-- package org.allbinary.game.configuration.persistance
module NullRecordFilter where

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
import qualified RecordFilter -- javax.microedition.rms.RecordFilter

-- implements RecordFilter
data NullRecordFilter = NullRecordFilter
    { header_ :: JavaHeader
    }

instance JavaNull NullRecordFilter where
    javaNull = javaNullRecord "NullRecordFilter"

instance JavaEquals NullRecordFilter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRecordFilter where
    (==) = jrecordEquals

instance JavaObjectClass NullRecordFilter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_RECORD_FILTER #-}
nULL_RECORD_FILTER = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullRecordFilter
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullRecordFilter header_
    jregisterLevel header_ this
    RecordFilter.registerInterface_ header_
    jregisterMethod header_ "matches" (\() -> matches_impl this)
    pure this

initFields_ :: NullRecordFilter -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullRecordFilter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullRecordFilter -> IO ()
init_ this = do
    initFields_ this


matches :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (Bool)
matches object_ a1 = jmethod object_ "matches" (\() -> (matches_impl (javaCast object_ :: NullRecordFilter))) () a1

matches_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (Bool)
matches_super object_ a1 = (matches_impl (javaCast object_ :: NullRecordFilter)) a1

matches_impl :: NullRecordFilter -> JavaArray (Int8) -> IO (Bool)
matches_impl this candidate = do
        pure (True)


