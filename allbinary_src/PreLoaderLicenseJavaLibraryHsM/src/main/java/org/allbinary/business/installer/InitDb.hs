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
-- package org.allbinary.business.installer
module InitDb where

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
import qualified Method -- java.lang.reflect.Method
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException

data InitDb = InitDb
    { header_ :: JavaHeader
    , anyType :: IORef (Any.Any)
    , mETHOD_CALL_GET_HOST_NAME :: IORef (String)
    , mETHOD_CALL_ADD_USERS :: IORef (String)
    , mETHOD_CALL_ADD_DATABASES :: IORef (String)
    , mETHOD_CALL_ADD_TABLES :: IORef (String)
    , mETHOD_CALL_TEMP_MAIN_PATH :: IORef (String)
    , mETHOD_CALL_MAIN_PATH :: IORef (String)
    }

instance JavaNull InitDb where
    javaNull = javaNullRecord "InitDb"

instance JavaEquals InitDb where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitDb where
    (==) = jrecordEquals

instance JavaObjectClass InitDb where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitDb
newRecord_ = do
    header_ <- newJavaHeader
    anyType <- newIORef javaNull
    mETHOD_CALL_GET_HOST_NAME <- newIORef ""
    mETHOD_CALL_ADD_USERS <- newIORef ""
    mETHOD_CALL_ADD_DATABASES <- newIORef ""
    mETHOD_CALL_ADD_TABLES <- newIORef ""
    mETHOD_CALL_TEMP_MAIN_PATH <- newIORef ""
    mETHOD_CALL_MAIN_PATH <- newIORef ""
    let this = InitDb header_ anyType mETHOD_CALL_GET_HOST_NAME mETHOD_CALL_ADD_USERS mETHOD_CALL_ADD_DATABASES mETHOD_CALL_ADD_TABLES mETHOD_CALL_TEMP_MAIN_PATH mETHOD_CALL_MAIN_PATH
    jregisterLevel header_ this
    jregisterMethod header_ "setHelper" (\() -> setHelper_impl this)
    jregisterMethod header_ "getHelper" (\() -> getHelper_impl this)
    jregisterMethod header_ "getHostName" (\() -> getHostName_impl this)
    jregisterMethod header_ "addUsers" (\() -> addUsers_impl this)
    jregisterMethod header_ "addDatabases" (\() -> addDatabases_impl this)
    jregisterMethod header_ "addTables" (\() -> addTables_impl this)
    jregisterMethod header_ "useTemporaryMainPath" (\() -> useTemporaryMainPath_impl this)
    jregisterMethod header_ "useNormalMainPath" (\() -> useNormalMainPath_impl this)
    pure this

initFields_ :: InitDb -> IO ()
initFields_ this = do
    jset this.anyType (javaNull)
    jset this.mETHOD_CALL_GET_HOST_NAME ("getHostName")
    jset this.mETHOD_CALL_ADD_USERS ("addUsers")
    jset this.mETHOD_CALL_ADD_DATABASES ("addDatabases")
    jset this.mETHOD_CALL_ADD_TABLES ("addTables")
    jset this.mETHOD_CALL_TEMP_MAIN_PATH ("useTemporaryMainPath")
    jset this.mETHOD_CALL_MAIN_PATH ("useNormalMainPath")
    pure ()

new_ :: IO InitDb
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitDb -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO InitDb
new_1 dbConnectionInfo = do
    this <- newRecord_
    init_1 this dbConnectionInfo
    pure this

init_1 :: InitDb -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this dbConnectionInfo = do
        initFields_ this
        pure ()
        pure ()


setHelper :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setHelper object_ a1 = jmethod object_ "setHelper" (\() -> (setHelper_impl (javaCast object_ :: InitDb))) () (jtoObject a1)

setHelper_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setHelper_super object_ a1 = (setHelper_impl (javaCast object_ :: InitDb)) (jtoObject a1)

setHelper_impl :: InitDb -> JavaObject -> IO (())
setHelper_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        jset (this).anyType (anyType)
        pure ()


getHelper :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getHelper object_ = jmethod object_ "getHelper" (\() -> (getHelper_impl (javaCast object_ :: InitDb))) ()

getHelper_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getHelper_super object_ = (getHelper_impl (javaCast object_ :: InitDb))

getHelper_impl :: InitDb -> IO (Any.Any)
getHelper_impl this = do
        pure ((jtoObject (jget (this).anyType)))


getHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName object_ = jmethod object_ "getHostName" (\() -> (getHostName_impl (javaCast object_ :: InitDb))) ()

getHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName_super object_ = (getHostName_impl (javaCast object_ :: InitDb))

getHostName_impl :: InitDb -> IO (String)
getHostName_impl this = do
        handle (\(e :: JavaException) -> do
            pure (javaNull)
            ) $ do
            dynamicClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod dynamicClass (jget (this).mETHOD_CALL_GET_HOST_NAME) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: String)
            pure (result)


addUsers :: (JavaObjectClass this_) => this_ -> IO (Bool)
addUsers object_ = jmethod object_ "addUsers" (\() -> (addUsers_impl (javaCast object_ :: InitDb))) ()

addUsers_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addUsers_super object_ = (addUsers_impl (javaCast object_ :: InitDb))

addUsers_impl :: InitDb -> IO (Bool)
addUsers_impl this = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            dynamicClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod dynamicClass (jget (this).mETHOD_CALL_ADD_USERS) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: Bool)
            pure (result)


addDatabases :: (JavaObjectClass this_) => this_ -> IO (Bool)
addDatabases object_ = jmethod object_ "addDatabases" (\() -> (addDatabases_impl (javaCast object_ :: InitDb))) ()

addDatabases_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addDatabases_super object_ = (addDatabases_impl (javaCast object_ :: InitDb))

addDatabases_impl :: InitDb -> IO (Bool)
addDatabases_impl this = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            dynamicClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod dynamicClass (jget (this).mETHOD_CALL_ADD_DATABASES) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: Bool)
            pure (result)


addTables :: (JavaObjectClass this_) => this_ -> IO (Bool)
addTables object_ = jmethod object_ "addTables" (\() -> (addTables_impl (javaCast object_ :: InitDb))) ()

addTables_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addTables_super object_ = (addTables_impl (javaCast object_ :: InitDb))

addTables_impl :: InitDb -> IO (Bool)
addTables_impl this = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            dynamicClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod dynamicClass (jget (this).mETHOD_CALL_ADD_TABLES) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: Bool)
            pure (result)


useTemporaryMainPath :: (JavaObjectClass this_) => this_ -> IO (Bool)
useTemporaryMainPath object_ = jmethod object_ "useTemporaryMainPath" (\() -> (useTemporaryMainPath_impl (javaCast object_ :: InitDb))) ()

useTemporaryMainPath_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
useTemporaryMainPath_super object_ = (useTemporaryMainPath_impl (javaCast object_ :: InitDb))

useTemporaryMainPath_impl :: InitDb -> IO (Bool)
useTemporaryMainPath_impl this = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            dynamicClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod dynamicClass (jget (this).mETHOD_CALL_TEMP_MAIN_PATH) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: Bool)
            pure (result)


useNormalMainPath :: (JavaObjectClass this_) => this_ -> IO (Bool)
useNormalMainPath object_ = jmethod object_ "useNormalMainPath" (\() -> (useNormalMainPath_impl (javaCast object_ :: InitDb))) ()

useNormalMainPath_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
useNormalMainPath_super object_ = (useNormalMainPath_impl (javaCast object_ :: InitDb))

useNormalMainPath_impl :: InitDb -> IO (Bool)
useNormalMainPath_impl this = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            dynamicClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod dynamicClass (jget (this).mETHOD_CALL_MAIN_PATH) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: Bool)
            pure (result)


