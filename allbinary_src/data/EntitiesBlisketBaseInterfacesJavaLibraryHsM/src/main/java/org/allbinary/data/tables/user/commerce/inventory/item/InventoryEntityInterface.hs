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
-- package org.allbinary.data.tables.user.commerce.inventory.item
module InventoryEntityInterface (module InventoryEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getItem, getItem_super, getItem_impl, getItems, getItems_super, getItems_impl, getWeight, getWeight_super, getWeight_impl, deleteWhere, deleteWhere_super, deleteWhere_impl, insert, insert_super, insert_impl, update, update_super, update_impl, toString)
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
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data InventoryEntityInterface = InventoryEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull InventoryEntityInterface where
    javaNull = javaNullRecord "InventoryEntityInterface"

instance JavaEquals InventoryEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass InventoryEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InventoryEntityInterface
fromHeader_ header = InventoryEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InventoryEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws MoneyException
getItem :: (JavaObjectClass this_) => this_ -> String -> IO (ItemInterface.ItemInterface)
getItem object_ a1 = jmethod object_ "getItem" (\() -> (getItem_impl (javaCast object_ :: InventoryEntityInterface))) () a1

getItem_super :: (JavaObjectClass this_) => this_ -> String -> IO (ItemInterface.ItemInterface)
getItem_super object_ a1 = (getItem_impl (javaCast object_ :: InventoryEntityInterface)) a1

getItem_impl :: InventoryEntityInterface -> String -> IO (ItemInterface.ItemInterface)
getItem_impl this id = javaAbstractMethod "getItem"


-- throws Exception
getItems :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getItems object_ a1 = jmethod object_ "getItems" (\() -> (getItems_impl (javaCast object_ :: InventoryEntityInterface))) () a1

getItems_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getItems_super object_ a1 = (getItems_impl (javaCast object_ :: InventoryEntityInterface)) a1

getItems_impl :: InventoryEntityInterface -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getItems_impl this storeFrontInterface = javaAbstractMethod "getItems"


getWeight :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getWeight object_ a1 = jmethod object_ "getWeight" (\() -> (getWeight_impl (javaCast object_ :: InventoryEntityInterface))) () a1

getWeight_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getWeight_super object_ a1 = (getWeight_impl (javaCast object_ :: InventoryEntityInterface)) a1

getWeight_impl :: InventoryEntityInterface -> String -> IO (String)
getWeight_impl this id = javaAbstractMethod "getWeight"


deleteWhere :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere object_ a1 a2 = jmethod object_ "deleteWhere" (\() -> (deleteWhere_impl (javaCast object_ :: InventoryEntityInterface))) () a1 a2

deleteWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere_super object_ a1 a2 = (deleteWhere_impl (javaCast object_ :: InventoryEntityInterface)) a1 a2

deleteWhere_impl :: InventoryEntityInterface -> String -> String -> IO (())
deleteWhere_impl this key value = javaAbstractMethod "deleteWhere"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: InventoryEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: InventoryEntityInterface)) a1

insert_impl :: InventoryEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: InventoryEntityInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: InventoryEntityInterface)) a1

update_impl :: InventoryEntityInterface -> HashMap.HashMap -> IO (())
update_impl this updatedValues = javaAbstractMethod "update"


