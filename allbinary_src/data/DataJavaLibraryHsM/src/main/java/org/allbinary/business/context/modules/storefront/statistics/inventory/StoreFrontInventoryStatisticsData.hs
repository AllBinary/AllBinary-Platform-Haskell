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
-- package org.allbinary.business.context.modules.storefront.statistics.inventory
module StoreFrontInventoryStatisticsData where

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

data StoreFrontInventoryStatisticsData = StoreFrontInventoryStatisticsData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , nUMBEROFITEMS :: IORef (String)
    , tOTALVALUE :: IORef (String)
    }

instance JavaNull StoreFrontInventoryStatisticsData where
    javaNull = javaNullRecord "StoreFrontInventoryStatisticsData"

instance JavaEquals StoreFrontInventoryStatisticsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontInventoryStatisticsData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontInventoryStatisticsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontInventoryStatisticsData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    nUMBEROFITEMS <- newIORef ""
    tOTALVALUE <- newIORef ""
    let this = StoreFrontInventoryStatisticsData header_ nAME nUMBEROFITEMS tOTALVALUE
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontInventoryStatisticsData -> IO ()
initFields_ this = do
    jset this.nAME ("STOREFRONT_INVENTORY_STATISTICS_NAME")
    jset this.nUMBEROFITEMS ("STOREFRONT_INVENTORY_STATISTICS_NUMBER_OF_ITEMS")
    jset this.tOTALVALUE ("STOREFRONT_INVENTORY_STATISTICS_TOTAL_VALUE")
    pure ()


getInstance :: IO (StoreFrontInventoryStatisticsData)
getInstance = do
        pure (StoreFrontInventoryStatisticsData.instance_)

new_ :: IO StoreFrontInventoryStatisticsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontInventoryStatisticsData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


