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
module AbSqlRow (module AbSqlRow, module AbSqlColumn) where

import AbSqlColumn hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getValue, getValue_super, getValue_impl, updateWhere, updateWhere_super, updateWhere_impl, updateWhere_2, updateWhere_2_super, updateWhere_2_impl, updateWhere, deleteWhere, deleteWhere_super, deleteWhere_impl, deleteWhere_1, deleteWhere_1_super, deleteWhere_1_impl, deleteWhere, insert, insert_super, insert_impl, getRow, getRow_super, getRow_impl, getRows, getRows_super, getRows_impl, getRows_2, getRows_2_super, getRows_2_impl, getRows, getAllRows, getAllRows_super, getAllRows_impl, getRowsWhereBetween, getRowsWhereBetween_super, getRowsWhereBetween_impl, getRowsWhereBetween_3, getRowsWhereBetween_3_super, getRowsWhereBetween_3_impl, getRowsWhereBetween, logUtil, eQUAL_QUOTE, eSCAPE_QUOTES, gET_ROW, mETHOD_GET_ROW, mETHOD_GET_ROWS, mETHOD_GET_ALL_ROWS, mETHOD_UPDATE_WHERE, mETHOD_GET_ROWS_WHERE_BETWEEN, mETHOD_DELETE_WHERE, rOW_VALUE_LABEL, rOW_VALUES_LABEL, nO_RESULTS_IN_RESULT_SET, cOLUMN_NAME_LABEL, iNSERT_END)
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
import qualified Any -- same package or java.lang
import qualified StdUtil -- same package or java.lang
import qualified CommonSeps -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified ResultSet -- java.sql.ResultSet
import qualified ResultSetMetaData -- java.sql.ResultSetMetaData
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified AbSqlColumn

data AbSqlRow = AbSqlRow
    { header_ :: JavaHeader
    , base :: AbSqlColumn.AbSqlColumn
    , logUtil :: IORef (LogUtil.LogUtil)
    , eQUAL_QUOTE :: IORef (String)
    , eSCAPE_QUOTES :: IORef (String)
    , gET_ROW :: IORef (String)
    , mETHOD_GET_ROW :: IORef (String)
    , mETHOD_GET_ROWS :: IORef (String)
    , mETHOD_GET_ALL_ROWS :: IORef (String)
    , mETHOD_UPDATE_WHERE :: IORef (String)
    , mETHOD_GET_ROWS_WHERE_BETWEEN :: IORef (String)
    , mETHOD_DELETE_WHERE :: IORef (String)
    , rOW_VALUE_LABEL :: IORef (String)
    , rOW_VALUES_LABEL :: IORef (String)
    , nO_RESULTS_IN_RESULT_SET :: IORef (String)
    , cOLUMN_NAME_LABEL :: IORef (String)
    , iNSERT_END :: IORef (String)
    }

instance JavaNull AbSqlRow where
    javaNull = javaNullRecord "AbSqlRow"

instance JavaEquals AbSqlRow where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlRow where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlRow where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbSqlRow
newRecord_ = do
    base <- AbSqlColumn.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    eQUAL_QUOTE <- newIORef ""
    eSCAPE_QUOTES <- newIORef ""
    gET_ROW <- newIORef ""
    mETHOD_GET_ROW <- newIORef ""
    mETHOD_GET_ROWS <- newIORef ""
    mETHOD_GET_ALL_ROWS <- newIORef ""
    mETHOD_UPDATE_WHERE <- newIORef ""
    mETHOD_GET_ROWS_WHERE_BETWEEN <- newIORef ""
    mETHOD_DELETE_WHERE <- newIORef ""
    rOW_VALUE_LABEL <- newIORef ""
    rOW_VALUES_LABEL <- newIORef ""
    nO_RESULTS_IN_RESULT_SET <- newIORef ""
    cOLUMN_NAME_LABEL <- newIORef ""
    iNSERT_END <- newIORef ""
    let this = AbSqlRow header_ base logUtil eQUAL_QUOTE eSCAPE_QUOTES gET_ROW mETHOD_GET_ROW mETHOD_GET_ROWS mETHOD_GET_ALL_ROWS mETHOD_UPDATE_WHERE mETHOD_GET_ROWS_WHERE_BETWEEN mETHOD_DELETE_WHERE rOW_VALUE_LABEL rOW_VALUES_LABEL nO_RESULTS_IN_RESULT_SET cOLUMN_NAME_LABEL iNSERT_END
    jregisterLevel header_ this
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "updateWhere" (\() -> updateWhere_impl this)
    jregisterMethod header_ "updateWhere_2" (\() -> updateWhere_2_impl this)
    jregisterMethod header_ "deleteWhere" (\() -> deleteWhere_impl this)
    jregisterMethod header_ "deleteWhere_1" (\() -> deleteWhere_1_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "getRow" (\() -> getRow_impl this)
    jregisterMethod header_ "getRows" (\() -> getRows_impl this)
    jregisterMethod header_ "getRows_2" (\() -> getRows_2_impl this)
    jregisterMethod header_ "getAllRows" (\() -> getAllRows_impl this)
    jregisterMethod header_ "getRowsWhereBetween" (\() -> getRowsWhereBetween_impl this)
    jregisterMethod header_ "getRowsWhereBetween_3" (\() -> getRowsWhereBetween_3_impl this)
    pure this

initFields_ :: AbSqlRow -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.eQUAL_QUOTE ("=\"")
    jset this.eSCAPE_QUOTES ("\\\"")
    jset this.gET_ROW ("Row Value: ")
    jset this.mETHOD_GET_ROW ("getRow()")
    jset this.mETHOD_GET_ROWS ("getRows()")
    jset this.mETHOD_GET_ALL_ROWS ("getAllRows()")
    jset this.mETHOD_UPDATE_WHERE ("updateWhere()")
    jset this.mETHOD_GET_ROWS_WHERE_BETWEEN ("getRowsWhereBetween()")
    jset this.mETHOD_DELETE_WHERE ("deleteWhere()")
    jset this.rOW_VALUE_LABEL ("Row Value: ")
    jset this.rOW_VALUES_LABEL ("Row Values: ")
    jset this.nO_RESULTS_IN_RESULT_SET ("No Results in ResultSet")
    jset this.cOLUMN_NAME_LABEL ("columnName: ")
    jset this.iNSERT_END ("')")
    pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO AbSqlRow
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: AbSqlRow -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this databaseConnectionInfoInterface = do
        AbSqlColumn.init_1 this.base (databaseConnectionInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getValue :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getValue object_ a1 = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: AbSqlRow))) () a1

getValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getValue_super object_ a1 = (getValue_impl (javaCast object_ :: AbSqlRow)) a1

getValue_impl :: AbSqlRow -> String -> IO (String)
getValue_impl this value = do
    javaCatchReturn $ do
        if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) value)) then do
            javaReturn ((jget ((jget (this).base.base.base.stringUtil)).eMPTY_STRING))
        else do
            javaReturn (value)


updateWhere :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (())
updateWhere object_ a1 a2 a3 = jmethod object_ "updateWhere" (\() -> (updateWhere_impl (javaCast object_ :: AbSqlRow))) () a1 a2 a3

updateWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (())
updateWhere_super object_ a1 a2 a3 = (updateWhere_impl (javaCast object_ :: AbSqlRow)) a1 a2 a3

updateWhere_impl :: AbSqlRow -> String -> String -> HashMap.HashMap -> IO (())
updateWhere_impl this key value updatedKeyValuePairs = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).uPDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sET))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget this.mETHOD_UPDATE_WHERE) e)
            ) $ do
            keyArray <- (HashMap.toArray ((jio (HashMap.keySet updatedKeyValuePairs))))
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                columnName <- (toString ((jindex keyArray (i))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.commonSeps)).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer columnName)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).eQUAL_QUOTE))
                columnValue <- newIORef ((javaCast (jio (HashMap.get updatedKeyValuePairs columnName)) :: String))
                if ((jget columnValue) == javaNull) then do
                    jset columnValue ((jget ((jget (this).base.base.base.stringUtil)).eMPTY_STRING))
                else do
                    assignedValue <- (Replace.all ((jio (Replace.new_2 (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE) (jget (this).eSCAPE_QUOTES)))) (jget columnValue))
                    jset columnValue (assignedValue)
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this (jget columnValue))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                when (i < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.commonSeps)).cOMMA))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
            Control.Monad.void (StringMaker.append stringBuffer key)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this value)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (AbSqlColumn.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.base.base.sUCCESS_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_UPDATE_WHERE))
        pure ()


-- throws Exception
updateWhere_2 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> IO (())
updateWhere_2 object_ a1 a2 = jmethod object_ "updateWhere_2" (\() -> (updateWhere_2_impl (javaCast object_ :: AbSqlRow))) () a1 a2

updateWhere_2_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> IO (())
updateWhere_2_super object_ a1 a2 = (updateWhere_2_impl (javaCast object_ :: AbSqlRow)) a1 a2

updateWhere_2_impl :: AbSqlRow -> HashMap.HashMap -> HashMap.HashMap -> IO (())
updateWhere_2_impl this whereKeyValuePairs updatedKeyValuePairs = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).uPDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sET))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget this.mETHOD_UPDATE_WHERE) e)
            javaThrow (e)
            ) $ do
            keyArray <- (HashMap.toArray ((jio (HashMap.keySet updatedKeyValuePairs))))
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                columnName <- (toString ((jindex keyArray (i))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.commonSeps)).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer columnName)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).eQUAL_QUOTE))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).cOLUMN_NAME_LABEL) ++ columnName) this (jget (this).mETHOD_UPDATE_WHERE))
                columnValue <- newIORef ((javaCast (jio (HashMap.get updatedKeyValuePairs columnName)) :: String))
                if ((jget columnValue) == javaNull) then do
                    jset columnValue ((jget ((jget (this).base.base.base.stringUtil)).eMPTY_STRING))
                else do
                    assignedValue <- (Replace.all ((jio (Replace.new_2 (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE) (jget (this).eSCAPE_QUOTES)))) (jget columnValue))
                    jset columnValue (assignedValue)
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this (jget columnValue))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                when (i < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.commonSeps)).cOMMA))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
            set <- (HashMap.keySet whereKeyValuePairs)
            keyArray2 <- (Set.toArray set)
            let size2 = (jlength keyArray2)
            forM_ [0 .. size2 - 1] $ \i -> javaIteration (pure ()) $ do
                let key = (javaCast (jindex keyArray2 (i)) :: String)
                let value = (javaCast (jio (HashMap.get whereKeyValuePairs key)) :: String)
                do
                    Control.Monad.void (StringMaker.append stringBuffer key)
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this value)))
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                    when (i < (size2 - 1)) $ do
                        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (AbSqlColumn.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.base.base.sUCCESS_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_UPDATE_WHERE))
        pure ()


deleteWhere :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere object_ a1 a2 = jmethod object_ "deleteWhere" (\() -> (deleteWhere_impl (javaCast object_ :: AbSqlRow))) () a1 a2

deleteWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere_super object_ a1 a2 = (deleteWhere_impl (javaCast object_ :: AbSqlRow)) a1 a2

deleteWhere_impl :: AbSqlRow -> String -> String -> IO (())
deleteWhere_impl this key value = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).dELETE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
        Control.Monad.void (StringMaker.append stringBuffer key)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
        Control.Monad.void (StringMaker.append stringBuffer value)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ (jio (StringMaker.toString stringBuffer))) this (jget (this).mETHOD_DELETE_WHERE) e)
            ) $ do
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (AbSqlColumn.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.base.base.sUCCESS_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_DELETE_WHERE))
        pure ()


deleteWhere_1 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
deleteWhere_1 object_ a1 = jmethod object_ "deleteWhere_1" (\() -> (deleteWhere_1_impl (javaCast object_ :: AbSqlRow))) () a1

deleteWhere_1_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
deleteWhere_1_super object_ a1 = (deleteWhere_1_impl (javaCast object_ :: AbSqlRow)) a1

deleteWhere_1_impl :: AbSqlRow -> HashMap.HashMap -> IO (())
deleteWhere_1_impl this keysAndValues = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).dELETE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ (jio (StringMaker.toString stringBuffer))) this (jget (this).mETHOD_DELETE_WHERE) e)
            ) $ do
            set <- (HashMap.keySet keysAndValues)
            keyArray <- (Set.toArray set)
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                let key = (javaCast (jindex keyArray (i)) :: String)
                value <- (jnewString (javaCast (jio (HashMap.get keysAndValues key)) :: String))
                Control.Monad.void (StringMaker.append stringBuffer key)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this value)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                when (i < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (AbSqlColumn.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.base.base.sUCCESS_SQL_STATEMENT) ++ sqlStatement) this (jget (this).mETHOD_DELETE_WHERE))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: AbSqlRow))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: AbSqlRow)) a1

insert_impl :: AbSqlRow -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).iNSERT_INTO))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).vALUES))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ (jio (StringMaker.toString stringBuffer))) this iNSERT e)
            ) $ do
            forM_ [0 .. ((jio (BasicArrayList.size values)) - 1) - 1] $ \i -> javaIteration (pure ()) $ do
                value <- newIORef =<< (AbSqlRow.getValue this (javaCast (jio (BasicArrayList.get values i)) :: String))
                assignedValue <- (Replace.all ((jio (Replace.new_2 (jget ((jget (this).base.base.base.sqlStrings)).eSCAPE) (jget ((jget (this).base.base.base.sqlStrings)).dOUBLE_ESCAPE)))) (jget value))
                jset value (assignedValue)
                Control.Monad.void (StringMaker.append stringBuffer (jget value))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sINGLE_QUOTE_COMMA_SEP))
            value <- newIORef =<< (AbSqlRow.getValue this (javaCast (jio (BasicArrayList.get values ((jio (BasicArrayList.size values)) - 1))) :: String))
            assignedValue <- (Replace.all ((jio (Replace.new_2 (jget ((jget (this).base.base.base.sqlStrings)).eSCAPE) (jget ((jget (this).base.base.base.sqlStrings)).dOUBLE_ESCAPE)))) (jget value))
            jset value (assignedValue)
            Control.Monad.void (StringMaker.append stringBuffer (jget value))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iNSERT_END))
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (AbSqlColumn.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.base.base.sUCCESS_SQL_STATEMENT) ++ sqlStatement) this (jget (this).base.base.base.iNSERT))
        pure ()


getRow :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (HashMap.HashMap)
getRow object_ a1 = jmethod object_ "getRow" (\() -> (getRow_impl (javaCast object_ :: AbSqlRow))) () a1

getRow_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (HashMap.HashMap)
getRow_super object_ a1 = (getRow_impl (javaCast object_ :: AbSqlRow)) a1

getRow_impl :: AbSqlRow -> HashMap.HashMap -> IO (HashMap.HashMap)
getRow_impl this keysAndValues = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sELECT_ALL_FROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget (this).mETHOD_GET_ROW) e)
            pure (javaNull)
            ) $ do
            result <- newIORef (javaNull)
            set <- (HashMap.keySet keysAndValues)
            keyArray <- (Set.toArray set)
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let key = (javaCast (jindex keyArray (index)) :: String)
                value <- (jnewString (javaCast (jio (HashMap.get keysAndValues key)) :: String))
                Control.Monad.void (StringMaker.append stringBuffer key)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this value)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                when (index < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            sqlStatement <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jget (this).base.base.base.sqlStrings)).sQL_STATEMENT_LABEL) ++ sqlStatement) this (jget (this).mETHOD_GET_ROW))
            rset <- (AbSqlColumn.executeSQLStatement this sqlStatement)
            resultSetMetaData <- (ResultSet.getMetaData rset)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                assignedValue <- (StdUtil.createHashMap ((jget (this).base.base.base.stdUtil)))
                jset result (assignedValue)
                columnCount <- (ResultSetMetaData.getColumnCount resultSetMetaData)
                forM_ [1 .. columnCount] $ \index -> javaIteration (pure ()) $ do
                    columnName <- (ResultSetMetaData.getColumnName resultSetMetaData index)
                    field <- (ResultSet.getString rset columnName)
                    Control.Monad.void (HashMap.put ((jget result)) columnName field)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).rOW_VALUE_LABEL) ++ (jio (HashMap.toString ((jget result))))) this (jget (this).mETHOD_GET_ROW))
                javaReturn ((jget result))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_RESULTS_IN_RESULT_SET) this (jget (this).mETHOD_GET_ROW))
            pure (javaNull)


getRows :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (BasicArrayList.BasicArrayList)
getRows object_ a1 = jmethod object_ "getRows" (\() -> (getRows_impl (javaCast object_ :: AbSqlRow))) () a1

getRows_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (BasicArrayList.BasicArrayList)
getRows_super object_ a1 = (getRows_impl (javaCast object_ :: AbSqlRow)) a1

getRows_impl :: AbSqlRow -> HashMap.HashMap -> IO (BasicArrayList.BasicArrayList)
getRows_impl this keysAndValues = do
        (AbSqlRow.getRows_2 this keysAndValues (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getRows_2 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> String -> IO (BasicArrayList.BasicArrayList)
getRows_2 object_ a1 a2 = jmethod object_ "getRows_2" (\() -> (getRows_2_impl (javaCast object_ :: AbSqlRow))) () a1 a2

getRows_2_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> String -> IO (BasicArrayList.BasicArrayList)
getRows_2_super object_ a1 a2 = (getRows_2_impl (javaCast object_ :: AbSqlRow)) a1 a2

getRows_2_impl :: AbSqlRow -> HashMap.HashMap -> String -> IO (BasicArrayList.BasicArrayList)
getRows_2_impl this keysAndValues more = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sELECT_ALL_FROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget (this).mETHOD_GET_ROWS) e)
            pure (javaNull)
            ) $ do
            rows <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            set <- (HashMap.keySet keysAndValues)
            keyArray <- (Set.toArray set)
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let key = (javaCast (jindex keyArray (index)) :: String)
                value <- (jnewString (javaCast (jio (HashMap.get keysAndValues key)) :: String))
                Control.Monad.void (StringMaker.append stringBuffer key)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this value)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                when (index < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jget (this).base.base.base.sqlStrings)).sQL_STATEMENT_LABEL) + stringBuffer) this (jget (this).mETHOD_GET_ROWS))
            Control.Monad.void (StringMaker.append stringBuffer more)
            sqlStatement <- (StringMaker.toString stringBuffer)
            rset <- (AbSqlColumn.executeSQLStatement this sqlStatement)
            resultSetMetaData <- (ResultSet.getMetaData rset)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                result <- (StdUtil.createHashMap ((jget (this).base.base.base.stdUtil)))
                columnCount <- (ResultSetMetaData.getColumnCount resultSetMetaData)
                forM_ [1 .. columnCount] $ \index -> javaIteration (pure ()) $ do
                    columnName <- (ResultSetMetaData.getColumnName resultSetMetaData index)
                    field <- (ResultSet.getString rset columnName)
                    Control.Monad.void (HashMap.put result columnName field)
                resultAsString <- (HashMap.toString result)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).gET_ROW) ++ resultAsString) this (jget (this).mETHOD_GET_ROWS))
                Control.Monad.void (BasicArrayList.add rows result)
            pure (rows)


getAllRows :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAllRows object_ = jmethod object_ "getAllRows" (\() -> (getAllRows_impl (javaCast object_ :: AbSqlRow))) ()

getAllRows_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAllRows_super object_ = (getAllRows_impl (javaCast object_ :: AbSqlRow))

getAllRows_impl :: AbSqlRow -> IO (BasicArrayList.BasicArrayList)
getAllRows_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sELECT_ALL_FROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget (this).mETHOD_GET_ALL_ROWS) e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jget (this).base.base.base.sqlStrings)).sQL_STATEMENT_LABEL) + stringBuffer) this (jget (this).mETHOD_GET_ALL_ROWS))
            rows <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            sqlStatement <- (StringMaker.toString stringBuffer)
            rset <- (AbSqlColumn.executeSQLStatement this sqlStatement)
            resultSetMetaData <- (ResultSet.getMetaData rset)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                result <- (StdUtil.createHashMap ((jget (this).base.base.base.stdUtil)))
                columnCount <- (ResultSetMetaData.getColumnCount resultSetMetaData)
                forM_ [1 .. columnCount] $ \index -> javaIteration (pure ()) $ do
                    columnName <- (ResultSetMetaData.getColumnName resultSetMetaData index)
                    field <- (ResultSet.getString rset columnName)
                    Control.Monad.void (HashMap.put result columnName field)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).rOW_VALUES_LABEL) ++ (jio (HashMap.toString result))) this (jget (this).mETHOD_GET_ALL_ROWS))
                Control.Monad.void (BasicArrayList.add rows result)
            pure (rows)


getRowsWhereBetween :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getRowsWhereBetween object_ a1 a2 a3 a4 = jmethod object_ "getRowsWhereBetween" (\() -> (getRowsWhereBetween_impl (javaCast object_ :: AbSqlRow))) () a1 a2 a3 a4

getRowsWhereBetween_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getRowsWhereBetween_super object_ a1 a2 a3 a4 = (getRowsWhereBetween_impl (javaCast object_ :: AbSqlRow)) a1 a2 a3 a4

getRowsWhereBetween_impl :: AbSqlRow -> HashMap.HashMap -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getRowsWhereBetween_impl this whereKeyValuePairs betweenColumn smallest largest = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sELECT_ALL_FROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget this.mETHOD_GET_ROWS_WHERE_BETWEEN) e)
            pure (javaNull)
            ) $ do
            rows <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
            set <- (HashMap.keySet whereKeyValuePairs)
            key <- newIORef ("")
            value <- newIORef ("")
            keyArray <- (Set.toArray set)
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset key ((javaCast (jindex keyArray (index)) :: String))
                jset value ((javaCast (jio (HashMap.get whereKeyValuePairs (jget key))) :: String))
                Control.Monad.void (StringMaker.append stringBuffer (jget key))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).eQUAL_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getValue this (jget value))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            Control.Monad.void (StringMaker.append stringBuffer betweenColumn)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).mORE_THAN_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer smallest)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            Control.Monad.void (StringMaker.append stringBuffer betweenColumn)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).lESS_THAN_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer largest)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
            sqlStatement <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jget (this).base.base.base.sqlStrings)).sQL_STATEMENT_LABEL) ++ sqlStatement) this (jget (this).mETHOD_GET_ROWS_WHERE_BETWEEN))
            rset <- (AbSqlColumn.executeSQLStatement this sqlStatement)
            resultSetMetaData <- (ResultSet.getMetaData rset)
            result <- newIORef (javaNull)
            columnNames <- newIORef (javaNull)
            columnCount <- newIORef (0)
            columnName <- newIORef ("")
            field <- newIORef ("")
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                assignedValue <- (StdUtil.createHashMap ((jget (this).base.base.base.stdUtil)))
                jset result (assignedValue)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                jset columnNames (assignedValue)
                assignedValue <- (ResultSetMetaData.getColumnCount resultSetMetaData)
                jset columnCount (assignedValue)
                forM_ [1 .. (jget columnCount)] $ \index -> javaIteration (pure ()) $ do
                    assignedValue <- (ResultSetMetaData.getColumnName resultSetMetaData index)
                    jset columnName (assignedValue)
                    assignedValue <- (ResultSet.getString rset (jget columnName))
                    jset field (assignedValue)
                    Control.Monad.void (HashMap.put ((jget result)) (jget columnName) (jget field))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).rOW_VALUE_LABEL) ++ (jio (HashMap.toString ((jget result))))) this (jget (this).mETHOD_GET_ROWS_WHERE_BETWEEN))
                Control.Monad.void (BasicArrayList.add rows (jget result))
            pure (rows)


getRowsWhereBetween_3 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getRowsWhereBetween_3 object_ a1 a2 a3 = jmethod object_ "getRowsWhereBetween_3" (\() -> (getRowsWhereBetween_3_impl (javaCast object_ :: AbSqlRow))) () a1 a2 a3

getRowsWhereBetween_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getRowsWhereBetween_3_super object_ a1 a2 a3 = (getRowsWhereBetween_3_impl (javaCast object_ :: AbSqlRow)) a1 a2 a3

getRowsWhereBetween_3_impl :: AbSqlRow -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getRowsWhereBetween_3_impl this betweenColumn smallest largest = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).sELECT_ALL_FROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlColumn.getTableName this)))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) this (jget this.mETHOD_GET_ROWS_WHERE_BETWEEN) e)
            pure (javaNull)
            ) $ do
            rows <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).wHERE))
            Control.Monad.void (StringMaker.append stringBuffer betweenColumn)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).mORE_THAN_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer smallest)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).aND))
            Control.Monad.void (StringMaker.append stringBuffer betweenColumn)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).lESS_THAN_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer largest)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.sqlStrings)).cLOSE_QUOTE))
            sqlStatement <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jget (this).base.base.base.sqlStrings)).sQL_STATEMENT_LABEL) ++ sqlStatement) this (jget (this).mETHOD_GET_ROWS_WHERE_BETWEEN))
            rset <- (AbSqlColumn.executeSQLStatement this sqlStatement)
            resultSetMetaData <- (ResultSet.getMetaData rset)
            columnName <- newIORef ("")
            field <- newIORef ("")
            result <- newIORef (javaNull)
            columnNames <- newIORef (javaNull)
            columnCount <- newIORef (0)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                assignedValue <- (StdUtil.createHashMap ((jget (this).base.base.base.stdUtil)))
                jset result (assignedValue)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                jset columnNames (assignedValue)
                assignedValue <- (ResultSetMetaData.getColumnCount resultSetMetaData)
                jset columnCount (assignedValue)
                forM_ [1 .. (jget columnCount)] $ \index -> javaIteration (pure ()) $ do
                    assignedValue <- (ResultSetMetaData.getColumnName resultSetMetaData index)
                    jset columnName (assignedValue)
                    assignedValue <- (ResultSet.getString rset (jget columnName))
                    jset field (assignedValue)
                    Control.Monad.void (HashMap.put ((jget result)) (jget columnName) (jget field))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).rOW_VALUE_LABEL) ++ (jio (HashMap.toString ((jget result))))) this (jget (this).mETHOD_GET_ROWS_WHERE_BETWEEN))
                Control.Monad.void (BasicArrayList.add rows (jget result))
            pure (rows)


