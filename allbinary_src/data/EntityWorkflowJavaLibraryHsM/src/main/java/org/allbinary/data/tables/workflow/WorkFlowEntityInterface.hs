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
-- package org.allbinary.data.tables.workflow
module WorkFlowEntityInterface (module WorkFlowEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, get, get_super, get_impl, delete, delete_super, delete_impl, insert, insert_super, insert_impl, update, update_super, update_impl, toString)
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
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface
import qualified WorkFlowInterface -- org.allbinary.logic.control.workflow.WorkFlowInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException

-- Java interface: the classes that implement it have these functions
data WorkFlowEntityInterface = WorkFlowEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull WorkFlowEntityInterface where
    javaNull = javaNullRecord "WorkFlowEntityInterface"

instance JavaEquals WorkFlowEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> WorkFlowEntityInterface
fromHeader_ header = WorkFlowEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (WorkFlowEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


get :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: WorkFlowEntityInterface))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get_super object_ a1 = (get_impl (javaCast object_ :: WorkFlowEntityInterface)) a1

get_impl :: WorkFlowEntityInterface -> String -> IO (BasicArrayList.BasicArrayList)
get_impl this storeName = javaAbstractMethod "get"


-- throws Exception, LicensingException
-- Java overload of get with a different parameter count: give it a different name
get :: (JavaObjectClass this_) => this_ -> String -> String -> IO (WorkFlowInterface.WorkFlowInterface)
get object_ a1 a2 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: WorkFlowEntityInterface))) () a1 a2

get_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (WorkFlowInterface.WorkFlowInterface)
get_super object_ a1 a2 = (get_impl (javaCast object_ :: WorkFlowEntityInterface)) a1 a2

get_impl :: WorkFlowEntityInterface -> String -> String -> IO (WorkFlowInterface.WorkFlowInterface)
get_impl this name storeName = javaAbstractMethod "get"


delete :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: WorkFlowEntityInterface))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: WorkFlowEntityInterface)) a1 a2

delete_impl :: WorkFlowEntityInterface -> String -> String -> IO (())
delete_impl this name storeName = javaAbstractMethod "delete"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: WorkFlowEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: WorkFlowEntityInterface)) a1

insert_impl :: WorkFlowEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: WorkFlowEntityInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: WorkFlowEntityInterface)) a1

update_impl :: WorkFlowEntityInterface -> HashMap.HashMap -> IO (())
update_impl this updatedValues = javaAbstractMethod "update"


