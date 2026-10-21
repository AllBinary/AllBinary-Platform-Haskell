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
-- package org.allbinary.input.automation.actions.script.condition
module AlwaysActionScriptConditionJPanel (module AlwaysActionScriptConditionJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, update, update_super, update_impl, getAlwaysActionJDialog, getAlwaysActionJDialog_super, getAlwaysActionJDialog_impl, setAlwaysActionJDialog, setAlwaysActionJDialog_super, setAlwaysActionJDialog_impl, initComponents, initComponents_super, initComponents_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, alwaysActionJButtonActionPerformed, alwaysActionJButtonActionPerformed_super, alwaysActionJButtonActionPerformed_impl, logUtil, commonStrings, alwaysActionScriptConditionInterface, alwaysActionJButton, alwaysActionJDialog, alwaysJComboBox, jLabel1, jLabel2, okJButton, titleJLabel)
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
import qualified AlwaysActionScriptConditionInterface -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JComboBox -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JPanel

data AlwaysActionScriptConditionJPanel = AlwaysActionScriptConditionJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , alwaysActionScriptConditionInterface :: IORef (AlwaysActionScriptConditionInterface.AlwaysActionScriptConditionInterface)
    , alwaysActionJButton :: IORef (JButton.JButton)
    , alwaysActionJDialog :: IORef (JDialog.JDialog)
    , alwaysJComboBox :: IORef (JComboBox.JComboBox)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , okJButton :: IORef (JButton.JButton)
    , titleJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull AlwaysActionScriptConditionJPanel where
    javaNull = javaNullRecord "AlwaysActionScriptConditionJPanel"

instance JavaEquals AlwaysActionScriptConditionJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AlwaysActionScriptConditionJPanel where
    (==) = jrecordEquals

instance JavaObjectClass AlwaysActionScriptConditionJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AlwaysActionScriptConditionJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    alwaysActionScriptConditionInterface <- newIORef javaNull
    alwaysActionJButton <- newIORef javaNull
    alwaysActionJDialog <- newIORef javaNull
    alwaysJComboBox <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    okJButton <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    let this = AlwaysActionScriptConditionJPanel header_ base logUtil commonStrings alwaysActionScriptConditionInterface alwaysActionJButton alwaysActionJDialog alwaysJComboBox jLabel1 jLabel2 okJButton titleJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getAlwaysActionJDialog" (\() -> getAlwaysActionJDialog_impl this)
    jregisterMethod header_ "setAlwaysActionJDialog" (\() -> setAlwaysActionJDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "alwaysActionJButtonActionPerformed" (\() -> alwaysActionJButtonActionPerformed_impl this)
    pure this

initFields_ :: AlwaysActionScriptConditionJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.alwaysActionScriptConditionInterface (javaNull)
    jset this.alwaysActionJButton (javaNull)
    jset this.alwaysActionJDialog (javaNull)
    jset this.alwaysJComboBox (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.okJButton (javaNull)
    jset this.titleJLabel (javaNull)
    pure ()

new_1 :: AlwaysActionScriptConditionInterface.AlwaysActionScriptConditionInterface -> IO AlwaysActionScriptConditionJPanel
new_1 alwaysActionScriptConditionInterface = do
    this <- newRecord_
    init_1 this alwaysActionScriptConditionInterface
    pure this

init_1 :: AlwaysActionScriptConditionJPanel -> AlwaysActionScriptConditionInterface.AlwaysActionScriptConditionInterface -> IO ()
init_1 this alwaysActionScriptConditionInterface = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (AlwaysActionScriptConditionJPanel.initComponents this)
        jset (this).alwaysActionScriptConditionInterface (alwaysActionScriptConditionInterface)
        Control.Monad.void (AlwaysActionScriptConditionJPanel.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))

set_impl :: AlwaysActionScriptConditionJPanel -> IO (())
set_impl this = do
        if (jio (AlwaysActionScriptConditionInterface.isIsOn ((jget (this).alwaysActionScriptConditionInterface)))) then do
            Control.Monad.void (JComboBox.setSelectedIndex ((jget (this).alwaysJComboBox)) 0)
        else do
            Control.Monad.void (JComboBox.setSelectedIndex ((jget (this).alwaysJComboBox)) 1)
        Control.Monad.void (AlwaysActionScriptConditionInterface.log ((jget (this).alwaysActionScriptConditionInterface)))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))

update_impl :: AlwaysActionScriptConditionJPanel -> IO (())
update_impl this = do
        if ((jio (JComboBox.getSelectedIndex ((jget (this).alwaysJComboBox)))) == 0) then do
            Control.Monad.void (AlwaysActionScriptConditionInterface.setIsOn ((jget (this).alwaysActionScriptConditionInterface)) True)
        else do
            Control.Monad.void (AlwaysActionScriptConditionInterface.setIsOn ((jget (this).alwaysActionScriptConditionInterface)) False)
        Control.Monad.void (AlwaysActionScriptConditionInterface.log ((jget (this).alwaysActionScriptConditionInterface)))
        pure ()


getAlwaysActionJDialog :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getAlwaysActionJDialog object_ = jmethod object_ "getAlwaysActionJDialog" (\() -> (getAlwaysActionJDialog_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) ()

getAlwaysActionJDialog_super :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getAlwaysActionJDialog_super object_ = (getAlwaysActionJDialog_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))

getAlwaysActionJDialog_impl :: AlwaysActionScriptConditionJPanel -> IO (JDialog.JDialog)
getAlwaysActionJDialog_impl this = do
        pure ((jget (this).alwaysActionJDialog))


setAlwaysActionJDialog :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setAlwaysActionJDialog object_ a1 = jmethod object_ "setAlwaysActionJDialog" (\() -> (setAlwaysActionJDialog_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) () a1

setAlwaysActionJDialog_super :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setAlwaysActionJDialog_super object_ a1 = (setAlwaysActionJDialog_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel)) a1

setAlwaysActionJDialog_impl :: AlwaysActionScriptConditionJPanel -> JDialog.JDialog -> IO (())
setAlwaysActionJDialog_impl this alwaysActionJDialog = do
        jset (this).alwaysActionJDialog (alwaysActionJDialog)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))

initComponents_impl :: AlwaysActionScriptConditionJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).alwaysActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).alwaysJComboBox (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).alwaysActionJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).alwaysActionJDialog)) (jio (Dimension.new_2 250 150)))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "Always Condition Options")
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "On:")
        Control.Monad.void (JComboBox.setModel ((jget (this).alwaysJComboBox)) (jio (DefaultComboBoxModel.new_1 (jarrayFromList ["true", "false"]))))
        alwaysActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).alwaysActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).alwaysActionJDialog))))) alwaysActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup alwaysActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup alwaysActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup alwaysActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup alwaysActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup alwaysActionJDialogLayout))) 47 47 47))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup alwaysActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) False))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup alwaysActionJDialogLayout))) (jget this.jLabel2)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.alwaysJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget this.titleJLabel)))))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup alwaysActionJDialogLayout))) 79 79 79))) (jget this.okJButton)))))))) 45 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup alwaysActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup alwaysActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup alwaysActionJDialogLayout)))))) (jget this.titleJLabel)))) 20 20 20))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup alwaysActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.alwaysJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel2)))))) 15 15 15))) (jget this.okJButton)))))))))
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 100 0)))
        Control.Monad.void (JButton.setText ((jget (this).alwaysActionJButton)) "Edit")
        Control.Monad.void (JButton.addActionListener ((jget (this).alwaysActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Always:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 33 (Prelude.maxBound :: Int16)))) (jget this.alwaysActionJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.alwaysActionJButton))))))
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel)) a1

okJButtonActionPerformed_impl :: AlwaysActionScriptConditionJPanel -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        Control.Monad.void (AlwaysActionScriptConditionJPanel.update this)
        Control.Monad.void (JDialog.setVisible ((jio (AlwaysActionScriptConditionJPanel.getAlwaysActionJDialog this))) False)
        pure ()


alwaysActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
alwaysActionJButtonActionPerformed object_ a1 = jmethod object_ "alwaysActionJButtonActionPerformed" (\() -> (alwaysActionJButtonActionPerformed_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel))) () a1

alwaysActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
alwaysActionJButtonActionPerformed_super object_ a1 = (alwaysActionJButtonActionPerformed_impl (javaCast object_ :: AlwaysActionScriptConditionJPanel)) a1

alwaysActionJButtonActionPerformed_impl :: AlwaysActionScriptConditionJPanel -> ActionEvent.ActionEvent -> IO (())
alwaysActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jio (AlwaysActionScriptConditionJPanel.getAlwaysActionJDialog this))) True)
        pure ()


