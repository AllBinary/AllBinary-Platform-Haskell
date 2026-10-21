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
module AbSqlBasic where

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
import qualified Thread -- same package or java.lang
import qualified ClassLoader -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Connection -- java.sql.Connection
import qualified ResultSet -- java.sql.ResultSet
import qualified SQLException -- java.sql.SQLException
import qualified Statement -- java.sql.Statement
import qualified DatabaseConnectionInfoInterface -- org.allbinary.business.init.db.DatabaseConnectionInfoInterface
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SqlConnectionPool -- org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AbSqlBasic = AbSqlBasic
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , sqlConnectionPool :: IORef (SqlConnectionPool.SqlConnectionPool)
    , databaseConnectionInfoInterface :: IORef (DbConnectionInfo.DbConnectionInfo)
    , connectAttemptCounter :: IORef (Int)
    , conn :: IORef (Connection.Connection)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , stdUtil :: IORef (StdUtil.StdUtil)
    , sqlTypeStrings :: IORef (SqlTypeStrings.SqlTypeStrings)
    , sqlStrings :: IORef (SqlStrings.SqlStrings)
    , iNSERT :: IORef (String)
    , uPDATE :: IORef (String)
    , fAILED_SQL_STATEMENT :: IORef (String)
    , sUCCESS_SQL_STATEMENT :: IORef (String)
    , mETHOD_EXECUTED_SQL_STATEMENT :: IORef (String)
    , mETHOD_CREATE :: IORef (String)
    , dATABASE_CREATED_LABEL :: IORef (String)
    , dATABASE_CREATION_FAILED_LABEL :: IORef (String)
    , sQL_CONNECTION_FAILED :: IORef (String)
    , sQL_CONNECTION_RETRYING :: IORef (String)
    , sQL_CONNECTION_RETRY :: IORef (String)
    , mETHOD_CREATE_CONNECTION :: IORef (String)
    , mETHOD_INITIALIZE :: IORef (String)
    , lOAD_JDBC_DRIVER_FAILED_LABEL :: IORef (String)
    }

instance JavaNull AbSqlBasic where
    javaNull = javaNullRecord "AbSqlBasic"

instance JavaEquals AbSqlBasic where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlBasic where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlBasic where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbSqlBasic
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    sqlConnectionPool <- newIORef javaNull
    databaseConnectionInfoInterface <- newIORef javaNull
    connectAttemptCounter <- newIORef 0
    conn <- newIORef javaNull
    stringUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    stdUtil <- newIORef javaNull
    sqlTypeStrings <- newIORef javaNull
    sqlStrings <- newIORef javaNull
    iNSERT <- newIORef ""
    uPDATE <- newIORef ""
    fAILED_SQL_STATEMENT <- newIORef ""
    sUCCESS_SQL_STATEMENT <- newIORef ""
    mETHOD_EXECUTED_SQL_STATEMENT <- newIORef ""
    mETHOD_CREATE <- newIORef ""
    dATABASE_CREATED_LABEL <- newIORef ""
    dATABASE_CREATION_FAILED_LABEL <- newIORef ""
    sQL_CONNECTION_FAILED <- newIORef ""
    sQL_CONNECTION_RETRYING <- newIORef ""
    sQL_CONNECTION_RETRY <- newIORef ""
    mETHOD_CREATE_CONNECTION <- newIORef ""
    mETHOD_INITIALIZE <- newIORef ""
    lOAD_JDBC_DRIVER_FAILED_LABEL <- newIORef ""
    let this = AbSqlBasic header_ logUtil sqlConnectionPool databaseConnectionInfoInterface connectAttemptCounter conn stringUtil commonStrings commonSeps stdUtil sqlTypeStrings sqlStrings iNSERT uPDATE fAILED_SQL_STATEMENT sUCCESS_SQL_STATEMENT mETHOD_EXECUTED_SQL_STATEMENT mETHOD_CREATE dATABASE_CREATED_LABEL dATABASE_CREATION_FAILED_LABEL sQL_CONNECTION_FAILED sQL_CONNECTION_RETRYING sQL_CONNECTION_RETRY mETHOD_CREATE_CONNECTION mETHOD_INITIALIZE lOAD_JDBC_DRIVER_FAILED_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "executeSQLStatement" (\() -> executeSQLStatement_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "createConnection" (\() -> createConnection_impl this)
    jregisterMethod header_ "initialize" (\() -> initialize_impl this)
    jregisterMethod header_ "getDatabaseConnectionInfoInterface" (\() -> getDatabaseConnectionInfoInterface_impl this)
    jregisterMethod header_ "setDatabaseConnectionInfoInterface" (\() -> setDatabaseConnectionInfoInterface_impl this)
    pure this

initFields_ :: AbSqlBasic -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sqlConnectionPool =<< (SqlConnectionPool.getInstance)
    jset this.databaseConnectionInfoInterface (javaNull)
    jset this.connectAttemptCounter (0)
    jset this.conn (javaNull)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.stdUtil =<< (StdUtil.getInstance)
    jset this.sqlTypeStrings =<< (SqlTypeStrings.getInstance)
    jset this.sqlStrings =<< (SqlStrings.getInstance)
    jset this.iNSERT ("insert")
    jset this.uPDATE ("update")
    jset this.fAILED_SQL_STATEMENT ("Failed\nSQL Statement: ")
    jset this.sUCCESS_SQL_STATEMENT ("Success\nSQL Statement: ")
    jset this.mETHOD_EXECUTED_SQL_STATEMENT ("executedSQLStatement")
    jset this.mETHOD_CREATE ("create")
    jset this.dATABASE_CREATED_LABEL ("Database Created: ")
    jset this.dATABASE_CREATION_FAILED_LABEL ("Database Creation Failed: ")
    jset this.sQL_CONNECTION_FAILED ("SQL Connection Failed")
    jset this.sQL_CONNECTION_RETRYING ("SQL Connection Retrying")
    jset this.sQL_CONNECTION_RETRY ("SQL Connection Retry")
    jset this.mETHOD_CREATE_CONNECTION ("createConnection()")
    jset this.mETHOD_INITIALIZE ("initialize")
    jset this.lOAD_JDBC_DRIVER_FAILED_LABEL ("Load JDBC Driver Failed: ")
    pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO AbSqlBasic
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: AbSqlBasic -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this databaseConnectionInfoInterface = do
        initFields_ this
        jset (this).databaseConnectionInfoInterface (databaseConnectionInfoInterface)
        jset (this).connectAttemptCounter (0)
        jset (this).conn (javaNull)
        pure ()


-- throws SQLException
executeSQLStatement :: (JavaObjectClass this_) => this_ -> String -> IO (ResultSet.ResultSet)
executeSQLStatement object_ a1 = jmethod object_ "executeSQLStatement" (\() -> (executeSQLStatement_impl (javaCast object_ :: AbSqlBasic))) () a1

executeSQLStatement_super :: (JavaObjectClass this_) => this_ -> String -> IO (ResultSet.ResultSet)
executeSQLStatement_super object_ a1 = (executeSQLStatement_impl (javaCast object_ :: AbSqlBasic)) a1

executeSQLStatement_impl :: AbSqlBasic -> String -> IO (ResultSet.ResultSet)
executeSQLStatement_impl this statement = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).fAILED_SQL_STATEMENT) ++ statement) this (jget this.mETHOD_EXECUTED_SQL_STATEMENT) e)
            Control.Monad.void (Connection.close ((jget (this).conn)))
            jset (this).conn (javaNull)
            javaThrow (e)
            ) $ do
            Control.Monad.void (AbSqlBasic.initialize this)
            stmt <- (Connection.createStatement ((jget (this).conn)))
            Control.Monad.void (Statement.execute stmt statement)
            rset <- (Statement.getResultSet stmt)
            Control.Monad.void (Statement.close stmt)
            let tempConnection = (jget (this).conn)
            jset (this).conn (javaNull)
            Control.Monad.void (SqlConnectionPool.add ((jget (this).sqlConnectionPool)) (jio (DatabaseConnectionInfoInterface.getUrl ((jio (AbSqlBasic.getDatabaseConnectionInfoInterface this))))) tempConnection)
            pure (rset)


create :: (JavaObjectClass this_) => this_ -> String -> IO (String)
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: AbSqlBasic))) () a1

create_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
create_super object_ a1 = (create_impl (javaCast object_ :: AbSqlBasic)) a1

create_impl :: AbSqlBasic -> String -> IO (String)
create_impl this databaseName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).dATABASE_CREATION_FAILED_LABEL) ++ databaseName) this (jget (this).mETHOD_CREATE) e)
            pure (((jget (this).dATABASE_CREATION_FAILED_LABEL) ++ databaseName))
            ) $ do
            Control.Monad.void (AbSqlBasic.executeSQLStatement this (javaToString (jget ((jget (this).sqlStrings)).cREATE_DATABASE) ++ databaseName))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).dATABASE_CREATED_LABEL) ++ databaseName) this (jget (this).mETHOD_CREATE))
            pure ((databaseName ++ javaToString (jget ((jget (this).sqlStrings)).cREATE_RETURN)))


createConnection :: (JavaObjectClass this_) => this_ -> IO (())
createConnection object_ = jmethod object_ "createConnection" (\() -> (createConnection_impl (javaCast object_ :: AbSqlBasic))) ()

createConnection_super :: (JavaObjectClass this_) => this_ -> IO (())
createConnection_super object_ = (createConnection_impl (javaCast object_ :: AbSqlBasic))

createConnection_impl :: AbSqlBasic -> IO (())
createConnection_impl this = do
        handle (\(se :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (this).sQL_CONNECTION_RETRYING) this (jget this.mETHOD_CREATE_CONNECTION) se)
            handle (\(e :: JavaException) -> do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).sQL_CONNECTION_RETRY) ++ (Control.Exception.displayException se)) this (jget (this).mETHOD_CREATE_CONNECTION) e)
                ) $ do
                Control.Monad.void (Thread.sleep ((jio (Thread.currentThread))) 2000)
                when ((jget (this).connectAttemptCounter) < 10) $ do
                    jset (this).connectAttemptCounter ((jget (this).connectAttemptCounter) + 1)
                    Control.Monad.void (AbSqlBasic.initialize this)
            ) $ do
            assignedValue <- (SqlConnectionPool.get ((jget (this).sqlConnectionPool)) (jio (DatabaseConnectionInfoInterface.getUrl ((jio (AbSqlBasic.getDatabaseConnectionInfoInterface this))))))
            jset (this).conn (assignedValue)
        pure ()


initialize :: (JavaObjectClass this_) => this_ -> IO (())
initialize object_ = jmethod object_ "initialize" (\() -> (initialize_impl (javaCast object_ :: AbSqlBasic))) ()

initialize_super :: (JavaObjectClass this_) => this_ -> IO (())
initialize_super object_ = (initialize_impl (javaCast object_ :: AbSqlBasic))

initialize_impl :: AbSqlBasic -> IO (())
initialize_impl this = do
        handle (\(se :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (this).sQL_CONNECTION_FAILED) this (jget (this).mETHOD_INITIALIZE) se)
            ) $ do
            do
                handle (\(e :: JavaException) -> do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                        Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).lOAD_JDBC_DRIVER_FAILED_LABEL) ++ javaToString (jio (DatabaseConnectionInfoInterface.getJdbcDriver ((jio (AbSqlBasic.getDatabaseConnectionInfoInterface this)))))) this (jget this.mETHOD_INITIALIZE) e)
                    ) $ do
                    loader <- (Thread.getContextClassLoader ((jio (Thread.currentThread))))
                    jdbcDriverClass <- (ClassLoader.loadClass loader (jio (DatabaseConnectionInfoInterface.getJdbcDriver ((jio (AbSqlBasic.getDatabaseConnectionInfoInterface this))))))
                    Control.Monad.void (Class.newInstance jdbcDriverClass)
            Control.Monad.void (AbSqlBasic.createConnection this)
        pure ()


getDatabaseConnectionInfoInterface :: (JavaObjectClass this_) => this_ -> IO (DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface)
getDatabaseConnectionInfoInterface object_ = jmethod object_ "getDatabaseConnectionInfoInterface" (\() -> (getDatabaseConnectionInfoInterface_impl (javaCast object_ :: AbSqlBasic))) ()

getDatabaseConnectionInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface)
getDatabaseConnectionInfoInterface_super object_ = (getDatabaseConnectionInfoInterface_impl (javaCast object_ :: AbSqlBasic))

getDatabaseConnectionInfoInterface_impl :: AbSqlBasic -> IO (DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface)
getDatabaseConnectionInfoInterface_impl this = do
        pure ((javaCast (jget (this).databaseConnectionInfoInterface) :: DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface))


setDatabaseConnectionInfoInterface :: (JavaObjectClass this_) => this_ -> DbConnectionInfo.DbConnectionInfo -> IO (())
setDatabaseConnectionInfoInterface object_ a1 = jmethod object_ "setDatabaseConnectionInfoInterface" (\() -> (setDatabaseConnectionInfoInterface_impl (javaCast object_ :: AbSqlBasic))) () a1

setDatabaseConnectionInfoInterface_super :: (JavaObjectClass this_) => this_ -> DbConnectionInfo.DbConnectionInfo -> IO (())
setDatabaseConnectionInfoInterface_super object_ a1 = (setDatabaseConnectionInfoInterface_impl (javaCast object_ :: AbSqlBasic)) a1

setDatabaseConnectionInfoInterface_impl :: AbSqlBasic -> DbConnectionInfo.DbConnectionInfo -> IO (())
setDatabaseConnectionInfoInterface_impl this databaseConnectionInfoInterface = do
        jset (this).databaseConnectionInfoInterface (databaseConnectionInfoInterface)
        pure ()


