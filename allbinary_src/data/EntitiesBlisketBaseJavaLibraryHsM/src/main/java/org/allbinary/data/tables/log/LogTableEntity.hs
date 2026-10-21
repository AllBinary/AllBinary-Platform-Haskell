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
module LogTableEntity (module LogTableEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, tableName)
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
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified LogDbInitInfo -- org.allbinary.business.init.db.LogDbInitInfo
import qualified AbeHttpRequestInfoData -- org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogTableEntityInterface

-- implements LogTableEntityInterface
data LogTableEntity = LogTableEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , tableName :: IORef (String)
    }

instance JavaNull LogTableEntity where
    javaNull = javaNullRecord "LogTableEntity"

instance JavaEquals LogTableEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogTableEntity where
    (==) = jrecordEquals

instance JavaObjectClass LogTableEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LogTableEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    tableName <- newIORef ""
    let this = LogTableEntity header_ base tableName
    jregisterLevel header_ this
    LogTableEntityInterface.registerInterface_ header_
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    pure this

initFields_ :: LogTableEntity -> IO ()
initFields_ this = do
    jset this.tableName ("log")
    pure ()

new_ :: IO LogTableEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogTableEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (LogDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: LogTableEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: LogTableEntity))

createTableStatement_impl :: LogTableEntity -> IO (String)
createTableStatement_impl this = do
        abeHttpRequestInfoData <- (AbeHttpRequestInfoData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).iD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (abeHttpRequestInfoData).hTTP_USER_AGENT)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (abeHttpRequestInfoData).rEMOTE_HOST)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (jget (abeHttpRequestInfoData).rEMOTE_ADDRESS)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (abeHttpRequestInfoData).rEQUEST_FILE_PATH)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (abeHttpRequestInfoData).rEMOTE_PORT)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_INT_UNSIGNED_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).iD)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: LogTableEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: LogTableEntity))

createTable_impl :: LogTableEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (LogTableEntity.createTableStatement this)))


