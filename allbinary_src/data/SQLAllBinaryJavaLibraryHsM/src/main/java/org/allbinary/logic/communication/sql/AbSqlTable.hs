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
module AbSqlTable (module AbSqlTable, module AbSqlBasic) where

import AbSqlBasic hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setTableName, setTableName_super, setTableName_impl, getTableName, getTableName_super, getTableName_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName, mETHOD_CREATED_TABLE, mETHOD_DROP_TABLE, tABLE_CREATION_SUCCESS, dROPPED_SUCCESS)
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
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBasic

data AbSqlTable = AbSqlTable
    { header_ :: JavaHeader
    , base :: AbSqlBasic.AbSqlBasic
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    , mETHOD_CREATED_TABLE :: IORef (String)
    , mETHOD_DROP_TABLE :: IORef (String)
    , tABLE_CREATION_SUCCESS :: IORef (String)
    , dROPPED_SUCCESS :: IORef (String)
    }

instance JavaNull AbSqlTable where
    javaNull = javaNullRecord "AbSqlTable"

instance JavaEquals AbSqlTable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlTable where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlTable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbSqlTable
newRecord_ = do
    base <- AbSqlBasic.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    mETHOD_CREATED_TABLE <- newIORef ""
    mETHOD_DROP_TABLE <- newIORef ""
    tABLE_CREATION_SUCCESS <- newIORef ""
    dROPPED_SUCCESS <- newIORef ""
    let this = AbSqlTable header_ base logUtil tableName mETHOD_CREATED_TABLE mETHOD_DROP_TABLE tABLE_CREATION_SUCCESS dROPPED_SUCCESS
    jregisterLevel header_ this
    jregisterMethod header_ "setTableName" (\() -> setTableName_impl this)
    jregisterMethod header_ "getTableName" (\() -> getTableName_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: AbSqlTable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("")
    jset this.mETHOD_CREATED_TABLE ("createTable()")
    jset this.mETHOD_DROP_TABLE ("dropTable()")
    jset this.tABLE_CREATION_SUCCESS ("Table Creation Successful: ")
    jset this.dROPPED_SUCCESS (" Dropped Successfully")
    pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO AbSqlTable
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: AbSqlTable -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this databaseConnectionInfoInterface = do
        AbSqlBasic.init_1 this.base (databaseConnectionInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setTableName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTableName object_ a1 = jmethod object_ "setTableName" (\() -> (setTableName_impl (javaCast object_ :: AbSqlTable))) () a1

setTableName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTableName_super object_ a1 = (setTableName_impl (javaCast object_ :: AbSqlTable)) a1

setTableName_impl :: AbSqlTable -> String -> IO (())
setTableName_impl this tableName = do
        jset (this).tableName (tableName)
        pure ()


getTableName :: (JavaObjectClass this_) => this_ -> IO (String)
getTableName object_ = jmethod object_ "getTableName" (\() -> (getTableName_impl (javaCast object_ :: AbSqlTable))) ()

getTableName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTableName_super object_ = (getTableName_impl (javaCast object_ :: AbSqlTable))

getTableName_impl :: AbSqlTable -> IO (String)
getTableName_impl this = do
        pure ((jget (this).tableName))


createTable :: (JavaObjectClass this_) => this_ -> String -> IO (String)
createTable object_ a1 = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: AbSqlTable))) () a1

createTable_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
createTable_super object_ a1 = (createTable_impl (javaCast object_ :: AbSqlTable)) a1

createTable_impl :: AbSqlTable -> String -> IO (String)
createTable_impl this data_ = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((("Table Creation Failed: " ++ (jget (this).tableName)) ++ " with statement: ") ++ data_) this (jget (this).mETHOD_CREATED_TABLE) e)
            pure ((("Failed to Create " ++ (jget (this).tableName)) ++ " table."))
            ) $ do
            Control.Monad.void (AbSqlBasic.executeSQLStatement this data_)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((jget (this).tABLE_CREATION_SUCCESS) ++ (jget (this).tableName)) ++ " with statement: ") ++ data_) this (jget (this).mETHOD_CREATED_TABLE))
            pure (((jget (this).tableName) ++ javaToString (jget ((jget (this).base.sqlStrings)).cREATE_RETURN)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: AbSqlTable))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: AbSqlTable))

dropTable_impl :: AbSqlTable -> IO (String)
dropTable_impl this = do
        let sqlStatement = (javaToString (jget ((jget (this).base.sqlStrings)).dROP_TABLE) ++ (jget (this).tableName))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_DROP_TABLE) e)
            pure ((("Failed to Drop " ++ (jget this.tableName)) ++ " table."))
            ) $ do
            Control.Monad.void (AbSqlBasic.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.sUCCESS_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_DROP_TABLE))
            pure (((jget this.tableName) ++ (jget (this).dROPPED_SUCCESS)))


