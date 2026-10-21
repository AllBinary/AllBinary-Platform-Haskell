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
module AbSqlColumn (module AbSqlColumn, module AbSqlTable) where

import AbSqlTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLargestIntegerInColumnWhere, getLargestIntegerInColumnWhere_super, getLargestIntegerInColumnWhere_impl, getColumn, getColumn_super, getColumn_impl, getColumnWhere, getColumnWhere_super, getColumnWhere_impl, logUtil, lARGEST_INT_VALUE_IN_COLUMN, mETHOD_GET_LARGETS_INTEGER_IN_COLUMN, mETHOD_GET_COLUMN, mETHOD_GET_COLUMN_WHERE, iNVALID_RESULT)
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
import qualified ResultSet -- java.sql.ResultSet
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbSqlTable

data AbSqlColumn = AbSqlColumn
    { header_ :: JavaHeader
    , base :: AbSqlTable.AbSqlTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , lARGEST_INT_VALUE_IN_COLUMN :: IORef (String)
    , mETHOD_GET_LARGETS_INTEGER_IN_COLUMN :: IORef (String)
    , mETHOD_GET_COLUMN :: IORef (String)
    , mETHOD_GET_COLUMN_WHERE :: IORef (String)
    , iNVALID_RESULT :: IORef (String)
    }

instance JavaNull AbSqlColumn where
    javaNull = javaNullRecord "AbSqlColumn"

instance JavaEquals AbSqlColumn where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlColumn where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlColumn where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbSqlColumn
newRecord_ = do
    base <- AbSqlTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    lARGEST_INT_VALUE_IN_COLUMN <- newIORef ""
    mETHOD_GET_LARGETS_INTEGER_IN_COLUMN <- newIORef ""
    mETHOD_GET_COLUMN <- newIORef ""
    mETHOD_GET_COLUMN_WHERE <- newIORef ""
    iNVALID_RESULT <- newIORef ""
    let this = AbSqlColumn header_ base logUtil lARGEST_INT_VALUE_IN_COLUMN mETHOD_GET_LARGETS_INTEGER_IN_COLUMN mETHOD_GET_COLUMN mETHOD_GET_COLUMN_WHERE iNVALID_RESULT
    jregisterLevel header_ this
    jregisterMethod header_ "getLargestIntegerInColumnWhere" (\() -> getLargestIntegerInColumnWhere_impl this)
    jregisterMethod header_ "getColumn" (\() -> getColumn_impl this)
    jregisterMethod header_ "getColumnWhere" (\() -> getColumnWhere_impl this)
    pure this

initFields_ :: AbSqlColumn -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.lARGEST_INT_VALUE_IN_COLUMN ("\nLargest Int Value in column: ")
    jset this.mETHOD_GET_LARGETS_INTEGER_IN_COLUMN ("getLargestIntegerInColumn")
    jset this.mETHOD_GET_COLUMN ("getColumn")
    jset this.mETHOD_GET_COLUMN_WHERE ("getColumnWhere")
    jset this.iNVALID_RESULT ("-1")
    pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO AbSqlColumn
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: AbSqlColumn -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this databaseConnectionInfoInterface = do
        AbSqlTable.init_1 this.base (databaseConnectionInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getLargestIntegerInColumnWhere :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getLargestIntegerInColumnWhere object_ a1 a2 a3 = jmethod object_ "getLargestIntegerInColumnWhere" (\() -> (getLargestIntegerInColumnWhere_impl (javaCast object_ :: AbSqlColumn))) () a1 a2 a3

getLargestIntegerInColumnWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getLargestIntegerInColumnWhere_super object_ a1 a2 a3 = (getLargestIntegerInColumnWhere_impl (javaCast object_ :: AbSqlColumn)) a1 a2 a3

getLargestIntegerInColumnWhere_impl :: AbSqlColumn -> String -> String -> String -> IO (String)
getLargestIntegerInColumnWhere_impl this columnName key value = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).sELECT))
        Control.Monad.void (StringMaker.append stringBuffer columnName)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlTable.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).wHERE))
        Control.Monad.void (StringMaker.append stringBuffer key)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).eQUAL_QUOTE))
        Control.Monad.void (StringMaker.append stringBuffer value)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).cLOSE_QUOTE))
        sqlStatement <- (StringMaker.toString stringBuffer)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget this.mETHOD_GET_LARGETS_INTEGER_IN_COLUMN) e)
            pure ((jget (this).iNVALID_RESULT))
            ) $ do
            largest <- newIORef (0)
            rset <- (AbSqlTable.executeSQLStatement this sqlStatement)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                intValue <- (ResultSet.getInt rset columnName)
                when (intValue > (jget largest)) $ do
                    jset largest (intValue)
            let largestAsString = (javaToString (Prelude.fromIntegral ((jget largest)) :: Int))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).sQL_STATEMENT_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer sqlStatement)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).lARGEST_INT_VALUE_IN_COLUMN))
                Control.Monad.void (StringMaker.append stringBuffer largestAsString)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET_LARGETS_INTEGER_IN_COLUMN))
            pure (largestAsString)


getColumn :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getColumn object_ a1 = jmethod object_ "getColumn" (\() -> (getColumn_impl (javaCast object_ :: AbSqlColumn))) () a1

getColumn_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getColumn_super object_ a1 = (getColumn_impl (javaCast object_ :: AbSqlColumn)) a1

getColumn_impl :: AbSqlColumn -> String -> IO (BasicArrayList.BasicArrayList)
getColumn_impl this columnName = do
        column <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).sELECT))
        Control.Monad.void (StringMaker.append stringBuffer columnName)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlTable.getTableName this)))
        sqlStatement <- (StringMaker.toString stringBuffer)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget this.mETHOD_GET_COLUMN) e)
            pure (column)
            ) $ do
            rset <- (AbSqlTable.executeSQLStatement this sqlStatement)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                field <- (ResultSet.toString ((jio (ResultSet.getObject rset columnName))))
                Control.Monad.void (BasicArrayList.add column field)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).sQL_STATEMENT_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer sqlStatement)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).cOLUMN_VALUE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (BasicArrayList.toString column)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET_COLUMN))
            pure (column)


getColumnWhere :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getColumnWhere object_ a1 a2 a3 = jmethod object_ "getColumnWhere" (\() -> (getColumnWhere_impl (javaCast object_ :: AbSqlColumn))) () a1 a2 a3

getColumnWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getColumnWhere_super object_ a1 a2 a3 = (getColumnWhere_impl (javaCast object_ :: AbSqlColumn)) a1 a2 a3

getColumnWhere_impl :: AbSqlColumn -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getColumnWhere_impl this columnName key value = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).sELECT))
        Control.Monad.void (StringMaker.append stringBuffer columnName)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlTable.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).wHERE))
        Control.Monad.void (StringMaker.append stringBuffer key)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).eQUAL_QUOTE))
        Control.Monad.void (StringMaker.append stringBuffer value)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).cLOSE_QUOTE))
        sqlStatement <- (StringMaker.toString stringBuffer)
        column <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        rset <- newIORef (javaNull)
        field <- newIORef ("")
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_GET_COLUMN_WHERE) e)
            pure (column)
            ) $ do
            assignedValue <- (AbSqlTable.executeSQLStatement this sqlStatement)
            jset rset (assignedValue)
            fix $ \loop -> when (jio (ResultSet.next ((jget rset)))) $ javaIteration (loop) $ do
                assignedValue <- (ResultSet.toString ((jio (ResultSet.getObject ((jget rset)) columnName))))
                jset field (assignedValue)
                Control.Monad.void (BasicArrayList.add column (jget field))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).sQL_STATEMENT_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer sqlStatement)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.sqlStrings)).cOLUMN_VALUE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (BasicArrayList.toString column)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET_COLUMN_WHERE))
            pure (column)


