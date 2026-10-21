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
module UserEmailEventConfigurationInterface where

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
data UserEmailEventConfigurationInterface = UserEmailEventConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull UserEmailEventConfigurationInterface where
    javaNull = javaNullRecord "UserEmailEventConfigurationInterface"

instance JavaEquals UserEmailEventConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UserEmailEventConfigurationInterface
fromHeader_ header = UserEmailEventConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UserEmailEventConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: UserEmailEventConfigurationInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: UserEmailEventConfigurationInterface))

getName_impl :: UserEmailEventConfigurationInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: UserEmailEventConfigurationInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: UserEmailEventConfigurationInterface)) a1

setName_impl :: UserEmailEventConfigurationInterface -> String -> IO (())
setName_impl this name = javaAbstractMethod "setName"


getEventListenerClassPath :: (JavaObjectClass this_) => this_ -> IO (String)
getEventListenerClassPath object_ = jmethod object_ "getEventListenerClassPath" (\() -> (getEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfigurationInterface))) ()

getEventListenerClassPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEventListenerClassPath_super object_ = (getEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfigurationInterface))

getEventListenerClassPath_impl :: UserEmailEventConfigurationInterface -> IO (String)
getEventListenerClassPath_impl this = javaAbstractMethod "getEventListenerClassPath"


setEventListenerClassPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEventListenerClassPath object_ a1 = jmethod object_ "setEventListenerClassPath" (\() -> (setEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfigurationInterface))) () a1

setEventListenerClassPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEventListenerClassPath_super object_ a1 = (setEventListenerClassPath_impl (javaCast object_ :: UserEmailEventConfigurationInterface)) a1

setEventListenerClassPath_impl :: UserEmailEventConfigurationInterface -> String -> IO (())
setEventListenerClassPath_impl this eventListenerClassPath = javaAbstractMethod "setEventListenerClassPath"


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: UserEmailEventConfigurationInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: UserEmailEventConfigurationInterface))

log_impl :: UserEmailEventConfigurationInterface -> IO (String)
log_impl this = javaAbstractMethod "log"


