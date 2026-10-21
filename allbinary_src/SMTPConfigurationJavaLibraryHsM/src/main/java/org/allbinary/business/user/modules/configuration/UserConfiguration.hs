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
-- package org.allbinary.business.user.modules.configuration
module UserConfiguration where

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
import qualified HashMap -- java.util.HashMap
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified TimeCreated -- org.allbinary.business.time.created.TimeCreated
import qualified TimeLastModified -- org.allbinary.business.time.modified.TimeLastModified
import qualified UserEmailConfiguration -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration
import qualified UserEmailConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface
import qualified UserConfigurationInterface

-- implements UserConfigurationInterface
data UserConfiguration = UserConfiguration
    { header_ :: JavaHeader
    , userEmailConfigurationInterface :: IORef (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
    , timeCreated :: IORef (TimeCreated.TimeCreated)
    , timeLastModified :: IORef (TimeLastModified.TimeLastModified)
    }

instance JavaNull UserConfiguration where
    javaNull = javaNullRecord "UserConfiguration"

instance JavaEquals UserConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass UserConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    userEmailConfigurationInterface <- newIORef javaNull
    timeCreated <- newIORef javaNull
    timeLastModified <- newIORef javaNull
    let this = UserConfiguration header_ userEmailConfigurationInterface timeCreated timeLastModified
    jregisterLevel header_ this
    UserConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "getUserEmailConfigurationInterface" (\() -> getUserEmailConfigurationInterface_impl this)
    jregisterMethod header_ "setUserEmailConfigurationInterface" (\() -> setUserEmailConfigurationInterface_impl this)
    jregisterMethod header_ "getTimeCreated" (\() -> getTimeCreated_impl this)
    jregisterMethod header_ "getTimeLastModified" (\() -> getTimeLastModified_impl this)
    jregisterMethod header_ "setTimeCreated" (\() -> setTimeCreated_impl this)
    jregisterMethod header_ "setTimeLastModified" (\() -> setTimeLastModified_impl this)
    pure this

initFields_ :: UserConfiguration -> IO ()
initFields_ this = do
    jset this.userEmailConfigurationInterface (javaNull)
    jset this.timeCreated (javaNull)
    jset this.timeLastModified (javaNull)
    pure ()

new_ :: IO UserConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserConfiguration -> IO ()
init_ this = do
        initFields_ this
        jset (this).userEmailConfigurationInterface ((javaCast (jio (UserEmailConfiguration.new_)) :: UserEmailConfigurationInterface.UserEmailConfigurationInterface))
        assignedValue <- (TimeCreated.new_1 0)
        jset (this).timeCreated (assignedValue)
        assignedValue <- (TimeLastModified.new_1 0)
        jset (this).timeLastModified (assignedValue)
        pure ()

new_1 :: HashMap.HashMap -> IO UserConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: UserConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).userEmailConfigurationInterface ((javaCast (jio (UserEmailConfiguration.new_1 hashMap)) :: UserEmailConfigurationInterface.UserEmailConfigurationInterface))
        assignedValue <- (TimeCreated.new_1 (javaCast (jio (HashMap.get hashMap (jget ((jio (EntryData.getInstance))).tIMECREATED))) :: String))
        jset (this).timeCreated (assignedValue)
        assignedValue <- (TimeLastModified.new_1 (javaCast (jio (HashMap.get hashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED))) :: String))
        jset (this).timeLastModified (assignedValue)
        pure ()


getUserEmailConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getUserEmailConfigurationInterface object_ = jmethod object_ "getUserEmailConfigurationInterface" (\() -> (getUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfiguration))) ()

getUserEmailConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getUserEmailConfigurationInterface_super object_ = (getUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfiguration))

getUserEmailConfigurationInterface_impl :: UserConfiguration -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getUserEmailConfigurationInterface_impl this = do
        pure ((jget (this).userEmailConfigurationInterface))


setUserEmailConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO (())
setUserEmailConfigurationInterface object_ a1 = jmethod object_ "setUserEmailConfigurationInterface" (\() -> (setUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfiguration))) () a1

setUserEmailConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO (())
setUserEmailConfigurationInterface_super object_ a1 = (setUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfiguration)) a1

setUserEmailConfigurationInterface_impl :: UserConfiguration -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO (())
setUserEmailConfigurationInterface_impl this userEmailConfigurationInterface = do
        jset (this).userEmailConfigurationInterface (userEmailConfigurationInterface)
        pure ()


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (TimeCreated.TimeCreated)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: UserConfiguration))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (TimeCreated.TimeCreated)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: UserConfiguration))

getTimeCreated_impl :: UserConfiguration -> IO (TimeCreated.TimeCreated)
getTimeCreated_impl this = do
        pure ((jget (this).timeCreated))


getTimeLastModified :: (JavaObjectClass this_) => this_ -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified object_ = jmethod object_ "getTimeLastModified" (\() -> (getTimeLastModified_impl (javaCast object_ :: UserConfiguration))) ()

getTimeLastModified_super :: (JavaObjectClass this_) => this_ -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified_super object_ = (getTimeLastModified_impl (javaCast object_ :: UserConfiguration))

getTimeLastModified_impl :: UserConfiguration -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified_impl this = do
        pure ((jget (this).timeLastModified))


setTimeCreated :: (JavaObjectClass this_) => this_ -> TimeCreated.TimeCreated -> IO (())
setTimeCreated object_ a1 = jmethod object_ "setTimeCreated" (\() -> (setTimeCreated_impl (javaCast object_ :: UserConfiguration))) () a1

setTimeCreated_super :: (JavaObjectClass this_) => this_ -> TimeCreated.TimeCreated -> IO (())
setTimeCreated_super object_ a1 = (setTimeCreated_impl (javaCast object_ :: UserConfiguration)) a1

setTimeCreated_impl :: UserConfiguration -> TimeCreated.TimeCreated -> IO (())
setTimeCreated_impl this timeCreated = do
        jset (this).timeCreated (timeCreated)
        pure ()


setTimeLastModified :: (JavaObjectClass this_) => this_ -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified object_ a1 = jmethod object_ "setTimeLastModified" (\() -> (setTimeLastModified_impl (javaCast object_ :: UserConfiguration))) () a1

setTimeLastModified_super :: (JavaObjectClass this_) => this_ -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified_super object_ a1 = (setTimeLastModified_impl (javaCast object_ :: UserConfiguration)) a1

setTimeLastModified_impl :: UserConfiguration -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified_impl this timeLastModified = do
        jset (this).timeLastModified (timeLastModified)
        pure ()


