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
-- package org.allbinary.data.tables
module BasicDataTableInterface where

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

-- Java interface: the classes that implement it have these functions
data BasicDataTableInterface = BasicDataTableInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicDataTableInterface where
    javaNull = javaNullRecord "BasicDataTableInterface"

instance JavaEquals BasicDataTableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicDataTableInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicDataTableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicDataTableInterface
fromHeader_ header = BasicDataTableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicDataTableInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: BasicDataTableInterface))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: BasicDataTableInterface))

createTable_impl :: BasicDataTableInterface -> IO (String)
createTable_impl this = javaAbstractMethod "createTable"


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: BasicDataTableInterface))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: BasicDataTableInterface))

dropTable_impl :: BasicDataTableInterface -> IO (String)
dropTable_impl this = javaAbstractMethod "dropTable"


