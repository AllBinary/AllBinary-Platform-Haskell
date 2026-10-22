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
-- package org.allbinary.data.tables.user.commerce.inventory.order
module OrderHistoryEntityInterface (module OrderHistoryEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, setStatus, setStatus_super, setStatus_impl, setPaymentMethod, setPaymentMethod_super, setPaymentMethod_impl, getStoreOrders, getStoreOrders_super, getStoreOrders_impl, getOrders, getOrders_super, getOrders_impl, getOrders_3, getOrders_3_super, getOrders_3_impl, getOrders, getOrder, getOrder_super, getOrder_impl, update, update_super, update_impl, toString)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified Order -- org.allbinary.business.user.commerce.inventory.order.Order
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data OrderHistoryEntityInterface = OrderHistoryEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull OrderHistoryEntityInterface where
    javaNull = javaNullRecord "OrderHistoryEntityInterface"

instance JavaEquals OrderHistoryEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OrderHistoryEntityInterface
fromHeader_ header = OrderHistoryEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OrderHistoryEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


insert :: (JavaObjectClass this_) => this_ -> String -> Order.Order -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> String -> Order.Order -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1 a2

insert_impl :: OrderHistoryEntityInterface -> String -> Order.Order -> IO (())
insert_impl this userName order = javaAbstractMethod "insert"


setStatus :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setStatus object_ a1 a2 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1 a2

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setStatus_super object_ a1 a2 = (setStatus_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1 a2

setStatus_impl :: OrderHistoryEntityInterface -> String -> String -> IO (())
setStatus_impl this orderId status = javaAbstractMethod "setStatus"


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setPaymentMethod object_ a1 a2 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1 a2

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setPaymentMethod_super object_ a1 a2 = (setPaymentMethod_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1 a2

setPaymentMethod_impl :: OrderHistoryEntityInterface -> String -> String -> IO (())
setPaymentMethod_impl this orderId status = javaAbstractMethod "setPaymentMethod"


-- throws Exception
getStoreOrders :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreOrders object_ a1 = jmethod object_ "getStoreOrders" (\() -> (getStoreOrders_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1

getStoreOrders_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreOrders_super object_ a1 = (getStoreOrders_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1

getStoreOrders_impl :: OrderHistoryEntityInterface -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreOrders_impl this storeFrontInterface = javaAbstractMethod "getStoreOrders"


-- throws Exception
getOrders :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getOrders object_ a1 = jmethod object_ "getOrders" (\() -> (getOrders_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1

getOrders_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_super object_ a1 = (getOrders_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1

getOrders_impl :: OrderHistoryEntityInterface -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_impl this userName = javaAbstractMethod "getOrders"


-- throws Exception
getOrders_3 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_3 object_ a1 a2 a3 = jmethod object_ "getOrders_3" (\() -> (getOrders_3_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1 a2 a3

getOrders_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_3_super object_ a1 a2 a3 = (getOrders_3_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1 a2 a3

getOrders_3_impl :: OrderHistoryEntityInterface -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_3_impl this status fromDate toDate = javaAbstractMethod "getOrders"


-- throws Exception
getOrder :: (JavaObjectClass this_) => this_ -> String -> IO (OrderHistory.OrderHistory)
getOrder object_ a1 = jmethod object_ "getOrder" (\() -> (getOrder_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1

getOrder_super :: (JavaObjectClass this_) => this_ -> String -> IO (OrderHistory.OrderHistory)
getOrder_super object_ a1 = (getOrder_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1

getOrder_impl :: OrderHistoryEntityInterface -> String -> IO (OrderHistory.OrderHistory)
getOrder_impl this id = javaAbstractMethod "getOrder"


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OrderHistoryEntityInterface))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: OrderHistoryEntityInterface)) a1 a2

update_impl :: OrderHistoryEntityInterface -> HashMap.HashMap -> HashMap.HashMap -> IO (())
update_impl this whereHashMap orderHashMap = javaAbstractMethod "update"


