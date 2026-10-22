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
-- package org.allbinary.input.automation.module.generic.configuration.profile.actions
module GenericProfileActionJPanel (module GenericProfileActionJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateProfileActionUI, updateProfileActionUI_super, updateProfileActionUI_impl, getGenericProfileAction, getGenericProfileAction_super, getGenericProfileAction_impl, setGenericProfileAction, setGenericProfileAction_super, setGenericProfileAction_impl, getGenericProfileActionScriptJPanel, getGenericProfileActionScriptJPanel_super, getGenericProfileActionScriptJPanel_impl, setGenericProfileActionScriptJPanel, setGenericProfileActionScriptJPanel_super, setGenericProfileActionScriptJPanel_impl, initComponents, initComponents_super, initComponents_impl, newTimeIntervalJButtonActionPerformed, newTimeIntervalJButtonActionPerformed_super, newTimeIntervalJButtonActionPerformed_impl, newAlwaysJButtonActionPerformed, newAlwaysJButtonActionPerformed_super, newAlwaysJButtonActionPerformed_impl, newColorAtJButtonActionPerformed, newColorAtJButtonActionPerformed_super, newColorAtJButtonActionPerformed_impl, logUtil, genericProfileAction, genericProfileActionScriptJPanel, blankProfileActionScriptJPanel, genericProfileActionScriptJScrollPane, ifJLabel, newAlwaysJButton, newColorAtJButton, newTimeIntervalJButton)
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
import qualified GenericProfileAction -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified JTreeInterfaceFactory -- org.allbinary.input.automation.actions.script.JTreeInterfaceFactory
import qualified AlwaysActionScriptCondition -- org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition
import qualified ColorAtActionScriptCondition -- org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition
import qualified ProfileActionScriptConditionInterface -- org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface
import qualified TimeIntervalActionScriptCondition -- org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition
import qualified GenericProfileActionScriptJPanel -- org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScriptJPanel
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified JPanel

data GenericProfileActionJPanel = GenericProfileActionJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , genericProfileAction :: IORef (GenericProfileAction.GenericProfileAction)
    , genericProfileActionScriptJPanel :: IORef (GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel)
    , blankProfileActionScriptJPanel :: IORef (JPanel.JPanel)
    , genericProfileActionScriptJScrollPane :: IORef (JScrollPane.JScrollPane)
    , ifJLabel :: IORef (JLabel.JLabel)
    , newAlwaysJButton :: IORef (JButton.JButton)
    , newColorAtJButton :: IORef (JButton.JButton)
    , newTimeIntervalJButton :: IORef (JButton.JButton)
    }

instance JavaNull GenericProfileActionJPanel where
    javaNull = javaNullRecord "GenericProfileActionJPanel"

instance JavaEquals GenericProfileActionJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileActionJPanel where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileActionJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericProfileActionJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    genericProfileAction <- newIORef javaNull
    genericProfileActionScriptJPanel <- newIORef javaNull
    blankProfileActionScriptJPanel <- newIORef javaNull
    genericProfileActionScriptJScrollPane <- newIORef javaNull
    ifJLabel <- newIORef javaNull
    newAlwaysJButton <- newIORef javaNull
    newColorAtJButton <- newIORef javaNull
    newTimeIntervalJButton <- newIORef javaNull
    let this = GenericProfileActionJPanel header_ base logUtil genericProfileAction genericProfileActionScriptJPanel blankProfileActionScriptJPanel genericProfileActionScriptJScrollPane ifJLabel newAlwaysJButton newColorAtJButton newTimeIntervalJButton
    jregisterLevel header_ this
    jregisterMethod header_ "updateProfileActionUI" (\() -> updateProfileActionUI_impl this)
    jregisterMethod header_ "getGenericProfileAction" (\() -> getGenericProfileAction_impl this)
    jregisterMethod header_ "setGenericProfileAction" (\() -> setGenericProfileAction_impl this)
    jregisterMethod header_ "getGenericProfileActionScriptJPanel" (\() -> getGenericProfileActionScriptJPanel_impl this)
    jregisterMethod header_ "setGenericProfileActionScriptJPanel" (\() -> setGenericProfileActionScriptJPanel_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "newTimeIntervalJButtonActionPerformed" (\() -> newTimeIntervalJButtonActionPerformed_impl this)
    jregisterMethod header_ "newAlwaysJButtonActionPerformed" (\() -> newAlwaysJButtonActionPerformed_impl this)
    jregisterMethod header_ "newColorAtJButtonActionPerformed" (\() -> newColorAtJButtonActionPerformed_impl this)
    pure this

initFields_ :: GenericProfileActionJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.genericProfileAction (javaNull)
    jset this.genericProfileActionScriptJPanel (javaNull)
    jset this.blankProfileActionScriptJPanel (javaNull)
    jset this.genericProfileActionScriptJScrollPane (javaNull)
    jset this.ifJLabel (javaNull)
    jset this.newAlwaysJButton (javaNull)
    jset this.newColorAtJButton (javaNull)
    jset this.newTimeIntervalJButton (javaNull)
    pure ()

new_ :: IO GenericProfileActionJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericProfileActionJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (GenericProfileActionJPanel.initComponents this)
        pure ()


updateProfileActionUI :: (JavaObjectClass this_) => this_ -> IO (())
updateProfileActionUI object_ = jmethod object_ "updateProfileActionUI" (\() -> (updateProfileActionUI_impl (javaCast object_ :: GenericProfileActionJPanel))) ()

updateProfileActionUI_super :: (JavaObjectClass this_) => this_ -> IO (())
updateProfileActionUI_super object_ = (updateProfileActionUI_impl (javaCast object_ :: GenericProfileActionJPanel))

updateProfileActionUI_impl :: GenericProfileActionJPanel -> IO (())
updateProfileActionUI_impl this = do
        Control.Monad.void (JPanel.removeAll ((jget (this).blankProfileActionScriptJPanel)))
        genericProfileActionScriptJPanel <- (GenericProfileActionScriptJPanel.new_)
        Control.Monad.void (JTreeInterfaceFactory.set ((jio (JTreeInterfaceFactory.getInstance))) (javaCast genericProfileActionScriptJPanel))
        Control.Monad.void (GenericProfileActionJPanel.setGenericProfileActionScriptJPanel this genericProfileActionScriptJPanel)
        Control.Monad.void (GenericProfileActionScriptJPanel.setGenericProfileActionScript ((jio (GenericProfileActionJPanel.getGenericProfileActionScriptJPanel this))) (jio (GenericProfileAction.getGenericProfileActionScript ((jio (GenericProfileActionJPanel.getGenericProfileAction this))))))
        Control.Monad.void (GenericProfileActionScriptJPanel.updateJTree ((jio (GenericProfileActionJPanel.getGenericProfileActionScriptJPanel this))))
        let layout = (javaCast (jio (JPanel.getLayout ((jget (this).blankProfileActionScriptJPanel)))) :: GroupLayout.GroupLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 395 (Prelude.maxBound :: Int16)))) (jio (GenericProfileActionJPanel.getGenericProfileActionScriptJPanel this)) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 256 (Prelude.maxBound :: Int16)))) (jio (GenericProfileActionJPanel.getGenericProfileActionScriptJPanel this)) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Updated UI" this "updateUI")
        pure ()


getGenericProfileAction :: (JavaObjectClass this_) => this_ -> IO (GenericProfileAction.GenericProfileAction)
getGenericProfileAction object_ = jmethod object_ "getGenericProfileAction" (\() -> (getGenericProfileAction_impl (javaCast object_ :: GenericProfileActionJPanel))) ()

getGenericProfileAction_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileAction.GenericProfileAction)
getGenericProfileAction_super object_ = (getGenericProfileAction_impl (javaCast object_ :: GenericProfileActionJPanel))

getGenericProfileAction_impl :: GenericProfileActionJPanel -> IO (GenericProfileAction.GenericProfileAction)
getGenericProfileAction_impl this = do
        pure ((jget (this).genericProfileAction))


setGenericProfileAction :: (JavaObjectClass this_) => this_ -> GenericProfileAction.GenericProfileAction -> IO (())
setGenericProfileAction object_ a1 = jmethod object_ "setGenericProfileAction" (\() -> (setGenericProfileAction_impl (javaCast object_ :: GenericProfileActionJPanel))) () a1

setGenericProfileAction_super :: (JavaObjectClass this_) => this_ -> GenericProfileAction.GenericProfileAction -> IO (())
setGenericProfileAction_super object_ a1 = (setGenericProfileAction_impl (javaCast object_ :: GenericProfileActionJPanel)) a1

setGenericProfileAction_impl :: GenericProfileActionJPanel -> GenericProfileAction.GenericProfileAction -> IO (())
setGenericProfileAction_impl this genericProfileAction = do
        jset (this).genericProfileAction (genericProfileAction)
        pure ()


getGenericProfileActionScriptJPanel :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel)
getGenericProfileActionScriptJPanel object_ = jmethod object_ "getGenericProfileActionScriptJPanel" (\() -> (getGenericProfileActionScriptJPanel_impl (javaCast object_ :: GenericProfileActionJPanel))) ()

getGenericProfileActionScriptJPanel_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel)
getGenericProfileActionScriptJPanel_super object_ = (getGenericProfileActionScriptJPanel_impl (javaCast object_ :: GenericProfileActionJPanel))

getGenericProfileActionScriptJPanel_impl :: GenericProfileActionJPanel -> IO (GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel)
getGenericProfileActionScriptJPanel_impl this = do
        pure ((jget (this).genericProfileActionScriptJPanel))


setGenericProfileActionScriptJPanel :: (JavaObjectClass this_) => this_ -> GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel -> IO (())
setGenericProfileActionScriptJPanel object_ a1 = jmethod object_ "setGenericProfileActionScriptJPanel" (\() -> (setGenericProfileActionScriptJPanel_impl (javaCast object_ :: GenericProfileActionJPanel))) () a1

setGenericProfileActionScriptJPanel_super :: (JavaObjectClass this_) => this_ -> GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel -> IO (())
setGenericProfileActionScriptJPanel_super object_ a1 = (setGenericProfileActionScriptJPanel_impl (javaCast object_ :: GenericProfileActionJPanel)) a1

setGenericProfileActionScriptJPanel_impl :: GenericProfileActionJPanel -> GenericProfileActionScriptJPanel.GenericProfileActionScriptJPanel -> IO (())
setGenericProfileActionScriptJPanel_impl this genericProfileActionScriptJPanel = do
        jset (this).genericProfileActionScriptJPanel (genericProfileActionScriptJPanel)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: GenericProfileActionJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: GenericProfileActionJPanel))

initComponents_impl :: GenericProfileActionJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JScrollPane.new_)
        jset (this).genericProfileActionScriptJScrollPane (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).blankProfileActionScriptJPanel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).ifJLabel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).newColorAtJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).newTimeIntervalJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).newAlwaysJButton (assignedValue)
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 440 275)))
        Control.Monad.void (JPanel.setPreferredSize this (jio (Dimension.new_2 440 275)))
        Control.Monad.void (JScrollPane.setPreferredSize ((jget (this).genericProfileActionScriptJScrollPane)) (jio (Dimension.new_2 474 270)))
        Control.Monad.void (JPanel.setMinimumSize ((jget (this).blankProfileActionScriptJPanel)) (jio (Dimension.new_2 400 200)))
        blankProfileActionScriptJPanelLayout <- (GroupLayout.new_1 (jget (this).blankProfileActionScriptJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).blankProfileActionScriptJPanel)) blankProfileActionScriptJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup blankProfileActionScriptJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup blankProfileActionScriptJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 9996 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup blankProfileActionScriptJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup blankProfileActionScriptJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 9967 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).genericProfileActionScriptJScrollPane)) (jget (this).blankProfileActionScriptJPanel))
        Control.Monad.void (JLabel.setText ((jget (this).ifJLabel)) "Conditions:")
        Control.Monad.void (JButton.setText ((jget (this).newColorAtJButton)) "Color Range At")
        Control.Monad.void (JButton.addActionListener ((jget (this).newColorAtJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).newTimeIntervalJButton)) "Time Interval")
        Control.Monad.void (JButton.addActionListener ((jget (this).newTimeIntervalJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).newAlwaysJButton)) "Always On/Off")
        Control.Monad.void (JButton.addActionListener ((jget (this).newAlwaysJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.ifJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.newColorAtJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.newTimeIntervalJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.newAlwaysJButton)))) 61 (Prelude.maxBound :: Int16)))))) (jget this.genericProfileActionScriptJScrollPane) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 440 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.ifJLabel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 14 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.newColorAtJButton)))) (jget this.newTimeIntervalJButton)))) (jget this.newAlwaysJButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.genericProfileActionScriptJScrollPane) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 246 (Prelude.maxBound :: Int16))))))
        pure ()


newTimeIntervalJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newTimeIntervalJButtonActionPerformed object_ a1 = jmethod object_ "newTimeIntervalJButtonActionPerformed" (\() -> (newTimeIntervalJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionJPanel))) () a1

newTimeIntervalJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newTimeIntervalJButtonActionPerformed_super object_ a1 = (newTimeIntervalJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionJPanel)) a1

newTimeIntervalJButtonActionPerformed_impl :: GenericProfileActionJPanel -> ActionEvent.ActionEvent -> IO (())
newTimeIntervalJButtonActionPerformed_impl this evt = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New Time Interval Action Condition" this "newTimeIntervalJButtonActionPerformed")
        Control.Monad.void (GenericProfileActionScript.addCondition ((jio (GenericProfileAction.getGenericProfileActionScript ((jio (GenericProfileActionJPanel.getGenericProfileAction this)))))) (javaCast (jio (TimeIntervalActionScriptCondition.new_)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface))
        Control.Monad.void (GenericProfileActionJPanel.updateProfileActionUI this)
        pure ()


newAlwaysJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newAlwaysJButtonActionPerformed object_ a1 = jmethod object_ "newAlwaysJButtonActionPerformed" (\() -> (newAlwaysJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionJPanel))) () a1

newAlwaysJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newAlwaysJButtonActionPerformed_super object_ a1 = (newAlwaysJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionJPanel)) a1

newAlwaysJButtonActionPerformed_impl :: GenericProfileActionJPanel -> ActionEvent.ActionEvent -> IO (())
newAlwaysJButtonActionPerformed_impl this evt = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New EveryTime Action Condition" this "newEveryTimeJButtonActionPerformed")
        Control.Monad.void (GenericProfileActionScript.addCondition ((jio (GenericProfileAction.getGenericProfileActionScript ((jio (GenericProfileActionJPanel.getGenericProfileAction this)))))) (javaCast (jio (AlwaysActionScriptCondition.new_)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface))
        Control.Monad.void (GenericProfileActionJPanel.updateProfileActionUI this)
        pure ()


newColorAtJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newColorAtJButtonActionPerformed object_ a1 = jmethod object_ "newColorAtJButtonActionPerformed" (\() -> (newColorAtJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionJPanel))) () a1

newColorAtJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newColorAtJButtonActionPerformed_super object_ a1 = (newColorAtJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionJPanel)) a1

newColorAtJButtonActionPerformed_impl :: GenericProfileActionJPanel -> ActionEvent.ActionEvent -> IO (())
newColorAtJButtonActionPerformed_impl this evt = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New Color At Action Condition" this "newColorAtJButtonActionPerformed")
        Control.Monad.void (GenericProfileActionScript.addCondition ((jio (GenericProfileAction.getGenericProfileActionScript ((jio (GenericProfileActionJPanel.getGenericProfileAction this)))))) (javaCast (jio (ColorAtActionScriptCondition.new_)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface))
        Control.Monad.void (GenericProfileActionJPanel.updateProfileActionUI this)
        pure ()


