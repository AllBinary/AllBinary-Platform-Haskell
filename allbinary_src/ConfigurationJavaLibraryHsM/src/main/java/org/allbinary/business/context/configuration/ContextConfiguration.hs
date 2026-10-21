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
module ContextConfiguration where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified EmailServerConfiguration -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration
import qualified EmailServerConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ContextConfigurationInterface

-- implements ContextConfigurationInterface
data ContextConfiguration = ContextConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , emailServerConfigurationInterface :: IORef (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
    }

instance JavaNull ContextConfiguration where
    javaNull = javaNullRecord "ContextConfiguration"

instance JavaEquals ContextConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass ContextConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ContextConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    emailServerConfigurationInterface <- newIORef javaNull
    let this = ContextConfiguration header_ logUtil commonStrings emailServerConfigurationInterface
    jregisterLevel header_ this
    ContextConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "getEmailServerConfigurationInterface" (\() -> getEmailServerConfigurationInterface_impl this)
    jregisterMethod header_ "setEmailServerConfigurationInterface" (\() -> setEmailServerConfigurationInterface_impl this)
    pure this

initFields_ :: ContextConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.emailServerConfigurationInterface (javaNull)
    pure ()

new_ :: IO ContextConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ContextConfiguration -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "ContextConfiguration")
        Control.Monad.void (ContextConfiguration.setEmailServerConfigurationInterface this (javaCast (jio (EmailServerConfiguration.new_)) :: EmailServerConfigurationInterface.EmailServerConfigurationInterface))
        pure ()

new_1 :: HashMap.HashMap -> IO ContextConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: ContextConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "ContextConfiguration(HashMap)")
        Control.Monad.void (ContextConfiguration.setEmailServerConfigurationInterface this (javaCast (jio (EmailServerConfiguration.new_1 hashMap)) :: EmailServerConfigurationInterface.EmailServerConfigurationInterface))
        pure ()


getEmailServerConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface object_ = jmethod object_ "getEmailServerConfigurationInterface" (\() -> (getEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfiguration))) ()

getEmailServerConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface_super object_ = (getEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfiguration))

getEmailServerConfigurationInterface_impl :: ContextConfiguration -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface_impl this = do
        pure ((jget (this).emailServerConfigurationInterface))


setEmailServerConfigurationInterface :: (JavaObjectClass this_) => this_ -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface object_ a1 = jmethod object_ "setEmailServerConfigurationInterface" (\() -> (setEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfiguration))) () a1

setEmailServerConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface_super object_ a1 = (setEmailServerConfigurationInterface_impl (javaCast object_ :: ContextConfiguration)) a1

setEmailServerConfigurationInterface_impl :: ContextConfiguration -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface_impl this emailServerConfigurationInterface = do
        jset (this).emailServerConfigurationInterface (emailServerConfigurationInterface)
        pure ()


