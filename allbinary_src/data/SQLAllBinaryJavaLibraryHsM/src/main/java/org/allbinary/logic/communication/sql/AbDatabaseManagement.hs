{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.sql
module AbDatabaseManagement (module AbDatabaseManagement, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHostName, getHostName_super, getHostName_impl, addDbUser, addDbUser_super, addDbUser_impl, addDbUser_3, addDbUser_3_super, addDbUser_3_impl, addDbUser, addDb, addDb_super, addDb_impl, logUtil, commonStrings, sqlCommandLog, gRANT_ALL, dOT_STAR, tO, aT_LOCALHOST, iDENTIFIED_BY, wITH_GRANT_OPTION, fAILED, gET_HOST_NAME, mETHOD_ADD_USER, mETHOD_ADD_USERS, mETHOD_ADD_DB, mETHOD_ADD_DATABASES, mETHOD_ADD_TABLES, uNABLE_TO_CREATE_USER, uNABLE_TO_CREATE_DATABASE, uNABLE_TO_CREATE_TABLES, aDD_TABLES_RESULTS_LABEL)
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
import qualified CommonSeps -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified InetAddress -- java.net.InetAddress
import qualified DatabaseConnectionInfoInterface -- org.allbinary.business.init.db.DatabaseConnectionInfoInterface
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AbSqlBean

data AbDatabaseManagement = AbDatabaseManagement
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , sqlCommandLog :: IORef (StringMaker.StringMaker)
    , gRANT_ALL :: IORef (String)
    , dOT_STAR :: IORef (String)
    , tO :: IORef (String)
    , aT_LOCALHOST :: IORef (String)
    , iDENTIFIED_BY :: IORef (String)
    , wITH_GRANT_OPTION :: IORef (String)
    , fAILED :: IORef (String)
    , gET_HOST_NAME :: IORef (String)
    , mETHOD_ADD_USER :: IORef (String)
    , mETHOD_ADD_USERS :: IORef (String)
    , mETHOD_ADD_DB :: IORef (String)
    , mETHOD_ADD_DATABASES :: IORef (String)
    , mETHOD_ADD_TABLES :: IORef (String)
    , uNABLE_TO_CREATE_USER :: IORef (String)
    , uNABLE_TO_CREATE_DATABASE :: IORef (String)
    , uNABLE_TO_CREATE_TABLES :: IORef (String)
    , aDD_TABLES_RESULTS_LABEL :: IORef (String)
    }

instance JavaNull AbDatabaseManagement where
    javaNull = javaNullRecord "AbDatabaseManagement"

instance JavaEquals AbDatabaseManagement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbDatabaseManagement where
    (==) = jrecordEquals

instance JavaObjectClass AbDatabaseManagement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbDatabaseManagement
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    sqlCommandLog <- newIORef javaNull
    gRANT_ALL <- newIORef ""
    dOT_STAR <- newIORef ""
    tO <- newIORef ""
    aT_LOCALHOST <- newIORef ""
    iDENTIFIED_BY <- newIORef ""
    wITH_GRANT_OPTION <- newIORef ""
    fAILED <- newIORef ""
    gET_HOST_NAME <- newIORef ""
    mETHOD_ADD_USER <- newIORef ""
    mETHOD_ADD_USERS <- newIORef ""
    mETHOD_ADD_DB <- newIORef ""
    mETHOD_ADD_DATABASES <- newIORef ""
    mETHOD_ADD_TABLES <- newIORef ""
    uNABLE_TO_CREATE_USER <- newIORef ""
    uNABLE_TO_CREATE_DATABASE <- newIORef ""
    uNABLE_TO_CREATE_TABLES <- newIORef ""
    aDD_TABLES_RESULTS_LABEL <- newIORef ""
    let this = AbDatabaseManagement header_ base logUtil commonStrings sqlCommandLog gRANT_ALL dOT_STAR tO aT_LOCALHOST iDENTIFIED_BY wITH_GRANT_OPTION fAILED gET_HOST_NAME mETHOD_ADD_USER mETHOD_ADD_USERS mETHOD_ADD_DB mETHOD_ADD_DATABASES mETHOD_ADD_TABLES uNABLE_TO_CREATE_USER uNABLE_TO_CREATE_DATABASE uNABLE_TO_CREATE_TABLES aDD_TABLES_RESULTS_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "getHostName" (\() -> getHostName_impl this)
    jregisterMethod header_ "addDbUser" (\() -> addDbUser_impl this)
    jregisterMethod header_ "addDbUser_3" (\() -> addDbUser_3_impl this)
    jregisterMethod header_ "addDb" (\() -> addDb_impl this)
    pure this

initFields_ :: AbDatabaseManagement -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.sqlCommandLog =<< (StringMaker.new_)
    jset this.gRANT_ALL ("GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON ")
    jset this.dOT_STAR (".*")
    jset this.tO (" TO ")
    jset this.aT_LOCALHOST ("@localhost")
    jset this.iDENTIFIED_BY (" IDENTIFIED BY '")
    jset this.wITH_GRANT_OPTION ("' WITH GRANT OPTION")
    jset this.fAILED ("Failed")
    jset this.gET_HOST_NAME ("getHostName()")
    jset this.mETHOD_ADD_USER ("addUser()")
    jset this.mETHOD_ADD_USERS ("addUsers()")
    jset this.mETHOD_ADD_DB ("addDb()")
    jset this.mETHOD_ADD_DATABASES ("addDatabases()")
    jset this.mETHOD_ADD_TABLES ("addTables()")
    jset this.uNABLE_TO_CREATE_USER ("Unable to Create User: ")
    jset this.uNABLE_TO_CREATE_DATABASE ("Unable to Create Database: ")
    jset this.uNABLE_TO_CREATE_TABLES ("Unable to Create Tables")
    jset this.aDD_TABLES_RESULTS_LABEL ("Add Table Results: ")
    pure ()

new_1 :: DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO AbDatabaseManagement
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: AbDatabaseManagement -> DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO ()
init_1 this databaseConnectionInfoInterface = do
        AbSqlBean.init_1 this.base (javaCast databaseConnectionInfoInterface :: DbConnectionInfo.DbConnectionInfo)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: DbConnectionInfo.DbConnectionInfo -> IO AbDatabaseManagement
new_1 connectionInfo = do
    this <- newRecord_
    init_1 this connectionInfo
    pure this

init_1 :: AbDatabaseManagement -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this connectionInfo = do
        AbSqlBean.init_1 this.base (connectionInfo)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName object_ = jmethod object_ "getHostName" (\() -> (getHostName_impl (javaCast object_ :: AbDatabaseManagement))) ()

getHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName_super object_ = (getHostName_impl (javaCast object_ :: AbDatabaseManagement))

getHostName_impl :: AbDatabaseManagement -> IO (String)
getHostName_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (this).fAILED) this (jget this.gET_HOST_NAME) e)
            pure (javaNull)
            ) $ do
            addr <- (InetAddress.getLocalHost)
            (InetAddress.getHostName addr)


-- throws Exception
addDbUser :: (JavaObjectClass this_) => this_ -> String -> String -> String -> String -> IO (Bool)
addDbUser object_ a1 a2 a3 a4 = jmethod object_ "addDbUser" (\() -> (addDbUser_impl (javaCast object_ :: AbDatabaseManagement))) () a1 a2 a3 a4

addDbUser_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> String -> IO (Bool)
addDbUser_super object_ a1 a2 a3 a4 = (addDbUser_impl (javaCast object_ :: AbDatabaseManagement)) a1 a2 a3 a4

addDbUser_impl :: AbDatabaseManagement -> String -> String -> String -> String -> IO (Bool)
addDbUser_impl this hostName db userName password = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).gRANT_ALL))
        Control.Monad.void (StringMaker.append stringBuffer db)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).dOT_STAR))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tO))
        Control.Monad.void (StringMaker.append stringBuffer userName)
        Control.Monad.void (StringMaker.append stringBuffer hostName)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iDENTIFIED_BY))
        Control.Monad.void (StringMaker.append stringBuffer password)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).wITH_GRANT_OPTION))
        sqlStatement <- (StringMaker.toString stringBuffer)
        Control.Monad.void (StringMaker.append ((jget (this).sqlCommandLog)) sqlStatement)
        Control.Monad.void (StringMaker.append ((jget (this).sqlCommandLog)) (jget ((jget (this).base.base.base.base.base.commonSeps)).nEW_LINE))
        Control.Monad.void (AbSqlBean.executeSQLStatement_super this.base sqlStatement)
        pure (True)


addDbUser_3 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (Bool)
addDbUser_3 object_ a1 a2 a3 = jmethod object_ "addDbUser_3" (\() -> (addDbUser_3_impl (javaCast object_ :: AbDatabaseManagement))) () a1 a2 a3

addDbUser_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (Bool)
addDbUser_3_super object_ a1 a2 a3 = (addDbUser_3_impl (javaCast object_ :: AbDatabaseManagement)) a1 a2 a3

addDbUser_3_impl :: AbDatabaseManagement -> String -> String -> String -> IO (Bool)
addDbUser_3_impl this db userName password = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).uNABLE_TO_CREATE_USER) ++ userName) this (jget (this).mETHOD_ADD_USER) e)
            pure (False)
            ) $ do
            Control.Monad.void (AbDatabaseManagement.addDbUser this (jget (this).aT_LOCALHOST) db userName password)
            hostName <- (AbDatabaseManagement.getHostName this)
            when (hostName /= javaNull) $ do
                Control.Monad.void (AbDatabaseManagement.addDbUser this hostName db userName password)
            pure (True)


addDb :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
addDb object_ a1 = jmethod object_ "addDb" (\() -> (addDb_impl (javaCast object_ :: AbDatabaseManagement))) () a1

addDb_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
addDb_super object_ a1 = (addDb_impl (javaCast object_ :: AbDatabaseManagement)) a1

addDb_impl :: AbDatabaseManagement -> String -> IO (Bool)
addDb_impl this db = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).uNABLE_TO_CREATE_DATABASE) ++ db) this (jget (this).mETHOD_ADD_DB) e)
            pure (False)
            ) $ do
            let sqlStatement = (javaToString (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_DATABASE) ++ db)
            Control.Monad.void (StringMaker.append ((jget (this).sqlCommandLog)) sqlStatement)
            Control.Monad.void (StringMaker.append ((jget (this).sqlCommandLog)) (jget ((jget (this).base.base.base.base.base.commonSeps)).nEW_LINE))
            Control.Monad.void (AbSqlBean.executeSQLStatement_super this.base sqlStatement)
            pure (True)


