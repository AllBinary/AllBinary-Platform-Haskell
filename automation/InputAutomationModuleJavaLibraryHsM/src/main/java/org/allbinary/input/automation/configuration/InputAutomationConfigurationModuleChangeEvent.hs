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
-- package org.allbinary.input.automation.configuration
module InputAutomationConfigurationModuleChangeEvent where

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
import qualified InputAutomationModuleConfiguration -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration

data InputAutomationConfigurationModuleChangeEvent = InputAutomationConfigurationModuleChangeEvent
    { header_ :: JavaHeader
    , inputAutomationModuleConfiguration :: IORef (InputAutomationModuleConfiguration.InputAutomationModuleConfiguration)
    }

instance JavaNull InputAutomationConfigurationModuleChangeEvent where
    javaNull = javaNullRecord "InputAutomationConfigurationModuleChangeEvent"

instance JavaEquals InputAutomationConfigurationModuleChangeEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationConfigurationModuleChangeEvent where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationConfigurationModuleChangeEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationConfigurationModuleChangeEvent
newRecord_ = do
    header_ <- newJavaHeader
    inputAutomationModuleConfiguration <- newIORef javaNull
    let this = InputAutomationConfigurationModuleChangeEvent header_ inputAutomationModuleConfiguration
    jregisterLevel header_ this
    jregisterMethod header_ "getInputAutomationModuleConfiguration" (\() -> getInputAutomationModuleConfiguration_impl this)
    jregisterMethod header_ "setInputAutomationModuleConfiguration" (\() -> setInputAutomationModuleConfiguration_impl this)
    pure this

initFields_ :: InputAutomationConfigurationModuleChangeEvent -> IO ()
initFields_ this = do
    jset this.inputAutomationModuleConfiguration (javaNull)
    pure ()

new_1 :: InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO InputAutomationConfigurationModuleChangeEvent
new_1 inputAutomationModuleConfiguration = do
    this <- newRecord_
    init_1 this inputAutomationModuleConfiguration
    pure this

init_1 :: InputAutomationConfigurationModuleChangeEvent -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO ()
init_1 this inputAutomationModuleConfiguration = do
        initFields_ this
        Control.Monad.void (InputAutomationConfigurationModuleChangeEvent.setInputAutomationModuleConfiguration this inputAutomationModuleConfiguration)
        pure ()


getInputAutomationModuleConfiguration :: (JavaObjectClass this_) => this_ -> IO (InputAutomationModuleConfiguration.InputAutomationModuleConfiguration)
getInputAutomationModuleConfiguration object_ = jmethod object_ "getInputAutomationModuleConfiguration" (\() -> (getInputAutomationModuleConfiguration_impl (javaCast object_ :: InputAutomationConfigurationModuleChangeEvent))) ()

getInputAutomationModuleConfiguration_super :: (JavaObjectClass this_) => this_ -> IO (InputAutomationModuleConfiguration.InputAutomationModuleConfiguration)
getInputAutomationModuleConfiguration_super object_ = (getInputAutomationModuleConfiguration_impl (javaCast object_ :: InputAutomationConfigurationModuleChangeEvent))

getInputAutomationModuleConfiguration_impl :: InputAutomationConfigurationModuleChangeEvent -> IO (InputAutomationModuleConfiguration.InputAutomationModuleConfiguration)
getInputAutomationModuleConfiguration_impl this = do
        pure ((jget (this).inputAutomationModuleConfiguration))


setInputAutomationModuleConfiguration :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
setInputAutomationModuleConfiguration object_ a1 = jmethod object_ "setInputAutomationModuleConfiguration" (\() -> (setInputAutomationModuleConfiguration_impl (javaCast object_ :: InputAutomationConfigurationModuleChangeEvent))) () a1

setInputAutomationModuleConfiguration_super :: (JavaObjectClass this_) => this_ -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
setInputAutomationModuleConfiguration_super object_ a1 = (setInputAutomationModuleConfiguration_impl (javaCast object_ :: InputAutomationConfigurationModuleChangeEvent)) a1

setInputAutomationModuleConfiguration_impl :: InputAutomationConfigurationModuleChangeEvent -> InputAutomationModuleConfiguration.InputAutomationModuleConfiguration -> IO (())
setInputAutomationModuleConfiguration_impl this inputAutomationModuleConfiguration = do
        jset (this).inputAutomationModuleConfiguration (inputAutomationModuleConfiguration)
        pure ()


