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
-- package org.allbinary.business.context.modules.storefront.statistics.orders
module StoreFrontOrdersStatisticsData where

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

data StoreFrontOrdersStatisticsData = StoreFrontOrdersStatisticsData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    }

instance JavaNull StoreFrontOrdersStatisticsData where
    javaNull = javaNullRecord "StoreFrontOrdersStatisticsData"

instance JavaEquals StoreFrontOrdersStatisticsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontOrdersStatisticsData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontOrdersStatisticsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontOrdersStatisticsData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    let this = StoreFrontOrdersStatisticsData header_ nAME
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontOrdersStatisticsData -> IO ()
initFields_ this = do
    jset this.nAME ("STOREFRONT_ORDERS_STATISTICS_NAME")
    pure ()


getInstance :: IO (StoreFrontOrdersStatisticsData)
getInstance = do
        pure (StoreFrontOrdersStatisticsData.instance_)

new_ :: IO StoreFrontOrdersStatisticsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontOrdersStatisticsData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


