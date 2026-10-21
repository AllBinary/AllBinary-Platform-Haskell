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
-- package org.allbinary.business.context.modules.storefront.statistics.orders.history
module StoreFrontOrdersHistoryStatisticsData where

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

data StoreFrontOrdersHistoryStatisticsData = StoreFrontOrdersHistoryStatisticsData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , nUMBEROFORDERS :: IORef (String)
    , sUBTOTAL :: IORef (String)
    , sHIPPINGCOST :: IORef (String)
    , tAXES :: IORef (String)
    , tOTAL :: IORef (String)
    }

instance JavaNull StoreFrontOrdersHistoryStatisticsData where
    javaNull = javaNullRecord "StoreFrontOrdersHistoryStatisticsData"

instance JavaEquals StoreFrontOrdersHistoryStatisticsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontOrdersHistoryStatisticsData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontOrdersHistoryStatisticsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontOrdersHistoryStatisticsData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    nUMBEROFORDERS <- newIORef ""
    sUBTOTAL <- newIORef ""
    sHIPPINGCOST <- newIORef ""
    tAXES <- newIORef ""
    tOTAL <- newIORef ""
    let this = StoreFrontOrdersHistoryStatisticsData header_ nAME nUMBEROFORDERS sUBTOTAL sHIPPINGCOST tAXES tOTAL
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontOrdersHistoryStatisticsData -> IO ()
initFields_ this = do
    jset this.nAME ("STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME")
    jset this.nUMBEROFORDERS ("STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS")
    jset this.sUBTOTAL ("STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL")
    jset this.sHIPPINGCOST ("STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST")
    jset this.tAXES ("STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES")
    jset this.tOTAL ("STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL")
    pure ()


getInstance :: IO (StoreFrontOrdersHistoryStatisticsData)
getInstance = do
        pure (StoreFrontOrdersHistoryStatisticsData.instance_)

new_ :: IO StoreFrontOrdersHistoryStatisticsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontOrdersHistoryStatisticsData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


