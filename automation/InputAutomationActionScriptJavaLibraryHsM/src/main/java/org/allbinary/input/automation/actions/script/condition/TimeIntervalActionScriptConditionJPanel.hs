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
module TimeIntervalActionScriptConditionJPanel (module TimeIntervalActionScriptConditionJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, update, update_super, update_impl, getTimeIntervalJTextField, getTimeIntervalJTextField_super, getTimeIntervalJTextField_impl, setTimeIntervalJTextField, setTimeIntervalJTextField_super, setTimeIntervalJTextField_impl, getTimeIntervalActionJDialog, getTimeIntervalActionJDialog_super, getTimeIntervalActionJDialog_impl, setTimeIntervalActionJDialog, setTimeIntervalActionJDialog_super, setTimeIntervalActionJDialog_impl, initComponents, initComponents_super, initComponents_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, timeIntervalActionJButtonActionPerformed, timeIntervalActionJButtonActionPerformed_super, timeIntervalActionJButtonActionPerformed_impl, logUtil, commonStrings, timeIntervalActionScriptConditionInterface, jLabel1, jLabel2, okJButton, timeIntervalActionJButton, timeIntervalActionJDialog, timeIntervalJTextField, titleJLabel)
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
import qualified TimeIntervalActionScriptConditionInterface -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JPanel

data TimeIntervalActionScriptConditionJPanel = TimeIntervalActionScriptConditionJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , timeIntervalActionScriptConditionInterface :: IORef (TimeIntervalActionScriptConditionInterface.TimeIntervalActionScriptConditionInterface)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , okJButton :: IORef (JButton.JButton)
    , timeIntervalActionJButton :: IORef (JButton.JButton)
    , timeIntervalActionJDialog :: IORef (JDialog.JDialog)
    , timeIntervalJTextField :: IORef (JTextField.JTextField)
    , titleJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull TimeIntervalActionScriptConditionJPanel where
    javaNull = javaNullRecord "TimeIntervalActionScriptConditionJPanel"

instance JavaEquals TimeIntervalActionScriptConditionJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeIntervalActionScriptConditionJPanel where
    (==) = jrecordEquals

instance JavaObjectClass TimeIntervalActionScriptConditionJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TimeIntervalActionScriptConditionJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    timeIntervalActionScriptConditionInterface <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    okJButton <- newIORef javaNull
    timeIntervalActionJButton <- newIORef javaNull
    timeIntervalActionJDialog <- newIORef javaNull
    timeIntervalJTextField <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    let this = TimeIntervalActionScriptConditionJPanel header_ base logUtil commonStrings timeIntervalActionScriptConditionInterface jLabel1 jLabel2 okJButton timeIntervalActionJButton timeIntervalActionJDialog timeIntervalJTextField titleJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getTimeIntervalJTextField" (\() -> getTimeIntervalJTextField_impl this)
    jregisterMethod header_ "setTimeIntervalJTextField" (\() -> setTimeIntervalJTextField_impl this)
    jregisterMethod header_ "getTimeIntervalActionJDialog" (\() -> getTimeIntervalActionJDialog_impl this)
    jregisterMethod header_ "setTimeIntervalActionJDialog" (\() -> setTimeIntervalActionJDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "timeIntervalActionJButtonActionPerformed" (\() -> timeIntervalActionJButtonActionPerformed_impl this)
    pure this

initFields_ :: TimeIntervalActionScriptConditionJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.timeIntervalActionScriptConditionInterface (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.okJButton (javaNull)
    jset this.timeIntervalActionJButton (javaNull)
    jset this.timeIntervalActionJDialog (javaNull)
    jset this.timeIntervalJTextField (javaNull)
    jset this.titleJLabel (javaNull)
    pure ()

new_1 :: TimeIntervalActionScriptConditionInterface.TimeIntervalActionScriptConditionInterface -> IO TimeIntervalActionScriptConditionJPanel
new_1 timeIntervalActionScriptConditionInterface = do
    this <- newRecord_
    init_1 this timeIntervalActionScriptConditionInterface
    pure this

init_1 :: TimeIntervalActionScriptConditionJPanel -> TimeIntervalActionScriptConditionInterface.TimeIntervalActionScriptConditionInterface -> IO ()
init_1 this timeIntervalActionScriptConditionInterface = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (TimeIntervalActionScriptConditionJPanel.initComponents this)
        jset (this).timeIntervalActionScriptConditionInterface (timeIntervalActionScriptConditionInterface)
        Control.Monad.void (TimeIntervalActionScriptConditionJPanel.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))

set_impl :: TimeIntervalActionScriptConditionJPanel -> IO (())
set_impl this = do
        Control.Monad.void (JTextField.setText ((jio (TimeIntervalActionScriptConditionJPanel.getTimeIntervalJTextField this))) (javaToString (jget ((jio (TimeIntervalActionScriptConditionInterface.getTimeDelayHelper ((jget (this).timeIntervalActionScriptConditionInterface))))).delay)))
        Control.Monad.void (TimeIntervalActionScriptConditionInterface.log ((jget (this).timeIntervalActionScriptConditionInterface)))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))

update_impl :: TimeIntervalActionScriptConditionJPanel -> IO (())
update_impl this = do
        jset ((jio (TimeIntervalActionScriptConditionInterface.getTimeDelayHelper ((jget (this).timeIntervalActionScriptConditionInterface))))).delay ((javaToString (jio (JTextField.getText ((jio (TimeIntervalActionScriptConditionJPanel.getTimeIntervalJTextField this)))))))
        Control.Monad.void (TimeIntervalActionScriptConditionInterface.log ((jget (this).timeIntervalActionScriptConditionInterface)))
        pure ()


getTimeIntervalJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getTimeIntervalJTextField object_ = jmethod object_ "getTimeIntervalJTextField" (\() -> (getTimeIntervalJTextField_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) ()

getTimeIntervalJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getTimeIntervalJTextField_super object_ = (getTimeIntervalJTextField_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))

getTimeIntervalJTextField_impl :: TimeIntervalActionScriptConditionJPanel -> IO (JTextField.JTextField)
getTimeIntervalJTextField_impl this = do
        pure ((jget (this).timeIntervalJTextField))


setTimeIntervalJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setTimeIntervalJTextField object_ a1 = jmethod object_ "setTimeIntervalJTextField" (\() -> (setTimeIntervalJTextField_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) () a1

setTimeIntervalJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setTimeIntervalJTextField_super object_ a1 = (setTimeIntervalJTextField_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel)) a1

setTimeIntervalJTextField_impl :: TimeIntervalActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setTimeIntervalJTextField_impl this timeIntervalJTextField = do
        jset (this).timeIntervalJTextField (timeIntervalJTextField)
        pure ()


getTimeIntervalActionJDialog :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getTimeIntervalActionJDialog object_ = jmethod object_ "getTimeIntervalActionJDialog" (\() -> (getTimeIntervalActionJDialog_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) ()

getTimeIntervalActionJDialog_super :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getTimeIntervalActionJDialog_super object_ = (getTimeIntervalActionJDialog_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))

getTimeIntervalActionJDialog_impl :: TimeIntervalActionScriptConditionJPanel -> IO (JDialog.JDialog)
getTimeIntervalActionJDialog_impl this = do
        pure ((jget (this).timeIntervalActionJDialog))


setTimeIntervalActionJDialog :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setTimeIntervalActionJDialog object_ a1 = jmethod object_ "setTimeIntervalActionJDialog" (\() -> (setTimeIntervalActionJDialog_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) () a1

setTimeIntervalActionJDialog_super :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setTimeIntervalActionJDialog_super object_ a1 = (setTimeIntervalActionJDialog_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel)) a1

setTimeIntervalActionJDialog_impl :: TimeIntervalActionScriptConditionJPanel -> JDialog.JDialog -> IO (())
setTimeIntervalActionJDialog_impl this timeIntervalActionJDialog = do
        jset (this).timeIntervalActionJDialog (timeIntervalActionJDialog)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))

initComponents_impl :: TimeIntervalActionScriptConditionJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).timeIntervalActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).timeIntervalJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).timeIntervalActionJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).timeIntervalActionJDialog)) (jio (Dimension.new_2 250 150)))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "Time Interval Condition Options")
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Time (ms):")
        timeIntervalActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).timeIntervalActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).timeIntervalActionJDialog))))) timeIntervalActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup timeIntervalActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup timeIntervalActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup timeIntervalActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup timeIntervalActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup timeIntervalActionJDialogLayout))) 82 82 82))) (jget this.okJButton)))))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup timeIntervalActionJDialogLayout))) 32 32 32))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup timeIntervalActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup timeIntervalActionJDialogLayout))) (jget this.jLabel2)))) 16 16 16))) (jget this.timeIntervalJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 85 (Prelude.maxBound :: Int16)))))) (jget this.titleJLabel)))))))))) 36 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup timeIntervalActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup timeIntervalActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup timeIntervalActionJDialogLayout)))))) (jget this.titleJLabel)))) 20 20 20))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup timeIntervalActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel2)))) (jget this.timeIntervalJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) 15 15 15))) (jget this.okJButton)))))))))
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 100 0)))
        Control.Monad.void (JButton.setText ((jget (this).timeIntervalActionJButton)) "Edit")
        Control.Monad.void (JButton.addActionListener ((jget (this).timeIntervalActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Time Interval:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.timeIntervalActionJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.timeIntervalActionJButton))))))
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel)) a1

okJButtonActionPerformed_impl :: TimeIntervalActionScriptConditionJPanel -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        Control.Monad.void (TimeIntervalActionScriptConditionJPanel.update this)
        Control.Monad.void (JDialog.setVisible ((jio (TimeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog this))) False)
        pure ()


timeIntervalActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
timeIntervalActionJButtonActionPerformed object_ a1 = jmethod object_ "timeIntervalActionJButtonActionPerformed" (\() -> (timeIntervalActionJButtonActionPerformed_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel))) () a1

timeIntervalActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
timeIntervalActionJButtonActionPerformed_super object_ a1 = (timeIntervalActionJButtonActionPerformed_impl (javaCast object_ :: TimeIntervalActionScriptConditionJPanel)) a1

timeIntervalActionJButtonActionPerformed_impl :: TimeIntervalActionScriptConditionJPanel -> ActionEvent.ActionEvent -> IO (())
timeIntervalActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jio (TimeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog this))) True)
        pure ()


