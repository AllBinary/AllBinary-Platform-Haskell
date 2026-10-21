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
-- package org.allbinary.data.tables.context.module.storefronts
module StoreFrontsEntityInterface (module StoreFrontsEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStoreFrontInterface, getStoreFrontInterface_super, getStoreFrontInterface_impl, getStoreFrontNames, getStoreFrontNames_super, getStoreFrontNames_impl, delete, delete_super, delete_impl, insert, insert_super, insert_impl, update, update_super, update_impl, toString)
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
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data StoreFrontsEntityInterface = StoreFrontsEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontsEntityInterface where
    javaNull = javaNullRecord "StoreFrontsEntityInterface"

instance JavaEquals StoreFrontsEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontsEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontsEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreFrontsEntityInterface
fromHeader_ header = StoreFrontsEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreFrontsEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getStoreFrontInterface :: (JavaObjectClass this_) => this_ -> String -> IO (StoreFrontInterface.StoreFrontInterface)
getStoreFrontInterface object_ a1 = jmethod object_ "getStoreFrontInterface" (\() -> (getStoreFrontInterface_impl (javaCast object_ :: StoreFrontsEntityInterface))) () a1

getStoreFrontInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (StoreFrontInterface.StoreFrontInterface)
getStoreFrontInterface_super object_ a1 = (getStoreFrontInterface_impl (javaCast object_ :: StoreFrontsEntityInterface)) a1

getStoreFrontInterface_impl :: StoreFrontsEntityInterface -> String -> IO (StoreFrontInterface.StoreFrontInterface)
getStoreFrontInterface_impl this name = javaAbstractMethod "getStoreFrontInterface"


getStoreFrontNames :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreFrontNames object_ = jmethod object_ "getStoreFrontNames" (\() -> (getStoreFrontNames_impl (javaCast object_ :: StoreFrontsEntityInterface))) ()

getStoreFrontNames_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreFrontNames_super object_ = (getStoreFrontNames_impl (javaCast object_ :: StoreFrontsEntityInterface))

getStoreFrontNames_impl :: StoreFrontsEntityInterface -> IO (BasicArrayList.BasicArrayList)
getStoreFrontNames_impl this = javaAbstractMethod "getStoreFrontNames"


delete :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: StoreFrontsEntityInterface))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: StoreFrontsEntityInterface)) a1

delete_impl :: StoreFrontsEntityInterface -> String -> IO (())
delete_impl this value = javaAbstractMethod "delete"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: StoreFrontsEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: StoreFrontsEntityInterface)) a1

insert_impl :: StoreFrontsEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StoreFrontsEntityInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: StoreFrontsEntityInterface)) a1

update_impl :: StoreFrontsEntityInterface -> HashMap.HashMap -> IO (())
update_impl this updatedValues = javaAbstractMethod "update"


