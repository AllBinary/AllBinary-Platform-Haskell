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
-- package org.allbinary.logic.communication.smtp.configuration.server
module EmailServerConfigurationInterface where

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
data EmailServerConfigurationInterface = EmailServerConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull EmailServerConfigurationInterface where
    javaNull = javaNullRecord "EmailServerConfigurationInterface"

instance JavaEquals EmailServerConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailServerConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass EmailServerConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> EmailServerConfigurationInterface
fromHeader_ header = EmailServerConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (EmailServerConfigurationInterface header)


setSmtpServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmtpServer object_ a1 = jmethod object_ "setSmtpServer" (\() -> (setSmtpServer_impl (javaCast object_ :: EmailServerConfigurationInterface))) () a1

setSmtpServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmtpServer_super object_ a1 = (setSmtpServer_impl (javaCast object_ :: EmailServerConfigurationInterface)) a1

setSmtpServer_impl :: EmailServerConfigurationInterface -> String -> IO (())
setSmtpServer_impl this value = javaAbstractMethod "setSmtpServer"


getSmtpServer :: (JavaObjectClass this_) => this_ -> IO (String)
getSmtpServer object_ = jmethod object_ "getSmtpServer" (\() -> (getSmtpServer_impl (javaCast object_ :: EmailServerConfigurationInterface))) ()

getSmtpServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSmtpServer_super object_ = (getSmtpServer_impl (javaCast object_ :: EmailServerConfigurationInterface))

getSmtpServer_impl :: EmailServerConfigurationInterface -> IO (String)
getSmtpServer_impl this = javaAbstractMethod "getSmtpServer"


getAccountName :: (JavaObjectClass this_) => this_ -> IO (String)
getAccountName object_ = jmethod object_ "getAccountName" (\() -> (getAccountName_impl (javaCast object_ :: EmailServerConfigurationInterface))) ()

getAccountName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAccountName_super object_ = (getAccountName_impl (javaCast object_ :: EmailServerConfigurationInterface))

getAccountName_impl :: EmailServerConfigurationInterface -> IO (String)
getAccountName_impl this = javaAbstractMethod "getAccountName"


setAccountName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAccountName object_ a1 = jmethod object_ "setAccountName" (\() -> (setAccountName_impl (javaCast object_ :: EmailServerConfigurationInterface))) () a1

setAccountName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAccountName_super object_ a1 = (setAccountName_impl (javaCast object_ :: EmailServerConfigurationInterface)) a1

setAccountName_impl :: EmailServerConfigurationInterface -> String -> IO (())
setAccountName_impl this accountName = javaAbstractMethod "setAccountName"


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: EmailServerConfigurationInterface))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: EmailServerConfigurationInterface))

getPassword_impl :: EmailServerConfigurationInterface -> IO (String)
getPassword_impl this = javaAbstractMethod "getPassword"


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: EmailServerConfigurationInterface))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: EmailServerConfigurationInterface)) a1

setPassword_impl :: EmailServerConfigurationInterface -> String -> IO (())
setPassword_impl this password = javaAbstractMethod "setPassword"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: EmailServerConfigurationInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: EmailServerConfigurationInterface))

log_impl :: EmailServerConfigurationInterface -> IO (())
log_impl this = javaAbstractMethod "log"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: EmailServerConfigurationInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: EmailServerConfigurationInterface))

toString_impl :: EmailServerConfigurationInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


