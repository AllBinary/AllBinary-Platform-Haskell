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
module EmailServerConfiguration where

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
import qualified EmailServerConfigurationData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified EmailServerConfigurationInterface

-- implements EmailServerConfigurationInterface
data EmailServerConfiguration = EmailServerConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , accountName :: IORef (String)
    , password :: IORef (String)
    , smtpServer :: IORef (String)
    }

instance JavaNull EmailServerConfiguration where
    javaNull = javaNullRecord "EmailServerConfiguration"

instance JavaEquals EmailServerConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailServerConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass EmailServerConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EmailServerConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    accountName <- newIORef ""
    password <- newIORef ""
    smtpServer <- newIORef ""
    let this = EmailServerConfiguration header_ logUtil accountName password smtpServer
    jregisterLevel header_ this
    EmailServerConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "setSmtpServer" (\() -> setSmtpServer_impl this)
    jregisterMethod header_ "getSmtpServer" (\() -> getSmtpServer_impl this)
    jregisterMethod header_ "getAccountName" (\() -> getAccountName_impl this)
    jregisterMethod header_ "setAccountName" (\() -> setAccountName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: EmailServerConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.accountName ("")
    jset this.password ("")
    jset this.smtpServer ("")
    pure ()

new_ :: IO EmailServerConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EmailServerConfiguration -> IO ()
init_ this = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        Control.Monad.void (EmailServerConfiguration.setSmtpServer this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure ()

new_1 :: HashMap.HashMap -> IO EmailServerConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: EmailServerConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this "EmailServerConfiguration(HashMap)")
        Control.Monad.void (EmailServerConfiguration.setAccountName this (javaCast (jio (HashMap.get hashMap (EmailServerConfigurationData.aCCOUNT))) :: String))
        Control.Monad.void (EmailServerConfiguration.setPassword this (javaCast (jio (HashMap.get hashMap (EmailServerConfigurationData.pASSWORD))) :: String))
        Control.Monad.void (EmailServerConfiguration.setSmtpServer this (javaCast (jio (HashMap.get hashMap (EmailServerConfigurationData.sERVER))) :: String))
        Control.Monad.void (EmailServerConfiguration.log this)
        pure ()

new_3 :: String -> String -> String -> IO EmailServerConfiguration
new_3 account password server = do
    this <- newRecord_
    init_3 this account password server
    pure this

init_3 :: EmailServerConfiguration -> String -> String -> String -> IO ()
init_3 this account password server = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this "EmailServerConfiguration(HashMap)")
        Control.Monad.void (EmailServerConfiguration.setAccountName this account)
        Control.Monad.void (EmailServerConfiguration.setPassword this password)
        Control.Monad.void (EmailServerConfiguration.setSmtpServer this server)
        Control.Monad.void (EmailServerConfiguration.log this)
        pure ()


setSmtpServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmtpServer object_ a1 = jmethod object_ "setSmtpServer" (\() -> (setSmtpServer_impl (javaCast object_ :: EmailServerConfiguration))) () a1

setSmtpServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmtpServer_super object_ a1 = (setSmtpServer_impl (javaCast object_ :: EmailServerConfiguration)) a1

setSmtpServer_impl :: EmailServerConfiguration -> String -> IO (())
setSmtpServer_impl this value = do
        jset (this).smtpServer (value)
        pure ()


getSmtpServer :: (JavaObjectClass this_) => this_ -> IO (String)
getSmtpServer object_ = jmethod object_ "getSmtpServer" (\() -> (getSmtpServer_impl (javaCast object_ :: EmailServerConfiguration))) ()

getSmtpServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSmtpServer_super object_ = (getSmtpServer_impl (javaCast object_ :: EmailServerConfiguration))

getSmtpServer_impl :: EmailServerConfiguration -> IO (String)
getSmtpServer_impl this = do
        pure ((jget (this).smtpServer))


getAccountName :: (JavaObjectClass this_) => this_ -> IO (String)
getAccountName object_ = jmethod object_ "getAccountName" (\() -> (getAccountName_impl (javaCast object_ :: EmailServerConfiguration))) ()

getAccountName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAccountName_super object_ = (getAccountName_impl (javaCast object_ :: EmailServerConfiguration))

getAccountName_impl :: EmailServerConfiguration -> IO (String)
getAccountName_impl this = do
        pure ((jget (this).accountName))


setAccountName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAccountName object_ a1 = jmethod object_ "setAccountName" (\() -> (setAccountName_impl (javaCast object_ :: EmailServerConfiguration))) () a1

setAccountName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAccountName_super object_ a1 = (setAccountName_impl (javaCast object_ :: EmailServerConfiguration)) a1

setAccountName_impl :: EmailServerConfiguration -> String -> IO (())
setAccountName_impl this accountName = do
        jset (this).accountName (accountName)
        pure ()


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: EmailServerConfiguration))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: EmailServerConfiguration))

getPassword_impl :: EmailServerConfiguration -> IO (String)
getPassword_impl this = do
        pure ((jget (this).password))


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: EmailServerConfiguration))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: EmailServerConfiguration)) a1

setPassword_impl :: EmailServerConfiguration -> String -> IO (())
setPassword_impl this password = do
        jset (this).password (password)
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: EmailServerConfiguration))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: EmailServerConfiguration))

log_impl :: EmailServerConfiguration -> IO (())
log_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (EmailServerConfiguration.toString this)) this "EmailServerConfiguration")
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: EmailServerConfiguration))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: EmailServerConfiguration))

toString_impl :: EmailServerConfiguration -> IO (String)
toString_impl this = do
        pure ((((((("Email Server Configuration:\n" ++ "Smtp Server: \n") ++ javaToString (jio (EmailServerConfiguration.getSmtpServer this))) ++ "\nAccount Name: ") ++ javaToString (jio (EmailServerConfiguration.getAccountName this))) ++ "\nPassword: ") ++ javaToString (jio (EmailServerConfiguration.getPassword this))))


