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
-- package org.allbinary.business.context.configuration
module ContextConfigurationInterface where

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
import qualified EmailServerConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface

-- Java interface: the classes that implement it have these functions
data ContextConfigurationInterface = ContextConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull ContextConfigurationInterface where
    javaNull = javaNullRecord "ContextConfigurationInterface"

instance JavaEquals ContextConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass ContextConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ContextConfigurationInterface
fromHeader_ header = ContextConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ContextConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getEmailServerConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface object_ = jmethod object_ "getEmailServerConfigurationInterface" (\() -> (getEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfigurationInterface))) ()

getEmailServerConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface_super object_ = (getEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfigurationInterface))

getEmailServerConfigurationInterface_impl :: ContextConfigurationInterface -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface_impl this = javaAbstractMethod "getEmailServerConfigurationInterface"


setEmailServerConfigurationInterface :: (JavaObjectClass this_) => this_ -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface object_ a1 = jmethod object_ "setEmailServerConfigurationInterface" (\() -> (setEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfigurationInterface))) () a1

setEmailServerConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface_super object_ a1 = (setEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfigurationInterface)) a1

setEmailServerConfigurationInterface_impl :: ContextConfigurationInterface -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface_impl this emailServerConfigurationInterface = javaAbstractMethod "setEmailServerConfigurationInterface"


