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
module DatabaseConnectionInfoInterface where

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

-- Java interface: the classes that implement it have these functions
data DatabaseConnectionInfoInterface = DatabaseConnectionInfoInterface
    { header_ :: JavaHeader
    }

instance JavaNull DatabaseConnectionInfoInterface where
    javaNull = javaNullRecord "DatabaseConnectionInfoInterface"

instance JavaEquals DatabaseConnectionInfoInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DatabaseConnectionInfoInterface where
    (==) = jrecordEquals

instance JavaObjectClass DatabaseConnectionInfoInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DatabaseConnectionInfoInterface
fromHeader_ header = DatabaseConnectionInfoInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DatabaseConnectionInfoInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getUrl :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl object_ = jmethod object_ "getUrl" (\() -> (getUrl_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getUrl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl_super object_ = (getUrl_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getUrl_impl :: DatabaseConnectionInfoInterface -> IO (String)
getUrl_impl this = javaAbstractMethod "getUrl"


getJdbcDriver :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriver object_ = jmethod object_ "getJdbcDriver" (\() -> (getJdbcDriver_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getJdbcDriver_super :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriver_super object_ = (getJdbcDriver_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getJdbcDriver_impl :: DatabaseConnectionInfoInterface -> IO (String)
getJdbcDriver_impl this = javaAbstractMethod "getJdbcDriver"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getName_impl :: DatabaseConnectionInfoInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getUserName_impl :: DatabaseConnectionInfoInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getPassword_impl :: DatabaseConnectionInfoInterface -> IO (String)
getPassword_impl this = javaAbstractMethod "getPassword"


getHost :: (JavaObjectClass this_) => this_ -> IO (String)
getHost object_ = jmethod object_ "getHost" (\() -> (getHost_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getHost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHost_super object_ = (getHost_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getHost_impl :: DatabaseConnectionInfoInterface -> IO (String)
getHost_impl this = javaAbstractMethod "getHost"


getSchema :: (JavaObjectClass this_) => this_ -> IO (String)
getSchema object_ = jmethod object_ "getSchema" (\() -> (getSchema_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getSchema_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSchema_super object_ = (getSchema_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getSchema_impl :: DatabaseConnectionInfoInterface -> IO (String)
getSchema_impl this = javaAbstractMethod "getSchema"


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getServer_impl :: DatabaseConnectionInfoInterface -> IO (String)
getServer_impl this = javaAbstractMethod "getServer"


getPort :: (JavaObjectClass this_) => this_ -> IO (String)
getPort object_ = jmethod object_ "getPort" (\() -> (getPort_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPort_super object_ = (getPort_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getPort_impl :: DatabaseConnectionInfoInterface -> IO (String)
getPort_impl this = javaAbstractMethod "getPort"


setJdbcDriver :: (JavaObjectClass this_) => this_ -> String -> IO (())
setJdbcDriver object_ a1 = jmethod object_ "setJdbcDriver" (\() -> (setJdbcDriver_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setJdbcDriver_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setJdbcDriver_super object_ a1 = (setJdbcDriver_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setJdbcDriver_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setJdbcDriver_impl this value = javaAbstractMethod "setJdbcDriver"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setName_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setName_impl this value = javaAbstractMethod "setName"


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setUserName_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setUserName_impl this value = javaAbstractMethod "setUserName"


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setPassword_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setPassword_impl this value = javaAbstractMethod "setPassword"


setSchema :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSchema object_ a1 = jmethod object_ "setSchema" (\() -> (setSchema_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setSchema_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSchema_super object_ a1 = (setSchema_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setSchema_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setSchema_impl this value = javaAbstractMethod "setSchema"


setServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setServer_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setServer_impl this value = javaAbstractMethod "setServer"


setPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPort object_ a1 = jmethod object_ "setPort" (\() -> (setPort_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) () a1

setPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPort_super object_ a1 = (setPort_impl (javaCast object_ :: DatabaseConnectionInfoInterface)) a1

setPort_impl :: DatabaseConnectionInfoInterface -> String -> IO (())
setPort_impl this value = javaAbstractMethod "setPort"


getUserNameKey :: (JavaObjectClass this_) => this_ -> IO (String)
getUserNameKey object_ = jmethod object_ "getUserNameKey" (\() -> (getUserNameKey_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getUserNameKey_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserNameKey_super object_ = (getUserNameKey_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getUserNameKey_impl :: DatabaseConnectionInfoInterface -> IO (String)
getUserNameKey_impl this = javaAbstractMethod "getUserNameKey"


getPasswordKey :: (JavaObjectClass this_) => this_ -> IO (String)
getPasswordKey object_ = jmethod object_ "getPasswordKey" (\() -> (getPasswordKey_impl (javaCast object_ :: DatabaseConnectionInfoInterface))) ()

getPasswordKey_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPasswordKey_super object_ = (getPasswordKey_impl (javaCast object_ :: DatabaseConnectionInfoInterface))

getPasswordKey_impl :: DatabaseConnectionInfoInterface -> IO (String)
getPasswordKey_impl this = javaAbstractMethod "getPasswordKey"


