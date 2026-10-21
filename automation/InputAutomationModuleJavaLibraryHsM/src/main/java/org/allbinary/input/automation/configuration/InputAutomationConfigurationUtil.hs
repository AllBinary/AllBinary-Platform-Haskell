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
module InputAutomationConfigurationUtil where

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
import qualified InputAutomationConfigurationModuleChangeEvent -- same package or java.lang
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified InputAutomationModuleConfiguration -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration

data InputAutomationConfigurationUtil = InputAutomationConfigurationUtil
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationConfigurationUtil where
    javaNull = javaNullRecord "InputAutomationConfigurationUtil"

instance JavaEquals InputAutomationConfigurationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationConfigurationUtil where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationConfigurationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationConfigurationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = InputAutomationConfigurationUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: InputAutomationConfigurationUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputAutomationConfigurationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationConfigurationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getChangeEvent :: InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface -> IO (InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent)
getChangeEvent inputAutomationModuleInterface = do
        inputAutomationModuleConfiguration <- (InputAutomationModuleConfiguration.new_1 inputAutomationModuleInterface)
        inputAutomationConfigurationModuleChangeEvent <- (InputAutomationConfigurationModuleChangeEvent.new_1 inputAutomationModuleConfiguration)
        pure (inputAutomationConfigurationModuleChangeEvent)


