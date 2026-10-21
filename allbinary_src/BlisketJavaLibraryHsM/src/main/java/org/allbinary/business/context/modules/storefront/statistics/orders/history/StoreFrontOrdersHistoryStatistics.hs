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
module StoreFrontOrdersHistoryStatistics where

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
import qualified StoreFrontOrdersHistoryStatisticsData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified OrderHistoryInterface -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified OrderHistoryEntityInterface -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StoreFrontOrdersHistoryStatisticsInterface

-- implements StoreFrontOrdersHistoryStatisticsInterface
data StoreFrontOrdersHistoryStatistics = StoreFrontOrdersHistoryStatistics
    { header_ :: JavaHeader
    , numberOfOrdersLong :: IORef (Int64)
    , subTotalMoney :: IORef (Money.Money)
    , shippingCostMoney :: IORef (Money.Money)
    , taxesMoney :: IORef (Money.Money)
    , totalMoney :: IORef (Money.Money)
    }

instance JavaNull StoreFrontOrdersHistoryStatistics where
    javaNull = javaNullRecord "StoreFrontOrdersHistoryStatistics"

instance JavaEquals StoreFrontOrdersHistoryStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontOrdersHistoryStatistics where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontOrdersHistoryStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontOrdersHistoryStatistics
newRecord_ = do
    header_ <- newJavaHeader
    numberOfOrdersLong <- newIORef javaNull
    subTotalMoney <- newIORef javaNull
    shippingCostMoney <- newIORef javaNull
    taxesMoney <- newIORef javaNull
    totalMoney <- newIORef javaNull
    let this = StoreFrontOrdersHistoryStatistics header_ numberOfOrdersLong subTotalMoney shippingCostMoney taxesMoney totalMoney
    jregisterLevel header_ this
    StoreFrontOrdersHistoryStatisticsInterface.registerInterface_ header_
    jregisterMethod header_ "getNumberOfOrders" (\() -> getNumberOfOrders_impl this)
    jregisterMethod header_ "getSubTotal" (\() -> getSubTotal_impl this)
    jregisterMethod header_ "getShippingCost" (\() -> getShippingCost_impl this)
    jregisterMethod header_ "getTaxes" (\() -> getTaxes_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: StoreFrontOrdersHistoryStatistics -> IO ()
initFields_ this = do
    jset this.numberOfOrdersLong (javaNull)
    jset this.subTotalMoney (javaNull)
    jset this.shippingCostMoney (javaNull)
    jset this.taxesMoney (javaNull)
    jset this.totalMoney (javaNull)
    pure ()

new_1 :: StoreFrontInterface.StoreFrontInterface -> IO StoreFrontOrdersHistoryStatistics
new_1 storeFrontInterface = do
    this <- newRecord_
    init_1 this storeFrontInterface
    pure this

init_1 :: StoreFrontOrdersHistoryStatistics -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_1 this storeFrontInterface = do
        initFields_ this
        assignedValue <- (Money.new_)
        jset (this).subTotalMoney (assignedValue)
        assignedValue <- (Money.new_)
        jset (this).shippingCostMoney (assignedValue)
        assignedValue <- (Money.new_)
        jset (this).taxesMoney (assignedValue)
        assignedValue <- (Money.new_)
        jset (this).totalMoney (assignedValue)
        orderHistoryEntityInterface <- (fmap (\value_ -> javaCast value_ :: OrderHistoryEntityInterface.OrderHistoryEntityInterface) (OrderHistoryEntityFactory.getInstance))
        orderHistoryInterfaceVector <- (OrderHistoryEntityInterface.getStoreOrders orderHistoryEntityInterface storeFrontInterface)
        numberOfOrders <- newIORef (0)
        orderHistoryInterface <- newIORef (javaNull)
        size <- (BasicArrayList.size orderHistoryInterfaceVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset orderHistoryInterface ((javaCast (jio (BasicArrayList.get orderHistoryInterfaceVector index)) :: OrderHistoryInterface.OrderHistoryInterface))
            jset numberOfOrders (((jget numberOfOrders) + 1))
            Control.Monad.void (Money.add ((jget (this).subTotalMoney)) (jio (OrderHistoryInterface.getSubTotal ((jget orderHistoryInterface)))))
            Control.Monad.void (Money.add ((jget (this).shippingCostMoney)) (jio (OrderHistoryInterface.getShippingCost ((jget orderHistoryInterface)))))
            Control.Monad.void (Money.add ((jget (this).taxesMoney)) (jio (OrderHistoryInterface.getTaxes ((jget orderHistoryInterface)))))
            Control.Monad.void (Money.add ((jget (this).totalMoney)) (jio (OrderHistoryInterface.getTotal ((jget orderHistoryInterface)))))
        jset (this).numberOfOrdersLong ((Prelude.fromIntegral ((jget numberOfOrders)) :: Int64))
        pure ()


getNumberOfOrders :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfOrders object_ = jmethod object_ "getNumberOfOrders" (\() -> (getNumberOfOrders_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

getNumberOfOrders_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfOrders_super object_ = (getNumberOfOrders_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

getNumberOfOrders_impl :: StoreFrontOrdersHistoryStatistics -> IO (Int64)
getNumberOfOrders_impl this = do
        pure ((jget (this).numberOfOrdersLong))


getSubTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal object_ = jmethod object_ "getSubTotal" (\() -> (getSubTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

getSubTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal_super object_ = (getSubTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

getSubTotal_impl :: StoreFrontOrdersHistoryStatistics -> IO (Money.Money)
getSubTotal_impl this = do
        pure ((jget (this).subTotalMoney))


getShippingCost :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost object_ = jmethod object_ "getShippingCost" (\() -> (getShippingCost_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

getShippingCost_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getShippingCost_super object_ = (getShippingCost_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

getShippingCost_impl :: StoreFrontOrdersHistoryStatistics -> IO (Money.Money)
getShippingCost_impl this = do
        pure ((jget (this).shippingCostMoney))


getTaxes :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes object_ = jmethod object_ "getTaxes" (\() -> (getTaxes_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

getTaxes_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTaxes_super object_ = (getTaxes_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

getTaxes_impl :: StoreFrontOrdersHistoryStatistics -> IO (Money.Money)
getTaxes_impl this = do
        pure ((jget (this).taxesMoney))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

getTotal_impl :: StoreFrontOrdersHistoryStatistics -> IO (Money.Money)
getTotal_impl this = do
        pure ((jget (this).totalMoney))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

toHashMap_impl :: StoreFrontOrdersHistoryStatistics -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        storeFrontOrdersHistoryStatisticsData <- (StoreFrontOrdersHistoryStatisticsData.getInstance)
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontOrdersHistoryStatisticsData).nUMBEROFORDERS) (javaToString (jio (StoreFrontOrdersHistoryStatistics.getNumberOfOrders this))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontOrdersHistoryStatisticsData).sUBTOTAL) (jio (Money.toString ((jio (StoreFrontOrdersHistoryStatistics.getSubTotal this))))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontOrdersHistoryStatisticsData).sHIPPINGCOST) (jio (Money.toString ((jio (StoreFrontOrdersHistoryStatistics.getShippingCost this))))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontOrdersHistoryStatisticsData).tAXES) (jio (Money.toString ((jio (StoreFrontOrdersHistoryStatistics.getTaxes this))))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontOrdersHistoryStatisticsData).tOTAL) (jio (Money.toString ((jio (StoreFrontOrdersHistoryStatistics.getTotal this))))))
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

toVector_impl :: StoreFrontOrdersHistoryStatistics -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        pure (javaNull)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: StoreFrontOrdersHistoryStatistics))

getKey_impl :: StoreFrontOrdersHistoryStatistics -> IO (Any.Any)
getKey_impl this = do
        pure (javaNull)


