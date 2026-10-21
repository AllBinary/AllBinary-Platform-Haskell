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
-- package org.allbinary.data.tables.log
module LogTableEntityInterface (module LogTableEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, deleteWhere, deleteWhere_super, deleteWhere_impl, insert, insert_super, insert_impl, toString)
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
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data LogTableEntityInterface = LogTableEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull LogTableEntityInterface where
    javaNull = javaNullRecord "LogTableEntityInterface"

instance JavaEquals LogTableEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogTableEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass LogTableEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LogTableEntityInterface
fromHeader_ header = LogTableEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LogTableEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


deleteWhere :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere object_ a1 a2 = jmethod object_ "deleteWhere" (\() -> (deleteWhere_impl (javaCast object_ :: LogTableEntityInterface))) () a1 a2

deleteWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere_super object_ a1 a2 = (deleteWhere_impl (javaCast object_ :: LogTableEntityInterface)) a1 a2

deleteWhere_impl :: LogTableEntityInterface -> String -> String -> IO (())
deleteWhere_impl this key value = javaAbstractMethod "deleteWhere"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: LogTableEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: LogTableEntityInterface)) a1

insert_impl :: LogTableEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


