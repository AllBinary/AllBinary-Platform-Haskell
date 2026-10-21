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
-- package org.allbinary.logic.communication.smtp.configuration.user.event
module UserEmailEventConfiguration where

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
import qualified UserEmailEventConfigurationData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified UserEmailEventConfigurationInterface

-- implements UserEmailEventConfigurationInterface
data UserEmailEventConfiguration = UserEmailEventConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , name :: IORef (String)
    , eventListenerClassPath :: IORef (String)
    }

instance JavaNull UserEmailEventConfiguration where
    javaNull = javaNullRecord "UserEmailEventConfiguration"

instance JavaEquals UserEmailEventConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    name <- newIORef ""
    eventListenerClassPath <- newIORef ""
    let this = UserEmailEventConfiguration header_ logUtil name eventListenerClassPath
    jregisterLevel header_ this
    UserEmailEventConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getEventListenerClassPath" (\() -> getEventListenerClassPath_impl this)
    jregisterMethod header_ "setEventListenerClassPath" (\() -> setEventListenerClassPath_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: UserEmailEventConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.name ("")
    jset this.eventListenerClassPath ("")
    pure ()

new_ :: IO UserEmailEventConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserEmailEventConfiguration -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (UserEmailEventConfiguration.setName this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        Control.Monad.void (UserEmailEventConfiguration.setEventListenerClassPath this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New" this " Constructor")
        pure ()

new_1 :: HashMap.HashMap -> IO UserEmailEventConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: UserEmailEventConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        Control.Monad.void (UserEmailEventConfiguration.setName this (javaCast (jio (HashMap.get hashMap (UserEmailEventConfigurationData.nAME))) :: String))
        Control.Monad.void (UserEmailEventConfiguration.setEventListenerClassPath this (javaCast (jio (HashMap.get hashMap (UserEmailEventConfigurationData.lISTENER_CLASSPATH))) :: String))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Log: " ++ javaToString (jio (UserEmailEventConfiguration.log this))) this " Constructor")
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: UserEmailEventConfiguration))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: UserEmailEventConfiguration))

getName_impl :: UserEmailEventConfiguration -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: UserEmailEventConfiguration))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: UserEmailEventConfiguration)) a1

setName_impl :: UserEmailEventConfiguration -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getEventListenerClassPath :: (JavaObjectClass this_) => this_ -> IO (String)
getEventListenerClassPath object_ = jmethod object_ "getEventListenerClassPath" (\() -> (getEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfiguration))) ()

getEventListenerClassPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEventListenerClassPath_super object_ = (getEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfiguration))

getEventListenerClassPath_impl :: UserEmailEventConfiguration -> IO (String)
getEventListenerClassPath_impl this = do
        pure ((jget (this).eventListenerClassPath))


setEventListenerClassPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEventListenerClassPath object_ a1 = jmethod object_ "setEventListenerClassPath" (\() -> (setEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfiguration))) () a1

setEventListenerClassPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEventListenerClassPath_super object_ a1 = (setEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfiguration)) a1

setEventListenerClassPath_impl :: UserEmailEventConfiguration -> String -> IO (())
setEventListenerClassPath_impl this eventListenerClassPath = do
        jset (this).eventListenerClassPath (eventListenerClassPath)
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: UserEmailEventConfiguration))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: UserEmailEventConfiguration))

log_impl :: UserEmailEventConfiguration -> IO (String)
log_impl this = do
        pure ((((("\nUser Email Event Log Info:" ++ "\nName: ") ++ (jio (UserEmailEventConfiguration.getName this))) ++ "\nEventListenerClassPath: ") ++ javaToString (jio (UserEmailEventConfiguration.getEventListenerClassPath this))))


