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
module UserEmailConfiguration where

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
import qualified UserEmailEventsConfiguration -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration
import qualified UserEmailEventsConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified UserEmailConfigurationInterface

-- implements UserEmailConfigurationInterface
data UserEmailConfiguration = UserEmailConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , userEmailEventsConfigurationInterface :: IORef (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
    }

instance JavaNull UserEmailConfiguration where
    javaNull = javaNullRecord "UserEmailConfiguration"

instance JavaEquals UserEmailConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    userEmailEventsConfigurationInterface <- newIORef javaNull
    let this = UserEmailConfiguration header_ logUtil commonStrings userEmailEventsConfigurationInterface
    jregisterLevel header_ this
    UserEmailConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "getUserEmailEventsConfigurationInterface" (\() -> getUserEmailEventsConfigurationInterface_impl this)
    jregisterMethod header_ "setUserEmailEventsConfigurationInterface" (\() -> setUserEmailEventsConfigurationInterface_impl this)
    pure this

initFields_ :: UserEmailConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.userEmailEventsConfigurationInterface (javaNull)
    pure ()

new_ :: IO UserEmailConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserEmailConfiguration -> IO ()
init_ this = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (UserEmailConfiguration.setUserEmailEventsConfigurationInterface this (javaCast (jio (UserEmailEventsConfiguration.new_))))
        pure ()

new_1 :: HashMap.HashMap -> IO UserEmailConfiguration
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: UserEmailConfiguration -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (UserEmailConfiguration.setUserEmailEventsConfigurationInterface this (javaCast (jio (UserEmailEventsConfiguration.new_1 hashMap))))
        pure ()


getUserEmailEventsConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface object_ = jmethod object_ "getUserEmailEventsConfigurationInterface" (\() -> (getUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfiguration))) ()

getUserEmailEventsConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface_super object_ = (getUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfiguration))

getUserEmailEventsConfigurationInterface_impl :: UserEmailConfiguration -> IO (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
getUserEmailEventsConfigurationInterface_impl this = do
        pure ((jget (this).userEmailEventsConfigurationInterface))


setUserEmailEventsConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO (())
setUserEmailEventsConfigurationInterface object_ a1 = jmethod object_ "setUserEmailEventsConfigurationInterface" (\() -> (setUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfiguration))) () a1

setUserEmailEventsConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO (())
setUserEmailEventsConfigurationInterface_super object_ a1 = (setUserEmailEventsConfigurationInterface_impl (javaCast object_ :: UserEmailConfiguration)) a1

setUserEmailEventsConfigurationInterface_impl :: UserEmailConfiguration -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO (())
setUserEmailEventsConfigurationInterface_impl this userEmailEventsConfigurationInterface = do
        jset (this).userEmailEventsConfigurationInterface (userEmailEventsConfigurationInterface)
        pure ()


