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
module UserConfigurationInterface where

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
import qualified TimeCreated -- org.allbinary.business.time.created.TimeCreated
import qualified TimeLastModified -- org.allbinary.business.time.modified.TimeLastModified
import qualified UserEmailConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface

-- Java interface: the classes that implement it have these functions
data UserConfigurationInterface = UserConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull UserConfigurationInterface where
    javaNull = javaNullRecord "UserConfigurationInterface"

instance JavaEquals UserConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass UserConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UserConfigurationInterface
fromHeader_ header = UserConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UserConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getUserEmailConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getUserEmailConfigurationInterface object_ = jmethod object_ "getUserEmailConfigurationInterface" (\() -> (getUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfigurationInterface))) ()

getUserEmailConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getUserEmailConfigurationInterface_super object_ = (getUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfigurationInterface))

getUserEmailConfigurationInterface_impl :: UserConfigurationInterface -> IO (UserEmailConfigurationInterface.UserEmailConfigurationInterface)
getUserEmailConfigurationInterface_impl this = javaAbstractMethod "getUserEmailConfigurationInterface"


setUserEmailConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO (())
setUserEmailConfigurationInterface object_ a1 = jmethod object_ "setUserEmailConfigurationInterface" (\() -> (setUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfigurationInterface))) () a1

setUserEmailConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO (())
setUserEmailConfigurationInterface_super object_ a1 = (setUserEmailConfigurationInterface_impl (javaCast object_ :: UserConfigurationInterface)) a1

setUserEmailConfigurationInterface_impl :: UserConfigurationInterface -> UserEmailConfigurationInterface.UserEmailConfigurationInterface -> IO (())
setUserEmailConfigurationInterface_impl this userEmailConfigurationInterface = javaAbstractMethod "setUserEmailConfigurationInterface"


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (TimeCreated.TimeCreated)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: UserConfigurationInterface))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (TimeCreated.TimeCreated)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: UserConfigurationInterface))

getTimeCreated_impl :: UserConfigurationInterface -> IO (TimeCreated.TimeCreated)
getTimeCreated_impl this = javaAbstractMethod "getTimeCreated"


getTimeLastModified :: (JavaObjectClass this_) => this_ -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified object_ = jmethod object_ "getTimeLastModified" (\() -> (getTimeLastModified_impl (javaCast object_ :: UserConfigurationInterface))) ()

getTimeLastModified_super :: (JavaObjectClass this_) => this_ -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified_super object_ = (getTimeLastModified_impl (javaCast object_ :: UserConfigurationInterface))

getTimeLastModified_impl :: UserConfigurationInterface -> IO (TimeLastModified.TimeLastModified)
getTimeLastModified_impl this = javaAbstractMethod "getTimeLastModified"


setTimeCreated :: (JavaObjectClass this_) => this_ -> TimeCreated.TimeCreated -> IO (())
setTimeCreated object_ a1 = jmethod object_ "setTimeCreated" (\() -> (setTimeCreated_impl (javaCast object_ :: UserConfigurationInterface))) () a1

setTimeCreated_super :: (JavaObjectClass this_) => this_ -> TimeCreated.TimeCreated -> IO (())
setTimeCreated_super object_ a1 = (setTimeCreated_impl (javaCast object_ :: UserConfigurationInterface)) a1

setTimeCreated_impl :: UserConfigurationInterface -> TimeCreated.TimeCreated -> IO (())
setTimeCreated_impl this timeCreated = javaAbstractMethod "setTimeCreated"


setTimeLastModified :: (JavaObjectClass this_) => this_ -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified object_ a1 = jmethod object_ "setTimeLastModified" (\() -> (setTimeLastModified_impl (javaCast object_ :: UserConfigurationInterface))) () a1

setTimeLastModified_super :: (JavaObjectClass this_) => this_ -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified_super object_ a1 = (setTimeLastModified_impl (javaCast object_ :: UserConfigurationInterface)) a1

setTimeLastModified_impl :: UserConfigurationInterface -> TimeLastModified.TimeLastModified -> IO (())
setTimeLastModified_impl this timeLastModified = javaAbstractMethod "setTimeLastModified"


