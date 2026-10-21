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
-- package org.allbinary.data.tables.transform.info
module TransformInfoEntityInterface (module TransformInfoEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, getObjectConfigs, getObjectConfigs_super, getObjectConfigs_impl, getNames, getNames_super, getNames_impl, delete, delete_super, delete_impl, insert, insert_super, insert_impl, update, update_super, update_impl, toString)
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
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

-- Java interface: the classes that implement it have these functions
data TransformInfoEntityInterface = TransformInfoEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoEntityInterface where
    javaNull = javaNullRecord "TransformInfoEntityInterface"

instance JavaEquals TransformInfoEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoEntityInterface
fromHeader_ header = TransformInfoEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
get object_ a1 a2 a3 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: TransformInfoEntityInterface))) () a1 a2 a3

get_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
get_super object_ a1 a2 a3 = (get_impl (javaCast object_ :: TransformInfoEntityInterface)) a1 a2 a3

get_impl :: TransformInfoEntityInterface -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
get_impl this name propertiesHashMap pageContext = javaAbstractMethod "get"


-- throws Exception
getObjectConfigs :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getObjectConfigs object_ a1 = jmethod object_ "getObjectConfigs" (\() -> (getObjectConfigs_impl (javaCast object_ :: TransformInfoEntityInterface))) () a1

getObjectConfigs_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getObjectConfigs_super object_ a1 = (getObjectConfigs_impl (javaCast object_ :: TransformInfoEntityInterface)) a1

getObjectConfigs_impl :: TransformInfoEntityInterface -> String -> IO (BasicArrayList.BasicArrayList)
getObjectConfigs_impl this storeName = javaAbstractMethod "getObjectConfigs"


-- throws Exception
getNames :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getNames object_ a1 = jmethod object_ "getNames" (\() -> (getNames_impl (javaCast object_ :: TransformInfoEntityInterface))) () a1

getNames_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getNames_super object_ a1 = (getNames_impl (javaCast object_ :: TransformInfoEntityInterface)) a1

getNames_impl :: TransformInfoEntityInterface -> String -> IO (BasicArrayList.BasicArrayList)
getNames_impl this storeName = javaAbstractMethod "getNames"


delete :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: TransformInfoEntityInterface))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: TransformInfoEntityInterface)) a1

delete_impl :: TransformInfoEntityInterface -> String -> IO (())
delete_impl this name = javaAbstractMethod "delete"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: TransformInfoEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: TransformInfoEntityInterface)) a1

insert_impl :: TransformInfoEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TransformInfoEntityInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: TransformInfoEntityInterface)) a1

update_impl :: TransformInfoEntityInterface -> HashMap.HashMap -> IO (())
update_impl this updatedValues = javaAbstractMethod "update"


