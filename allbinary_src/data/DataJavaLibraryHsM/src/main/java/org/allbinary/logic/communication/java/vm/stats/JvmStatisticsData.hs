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
-- package org.allbinary.logic.communication.java.vm.stats
module JvmStatisticsData where

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

data JvmStatisticsData = JvmStatisticsData
    { header_ :: JavaHeader
    }

instance JavaNull JvmStatisticsData where
    javaNull = javaNullRecord "JvmStatisticsData"

instance JavaEquals JvmStatisticsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JvmStatisticsData where
    (==) = jrecordEquals

instance JavaObjectClass JvmStatisticsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

jVM_STATISTICS = "JVM_STATISTICS_"

nAME = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "NAME")

tOTAL_MEMORY_BYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "TOTAL_MEMORY_BYTES")

tOTAL_MEMORY_KILOBYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "TOTAL_MEMORY_KILOBYTES")

tOTAL_MEMORY_MEGABYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "TOTAL_MEMORY_MEGABYTES")

fREE_MEMORY_BYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "FREE_MEMORY_BYTES")

fREE_MEMORY_KILOBYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "FREE_MEMORY_KILOBYTES")

fREE_MEMORY_MEGABYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "FREE_MEMORY_MEGABYTES")

mAX_MEMORY_BYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "MAX_MEMORY_BYTES")

mAX_MEMORY_KILOBYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "MAX_MEMORY_KILOBYTES")

mAX_MEMORY_MEGABYTES = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "MAX_MEMORY_MEGABYTES")

nUMBER_OF_THREADS = (javaToString JvmStatisticsData.jVM_STATISTICS ++ "NUMBER_OF_THREADS")

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO JvmStatisticsData
newRecord_ = do
    header_ <- newJavaHeader
    let this = JvmStatisticsData header_
    jregisterLevel header_ this
    pure this

initFields_ :: JvmStatisticsData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO JvmStatisticsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JvmStatisticsData -> IO ()
init_ this = do
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


