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
-- package org.allbinary.business.init.db
module DbConnectionInfo where

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
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified DatabaseConnectionInfoInterface

-- implements DatabaseConnectionInfoInterface
data DbConnectionInfo = DbConnectionInfo
    { header_ :: JavaHeader
    , jdbcDriver :: IORef (String)
    , name :: IORef (String)
    , userName :: IORef (String)
    , password :: IORef (String)
    , schema :: IORef (String)
    , server :: IORef (String)
    , port :: IORef (String)
    , url :: IORef (String)
    , host :: IORef (String)
    , sCHEMA_SEP :: IORef (String)
    , uSER_NAME_KEY :: IORef (String)
    , pASSWORD_KEY :: IORef (String)
    }

instance JavaNull DbConnectionInfo where
    javaNull = javaNullRecord "DbConnectionInfo"

instance JavaEquals DbConnectionInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DbConnectionInfo where
    (==) = jrecordEquals

instance JavaObjectClass DbConnectionInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DbConnectionInfo
newRecord_ = do
    header_ <- newJavaHeader
    jdbcDriver <- newIORef ""
    name <- newIORef ""
    userName <- newIORef ""
    password <- newIORef ""
    schema <- newIORef ""
    server <- newIORef ""
    port <- newIORef ""
    url <- newIORef ""
    host <- newIORef ""
    sCHEMA_SEP <- newIORef ""
    uSER_NAME_KEY <- newIORef ""
    pASSWORD_KEY <- newIORef ""
    let this = DbConnectionInfo header_ jdbcDriver name userName password schema server port url host sCHEMA_SEP uSER_NAME_KEY pASSWORD_KEY
    jregisterLevel header_ this
    DatabaseConnectionInfoInterface.registerInterface_ header_
    jregisterMethod header_ "updateUrl" (\() -> updateUrl_impl this)
    jregisterMethod header_ "getUrl" (\() -> getUrl_impl this)
    jregisterMethod header_ "getJdbcDriver" (\() -> getJdbcDriver_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "updateHost" (\() -> updateHost_impl this)
    jregisterMethod header_ "getHost" (\() -> getHost_impl this)
    jregisterMethod header_ "getSchema" (\() -> getSchema_impl this)
    jregisterMethod header_ "getServer" (\() -> getServer_impl this)
    jregisterMethod header_ "getPort" (\() -> getPort_impl this)
    jregisterMethod header_ "setJdbcDriver" (\() -> setJdbcDriver_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "setSchema" (\() -> setSchema_impl this)
    jregisterMethod header_ "setServer" (\() -> setServer_impl this)
    jregisterMethod header_ "setPort" (\() -> setPort_impl this)
    jregisterMethod header_ "getUserNameKey" (\() -> getUserNameKey_impl this)
    jregisterMethod header_ "getPasswordKey" (\() -> getPasswordKey_impl this)
    pure this

initFields_ :: DbConnectionInfo -> IO ()
initFields_ this = do
    jset this.jdbcDriver ("")
    jset this.name ("")
    jset this.userName ("")
    jset this.password ("")
    jset this.schema ("")
    jset this.server ("")
    jset this.port ("")
    jset this.url ("")
    jset this.host ("")
    jset this.sCHEMA_SEP ("://")
    jset this.uSER_NAME_KEY ("?user=")
    jset this.pASSWORD_KEY ("&password=")
    pure ()

new_ :: IO DbConnectionInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DbConnectionInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


updateUrl :: (JavaObjectClass this_) => this_ -> IO (())
updateUrl object_ = jmethod object_ "updateUrl" (\() -> (updateUrl_impl (javaCast object_ :: DbConnectionInfo))) ()

updateUrl_super :: (JavaObjectClass this_) => this_ -> IO (())
updateUrl_super object_ = (updateUrl_impl (javaCast object_ :: DbConnectionInfo))

updateUrl_impl :: DbConnectionInfo -> IO (())
updateUrl_impl this = do
        Control.Monad.void (DbConnectionInfo.updateHost this)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getHost this)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getUserNameKey this)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getUserName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getPasswordKey this)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getPassword this)))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).url (assignedValue)
        pure ()


getUrl :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl object_ = jmethod object_ "getUrl" (\() -> (getUrl_impl (javaCast object_ :: DbConnectionInfo))) ()

getUrl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl_super object_ = (getUrl_impl (javaCast object_ :: DbConnectionInfo))

getUrl_impl :: DbConnectionInfo -> IO (String)
getUrl_impl this = do
        pure ((jget (this).url))


getJdbcDriver :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriver object_ = jmethod object_ "getJdbcDriver" (\() -> (getJdbcDriver_impl (javaCast object_ :: DbConnectionInfo))) ()

getJdbcDriver_super :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriver_super object_ = (getJdbcDriver_impl (javaCast object_ :: DbConnectionInfo))

getJdbcDriver_impl :: DbConnectionInfo -> IO (String)
getJdbcDriver_impl this = do
        pure ((jget (this).jdbcDriver))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: DbConnectionInfo))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: DbConnectionInfo))

getName_impl :: DbConnectionInfo -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: DbConnectionInfo))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: DbConnectionInfo))

getUserName_impl :: DbConnectionInfo -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: DbConnectionInfo))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: DbConnectionInfo))

getPassword_impl :: DbConnectionInfo -> IO (String)
getPassword_impl this = do
        pure ((jget (this).password))


updateHost :: (JavaObjectClass this_) => this_ -> IO (())
updateHost object_ = jmethod object_ "updateHost" (\() -> (updateHost_impl (javaCast object_ :: DbConnectionInfo))) ()

updateHost_super :: (JavaObjectClass this_) => this_ -> IO (())
updateHost_super object_ = (updateHost_impl (javaCast object_ :: DbConnectionInfo))

updateHost_impl :: DbConnectionInfo -> IO (())
updateHost_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getSchema this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sCHEMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getServer this)))
        when (((jio (DbConnectionInfo.getPort this)) /= javaNull) && ((Prelude.length (jio (DbConnectionInfo.getPort this))) > 1)) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).cOLON))
            Control.Monad.void (StringMaker.append stringBuffer (jio (DbConnectionInfo.getPort this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).host (assignedValue)
        pure ()


getHost :: (JavaObjectClass this_) => this_ -> IO (String)
getHost object_ = jmethod object_ "getHost" (\() -> (getHost_impl (javaCast object_ :: DbConnectionInfo))) ()

getHost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHost_super object_ = (getHost_impl (javaCast object_ :: DbConnectionInfo))

getHost_impl :: DbConnectionInfo -> IO (String)
getHost_impl this = do
        pure ((jget (this).host))


getSchema :: (JavaObjectClass this_) => this_ -> IO (String)
getSchema object_ = jmethod object_ "getSchema" (\() -> (getSchema_impl (javaCast object_ :: DbConnectionInfo))) ()

getSchema_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSchema_super object_ = (getSchema_impl (javaCast object_ :: DbConnectionInfo))

getSchema_impl :: DbConnectionInfo -> IO (String)
getSchema_impl this = do
        pure ((jget (this).schema))


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: DbConnectionInfo))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: DbConnectionInfo))

getServer_impl :: DbConnectionInfo -> IO (String)
getServer_impl this = do
        pure ((jget (this).server))


getPort :: (JavaObjectClass this_) => this_ -> IO (String)
getPort object_ = jmethod object_ "getPort" (\() -> (getPort_impl (javaCast object_ :: DbConnectionInfo))) ()

getPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPort_super object_ = (getPort_impl (javaCast object_ :: DbConnectionInfo))

getPort_impl :: DbConnectionInfo -> IO (String)
getPort_impl this = do
        pure ((jget (this).port))


setJdbcDriver :: (JavaObjectClass this_) => this_ -> String -> IO (())
setJdbcDriver object_ a1 = jmethod object_ "setJdbcDriver" (\() -> (setJdbcDriver_impl (javaCast object_ :: DbConnectionInfo))) () a1

setJdbcDriver_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setJdbcDriver_super object_ a1 = (setJdbcDriver_impl (javaCast object_ :: DbConnectionInfo)) a1

setJdbcDriver_impl :: DbConnectionInfo -> String -> IO (())
setJdbcDriver_impl this value = do
        jset (this).jdbcDriver (value)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: DbConnectionInfo))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: DbConnectionInfo)) a1

setName_impl :: DbConnectionInfo -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        Control.Monad.void (DbConnectionInfo.updateUrl this)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: DbConnectionInfo))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: DbConnectionInfo)) a1

setUserName_impl :: DbConnectionInfo -> String -> IO (())
setUserName_impl this value = do
        jset (this).userName (value)
        Control.Monad.void (DbConnectionInfo.updateUrl this)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: DbConnectionInfo))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: DbConnectionInfo)) a1

setPassword_impl :: DbConnectionInfo -> String -> IO (())
setPassword_impl this value = do
        jset (this).password (value)
        Control.Monad.void (DbConnectionInfo.updateUrl this)
        pure ()


setSchema :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSchema object_ a1 = jmethod object_ "setSchema" (\() -> (setSchema_impl (javaCast object_ :: DbConnectionInfo))) () a1

setSchema_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSchema_super object_ a1 = (setSchema_impl (javaCast object_ :: DbConnectionInfo)) a1

setSchema_impl :: DbConnectionInfo -> String -> IO (())
setSchema_impl this value = do
        jset (this).schema (value)
        Control.Monad.void (DbConnectionInfo.updateUrl this)
        pure ()


setServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: DbConnectionInfo))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: DbConnectionInfo)) a1

setServer_impl :: DbConnectionInfo -> String -> IO (())
setServer_impl this value = do
        jset (this).server (value)
        Control.Monad.void (DbConnectionInfo.updateUrl this)
        pure ()


setPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPort object_ a1 = jmethod object_ "setPort" (\() -> (setPort_impl (javaCast object_ :: DbConnectionInfo))) () a1

setPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPort_super object_ a1 = (setPort_impl (javaCast object_ :: DbConnectionInfo)) a1

setPort_impl :: DbConnectionInfo -> String -> IO (())
setPort_impl this value = do
        jset (this).port (value)
        Control.Monad.void (DbConnectionInfo.updateUrl this)
        pure ()


getUserNameKey :: (JavaObjectClass this_) => this_ -> IO (String)
getUserNameKey object_ = jmethod object_ "getUserNameKey" (\() -> (getUserNameKey_impl (javaCast object_ :: DbConnectionInfo))) ()

getUserNameKey_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserNameKey_super object_ = (getUserNameKey_impl (javaCast object_ :: DbConnectionInfo))

getUserNameKey_impl :: DbConnectionInfo -> IO (String)
getUserNameKey_impl this = do
        pure ((jget (this).uSER_NAME_KEY))


getPasswordKey :: (JavaObjectClass this_) => this_ -> IO (String)
getPasswordKey object_ = jmethod object_ "getPasswordKey" (\() -> (getPasswordKey_impl (javaCast object_ :: DbConnectionInfo))) ()

getPasswordKey_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPasswordKey_super object_ = (getPasswordKey_impl (javaCast object_ :: DbConnectionInfo))

getPasswordKey_impl :: DbConnectionInfo -> IO (String)
getPasswordKey_impl this = do
        pure ((jget (this).pASSWORD_KEY))


