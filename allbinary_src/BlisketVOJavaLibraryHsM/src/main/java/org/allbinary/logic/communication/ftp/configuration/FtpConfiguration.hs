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
-- package org.allbinary.logic.communication.ftp.configuration
module FtpConfiguration where

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
import qualified FtpConfigurationData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified FtpConfigurationInterface

-- implements FtpConfigurationInterface
data FtpConfiguration = FtpConfiguration
    { header_ :: JavaHeader
    , ftpServer :: IORef (String)
    , ftpPath :: IORef (String)
    , ftpUserName :: IORef (String)
    , ftpPassword :: IORef (String)
    }

instance JavaNull FtpConfiguration where
    javaNull = javaNullRecord "FtpConfiguration"

instance JavaEquals FtpConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FtpConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass FtpConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FtpConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    ftpServer <- newIORef ""
    ftpPath <- newIORef ""
    ftpUserName <- newIORef ""
    ftpPassword <- newIORef ""
    let this = FtpConfiguration header_ ftpServer ftpPath ftpUserName ftpPassword
    jregisterLevel header_ this
    FtpConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "getServer" (\() -> getServer_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "setServer" (\() -> setServer_impl this)
    jregisterMethod header_ "setPath" (\() -> setPath_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    pure this

initFields_ :: FtpConfiguration -> IO ()
initFields_ this = do
    jset this.ftpServer (javaNull)
    jset this.ftpPath (javaNull)
    jset this.ftpUserName (javaNull)
    jset this.ftpPassword (javaNull)
    pure ()

new_ :: IO FtpConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FtpConfiguration -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: HashMap.HashMap -> IO FtpConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: FtpConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).ftpServer ((javaCast (jio (HashMap.get hashMap (FtpConfigurationData.sERVER))) :: String))
        jset (this).ftpPath ((javaCast (jio (HashMap.get hashMap (FtpConfigurationData.pATH))) :: String))
        jset (this).ftpUserName ((javaCast (jio (HashMap.get hashMap (FtpConfigurationData.uSERNAME))) :: String))
        jset (this).ftpPassword ((javaCast (jio (HashMap.get hashMap (FtpConfigurationData.pASSWORD))) :: String))
        pure ()


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: FtpConfiguration))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: FtpConfiguration))

getServer_impl :: FtpConfiguration -> IO (String)
getServer_impl this = do
        pure ((jget (this).ftpServer))


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: FtpConfiguration))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: FtpConfiguration))

getPath_impl :: FtpConfiguration -> IO (String)
getPath_impl this = do
        pure ((jget (this).ftpPath))


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: FtpConfiguration))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: FtpConfiguration))

getUserName_impl :: FtpConfiguration -> IO (String)
getUserName_impl this = do
        pure ((jget (this).ftpUserName))


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: FtpConfiguration))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: FtpConfiguration))

getPassword_impl :: FtpConfiguration -> IO (String)
getPassword_impl this = do
        pure ((jget (this).ftpPassword))


setServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: FtpConfiguration))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: FtpConfiguration)) a1

setServer_impl :: FtpConfiguration -> String -> IO (())
setServer_impl this value = do
        jset (this).ftpServer (value)
        pure ()


setPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath object_ a1 = jmethod object_ "setPath" (\() -> (setPath_impl (javaCast object_ :: FtpConfiguration))) () a1

setPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath_super object_ a1 = (setPath_impl (javaCast object_ :: FtpConfiguration)) a1

setPath_impl :: FtpConfiguration -> String -> IO (())
setPath_impl this value = do
        jset (this).ftpPath (value)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: FtpConfiguration))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: FtpConfiguration)) a1

setUserName_impl :: FtpConfiguration -> String -> IO (())
setUserName_impl this value = do
        jset (this).ftpUserName (value)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: FtpConfiguration))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: FtpConfiguration)) a1

setPassword_impl :: FtpConfiguration -> String -> IO (())
setPassword_impl this value = do
        jset (this).ftpPassword (value)
        pure ()


