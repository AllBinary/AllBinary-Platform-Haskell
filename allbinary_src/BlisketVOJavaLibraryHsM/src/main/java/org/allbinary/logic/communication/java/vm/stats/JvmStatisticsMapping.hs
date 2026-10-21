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
module JvmStatisticsMapping (module JvmStatisticsMapping, module JvmStatistics) where

import JvmStatistics hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toHashMap, toHashMap_super, toHashMap_impl, getKey, getKey_super, getKey_impl, toVector, toVector_super, toVector_impl)
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
import qualified JvmStatisticsData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified JvmStatistics

-- implements TableMappingInterface
data JvmStatisticsMapping = JvmStatisticsMapping
    { header_ :: JavaHeader
    , base :: JvmStatistics.JvmStatistics
    }

instance JavaNull JvmStatisticsMapping where
    javaNull = javaNullRecord "JvmStatisticsMapping"

instance JavaEquals JvmStatisticsMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JvmStatisticsMapping where
    (==) = jrecordEquals

instance JavaObjectClass JvmStatisticsMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO JvmStatisticsMapping
newRecord_ = do
    base <- JvmStatistics.newRecord_
    let header_ = base.header_
    let this = JvmStatisticsMapping header_ base
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    pure this

initFields_ :: JvmStatisticsMapping -> IO ()
initFields_ this = do
    pure ()

new_ :: IO JvmStatisticsMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JvmStatisticsMapping -> IO ()
init_ this = do
        JvmStatistics.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: JvmStatisticsMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: JvmStatisticsMapping))

toHashMap_impl :: JvmStatisticsMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.fREE_MEMORY_BYTES) (jio (JvmStatistics.getFreeMemoryBytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.fREE_MEMORY_KILOBYTES) (jio (JvmStatistics.getFreeMemoryKilobytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.fREE_MEMORY_MEGABYTES) (jio (JvmStatistics.getFreeMemoryMegabytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.mAX_MEMORY_BYTES) (jio (JvmStatistics.getMaxMemoryBytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.mAX_MEMORY_KILOBYTES) (jio (JvmStatistics.getMaxMemoryKilobytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.mAX_MEMORY_MEGABYTES) (jio (JvmStatistics.getMaxMemoryMegabytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.nUMBER_OF_THREADS) (jio (JvmStatistics.getNumberOfThreadsString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.tOTAL_MEMORY_BYTES) (jio (JvmStatistics.getTotalMemoryBytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.tOTAL_MEMORY_KILOBYTES) (jio (JvmStatistics.getTotalMemoryKilobytesString this)))
        Control.Monad.void (HashMap.put hashMap (JvmStatisticsData.tOTAL_MEMORY_MEGABYTES) (jio (JvmStatistics.getTotalMemoryMegabytesString this)))
        pure (hashMap)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: JvmStatisticsMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: JvmStatisticsMapping))

getKey_impl :: JvmStatisticsMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject JvmStatisticsData.nAME))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: JvmStatisticsMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: JvmStatisticsMapping))

toVector_impl :: JvmStatisticsMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getFreeMemoryBytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getFreeMemoryKilobytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getFreeMemoryMegabytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getMaxMemoryBytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getMaxMemoryKilobytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getMaxMemoryMegabytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getNumberOfThreadsString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getTotalMemoryBytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getTotalMemoryKilobytesString this)))
        Control.Monad.void (BasicArrayList.add vector (jio (JvmStatistics.getTotalMemoryMegabytesString this)))
        pure (vector)


