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
module OrderItemsEntityInterface (module OrderItemsEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStatus, setStatus_super, setStatus_impl, isEverythingShipped, isEverythingShipped_super, isEverythingShipped_impl, getBasketReview, getBasketReview_super, getBasketReview_impl, insert, insert_super, insert_impl, insert, insert_super, insert_impl, toString)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasketReview -- org.allbinary.business.user.commerce.inventory.basket.BasketReview
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data OrderItemsEntityInterface = OrderItemsEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull OrderItemsEntityInterface where
    javaNull = javaNullRecord "OrderItemsEntityInterface"

instance JavaEquals OrderItemsEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderItemsEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass OrderItemsEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OrderItemsEntityInterface
fromHeader_ header = OrderItemsEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OrderItemsEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
setStatus object_ a1 a2 a3 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderItemsEntityInterface))) () a1 a2 a3

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
setStatus_super object_ a1 a2 a3 = (setStatus_impl (javaCast object_ :: OrderItemsEntityInterface)) a1 a2 a3

setStatus_impl :: OrderItemsEntityInterface -> String -> String -> String -> IO (())
setStatus_impl this orderId groupId status = javaAbstractMethod "setStatus"


isEverythingShipped :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEverythingShipped object_ a1 = jmethod object_ "isEverythingShipped" (\() -> (isEverythingShipped_impl (javaCast object_ :: OrderItemsEntityInterface))) () a1

isEverythingShipped_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEverythingShipped_super object_ a1 = (isEverythingShipped_impl (javaCast object_ :: OrderItemsEntityInterface)) a1

isEverythingShipped_impl :: OrderItemsEntityInterface -> String -> IO (Bool)
isEverythingShipped_impl this orderId = javaAbstractMethod "isEverythingShipped"


getBasketReview :: (JavaObjectClass this_) => this_ -> String -> IO (BasketReview.BasketReview)
getBasketReview object_ a1 = jmethod object_ "getBasketReview" (\() -> (getBasketReview_impl (javaCast object_ :: OrderItemsEntityInterface))) () a1

getBasketReview_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasketReview.BasketReview)
getBasketReview_super object_ a1 = (getBasketReview_impl (javaCast object_ :: OrderItemsEntityInterface)) a1

getBasketReview_impl :: OrderItemsEntityInterface -> String -> IO (BasketReview.BasketReview)
getBasketReview_impl this orderId = javaAbstractMethod "getBasketReview"


insert :: (JavaObjectClass this_) => this_ -> String -> OrderInterface.OrderInterface -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: OrderItemsEntityInterface))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> String -> OrderInterface.OrderInterface -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: OrderItemsEntityInterface)) a1 a2

insert_impl :: OrderItemsEntityInterface -> String -> OrderInterface.OrderInterface -> IO (())
insert_impl this userName order = javaAbstractMethod "insert"


-- Java overload of insert with a different parameter count: give it a different name
insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: OrderItemsEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: OrderItemsEntityInterface)) a1

insert_impl :: OrderItemsEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


