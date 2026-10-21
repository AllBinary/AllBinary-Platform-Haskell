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
module StoreFrontInventoryStatistics where

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
import qualified StoreFrontInventoryStatisticsData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified InventoryEntityInterface -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StoreFrontInventoryStatisticsInterface

-- implements StoreFrontInventoryStatisticsInterface
data StoreFrontInventoryStatistics = StoreFrontInventoryStatistics
    { header_ :: JavaHeader
    , totalNumberOfItems :: IORef (Int64)
    , totalInventorySaleValueMoney :: IORef (Money.Money)
    }

instance JavaNull StoreFrontInventoryStatistics where
    javaNull = javaNullRecord "StoreFrontInventoryStatistics"

instance JavaEquals StoreFrontInventoryStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontInventoryStatistics where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontInventoryStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontInventoryStatistics
newRecord_ = do
    header_ <- newJavaHeader
    totalNumberOfItems <- newIORef 0
    totalInventorySaleValueMoney <- newIORef javaNull
    let this = StoreFrontInventoryStatistics header_ totalNumberOfItems totalInventorySaleValueMoney
    jregisterLevel header_ this
    StoreFrontInventoryStatisticsInterface.registerInterface_ header_
    jregisterMethod header_ "getNumber" (\() -> getNumber_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: StoreFrontInventoryStatistics -> IO ()
initFields_ this = do
    jset this.totalNumberOfItems (0)
    jset this.totalInventorySaleValueMoney (javaNull)
    pure ()

new_1 :: StoreFrontInterface.StoreFrontInterface -> IO StoreFrontInventoryStatistics
new_1 storeFrontInterface = do
    this <- newRecord_
    init_1 this storeFrontInterface
    pure this

init_1 :: StoreFrontInventoryStatistics -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_1 this storeFrontInterface = do
        initFields_ this
        assignedValue <- (Money.new_)
        jset (this).totalInventorySaleValueMoney (assignedValue)
        inventoryEntityInterface <- (fmap (\value_ -> javaCast value_ :: InventoryEntityInterface.InventoryEntityInterface) (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))
        itemVector <- (InventoryEntityInterface.getItems inventoryEntityInterface storeFrontInterface)
        size <- (BasicArrayList.size itemVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let itemInterface = (javaCast (jio (BasicArrayList.get itemVector index)) :: ItemInterface.ItemInterface)
            let numberInStock = (javaToString (jio (ItemInterface.getNumber itemInterface)))
            jset (this).totalNumberOfItems (((jget (this).totalNumberOfItems) + (Prelude.fromIntegral numberInStock)))
            itemPriceMoney <- (ItemInterface.getPrice itemInterface)
            Control.Monad.void (Money.multiply itemPriceMoney numberInStock)
            Control.Monad.void (Money.add ((jget (this).totalInventorySaleValueMoney)) (jio (Money.toString itemPriceMoney)))
        pure ()


getNumber :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: StoreFrontInventoryStatistics))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: StoreFrontInventoryStatistics))

getNumber_impl :: StoreFrontInventoryStatistics -> IO (Int64)
getNumber_impl this = do
        pure ((Prelude.fromIntegral ((jget (this).totalNumberOfItems)) :: Int64))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: StoreFrontInventoryStatistics))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: StoreFrontInventoryStatistics))

getTotal_impl :: StoreFrontInventoryStatistics -> IO (Money.Money)
getTotal_impl this = do
        pure ((jget (this).totalInventorySaleValueMoney))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StoreFrontInventoryStatistics))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StoreFrontInventoryStatistics))

toHashMap_impl :: StoreFrontInventoryStatistics -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (StoreFrontInventoryStatisticsData.getInstance))).nUMBEROFITEMS) (javaToString (jio (StoreFrontInventoryStatistics.getNumber this))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (StoreFrontInventoryStatisticsData.getInstance))).tOTALVALUE) (jio (Money.toString ((jio (StoreFrontInventoryStatistics.getTotal this))))))
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: StoreFrontInventoryStatistics))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: StoreFrontInventoryStatistics))

toVector_impl :: StoreFrontInventoryStatistics -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        pure (javaNull)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: StoreFrontInventoryStatistics))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: StoreFrontInventoryStatistics))

getKey_impl :: StoreFrontInventoryStatistics -> IO (Any.Any)
getKey_impl this = do
        pure (javaNull)


