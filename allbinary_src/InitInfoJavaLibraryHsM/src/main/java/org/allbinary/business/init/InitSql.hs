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
-- package org.allbinary.business.init
module InitSql where

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
import qualified Class -- same package or java.lang
import qualified Connection -- java.sql.Connection
import qualified DriverManager -- java.sql.DriverManager
import qualified ResultSet -- java.sql.ResultSet
import qualified ResultSetMetaData -- java.sql.ResultSetMetaData
import qualified SQLException -- java.sql.SQLException
import qualified Statement -- java.sql.Statement
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DatabaseConnectionInfoInterface -- org.allbinary.business.init.db.DatabaseConnectionInfoInterface
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified SqlStrings -- org.allbinary.logic.communication.sql.SqlStrings
import qualified SqlTypeStrings -- org.allbinary.logic.communication.sql.SqlTypeStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InitSql = InitSql
    { header_ :: JavaHeader
    , stringUtil :: IORef (StringUtil.StringUtil)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , sqlTypeStrings :: IORef (SqlTypeStrings.SqlTypeStrings)
    , sqlStrings :: IORef (SqlStrings.SqlStrings)
    , stdUtil :: IORef (StdUtil.StdUtil)
    , iNSERT :: IORef (String)
    , uPDATE :: IORef (String)
    , databaseConnectionInfoInterface :: IORef (DbConnectionInfo.DbConnectionInfo)
    , userid :: IORef (String)
    , password :: IORef (String)
    , tableName :: IORef (String)
    , conn :: IORef (Connection.Connection)
    , useridAndPassword :: IORef (Bool)
    , sUCCESS_SQL_STATEMENT :: IORef (String)
    , fAILED_SQL_STATEMENT :: IORef (String)
    , iNIT_SQL :: IORef (String)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , eQUAL_QUOTE :: IORef (String)
    , mETHOD_GET_ROW :: IORef (String)
    , mETHOD_UPDATE_WHERE :: IORef (String)
    , rOW_VALUE_LABEL :: IORef (String)
    , nO_RESULTS_IN_RESULT_SET :: IORef (String)
    , iNSERT_END :: IORef (String)
    }

instance JavaNull InitSql where
    javaNull = javaNullRecord "InitSql"

instance JavaEquals InitSql where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitSql where
    (==) = jrecordEquals

instance JavaObjectClass InitSql where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitSql
newRecord_ = do
    header_ <- newJavaHeader
    stringUtil <- newIORef javaNull
    commonSeps <- newIORef javaNull
    sqlTypeStrings <- newIORef javaNull
    sqlStrings <- newIORef javaNull
    stdUtil <- newIORef javaNull
    iNSERT <- newIORef ""
    uPDATE <- newIORef ""
    databaseConnectionInfoInterface <- newIORef javaNull
    userid <- newIORef ""
    password <- newIORef ""
    tableName <- newIORef ""
    conn <- newIORef javaNull
    useridAndPassword <- newIORef False
    sUCCESS_SQL_STATEMENT <- newIORef ""
    fAILED_SQL_STATEMENT <- newIORef ""
    iNIT_SQL <- newIORef ""
    commonStrings <- newIORef javaNull
    eQUAL_QUOTE <- newIORef ""
    mETHOD_GET_ROW <- newIORef ""
    mETHOD_UPDATE_WHERE <- newIORef ""
    rOW_VALUE_LABEL <- newIORef ""
    nO_RESULTS_IN_RESULT_SET <- newIORef ""
    iNSERT_END <- newIORef ""
    let this = InitSql header_ stringUtil commonSeps sqlTypeStrings sqlStrings stdUtil iNSERT uPDATE databaseConnectionInfoInterface userid password tableName conn useridAndPassword sUCCESS_SQL_STATEMENT fAILED_SQL_STATEMENT iNIT_SQL commonStrings eQUAL_QUOTE mETHOD_GET_ROW mETHOD_UPDATE_WHERE rOW_VALUE_LABEL nO_RESULTS_IN_RESULT_SET iNSERT_END
    jregisterLevel header_ this
    jregisterMethod header_ "setTable" (\() -> setTable_impl this)
    jregisterMethod header_ "setDatabaseConnectionInfoInterface" (\() -> setDatabaseConnectionInfoInterface_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    jregisterMethod header_ "getRow" (\() -> getRow_impl this)
    jregisterMethod header_ "updateWhere" (\() -> updateWhere_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "executeSQLStatement" (\() -> executeSQLStatement_impl this)
    jregisterMethod header_ "createConnection" (\() -> createConnection_impl this)
    jregisterMethod header_ "initialize" (\() -> initialize_impl this)
    jregisterMethod header_ "getDatabaseConnectionInfoInterface" (\() -> getDatabaseConnectionInfoInterface_impl this)
    pure this

initFields_ :: InitSql -> IO ()
initFields_ this = do
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.sqlTypeStrings =<< (SqlTypeStrings.getInstance)
    jset this.sqlStrings =<< (SqlStrings.getInstance)
    jset this.stdUtil =<< (StdUtil.getInstance)
    jset this.iNSERT ("insert")
    jset this.uPDATE ("update")
    jset this.databaseConnectionInfoInterface (javaNull)
    jset this.userid ("")
    jset this.password ("")
    jset this.tableName ("")
    jset this.conn (javaNull)
    jset this.useridAndPassword (False)
    jset this.sUCCESS_SQL_STATEMENT ("Success\nSQL Statement: ")
    jset this.fAILED_SQL_STATEMENT ("Failed\nSQL Statement: ")
    jset this.iNIT_SQL ("InitSql")
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.eQUAL_QUOTE ("=\"")
    jset this.mETHOD_GET_ROW ("getRow()")
    jset this.mETHOD_UPDATE_WHERE ("updateWhere()")
    jset this.rOW_VALUE_LABEL ("Row Value: ")
    jset this.nO_RESULTS_IN_RESULT_SET ("No Results in ResultSet")
    jset this.iNSERT_END ("')")
    pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO InitSql
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: InitSql -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this databaseConnectionInfoInterface = do
        initFields_ this
        Control.Monad.void (InitSql.setDatabaseConnectionInfoInterface this databaseConnectionInfoInterface)
        pure ()


setTable :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTable object_ a1 = jmethod object_ "setTable" (\() -> (setTable_impl (javaCast object_ :: InitSql))) () a1

setTable_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTable_super object_ a1 = (setTable_impl (javaCast object_ :: InitSql)) a1

setTable_impl :: InitSql -> String -> IO (())
setTable_impl this tableName = do
        jset (this).tableName (tableName)
        pure ()


setDatabaseConnectionInfoInterface :: (JavaObjectClass this_) => this_ -> DbConnectionInfo.DbConnectionInfo -> IO (())
setDatabaseConnectionInfoInterface object_ a1 = jmethod object_ "setDatabaseConnectionInfoInterface" (\() -> (setDatabaseConnectionInfoInterface_impl (javaCast object_ :: InitSql))) () a1

setDatabaseConnectionInfoInterface_super :: (JavaObjectClass this_) => this_ -> DbConnectionInfo.DbConnectionInfo -> IO (())
setDatabaseConnectionInfoInterface_super object_ a1 = (setDatabaseConnectionInfoInterface_impl (javaCast object_ :: InitSql)) a1

setDatabaseConnectionInfoInterface_impl :: InitSql -> DbConnectionInfo.DbConnectionInfo -> IO (())
setDatabaseConnectionInfoInterface_impl this databaseConnectionInfoInterface = do
        jset (this).databaseConnectionInfoInterface (databaseConnectionInfoInterface)
        pure ()


createTable :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
createTable object_ a1 = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: InitSql))) () a1

createTable_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
createTable_super object_ a1 = (createTable_impl (javaCast object_ :: InitSql)) a1

createTable_impl :: InitSql -> String -> IO (Bool)
createTable_impl this tableData = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) (jget this.iNIT_SQL) "createTable()" e)
            pure (False)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Creating Table: ")
            Control.Monad.void (StringMaker.append stringBuffer tableData)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) (jget this.iNIT_SQL) "createTable()")
            Control.Monad.void (InitSql.executeSQLStatement this tableData)
            pure (True)


dropTable :: (JavaObjectClass this_) => this_ -> IO (Bool)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: InitSql))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: InitSql))

dropTable_impl :: InitSql -> IO (Bool)
dropTable_impl this = do
        let sqlStatement = (javaToString (jget ((jget (this).sqlStrings)).dROP_TABLE) ++ (jget (this).tableName))
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) (jget this.iNIT_SQL) "dropTables()" e)
            pure (False)
            ) $ do
            Control.Monad.void (InitSql.executeSQLStatement this sqlStatement)
            pure (True)


getRow :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (HashMap.HashMap)
getRow object_ a1 = jmethod object_ "getRow" (\() -> (getRow_impl (javaCast object_ :: InitSql))) () a1

getRow_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (HashMap.HashMap)
getRow_super object_ a1 = (getRow_impl (javaCast object_ :: InitSql)) a1

getRow_impl :: InitSql -> HashMap.HashMap -> IO (HashMap.HashMap)
getRow_impl this keysAndValues = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).sELECT_ALL_FROM))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).wHERE))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE ((jget (this).fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) (jget (this).iNIT_SQL) (jget (this).mETHOD_GET_ROW) e)
            pure (javaNull)
            ) $ do
            result <- newIORef (javaNull)
            set <- (HashMap.keySet keysAndValues)
            keyArray <- (Set.toArray set)
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                let key = (javaCast (jindex keyArray (i)) :: String)
                value <- (jnewString (javaCast (jio (HashMap.get keysAndValues key)) :: String))
                Control.Monad.void (StringMaker.append stringBuffer key)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).eQUAL_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (InitSql.getValue this value)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).cLOSE_QUOTE))
                when (i < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).aND))
            sqlStatement <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (PreLogUtil.put (javaToString (jget ((jget (this).sqlStrings)).sQL_STATEMENT_LABEL) ++ sqlStatement) (jget (this).iNIT_SQL) (jget (this).mETHOD_GET_ROW))
            rset <- (InitSql.executeSQLStatement this sqlStatement)
            resultSetMetaData <- (ResultSet.getMetaData rset)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                assignedValue <- (StdUtil.createHashMap ((jget this.stdUtil)))
                jset result (assignedValue)
                columnCount <- (ResultSetMetaData.getColumnCount resultSetMetaData)
                forM_ [1 .. columnCount] $ \index -> javaIteration (pure ()) $ do
                    columnName <- (ResultSetMetaData.getColumnName resultSetMetaData index)
                    field <- (ResultSet.getString rset columnName)
                    Control.Monad.void (HashMap.put ((jget result)) columnName field)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (PreLogUtil.put ((jget (this).rOW_VALUE_LABEL) ++ (jio (HashMap.toString ((jget result))))) (jget (this).iNIT_SQL) (jget (this).mETHOD_GET_ROW))
                javaReturn ((jget result))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.put (jget (this).nO_RESULTS_IN_RESULT_SET) (jget (this).iNIT_SQL) (jget (this).mETHOD_GET_ROW))
            pure (javaNull)


updateWhere :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (())
updateWhere object_ a1 a2 a3 = jmethod object_ "updateWhere" (\() -> (updateWhere_impl (javaCast object_ :: InitSql))) () a1 a2 a3

updateWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (())
updateWhere_super object_ a1 a2 a3 = (updateWhere_impl (javaCast object_ :: InitSql)) a1 a2 a3

updateWhere_impl :: InitSql -> String -> String -> HashMap.HashMap -> IO (())
updateWhere_impl this key value updatedKeyValuePairs = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).uPDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).sET))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE ((jget (this).fAILED_SQL_STATEMENT) ++ javaToString stringBuffer) (jget (this).iNIT_SQL) (jget this.mETHOD_UPDATE_WHERE) e)
            ) $ do
            columnArray <- (HashMap.toArray ((jio (HashMap.keySet updatedKeyValuePairs))))
            let size = (jlength columnArray)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                columnName <- (toString ((jindex columnArray (i))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer columnName)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).eQUAL_QUOTE))
                columnValue <- newIORef ((javaCast (jio (HashMap.get updatedKeyValuePairs columnName)) :: String))
                if ((jget columnValue) == javaNull) then do
                    jset columnValue ((jget ((jget (this).stringUtil)).eMPTY_STRING))
                else do
                    pure ()
                Control.Monad.void (StringMaker.append stringBuffer (jio (InitSql.getValue this (jget columnValue))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).cLOSE_QUOTE))
                when (i < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).cOMMA))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).wHERE))
            Control.Monad.void (StringMaker.append stringBuffer key)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).eQUAL_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (InitSql.getValue this value)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).cLOSE_QUOTE))
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (InitSql.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (PreLogUtil.put ((jget (this).sUCCESS_SQL_STATEMENT) ++ sqlStatement) (jget (this).iNIT_SQL) (jget this.mETHOD_UPDATE_WHERE))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: InitSql))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: InitSql)) a1

insert_impl :: InitSql -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).iNSERT_INTO))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).vALUES))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE ((jget (this).fAILED_SQL_STATEMENT) ++ (jio (StringMaker.toString stringBuffer))) (jget (this).iNIT_SQL) (jget this.iNSERT) e)
            ) $ do
            size <- (BasicArrayList.size values)
            forM_ [0 .. (size - 1) - 1] $ \i -> javaIteration (pure ()) $ do
                value <- (InitSql.getValue this (javaCast (jio (BasicArrayList.get values i)) :: String))
                Control.Monad.void (StringMaker.append stringBuffer value)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).sINGLE_QUOTE_COMMA_SEP))
            value <- (InitSql.getValue this (javaCast (jio (BasicArrayList.get values ((jio (BasicArrayList.size values)) - 1))) :: String))
            Control.Monad.void (StringMaker.append stringBuffer value)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iNSERT_END))
            sqlStatement <- (StringMaker.toString stringBuffer)
            Control.Monad.void (InitSql.executeSQLStatement this sqlStatement)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (PreLogUtil.put ((jget (this).sUCCESS_SQL_STATEMENT) ++ sqlStatement) (jget (this).iNIT_SQL) (jget this.iNSERT))
        pure ()


getValue :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getValue object_ a1 = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: InitSql))) () a1

getValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getValue_super object_ a1 = (getValue_impl (javaCast object_ :: InitSql)) a1

getValue_impl :: InitSql -> String -> IO (String)
getValue_impl this value = do
    javaCatchReturn $ do
        if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) value)) then do
            javaReturn ((jget ((jget (this).stringUtil)).eMPTY_STRING))
        else do
            javaReturn (value)


-- throws Exception, SQLException
executeSQLStatement :: (JavaObjectClass this_) => this_ -> String -> IO (ResultSet.ResultSet)
executeSQLStatement object_ a1 = jmethod object_ "executeSQLStatement" (\() -> (executeSQLStatement_impl (javaCast object_ :: InitSql))) () a1

executeSQLStatement_super :: (JavaObjectClass this_) => this_ -> String -> IO (ResultSet.ResultSet)
executeSQLStatement_super object_ a1 = (executeSQLStatement_impl (javaCast object_ :: InitSql)) a1

executeSQLStatement_impl :: InitSql -> String -> IO (ResultSet.ResultSet)
executeSQLStatement_impl this statement = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) (jget this.iNIT_SQL) "executeSQLStatement()" e)
            javaThrow (e)
            ) $ do
            when ((jget (this).conn) == javaNull) $ do
                Control.Monad.void (InitSql.initialize this)
            stmt <- (Connection.createStatement ((jget (this).conn)))
            Control.Monad.void (Statement.execute stmt statement)
            rset <- (Statement.getResultSet stmt)
            Control.Monad.void (Statement.close stmt)
            pure (rset)


-- throws SQLException
createConnection :: (JavaObjectClass this_) => this_ -> IO (())
createConnection object_ = jmethod object_ "createConnection" (\() -> (createConnection_impl (javaCast object_ :: InitSql))) ()

createConnection_super :: (JavaObjectClass this_) => this_ -> IO (())
createConnection_super object_ = (createConnection_impl (javaCast object_ :: InitSql))

createConnection_impl :: InitSql -> IO (())
createConnection_impl this = do
        handle (\(se :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) (jget this.iNIT_SQL) "createConnection()" se)
            javaThrow (se)
            ) $ do
            if ((jget (this).useridAndPassword) == True) then do
                assignedValue <- (DriverManager.getConnection (jio (DbConnectionInfo.getUrl ((jget (this).databaseConnectionInfoInterface)))) (jget (this).userid) (jget (this).password))
                jset (this).conn (assignedValue)
            else do
                assignedValue <- (DriverManager.getConnection (jio (DbConnectionInfo.getUrl ((jget (this).databaseConnectionInfoInterface)))))
                jset (this).conn (assignedValue)
        pure ()


-- throws Exception
initialize :: (JavaObjectClass this_) => this_ -> IO (())
initialize object_ = jmethod object_ "initialize" (\() -> (initialize_impl (javaCast object_ :: InitSql))) ()

initialize_super :: (JavaObjectClass this_) => this_ -> IO (())
initialize_super object_ = (initialize_impl (javaCast object_ :: InitSql))

initialize_impl :: InitSql -> IO (())
initialize_impl this = do
        handle (\(se :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) (jget this.iNIT_SQL) "initialize()" se)
            javaThrow (se)
            ) $ do
            handle (\(e :: JavaException) -> do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).sQLLOGGINGERROR))) $ do
                    Control.Monad.void (PreLogUtil.putOE ("LoadDriver Failed: " ++ javaToString (jio (DbConnectionInfo.getJdbcDriver ((jget (this).databaseConnectionInfoInterface))))) (jget (this).iNIT_SQL) "initialize()" e)
                javaThrow (e)
                ) $ do
                jdbcDriver <- (DbConnectionInfo.getJdbcDriver ((jget (this).databaseConnectionInfoInterface)))
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Loading DbConnnectionInfo: "))) (jio (Class.getName ((jio (jobjectGetClass (jget (this).databaseConnectionInfoInterface))))))))) " Driver: "))) jdbcDriver))))) (jget (this).iNIT_SQL) "initialize()")
                Control.Monad.void (Class.newInstance ((jio (Class.forName jdbcDriver))))
            when (((jget (this).userid) == javaNull) && ((jget (this).password) == javaNull)) $ do
                jset (this).useridAndPassword (True)
            Control.Monad.void (InitSql.createConnection this)
        pure ()


getDatabaseConnectionInfoInterface :: (JavaObjectClass this_) => this_ -> IO (DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface)
getDatabaseConnectionInfoInterface object_ = jmethod object_ "getDatabaseConnectionInfoInterface" (\() -> (getDatabaseConnectionInfoInterface_impl (javaCast object_ :: InitSql))) ()

getDatabaseConnectionInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface)
getDatabaseConnectionInfoInterface_super object_ = (getDatabaseConnectionInfoInterface_impl (javaCast object_ :: InitSql))

getDatabaseConnectionInfoInterface_impl :: InitSql -> IO (DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface)
getDatabaseConnectionInfoInterface_impl this = do
        pure ((javaCast (jget (this).databaseConnectionInfoInterface) :: DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface))


