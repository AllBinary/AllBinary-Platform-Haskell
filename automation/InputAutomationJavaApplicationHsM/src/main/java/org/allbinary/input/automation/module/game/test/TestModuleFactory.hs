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
-- package org.allbinary.input.automation.module.game.test
module TestModuleFactory (module TestModuleFactory, module AbstractInputAutomationFactory) where

import AbstractInputAutomationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getName, getName_super, getName_impl, getConfigurationJPanel, getConfigurationJPanel_super, getConfigurationJPanel_impl, getInstance, getInstance_super, getInstance_impl, nAME, blankModuleConfigurationJPanel)
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
import qualified AbstractInputAutomationFactory -- org.allbinary.input.automation.module.AbstractInputAutomationFactory
import qualified InputAutomationModuleData -- org.allbinary.input.automation.module.InputAutomationModuleData
import qualified BlankModuleConfigurationJPanel -- org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
-- import javax.swing.*

data TestModuleFactory = TestModuleFactory
    { header_ :: JavaHeader
    , base :: AbstractInputAutomationFactory.AbstractInputAutomationFactory
    , blankModuleConfigurationJPanel :: IORef (BlankModuleConfigurationJPanel.BlankModuleConfigurationJPanel)
    }

instance JavaNull TestModuleFactory where
    javaNull = javaNullRecord "TestModuleFactory"

instance JavaEquals TestModuleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestModuleFactory where
    (==) = jrecordEquals

instance JavaObjectClass TestModuleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nAME #-}
nAME = unsafePerformIO (newIORef (("Test New Game" ++ javaToString (jget InputAutomationModuleData.mODULE_NAME_END))))

newRecord_ :: IO TestModuleFactory
newRecord_ = do
    base <- AbstractInputAutomationFactory.newRecord_
    let header_ = base.header_
    blankModuleConfigurationJPanel <- newIORef javaNull
    let this = TestModuleFactory header_ base blankModuleConfigurationJPanel
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getConfigurationJPanel" (\() -> getConfigurationJPanel_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TestModuleFactory -> IO ()
initFields_ this = do
    jset this.blankModuleConfigurationJPanel (javaNull)
    pure ()

new_ :: IO TestModuleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TestModuleFactory -> IO ()
init_ this = do
        AbstractInputAutomationFactory.init_2 this.base (jget nAME) (jio (BlankModuleConfigurationJPanel.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TestModuleFactory))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TestModuleFactory))

getName_impl :: TestModuleFactory -> IO (String)
getName_impl this = do
        pure ((jget TestModuleFactory.nAME))


getConfigurationJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getConfigurationJPanel object_ = jmethod object_ "getConfigurationJPanel" (\() -> (getConfigurationJPanel_impl (javaCast object_ :: TestModuleFactory))) ()

getConfigurationJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getConfigurationJPanel_super object_ = (getConfigurationJPanel_impl (javaCast object_ :: TestModuleFactory))

getConfigurationJPanel_impl :: TestModuleFactory -> IO (JPanel.JPanel)
getConfigurationJPanel_impl this = do
        pure ((javaCast (jget (this).blankModuleConfigurationJPanel) :: JPanel.JPanel))


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (RunnableInterface.RunnableInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TestModuleFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (RunnableInterface.RunnableInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: TestModuleFactory))

getInstance_impl :: TestModuleFactory -> IO (RunnableInterface.RunnableInterface)
getInstance_impl this = do
        pure (javaNull)


