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
module AbstractInputAutomationFactory (module AbstractInputAutomationFactory, module InputAutomationModuleFactoryInterface) where

import InputAutomationModuleFactoryInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getName, getName_super, getName_impl, getConfigurationJPanel, getConfigurationJPanel_super, getConfigurationJPanel_impl, getHelpSet, getHelpSet_super, getHelpSet_impl, name, jPanel, helpSet)
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
import qualified Class -- same package or java.lang
import qualified URL -- java.net.URL
import qualified HelpSet -- javax.help.HelpSet
import qualified JavaHelpUtil -- org.allbinary.logic.java.help.JavaHelpUtil
-- import javax.swing.*
import qualified InputAutomationModuleFactoryInterface

data AbstractInputAutomationFactory = AbstractInputAutomationFactory
    { header_ :: JavaHeader
    , base :: InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface
    , name :: IORef (String)
    , jPanel :: IORef (JPanel.JPanel)
    , helpSet :: IORef (HelpSet.HelpSet)
    }

instance JavaNull AbstractInputAutomationFactory where
    javaNull = javaNullRecord "AbstractInputAutomationFactory"

instance JavaEquals AbstractInputAutomationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbstractInputAutomationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AbstractInputAutomationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbstractInputAutomationFactory
newRecord_ = do
    base <- InputAutomationModuleFactoryInterface.newRecord_
    let header_ = base.header_
    name <- newIORef ""
    jPanel <- newIORef javaNull
    helpSet <- newIORef javaNull
    let this = AbstractInputAutomationFactory header_ base name jPanel helpSet
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getConfigurationJPanel" (\() -> getConfigurationJPanel_impl this)
    jregisterMethod header_ "getHelpSet" (\() -> getHelpSet_impl this)
    pure this

initFields_ :: AbstractInputAutomationFactory -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.jPanel (javaNull)
    jset this.helpSet (javaNull)
    pure ()

new_3 :: String -> JPanel.JPanel -> HelpSet.HelpSet -> IO AbstractInputAutomationFactory
new_3 name jPanel helpSet = do
    this <- newRecord_
    init_3 this name jPanel helpSet
    pure this

init_3 :: AbstractInputAutomationFactory -> String -> JPanel.JPanel -> HelpSet.HelpSet -> IO ()
init_3 this name jPanel helpSet = do
        InputAutomationModuleFactoryInterface.init_ this.base
        initFields_ this
        jset (this).name (name)
        jset (this).jPanel (jPanel)
        jset (this).helpSet (helpSet)
        pure ()

new_2 :: String -> JPanel.JPanel -> IO AbstractInputAutomationFactory
new_2 name jPanel = do
    this <- newRecord_
    init_2 this name jPanel
    pure this

init_2 :: AbstractInputAutomationFactory -> String -> JPanel.JPanel -> IO ()
init_2 this name jPanel = do
        InputAutomationModuleFactoryInterface.init_ this.base
        initFields_ this
        jset (this).name (name)
        jset (this).jPanel (jPanel)
        url <- (Class.getResource ((jio (jobjectGetClass this))) "/help/Help.hs")
        assignedValue <- (JavaHelpUtil.getHelpSet ((jio (JavaHelpUtil.getInstance))) url)
        jset (this).helpSet (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AbstractInputAutomationFactory))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AbstractInputAutomationFactory))

getName_impl :: AbstractInputAutomationFactory -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getConfigurationJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getConfigurationJPanel object_ = jmethod object_ "getConfigurationJPanel" (\() -> (getConfigurationJPanel_impl (javaCast object_ :: AbstractInputAutomationFactory))) ()

getConfigurationJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getConfigurationJPanel_super object_ = (getConfigurationJPanel_impl (javaCast object_ :: AbstractInputAutomationFactory))

getConfigurationJPanel_impl :: AbstractInputAutomationFactory -> IO (JPanel.JPanel)
getConfigurationJPanel_impl this = do
        pure ((jget (this).jPanel))


getHelpSet :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet object_ = jmethod object_ "getHelpSet" (\() -> (getHelpSet_impl (javaCast object_ :: AbstractInputAutomationFactory))) ()

getHelpSet_super :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet_super object_ = (getHelpSet_impl (javaCast object_ :: AbstractInputAutomationFactory))

getHelpSet_impl :: AbstractInputAutomationFactory -> IO (HelpSet.HelpSet)
getHelpSet_impl this = do
        pure ((jget (this).helpSet))


