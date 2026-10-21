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
module JvmStatistics where

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
import qualified Runtime -- same package or java.lang
import qualified Thread -- same package or java.lang

data JvmStatistics = JvmStatistics
    { header_ :: JavaHeader
    , runtime :: IORef (Runtime.Runtime)
    }

instance JavaNull JvmStatistics where
    javaNull = javaNullRecord "JvmStatistics"

instance JavaEquals JvmStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JvmStatistics where
    (==) = jrecordEquals

instance JavaObjectClass JvmStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO JvmStatistics
newRecord_ = do
    header_ <- newJavaHeader
    runtime <- newIORef javaNull
    let this = JvmStatistics header_ runtime
    jregisterLevel header_ this
    jregisterMethod header_ "getFreeMemoryBytes" (\() -> getFreeMemoryBytes_impl this)
    jregisterMethod header_ "getFreeMemoryKilobytes" (\() -> getFreeMemoryKilobytes_impl this)
    jregisterMethod header_ "getFreeMemoryMegabytes" (\() -> getFreeMemoryMegabytes_impl this)
    jregisterMethod header_ "getMaxMemoryBytes" (\() -> getMaxMemoryBytes_impl this)
    jregisterMethod header_ "getMaxMemoryKilobytes" (\() -> getMaxMemoryKilobytes_impl this)
    jregisterMethod header_ "getMaxMemoryMegabytes" (\() -> getMaxMemoryMegabytes_impl this)
    jregisterMethod header_ "getTotalMemoryBytes" (\() -> getTotalMemoryBytes_impl this)
    jregisterMethod header_ "getTotalMemoryKilobytes" (\() -> getTotalMemoryKilobytes_impl this)
    jregisterMethod header_ "getTotalMemoryMegabytes" (\() -> getTotalMemoryMegabytes_impl this)
    jregisterMethod header_ "getFreeMemoryBytesLong" (\() -> getFreeMemoryBytesLong_impl this)
    jregisterMethod header_ "getFreeMemoryKilobytesLong" (\() -> getFreeMemoryKilobytesLong_impl this)
    jregisterMethod header_ "getFreeMemoryMegabytesLong" (\() -> getFreeMemoryMegabytesLong_impl this)
    jregisterMethod header_ "getMaxMemoryBytesLong" (\() -> getMaxMemoryBytesLong_impl this)
    jregisterMethod header_ "getMaxMemoryKilobytesLong" (\() -> getMaxMemoryKilobytesLong_impl this)
    jregisterMethod header_ "getMaxMemoryMegabytesLong" (\() -> getMaxMemoryMegabytesLong_impl this)
    jregisterMethod header_ "getTotalMemoryBytesLong" (\() -> getTotalMemoryBytesLong_impl this)
    jregisterMethod header_ "getTotalMemoryKilobytesLong" (\() -> getTotalMemoryKilobytesLong_impl this)
    jregisterMethod header_ "getTotalMemoryMegabytesLong" (\() -> getTotalMemoryMegabytesLong_impl this)
    jregisterMethod header_ "getFreeMemoryBytesString" (\() -> getFreeMemoryBytesString_impl this)
    jregisterMethod header_ "getFreeMemoryKilobytesString" (\() -> getFreeMemoryKilobytesString_impl this)
    jregisterMethod header_ "getFreeMemoryMegabytesString" (\() -> getFreeMemoryMegabytesString_impl this)
    jregisterMethod header_ "getMaxMemoryBytesString" (\() -> getMaxMemoryBytesString_impl this)
    jregisterMethod header_ "getMaxMemoryKilobytesString" (\() -> getMaxMemoryKilobytesString_impl this)
    jregisterMethod header_ "getMaxMemoryMegabytesString" (\() -> getMaxMemoryMegabytesString_impl this)
    jregisterMethod header_ "getTotalMemoryBytesString" (\() -> getTotalMemoryBytesString_impl this)
    jregisterMethod header_ "getTotalMemoryKilobytesString" (\() -> getTotalMemoryKilobytesString_impl this)
    jregisterMethod header_ "getTotalMemoryMegabytesString" (\() -> getTotalMemoryMegabytesString_impl this)
    jregisterMethod header_ "getNumberOfThreads" (\() -> getNumberOfThreads_impl this)
    jregisterMethod header_ "getNumberOfThreadsLong" (\() -> getNumberOfThreadsLong_impl this)
    jregisterMethod header_ "getNumberOfThreadsString" (\() -> getNumberOfThreadsString_impl this)
    jregisterMethod header_ "collectGarbage" (\() -> collectGarbage_impl this)
    pure this

initFields_ :: JvmStatistics -> IO ()
initFields_ this = do
    jset this.runtime (javaNull)
    pure ()

new_ :: IO JvmStatistics
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JvmStatistics -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (Runtime.getRuntime)
        jset (this).runtime (assignedValue)
        pure ()


getFreeMemoryBytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryBytes object_ = jmethod object_ "getFreeMemoryBytes" (\() -> (getFreeMemoryBytes_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryBytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryBytes_super object_ = (getFreeMemoryBytes_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryBytes_impl :: JvmStatistics -> IO (Int64)
getFreeMemoryBytes_impl this = do
        (Runtime.freeMemory ((jget (this).runtime)))


getFreeMemoryKilobytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryKilobytes object_ = jmethod object_ "getFreeMemoryKilobytes" (\() -> (getFreeMemoryKilobytes_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryKilobytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryKilobytes_super object_ = (getFreeMemoryKilobytes_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryKilobytes_impl :: JvmStatistics -> IO (Int64)
getFreeMemoryKilobytes_impl this = do
        pure (((jio (JvmStatistics.getFreeMemoryBytes this)) `quot` 1024))


getFreeMemoryMegabytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryMegabytes object_ = jmethod object_ "getFreeMemoryMegabytes" (\() -> (getFreeMemoryMegabytes_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryMegabytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryMegabytes_super object_ = (getFreeMemoryMegabytes_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryMegabytes_impl :: JvmStatistics -> IO (Int64)
getFreeMemoryMegabytes_impl this = do
        pure (((jio (JvmStatistics.getFreeMemoryKilobytes this)) `quot` 1024))


getMaxMemoryBytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryBytes object_ = jmethod object_ "getMaxMemoryBytes" (\() -> (getMaxMemoryBytes_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryBytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryBytes_super object_ = (getMaxMemoryBytes_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryBytes_impl :: JvmStatistics -> IO (Int64)
getMaxMemoryBytes_impl this = do
        (Runtime.maxMemory ((jget (this).runtime)))


getMaxMemoryKilobytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryKilobytes object_ = jmethod object_ "getMaxMemoryKilobytes" (\() -> (getMaxMemoryKilobytes_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryKilobytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryKilobytes_super object_ = (getMaxMemoryKilobytes_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryKilobytes_impl :: JvmStatistics -> IO (Int64)
getMaxMemoryKilobytes_impl this = do
        pure (((jio (JvmStatistics.getMaxMemoryBytes this)) `quot` 1024))


getMaxMemoryMegabytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryMegabytes object_ = jmethod object_ "getMaxMemoryMegabytes" (\() -> (getMaxMemoryMegabytes_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryMegabytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryMegabytes_super object_ = (getMaxMemoryMegabytes_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryMegabytes_impl :: JvmStatistics -> IO (Int64)
getMaxMemoryMegabytes_impl this = do
        pure (((jio (JvmStatistics.getMaxMemoryKilobytes this)) `quot` 1024))


getTotalMemoryBytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryBytes object_ = jmethod object_ "getTotalMemoryBytes" (\() -> (getTotalMemoryBytes_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryBytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryBytes_super object_ = (getTotalMemoryBytes_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryBytes_impl :: JvmStatistics -> IO (Int64)
getTotalMemoryBytes_impl this = do
        (Runtime.totalMemory ((jget (this).runtime)))


getTotalMemoryKilobytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryKilobytes object_ = jmethod object_ "getTotalMemoryKilobytes" (\() -> (getTotalMemoryKilobytes_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryKilobytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryKilobytes_super object_ = (getTotalMemoryKilobytes_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryKilobytes_impl :: JvmStatistics -> IO (Int64)
getTotalMemoryKilobytes_impl this = do
        pure (((jio (JvmStatistics.getTotalMemoryBytes this)) `quot` 1024))


getTotalMemoryMegabytes :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryMegabytes object_ = jmethod object_ "getTotalMemoryMegabytes" (\() -> (getTotalMemoryMegabytes_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryMegabytes_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryMegabytes_super object_ = (getTotalMemoryMegabytes_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryMegabytes_impl :: JvmStatistics -> IO (Int64)
getTotalMemoryMegabytes_impl this = do
        pure (((jio (JvmStatistics.getTotalMemoryKilobytes this)) `quot` 1024))


getFreeMemoryBytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryBytesLong object_ = jmethod object_ "getFreeMemoryBytesLong" (\() -> (getFreeMemoryBytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryBytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryBytesLong_super object_ = (getFreeMemoryBytesLong_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryBytesLong_impl :: JvmStatistics -> IO (Int64)
getFreeMemoryBytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getFreeMemoryBytes this))) :: Int64))


getFreeMemoryKilobytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryKilobytesLong object_ = jmethod object_ "getFreeMemoryKilobytesLong" (\() -> (getFreeMemoryKilobytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryKilobytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryKilobytesLong_super object_ = (getFreeMemoryKilobytesLong_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryKilobytesLong_impl :: JvmStatistics -> IO (Int64)
getFreeMemoryKilobytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getFreeMemoryKilobytes this))) :: Int64))


getFreeMemoryMegabytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryMegabytesLong object_ = jmethod object_ "getFreeMemoryMegabytesLong" (\() -> (getFreeMemoryMegabytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryMegabytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFreeMemoryMegabytesLong_super object_ = (getFreeMemoryMegabytesLong_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryMegabytesLong_impl :: JvmStatistics -> IO (Int64)
getFreeMemoryMegabytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getFreeMemoryMegabytes this))) :: Int64))


getMaxMemoryBytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryBytesLong object_ = jmethod object_ "getMaxMemoryBytesLong" (\() -> (getMaxMemoryBytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryBytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryBytesLong_super object_ = (getMaxMemoryBytesLong_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryBytesLong_impl :: JvmStatistics -> IO (Int64)
getMaxMemoryBytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getMaxMemoryBytes this))) :: Int64))


getMaxMemoryKilobytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryKilobytesLong object_ = jmethod object_ "getMaxMemoryKilobytesLong" (\() -> (getMaxMemoryKilobytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryKilobytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryKilobytesLong_super object_ = (getMaxMemoryKilobytesLong_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryKilobytesLong_impl :: JvmStatistics -> IO (Int64)
getMaxMemoryKilobytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getMaxMemoryKilobytes this))) :: Int64))


getMaxMemoryMegabytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryMegabytesLong object_ = jmethod object_ "getMaxMemoryMegabytesLong" (\() -> (getMaxMemoryMegabytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryMegabytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxMemoryMegabytesLong_super object_ = (getMaxMemoryMegabytesLong_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryMegabytesLong_impl :: JvmStatistics -> IO (Int64)
getMaxMemoryMegabytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getMaxMemoryMegabytes this))) :: Int64))


getTotalMemoryBytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryBytesLong object_ = jmethod object_ "getTotalMemoryBytesLong" (\() -> (getTotalMemoryBytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryBytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryBytesLong_super object_ = (getTotalMemoryBytesLong_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryBytesLong_impl :: JvmStatistics -> IO (Int64)
getTotalMemoryBytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getTotalMemoryBytes this))) :: Int64))


getTotalMemoryKilobytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryKilobytesLong object_ = jmethod object_ "getTotalMemoryKilobytesLong" (\() -> (getTotalMemoryKilobytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryKilobytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryKilobytesLong_super object_ = (getTotalMemoryKilobytesLong_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryKilobytesLong_impl :: JvmStatistics -> IO (Int64)
getTotalMemoryKilobytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getTotalMemoryKilobytes this))) :: Int64))


getTotalMemoryMegabytesLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryMegabytesLong object_ = jmethod object_ "getTotalMemoryMegabytesLong" (\() -> (getTotalMemoryMegabytesLong_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryMegabytesLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalMemoryMegabytesLong_super object_ = (getTotalMemoryMegabytesLong_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryMegabytesLong_impl :: JvmStatistics -> IO (Int64)
getTotalMemoryMegabytesLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getTotalMemoryMegabytes this))) :: Int64))


getFreeMemoryBytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getFreeMemoryBytesString object_ = jmethod object_ "getFreeMemoryBytesString" (\() -> (getFreeMemoryBytesString_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryBytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFreeMemoryBytesString_super object_ = (getFreeMemoryBytesString_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryBytesString_impl :: JvmStatistics -> IO (String)
getFreeMemoryBytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getFreeMemoryBytesLong this))))


getFreeMemoryKilobytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getFreeMemoryKilobytesString object_ = jmethod object_ "getFreeMemoryKilobytesString" (\() -> (getFreeMemoryKilobytesString_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryKilobytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFreeMemoryKilobytesString_super object_ = (getFreeMemoryKilobytesString_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryKilobytesString_impl :: JvmStatistics -> IO (String)
getFreeMemoryKilobytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getFreeMemoryKilobytesLong this))))


getFreeMemoryMegabytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getFreeMemoryMegabytesString object_ = jmethod object_ "getFreeMemoryMegabytesString" (\() -> (getFreeMemoryMegabytesString_impl (javaCast object_ :: JvmStatistics))) ()

getFreeMemoryMegabytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFreeMemoryMegabytesString_super object_ = (getFreeMemoryMegabytesString_impl (javaCast object_ :: JvmStatistics))

getFreeMemoryMegabytesString_impl :: JvmStatistics -> IO (String)
getFreeMemoryMegabytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getFreeMemoryMegabytesLong this))))


getMaxMemoryBytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getMaxMemoryBytesString object_ = jmethod object_ "getMaxMemoryBytesString" (\() -> (getMaxMemoryBytesString_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryBytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMaxMemoryBytesString_super object_ = (getMaxMemoryBytesString_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryBytesString_impl :: JvmStatistics -> IO (String)
getMaxMemoryBytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getMaxMemoryBytesLong this))))


getMaxMemoryKilobytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getMaxMemoryKilobytesString object_ = jmethod object_ "getMaxMemoryKilobytesString" (\() -> (getMaxMemoryKilobytesString_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryKilobytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMaxMemoryKilobytesString_super object_ = (getMaxMemoryKilobytesString_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryKilobytesString_impl :: JvmStatistics -> IO (String)
getMaxMemoryKilobytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getMaxMemoryKilobytesLong this))))


getMaxMemoryMegabytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getMaxMemoryMegabytesString object_ = jmethod object_ "getMaxMemoryMegabytesString" (\() -> (getMaxMemoryMegabytesString_impl (javaCast object_ :: JvmStatistics))) ()

getMaxMemoryMegabytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMaxMemoryMegabytesString_super object_ = (getMaxMemoryMegabytesString_impl (javaCast object_ :: JvmStatistics))

getMaxMemoryMegabytesString_impl :: JvmStatistics -> IO (String)
getMaxMemoryMegabytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getMaxMemoryMegabytesLong this))))


getTotalMemoryBytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalMemoryBytesString object_ = jmethod object_ "getTotalMemoryBytesString" (\() -> (getTotalMemoryBytesString_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryBytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalMemoryBytesString_super object_ = (getTotalMemoryBytesString_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryBytesString_impl :: JvmStatistics -> IO (String)
getTotalMemoryBytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getTotalMemoryBytesLong this))))


getTotalMemoryKilobytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalMemoryKilobytesString object_ = jmethod object_ "getTotalMemoryKilobytesString" (\() -> (getTotalMemoryKilobytesString_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryKilobytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalMemoryKilobytesString_super object_ = (getTotalMemoryKilobytesString_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryKilobytesString_impl :: JvmStatistics -> IO (String)
getTotalMemoryKilobytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getTotalMemoryKilobytesLong this))))


getTotalMemoryMegabytesString :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalMemoryMegabytesString object_ = jmethod object_ "getTotalMemoryMegabytesString" (\() -> (getTotalMemoryMegabytesString_impl (javaCast object_ :: JvmStatistics))) ()

getTotalMemoryMegabytesString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalMemoryMegabytesString_super object_ = (getTotalMemoryMegabytesString_impl (javaCast object_ :: JvmStatistics))

getTotalMemoryMegabytesString_impl :: JvmStatistics -> IO (String)
getTotalMemoryMegabytesString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getTotalMemoryMegabytesLong this))))


getNumberOfThreads :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfThreads object_ = jmethod object_ "getNumberOfThreads" (\() -> (getNumberOfThreads_impl (javaCast object_ :: JvmStatistics))) ()

getNumberOfThreads_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfThreads_super object_ = (getNumberOfThreads_impl (javaCast object_ :: JvmStatistics))

getNumberOfThreads_impl :: JvmStatistics -> IO (Int64)
getNumberOfThreads_impl this = do
        (Thread.activeCount)


getNumberOfThreadsLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfThreadsLong object_ = jmethod object_ "getNumberOfThreadsLong" (\() -> (getNumberOfThreadsLong_impl (javaCast object_ :: JvmStatistics))) ()

getNumberOfThreadsLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfThreadsLong_super object_ = (getNumberOfThreadsLong_impl (javaCast object_ :: JvmStatistics))

getNumberOfThreadsLong_impl :: JvmStatistics -> IO (Int64)
getNumberOfThreadsLong_impl this = do
        pure ((Prelude.fromIntegral ((jio (JvmStatistics.getNumberOfThreads this))) :: Int64))


getNumberOfThreadsString :: (JavaObjectClass this_) => this_ -> IO (String)
getNumberOfThreadsString object_ = jmethod object_ "getNumberOfThreadsString" (\() -> (getNumberOfThreadsString_impl (javaCast object_ :: JvmStatistics))) ()

getNumberOfThreadsString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNumberOfThreadsString_super object_ = (getNumberOfThreadsString_impl (javaCast object_ :: JvmStatistics))

getNumberOfThreadsString_impl :: JvmStatistics -> IO (String)
getNumberOfThreadsString_impl this = do
        pure ((javaToString (jio (JvmStatistics.getNumberOfThreadsLong this))))


collectGarbage :: (JavaObjectClass this_) => this_ -> IO (())
collectGarbage object_ = jmethod object_ "collectGarbage" (\() -> (collectGarbage_impl (javaCast object_ :: JvmStatistics))) ()

collectGarbage_super :: (JavaObjectClass this_) => this_ -> IO (())
collectGarbage_super object_ = (collectGarbage_impl (javaCast object_ :: JvmStatistics))

collectGarbage_impl :: JvmStatistics -> IO (())
collectGarbage_impl this = do
        Control.Monad.void (Runtime.gc ((jget (this).runtime)))
        pure ()


