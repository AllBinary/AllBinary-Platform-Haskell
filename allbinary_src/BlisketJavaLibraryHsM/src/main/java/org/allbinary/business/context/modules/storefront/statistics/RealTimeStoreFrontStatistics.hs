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
-- package org.allbinary.business.context.modules.storefront.statistics
module RealTimeStoreFrontStatistics where

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
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StoreFrontAdvertisementsStatistics -- org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics
import qualified StoreFrontAdvertisementsStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface
import qualified StoreFrontInventoryStatistics -- org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics
import qualified StoreFrontInventoryStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface
import qualified StoreFrontOrdersHistoryStatistics -- org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics
import qualified StoreFrontOrdersHistoryStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface
import qualified StoreFrontUsersStatistics -- org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics
import qualified StoreFrontUsersStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface
import qualified StoreFrontStatisticsInterface

-- implements StoreFrontStatisticsInterface
data RealTimeStoreFrontStatistics = RealTimeStoreFrontStatistics
    { header_ :: JavaHeader
    , storeFrontAdvertisementsStatisticsInterface :: IORef (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
    , storeFrontUsersStatisticsInterface :: IORef (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
    , storeFrontInventoryStatisticsInterface :: IORef (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
    , storeFrontOrderHistoryStatisticsInterface :: IORef (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
    }

instance JavaNull RealTimeStoreFrontStatistics where
    javaNull = javaNullRecord "RealTimeStoreFrontStatistics"

instance JavaEquals RealTimeStoreFrontStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RealTimeStoreFrontStatistics where
    (==) = jrecordEquals

instance JavaObjectClass RealTimeStoreFrontStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RealTimeStoreFrontStatistics
newRecord_ = do
    header_ <- newJavaHeader
    storeFrontAdvertisementsStatisticsInterface <- newIORef javaNull
    storeFrontUsersStatisticsInterface <- newIORef javaNull
    storeFrontInventoryStatisticsInterface <- newIORef javaNull
    storeFrontOrderHistoryStatisticsInterface <- newIORef javaNull
    let this = RealTimeStoreFrontStatistics header_ storeFrontAdvertisementsStatisticsInterface storeFrontUsersStatisticsInterface storeFrontInventoryStatisticsInterface storeFrontOrderHistoryStatisticsInterface
    jregisterLevel header_ this
    StoreFrontStatisticsInterface.registerInterface_ header_
    jregisterMethod header_ "getAdvertisements" (\() -> getAdvertisements_impl this)
    jregisterMethod header_ "getUsers" (\() -> getUsers_impl this)
    jregisterMethod header_ "getInventory" (\() -> getInventory_impl this)
    jregisterMethod header_ "getOrders" (\() -> getOrders_impl this)
    pure this

initFields_ :: RealTimeStoreFrontStatistics -> IO ()
initFields_ this = do
    jset this.storeFrontAdvertisementsStatisticsInterface (javaNull)
    jset this.storeFrontUsersStatisticsInterface (javaNull)
    jset this.storeFrontInventoryStatisticsInterface (javaNull)
    jset this.storeFrontOrderHistoryStatisticsInterface (javaNull)
    pure ()

new_1 :: StoreFrontInterface.StoreFrontInterface -> IO RealTimeStoreFrontStatistics
new_1 storeFrontInterface = do
    this <- newRecord_
    init_1 this storeFrontInterface
    pure this

init_1 :: RealTimeStoreFrontStatistics -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_1 this storeFrontInterface = do
        initFields_ this
        jset (this).storeFrontAdvertisementsStatisticsInterface ((javaCast (jio (StoreFrontAdvertisementsStatistics.new_1 storeFrontInterface)) :: StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface))
        jset (this).storeFrontUsersStatisticsInterface ((javaCast (jio (StoreFrontUsersStatistics.new_1 storeFrontInterface)) :: StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface))
        jset (this).storeFrontInventoryStatisticsInterface ((javaCast (jio (StoreFrontInventoryStatistics.new_1 storeFrontInterface)) :: StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface))
        jset (this).storeFrontOrderHistoryStatisticsInterface ((javaCast (jio (StoreFrontOrdersHistoryStatistics.new_1 storeFrontInterface)) :: StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface))
        pure ()


getAdvertisements :: (JavaObjectClass this_) => this_ -> IO (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
getAdvertisements object_ = jmethod object_ "getAdvertisements" (\() -> (getAdvertisements_impl (javaCast object_ :: RealTimeStoreFrontStatistics))) ()

getAdvertisements_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
getAdvertisements_super object_ = (getAdvertisements_impl (javaCast object_ :: RealTimeStoreFrontStatistics))

getAdvertisements_impl :: RealTimeStoreFrontStatistics -> IO (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
getAdvertisements_impl this = do
        pure ((jget (this).storeFrontAdvertisementsStatisticsInterface))


getUsers :: (JavaObjectClass this_) => this_ -> IO (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
getUsers object_ = jmethod object_ "getUsers" (\() -> (getUsers_impl (javaCast object_ :: RealTimeStoreFrontStatistics))) ()

getUsers_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
getUsers_super object_ = (getUsers_impl (javaCast object_ :: RealTimeStoreFrontStatistics))

getUsers_impl :: RealTimeStoreFrontStatistics -> IO (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
getUsers_impl this = do
        pure ((jget (this).storeFrontUsersStatisticsInterface))


getInventory :: (JavaObjectClass this_) => this_ -> IO (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
getInventory object_ = jmethod object_ "getInventory" (\() -> (getInventory_impl (javaCast object_ :: RealTimeStoreFrontStatistics))) ()

getInventory_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
getInventory_super object_ = (getInventory_impl (javaCast object_ :: RealTimeStoreFrontStatistics))

getInventory_impl :: RealTimeStoreFrontStatistics -> IO (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
getInventory_impl this = do
        pure ((jget (this).storeFrontInventoryStatisticsInterface))


getOrders :: (JavaObjectClass this_) => this_ -> IO (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
getOrders object_ = jmethod object_ "getOrders" (\() -> (getOrders_impl (javaCast object_ :: RealTimeStoreFrontStatistics))) ()

getOrders_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
getOrders_super object_ = (getOrders_impl (javaCast object_ :: RealTimeStoreFrontStatistics))

getOrders_impl :: RealTimeStoreFrontStatistics -> IO (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
getOrders_impl this = do
        pure ((jget (this).storeFrontOrderHistoryStatisticsInterface))


