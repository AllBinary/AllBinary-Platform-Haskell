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
-- package org.allbinary.input.automation.module.configuration
module BlankModuleConfigurationJPanel (module BlankModuleConfigurationJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, jLabel1)
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
import qualified JLabel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified JPanel

data BlankModuleConfigurationJPanel = BlankModuleConfigurationJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , jLabel1 :: IORef (JLabel.JLabel)
    }

instance JavaNull BlankModuleConfigurationJPanel where
    javaNull = javaNullRecord "BlankModuleConfigurationJPanel"

instance JavaEquals BlankModuleConfigurationJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BlankModuleConfigurationJPanel where
    (==) = jrecordEquals

instance JavaObjectClass BlankModuleConfigurationJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BlankModuleConfigurationJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    jLabel1 <- newIORef javaNull
    let this = BlankModuleConfigurationJPanel header_ base jLabel1
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    pure this

initFields_ :: BlankModuleConfigurationJPanel -> IO ()
initFields_ this = do
    jset this.jLabel1 (javaNull)
    pure ()

new_ :: IO BlankModuleConfigurationJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BlankModuleConfigurationJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (BlankModuleConfigurationJPanel.initComponents this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: BlankModuleConfigurationJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: BlankModuleConfigurationJPanel))

initComponents_impl :: BlankModuleConfigurationJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "No Configuration Available")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout))) 231 (Prelude.maxBound :: Int16)))) (jget this.jLabel1)))) 225 225 225)))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.jLabel1)))) 362 (Prelude.maxBound :: Int16))))))
        pure ()


