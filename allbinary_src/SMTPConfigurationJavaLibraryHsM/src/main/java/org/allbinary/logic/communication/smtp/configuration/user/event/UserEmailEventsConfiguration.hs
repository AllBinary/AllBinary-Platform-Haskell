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
module UserEmailEventsConfiguration where

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
import qualified UserEmailEventConfigurationInterface -- same package or java.lang
import qualified UserEmailEventListenerFactory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified UserEmailEventsConfigurationInterface

-- implements UserEmailEventsConfigurationInterface
data UserEmailEventsConfiguration = UserEmailEventsConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , emailEventHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull UserEmailEventsConfiguration where
    javaNull = javaNullRecord "UserEmailEventsConfiguration"

instance JavaEquals UserEmailEventsConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventsConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventsConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventsConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    emailEventHashMap <- newIORef javaNull
    let this = UserEmailEventsConfiguration header_ logUtil commonStrings emailEventHashMap
    jregisterLevel header_ this
    UserEmailEventsConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getEventConfigurationHashMap" (\() -> getEventConfigurationHashMap_impl this)
    jregisterMethod header_ "addUserEmailEventConfiguration" (\() -> addUserEmailEventConfiguration_impl this)
    jregisterMethod header_ "getEventListener" (\() -> getEventListener_impl this)
    pure this

initFields_ :: UserEmailEventsConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.emailEventHashMap (javaNull)
    pure ()

new_ :: IO UserEmailEventsConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserEmailEventsConfiguration -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (UserEmailEventsConfiguration.init this)
        pure ()

new_1 :: HashMap.HashMap -> IO UserEmailEventsConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: UserEmailEventsConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        Control.Monad.void (UserEmailEventsConfiguration.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: UserEmailEventsConfiguration))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: UserEmailEventsConfiguration))

init_impl :: UserEmailEventsConfiguration -> IO (())
init_impl this = do
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).emailEventHashMap (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this " Constructor")
        pure ()


getEventConfigurationHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getEventConfigurationHashMap object_ = jmethod object_ "getEventConfigurationHashMap" (\() -> (getEventConfigurationHashMap_impl (javaCast object_ :: UserEmailEventsConfiguration))) ()

getEventConfigurationHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getEventConfigurationHashMap_super object_ = (getEventConfigurationHashMap_impl (javaCast object_ :: UserEmailEventsConfiguration))

getEventConfigurationHashMap_impl :: UserEmailEventsConfiguration -> IO (HashMap.HashMap)
getEventConfigurationHashMap_impl this = do
        pure ((jget (this).emailEventHashMap))


addUserEmailEventConfiguration :: (JavaObjectClass this_) => this_ -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
addUserEmailEventConfiguration object_ a1 = jmethod object_ "addUserEmailEventConfiguration" (\() -> (addUserEmailEventConfiguration_impl (javaCast object_ :: UserEmailEventsConfiguration))) () a1

addUserEmailEventConfiguration_super :: (JavaObjectClass this_) => this_ -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
addUserEmailEventConfiguration_super object_ a1 = (addUserEmailEventConfiguration_impl (javaCast object_ :: UserEmailEventsConfiguration)) a1

addUserEmailEventConfiguration_impl :: UserEmailEventsConfiguration -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
addUserEmailEventConfiguration_impl this userEmailEventConfigurationInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Adding: " ++ javaToString (jio (UserEmailEventConfigurationInterface.log userEmailEventConfigurationInterface))) this "addUserEmailEventConfiguration")
        Control.Monad.void (HashMap.put ((jget (this).emailEventHashMap)) (jio (UserEmailEventConfigurationInterface.getName userEmailEventConfigurationInterface)) userEmailEventConfigurationInterface)
        pure ()


-- throws Exception
getEventListener :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getEventListener object_ a1 a2 a3 = jmethod object_ "getEventListener" (\() -> (getEventListener_impl (javaCast object_ :: UserEmailEventsConfiguration))) () a1 a2 a3

getEventListener_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getEventListener_super object_ a1 a2 a3 = (getEventListener_impl (javaCast object_ :: UserEmailEventsConfiguration)) a1 a2 a3

getEventListener_impl :: UserEmailEventsConfiguration -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getEventListener_impl this abeClientInformation userEmailEventNameData userInterface = do
        let userEmailEventConfigurationInterface = (javaCast (jio (HashMap.get ((jget (this).emailEventHashMap)) (jio (UserEmailEventNameData.toString userEmailEventNameData)))) :: UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface)
        (UserEmailEventListenerFactory.getInstance abeClientInformation userEmailEventConfigurationInterface userInterface)


