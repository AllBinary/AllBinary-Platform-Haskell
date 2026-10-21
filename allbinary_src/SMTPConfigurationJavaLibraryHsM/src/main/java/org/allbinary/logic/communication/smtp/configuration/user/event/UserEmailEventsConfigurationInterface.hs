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
module UserEmailEventsConfigurationInterface where

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
import qualified HashMap -- java.util.HashMap
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

-- Java interface: the classes that implement it have these functions
data UserEmailEventsConfigurationInterface = UserEmailEventsConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull UserEmailEventsConfigurationInterface where
    javaNull = javaNullRecord "UserEmailEventsConfigurationInterface"

instance JavaEquals UserEmailEventsConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventsConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventsConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UserEmailEventsConfigurationInterface
fromHeader_ header = UserEmailEventsConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UserEmailEventsConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getEventConfigurationHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getEventConfigurationHashMap object_ = jmethod object_ "getEventConfigurationHashMap" (\() -> (getEventConfigurationHashMap_impl (javaCast object_ :: UserEmailEventsConfigurationInterface))) ()

getEventConfigurationHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getEventConfigurationHashMap_super object_ = (getEventConfigurationHashMap_impl (javaCast object_ :: UserEmailEventsConfigurationInterface))

getEventConfigurationHashMap_impl :: UserEmailEventsConfigurationInterface -> IO (HashMap.HashMap)
getEventConfigurationHashMap_impl this = javaAbstractMethod "getEventConfigurationHashMap"


addUserEmailEventConfiguration :: (JavaObjectClass this_) => this_ -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
addUserEmailEventConfiguration object_ a1 = jmethod object_ "addUserEmailEventConfiguration" (\() -> (addUserEmailEventConfiguration_impl (javaCast object_ :: UserEmailEventsConfigurationInterface))) () a1

addUserEmailEventConfiguration_super :: (JavaObjectClass this_) => this_ -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
addUserEmailEventConfiguration_super object_ a1 = (addUserEmailEventConfiguration_impl (javaCast object_ :: UserEmailEventsConfigurationInterface)) a1

addUserEmailEventConfiguration_impl :: UserEmailEventsConfigurationInterface -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> IO (())
addUserEmailEventConfiguration_impl this userEmailEventConfigurationInterface = javaAbstractMethod "addUserEmailEventConfiguration"


-- throws Exception
getEventListener :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getEventListener object_ a1 a2 a3 = jmethod object_ "getEventListener" (\() -> (getEventListener_impl (javaCast object_ :: UserEmailEventsConfigurationInterface))) () a1 a2 a3

getEventListener_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getEventListener_super object_ a1 a2 a3 = (getEventListener_impl (javaCast object_ :: UserEmailEventsConfigurationInterface)) a1 a2 a3

getEventListener_impl :: UserEmailEventsConfigurationInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getEventListener_impl this abeClientInformation userEmailEventNameData userInterface = javaAbstractMethod "getEventListener"


