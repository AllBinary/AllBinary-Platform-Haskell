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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module InputAutomationTypeJPanel (module InputAutomationTypeJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInputAutomationTypeJComboBox, getInputAutomationTypeJComboBox_super, getInputAutomationTypeJComboBox_impl, setInputAutomationTypeJComboBox, setInputAutomationTypeJComboBox_super, setInputAutomationTypeJComboBox_impl, initComponents, initComponents_super, initComponents_impl, inputAutomationTypeJComboBox, jLabel1)
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
import qualified JComboBox -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified JPanel

data InputAutomationTypeJPanel = InputAutomationTypeJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , inputAutomationTypeJComboBox :: IORef (JComboBox.JComboBox)
    , jLabel1 :: IORef (JLabel.JLabel)
    }

instance JavaNull InputAutomationTypeJPanel where
    javaNull = javaNullRecord "InputAutomationTypeJPanel"

instance JavaEquals InputAutomationTypeJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationTypeJPanel where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationTypeJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InputAutomationTypeJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    inputAutomationTypeJComboBox <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    let this = InputAutomationTypeJPanel header_ base inputAutomationTypeJComboBox jLabel1
    jregisterLevel header_ this
    jregisterMethod header_ "getInputAutomationTypeJComboBox" (\() -> getInputAutomationTypeJComboBox_impl this)
    jregisterMethod header_ "setInputAutomationTypeJComboBox" (\() -> setInputAutomationTypeJComboBox_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    pure this

initFields_ :: InputAutomationTypeJPanel -> IO ()
initFields_ this = do
    jset this.inputAutomationTypeJComboBox (javaNull)
    jset this.jLabel1 (javaNull)
    pure ()

new_ :: IO InputAutomationTypeJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationTypeJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (InputAutomationTypeJPanel.initComponents this)
        pure ()


getInputAutomationTypeJComboBox :: (JavaObjectClass this_) => this_ -> IO (JComboBox.JComboBox)
getInputAutomationTypeJComboBox object_ = jmethod object_ "getInputAutomationTypeJComboBox" (\() -> (getInputAutomationTypeJComboBox_impl (javaCast object_ :: InputAutomationTypeJPanel))) ()

getInputAutomationTypeJComboBox_super :: (JavaObjectClass this_) => this_ -> IO (JComboBox.JComboBox)
getInputAutomationTypeJComboBox_super object_ = (getInputAutomationTypeJComboBox_impl (javaCast object_ :: InputAutomationTypeJPanel))

getInputAutomationTypeJComboBox_impl :: InputAutomationTypeJPanel -> IO (JComboBox.JComboBox)
getInputAutomationTypeJComboBox_impl this = do
        pure ((jget (this).inputAutomationTypeJComboBox))


setInputAutomationTypeJComboBox :: (JavaObjectClass this_) => this_ -> JComboBox.JComboBox -> IO (())
setInputAutomationTypeJComboBox object_ a1 = jmethod object_ "setInputAutomationTypeJComboBox" (\() -> (setInputAutomationTypeJComboBox_impl (javaCast object_ :: InputAutomationTypeJPanel))) () a1

setInputAutomationTypeJComboBox_super :: (JavaObjectClass this_) => this_ -> JComboBox.JComboBox -> IO (())
setInputAutomationTypeJComboBox_super object_ a1 = (setInputAutomationTypeJComboBox_impl (javaCast object_ :: InputAutomationTypeJPanel)) a1

setInputAutomationTypeJComboBox_impl :: InputAutomationTypeJPanel -> JComboBox.JComboBox -> IO (())
setInputAutomationTypeJComboBox_impl this inputAutomationTypeJComboBox = do
        jset (this).inputAutomationTypeJComboBox (inputAutomationTypeJComboBox)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: InputAutomationTypeJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: InputAutomationTypeJPanel))

initComponents_impl :: InputAutomationTypeJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JComboBox.new_)
        jset (this).inputAutomationTypeJComboBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JComboBox.setModel ((jget (this).inputAutomationTypeJComboBox)) (jio (DefaultComboBoxModel.new_1 (jarrayFromList ["DirectX", "DirectX 8", "Low Level", "Java Robot"]))))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Input Type:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.inputAutomationTypeJComboBox) 0 98 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.inputAutomationTypeJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))))
        pure ()


