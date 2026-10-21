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
-- package org.allbinary.logic.communication.sql
module AbSqlTableUtil where

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
import qualified SqlStrings -- same package or java.lang
import qualified AbSqlTable -- same package or java.lang
import qualified Portion -- org.allbinary.business.installer.Portion
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AbSqlTableUtil = AbSqlTableUtil
    { header_ :: JavaHeader
    , tABLE_LABEL :: IORef (String)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , sqlStrings :: IORef (SqlStrings.SqlStrings)
    }

instance JavaNull AbSqlTableUtil where
    javaNull = javaNullRecord "AbSqlTableUtil"

instance JavaEquals AbSqlTableUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlTableUtil where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlTableUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbSqlTableUtil
newRecord_ = do
    header_ <- newJavaHeader
    tABLE_LABEL <- newIORef ""
    stringUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    sqlStrings <- newIORef javaNull
    let this = AbSqlTableUtil header_ tABLE_LABEL stringUtil commonStrings commonSeps sqlStrings
    jregisterLevel header_ this
    jregisterMethod header_ "backupTable" (\() -> backupTable_impl this)
    jregisterMethod header_ "restoreTable" (\() -> restoreTable_impl this)
    pure this

initFields_ :: AbSqlTableUtil -> IO ()
initFields_ this = do
    jset this.tABLE_LABEL ("Table: ")
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.sqlStrings =<< (SqlStrings.getInstance)
    pure ()

new_ :: IO AbSqlTableUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbSqlTableUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbSqlTableUtil)
getInstance = do
        pure (AbSqlTableUtil.instance_)


backupTable :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> IO (String)
backupTable object_ a1 = jmethod object_ "backupTable" (\() -> (backupTable_impl (javaCast object_ :: AbSqlTableUtil))) () a1

backupTable_super :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> IO (String)
backupTable_super object_ a1 = (backupTable_impl (javaCast object_ :: AbSqlTableUtil)) a1

backupTable_impl :: AbSqlTableUtil -> AbSqlTable.AbSqlTable -> IO (String)
backupTable_impl this abSqlTable = do
        tableName <- (AbSqlTable.getTableName abSqlTable)
        pure ((((jget (this).tABLE_LABEL) ++ tableName) ++ " Backup Failed"))


restoreTable :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> Portion.Portion -> IO (String)
restoreTable object_ a1 a2 = jmethod object_ "restoreTable" (\() -> (restoreTable_impl (javaCast object_ :: AbSqlTableUtil))) () a1 a2

restoreTable_super :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> Portion.Portion -> IO (String)
restoreTable_super object_ a1 a2 = (restoreTable_impl (javaCast object_ :: AbSqlTableUtil)) a1 a2

restoreTable_impl :: AbSqlTableUtil -> AbSqlTable.AbSqlTable -> Portion.Portion -> IO (String)
restoreTable_impl this abSqlTable portion = do
        tableName <- (AbSqlTable.getTableName abSqlTable)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tABLE_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer tableName)
        Control.Monad.void (StringMaker.append stringBuffer " Restoration Failed")
        (StringMaker.toString stringBuffer)


