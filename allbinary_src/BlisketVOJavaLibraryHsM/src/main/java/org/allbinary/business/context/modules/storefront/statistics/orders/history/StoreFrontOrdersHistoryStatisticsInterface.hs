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
module StoreFrontOrdersHistoryStatisticsInterface (module StoreFrontOrdersHistoryStatisticsInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNumberOfOrders, getNumberOfOrders_super, getNumberOfOrders_impl, getSubTotal, getSubTotal_super, getSubTotal_impl, getShippingCost, getShippingCost_super, getShippingCost_impl, getTaxes, getTaxes_super, getTaxes_impl, getTotal, getTotal_super, getTotal_impl, toString)
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
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface

-- Java interface: the classes that implement it have these functions
data StoreFrontOrdersHistoryStatisticsInterface = StoreFrontOrdersHistoryStatisticsInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontOrdersHistoryStatisticsInterface where
    javaNull = javaNullRecord "StoreFrontOrdersHistoryStatisticsInterface"

instance JavaEquals StoreFrontOrdersHistoryStatisticsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontOrdersHistoryStatisticsInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontOrdersHistoryStatisticsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreFrontOrdersHistoryStatisticsInterface
fromHeader_ header = StoreFrontOrdersHistoryStatisticsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreFrontOrdersHistoryStatisticsInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getNumberOfOrders :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfOrders object_ = jmethod object_ "getNumberOfOrders" (\() -> (getNumberOfOrders_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))) ()

getNumberOfOrders_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfOrders_super object_ = (getNumberOfOrders_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))

getNumberOfOrders_impl :: StoreFrontOrdersHistoryStatisticsInterface -> IO (Int64)
getNumberOfOrders_impl this = javaAbstractMethod "getNumberOfOrders"


getSubTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal object_ = jmethod object_ "getSubTotal" (\() -> (getSubTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))) ()

getSubTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal_super object_ = (getSubTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))

getSubTotal_impl :: StoreFrontOrdersHistoryStatisticsInterface -> IO (Money.Money)
getSubTotal_impl this = javaAbstractMethod "getSubTotal"


getShippingCost :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost object_ = jmethod object_ "getShippingCost" (\() -> (getShippingCost_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))) ()

getShippingCost_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost_super object_ = (getShippingCost_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))

getShippingCost_impl :: StoreFrontOrdersHistoryStatisticsInterface -> IO (Money.Money)
getShippingCost_impl this = javaAbstractMethod "getShippingCost"


getTaxes :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes object_ = jmethod object_ "getTaxes" (\() -> (getTaxes_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))) ()

getTaxes_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes_super object_ = (getTaxes_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))

getTaxes_impl :: StoreFrontOrdersHistoryStatisticsInterface -> IO (Money.Money)
getTaxes_impl this = javaAbstractMethod "getTaxes"


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsInterface))

getTotal_impl :: StoreFrontOrdersHistoryStatisticsInterface -> IO (Money.Money)
getTotal_impl this = javaAbstractMethod "getTotal"


