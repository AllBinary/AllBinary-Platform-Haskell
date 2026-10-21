{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package admin.taghelpers
module BasicTable where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicTableInterface

-- implements BasicTableInterface
data BasicTable = BasicTable
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull BasicTable where
    javaNull = javaNullRecord "BasicTable"

instance JavaEquals BasicTable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTable where
    (==) = jrecordEquals

instance JavaObjectClass BasicTable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicTable
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = BasicTable header_ commonStrings
    jregisterLevel header_ this
    BasicTableInterface.registerInterface_ header_
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    pure this

initFields_ :: BasicTable -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO BasicTable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicTable -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: BasicTable))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: BasicTable))

drop_impl :: BasicTable -> IO (String)
drop_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: BasicTable))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: BasicTable))

create_impl :: BasicTable -> IO (String)
create_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: BasicTable))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: BasicTable))

restore_impl :: BasicTable -> IO (String)
restore_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: BasicTable))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: BasicTable))

backup_impl :: BasicTable -> IO (String)
backup_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


