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
-- package org.allbinary.logic.communication.smtp.configuration.user
module UserEmailConfigurationInterface where

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
import qualified UserEmailEventsConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface

-- Java interface: the classes that implement it have these functions
data UserEmailConfigurationInterface = UserEmailConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull UserEmailConfigurationInterface where
    javaNull = javaNullRecord "UserEmailConfigurationInterface"

instance JavaEquals UserEmailConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UserEmailConfigurationInterface
fromHeader_ header = UserEmailConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UserEmailConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getUserEmailEventsConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface object_ = jmethod object_ "getUserEmailEventsConfigurationInterface" (\() -> (getUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfigurationInterface))) ()

getUserEmailEventsConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface_super object_ = (getUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfigurationInterface))

getUserEmailEventsConfigurationInterface_impl :: UserEmailConfigurationInterface -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface_impl this = javaAbstractMethod "getUserEmailEventsConfigurationInterface"


setUserEmailEventsConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO (())
setUserEmailEventsConfigurationInterface object_ a1 = jmethod object_ "setUserEmailEventsConfigurationInterface" (\() -> (setUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfigurationInterface))) () a1

setUserEmailEventsConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO (())
setUserEmailEventsConfigurationInterface_super object_ a1 = (setUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfigurationInterface)) a1

setUserEmailEventsConfigurationInterface_impl :: UserEmailConfigurationInterface -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO (())
setUserEmailEventsConfigurationInterface_impl this emailEventsConfigurationInterface = javaAbstractMethod "setUserEmailEventsConfigurationInterface"


