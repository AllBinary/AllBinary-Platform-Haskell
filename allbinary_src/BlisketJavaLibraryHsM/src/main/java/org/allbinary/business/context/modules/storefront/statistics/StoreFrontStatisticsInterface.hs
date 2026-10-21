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
module StoreFrontStatisticsInterface where

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
import qualified StoreFrontAdvertisementsStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface
import qualified StoreFrontInventoryStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface
import qualified StoreFrontOrdersHistoryStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface
import qualified StoreFrontUsersStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface

-- Java interface: the classes that implement it have these functions
data StoreFrontStatisticsInterface = StoreFrontStatisticsInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontStatisticsInterface where
    javaNull = javaNullRecord "StoreFrontStatisticsInterface"

instance JavaEquals StoreFrontStatisticsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontStatisticsInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontStatisticsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreFrontStatisticsInterface
fromHeader_ header = StoreFrontStatisticsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreFrontStatisticsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getAdvertisements :: (JavaObjectClass this_) => this_ -> IO (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
getAdvertisements object_ = jmethod object_ "getAdvertisements" (\() -> (getAdvertisements_impl (javaCast object_ :: StoreFrontStatisticsInterface))) ()

getAdvertisements_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
getAdvertisements_super object_ = (getAdvertisements_impl (javaCast object_ :: StoreFrontStatisticsInterface))

getAdvertisements_impl :: StoreFrontStatisticsInterface -> IO (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
getAdvertisements_impl this = javaAbstractMethod "getAdvertisements"


getUsers :: (JavaObjectClass this_) => this_ -> IO (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
getUsers object_ = jmethod object_ "getUsers" (\() -> (getUsers_impl (javaCast object_ :: StoreFrontStatisticsInterface))) ()

getUsers_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
getUsers_super object_ = (getUsers_impl (javaCast object_ :: StoreFrontStatisticsInterface))

getUsers_impl :: StoreFrontStatisticsInterface -> IO (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
getUsers_impl this = javaAbstractMethod "getUsers"


getInventory :: (JavaObjectClass this_) => this_ -> IO (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
getInventory object_ = jmethod object_ "getInventory" (\() -> (getInventory_impl (javaCast object_ :: StoreFrontStatisticsInterface))) ()

getInventory_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
getInventory_super object_ = (getInventory_impl (javaCast object_ :: StoreFrontStatisticsInterface))

getInventory_impl :: StoreFrontStatisticsInterface -> IO (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
getInventory_impl this = javaAbstractMethod "getInventory"


getOrders :: (JavaObjectClass this_) => this_ -> IO (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
getOrders object_ = jmethod object_ "getOrders" (\() -> (getOrders_impl (javaCast object_ :: StoreFrontStatisticsInterface))) ()

getOrders_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
getOrders_super object_ = (getOrders_impl (javaCast object_ :: StoreFrontStatisticsInterface))

getOrders_impl :: StoreFrontStatisticsInterface -> IO (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
getOrders_impl this = javaAbstractMethod "getOrders"


