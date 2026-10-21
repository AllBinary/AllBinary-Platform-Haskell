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
module StoreFrontInventoryStatisticsInterface (module StoreFrontInventoryStatisticsInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNumber, getNumber_super, getNumber_impl, getTotal, getTotal_super, getTotal_impl, toString)
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
data StoreFrontInventoryStatisticsInterface = StoreFrontInventoryStatisticsInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontInventoryStatisticsInterface where
    javaNull = javaNullRecord "StoreFrontInventoryStatisticsInterface"

instance JavaEquals StoreFrontInventoryStatisticsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontInventoryStatisticsInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontInventoryStatisticsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreFrontInventoryStatisticsInterface
fromHeader_ header = StoreFrontInventoryStatisticsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreFrontInventoryStatisticsInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getNumber :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: StoreFrontInventoryStatisticsInterface))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: StoreFrontInventoryStatisticsInterface))

getNumber_impl :: StoreFrontInventoryStatisticsInterface -> IO (Int64)
getNumber_impl this = javaAbstractMethod "getNumber"


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: StoreFrontInventoryStatisticsInterface))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: StoreFrontInventoryStatisticsInterface))

getTotal_impl :: StoreFrontInventoryStatisticsInterface -> IO (Money.Money)
getTotal_impl this = javaAbstractMethod "getTotal"


