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
-- package org.allbinary.business.user.commerce.inventory.order
module OrderProcessorUtil where

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
import qualified Order -- same package or java.lang
import qualified OrderIdGenerator -- org.allbinary.data.generator.OrderIdGenerator
import qualified OrderHistoryEntity -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity
import qualified OrderItemsEntity -- org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity

data OrderProcessorUtil = OrderProcessorUtil
    { header_ :: JavaHeader
    , oRDER_PROCESSED :: IORef (String)
    }

instance JavaNull OrderProcessorUtil where
    javaNull = javaNullRecord "OrderProcessorUtil"

instance JavaEquals OrderProcessorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderProcessorUtil where
    (==) = jrecordEquals

instance JavaObjectClass OrderProcessorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrderProcessorUtil
newRecord_ = do
    header_ <- newJavaHeader
    oRDER_PROCESSED <- newIORef ""
    let this = OrderProcessorUtil header_ oRDER_PROCESSED
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: OrderProcessorUtil -> IO ()
initFields_ this = do
    jset this.oRDER_PROCESSED ("Order Processed")
    pure ()

new_ :: IO OrderProcessorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderProcessorUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OrderProcessorUtil)
getInstance = do
        pure (OrderProcessorUtil.instance_)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> String -> Order.Order -> IO (String)
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OrderProcessorUtil))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> String -> Order.Order -> IO (String)
process_super object_ a1 a2 = (process_impl (javaCast object_ :: OrderProcessorUtil)) a1 a2

process_impl :: OrderProcessorUtil -> String -> Order.Order -> IO (String)
process_impl this userName order = do
        orderItems <- (OrderItemsEntity.new_)
        orderHistory <- (OrderHistoryEntity.new_)
        Control.Monad.void (Order.setId order (jio (OrderIdGenerator.getNext ((jio (OrderIdGenerator.new_))))))
        Control.Monad.void (OrderItemsEntity.insert orderItems userName order)
        Control.Monad.void (OrderHistoryEntity.insert orderHistory userName order)
        pure ((jget (this).oRDER_PROCESSED))


