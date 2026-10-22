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
-- package bundle.input.automation.module.generic
module InputAutomationGenericModuleBundleActivator (module InputAutomationGenericModuleBundleActivator, module InputAutomationModuleBundleActivator) where

import InputAutomationModuleBundleActivator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl)
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
import qualified InputAutomationGenericModuleServiceFactory -- org.allbinary.input.automation.module.generic.InputAutomationGenericModuleServiceFactory
import qualified InputAutomationModuleBundleActivator -- org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator

data InputAutomationGenericModuleBundleActivator = InputAutomationGenericModuleBundleActivator
    { header_ :: JavaHeader
    , base :: InputAutomationModuleBundleActivator.InputAutomationModuleBundleActivator
    }

instance JavaNull InputAutomationGenericModuleBundleActivator where
    javaNull = javaNullRecord "InputAutomationGenericModuleBundleActivator"

instance JavaEquals InputAutomationGenericModuleBundleActivator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationGenericModuleBundleActivator where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationGenericModuleBundleActivator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InputAutomationGenericModuleBundleActivator
newRecord_ = do
    base <- InputAutomationModuleBundleActivator.newRecord_
    let header_ = base.header_
    let this = InputAutomationGenericModuleBundleActivator header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: InputAutomationGenericModuleBundleActivator -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputAutomationGenericModuleBundleActivator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationGenericModuleBundleActivator -> IO ()
init_ this = do
        InputAutomationModuleBundleActivator.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationGenericModuleBundleActivator))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: InputAutomationGenericModuleBundleActivator))

init_impl :: InputAutomationGenericModuleBundleActivator -> IO (())
init_impl this = do
        inputAutomationGenericModuleServiceFactory <- (InputAutomationGenericModuleServiceFactory.getInstance)
        Control.Monad.void (InputAutomationModuleBundleActivator.setInputAutomationModuleInterface this (jio (InputAutomationGenericModuleServiceFactory.getInputAutomationModuleInterfaceArray inputAutomationGenericModuleServiceFactory)))
        Control.Monad.void (InputAutomationModuleBundleActivator.setServiceFactory this (javaCast inputAutomationGenericModuleServiceFactory))
        pure ()


