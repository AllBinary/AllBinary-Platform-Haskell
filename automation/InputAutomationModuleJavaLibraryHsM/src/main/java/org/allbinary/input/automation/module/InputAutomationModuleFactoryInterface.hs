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
-- package org.allbinary.input.automation.module
module InputAutomationModuleFactoryInterface where

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
import qualified JPanel -- same package or java.lang
import qualified HelpSet -- javax.help.HelpSet
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
-- import javax.swing.*

data InputAutomationModuleFactoryInterface = InputAutomationModuleFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationModuleFactoryInterface where
    javaNull = javaNullRecord "InputAutomationModuleFactoryInterface"

instance JavaEquals InputAutomationModuleFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleFactoryInterface
newRecord_ = do
    header_ <- newJavaHeader
    let this = InputAutomationModuleFactoryInterface header_
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getConfigurationJPanel" (\() -> getConfigurationJPanel_impl this)
    jregisterMethod header_ "getHelpSet" (\() -> getHelpSet_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: InputAutomationModuleFactoryInterface -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputAutomationModuleFactoryInterface
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationModuleFactoryInterface -> IO ()
init_ this = do
    initFields_ this


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))

getName_impl :: InputAutomationModuleFactoryInterface -> IO (String)
getName_impl this = do
        pure (javaNull)


getConfigurationJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getConfigurationJPanel object_ = jmethod object_ "getConfigurationJPanel" (\() -> (getConfigurationJPanel_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))) ()

getConfigurationJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getConfigurationJPanel_super object_ = (getConfigurationJPanel_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))

getConfigurationJPanel_impl :: InputAutomationModuleFactoryInterface -> IO (JPanel.JPanel)
getConfigurationJPanel_impl this = do
        pure (javaNull)


getHelpSet :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet object_ = jmethod object_ "getHelpSet" (\() -> (getHelpSet_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))) ()

getHelpSet_super :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet_super object_ = (getHelpSet_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))

getHelpSet_impl :: InputAutomationModuleFactoryInterface -> IO (HelpSet.HelpSet)
getHelpSet_impl this = do
        pure (javaNull)


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (RunnableInterface.RunnableInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (RunnableInterface.RunnableInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: InputAutomationModuleFactoryInterface))

getInstance_impl :: InputAutomationModuleFactoryInterface -> IO (RunnableInterface.RunnableInterface)
getInstance_impl this = do
        pure (javaNull)


