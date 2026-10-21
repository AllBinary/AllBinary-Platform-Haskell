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
module NullRecordComparator where

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
import qualified RecordComparator -- javax.microedition.rms.RecordComparator

-- implements RecordComparator
data NullRecordComparator = NullRecordComparator
    { header_ :: JavaHeader
    }

instance JavaNull NullRecordComparator where
    javaNull = javaNullRecord "NullRecordComparator"

instance JavaEquals NullRecordComparator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRecordComparator where
    (==) = jrecordEquals

instance JavaObjectClass NullRecordComparator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_RECORD_COMPARATOR #-}
nULL_RECORD_COMPARATOR = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullRecordComparator
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullRecordComparator header_
    jregisterLevel header_ this
    RecordComparator.registerInterface_ header_
    jregisterMethod header_ "compare" (\() -> compare_impl this)
    pure this

initFields_ :: NullRecordComparator -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullRecordComparator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullRecordComparator -> IO ()
init_ this = do
    initFields_ this


compare :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Int)
compare object_ a1 a2 = jmethod object_ "compare" (\() -> (compare_impl (javaCast object_ :: NullRecordComparator))) () a1 a2

compare_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Int)
compare_super object_ a1 a2 = (compare_impl (javaCast object_ :: NullRecordComparator)) a1 a2

compare_impl :: NullRecordComparator -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Int)
compare_impl this rec1 rec2 = do
        pure (0)


