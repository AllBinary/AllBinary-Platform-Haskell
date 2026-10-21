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
module FtpConfigurationInterface where

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
data FtpConfigurationInterface = FtpConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull FtpConfigurationInterface where
    javaNull = javaNullRecord "FtpConfigurationInterface"

instance JavaEquals FtpConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FtpConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass FtpConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> FtpConfigurationInterface
fromHeader_ header = FtpConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (FtpConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: FtpConfigurationInterface))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: FtpConfigurationInterface))

getServer_impl :: FtpConfigurationInterface -> IO (String)
getServer_impl this = javaAbstractMethod "getServer"


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: FtpConfigurationInterface))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: FtpConfigurationInterface))

getPath_impl :: FtpConfigurationInterface -> IO (String)
getPath_impl this = javaAbstractMethod "getPath"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: FtpConfigurationInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: FtpConfigurationInterface))

getUserName_impl :: FtpConfigurationInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: FtpConfigurationInterface))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: FtpConfigurationInterface))

getPassword_impl :: FtpConfigurationInterface -> IO (String)
getPassword_impl this = javaAbstractMethod "getPassword"


setServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: FtpConfigurationInterface))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: FtpConfigurationInterface)) a1

setServer_impl :: FtpConfigurationInterface -> String -> IO (())
setServer_impl this value = javaAbstractMethod "setServer"


setPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath object_ a1 = jmethod object_ "setPath" (\() -> (setPath_impl (javaCast object_ :: FtpConfigurationInterface))) () a1

setPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath_super object_ a1 = (setPath_impl (javaCast object_ :: FtpConfigurationInterface)) a1

setPath_impl :: FtpConfigurationInterface -> String -> IO (())
setPath_impl this value = javaAbstractMethod "setPath"


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: FtpConfigurationInterface))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: FtpConfigurationInterface)) a1

setUserName_impl :: FtpConfigurationInterface -> String -> IO (())
setUserName_impl this value = javaAbstractMethod "setUserName"


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: FtpConfigurationInterface))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: FtpConfigurationInterface)) a1

setPassword_impl :: FtpConfigurationInterface -> String -> IO (())
setPassword_impl this value = javaAbstractMethod "setPassword"


