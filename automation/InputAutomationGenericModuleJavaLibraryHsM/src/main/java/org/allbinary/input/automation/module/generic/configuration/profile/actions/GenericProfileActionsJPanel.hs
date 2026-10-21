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
module GenericProfileActionsJPanel (module GenericProfileActionsJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, setModel, setModel_super, setModel_impl, saveJButtonActionPerformed, saveJButtonActionPerformed_super, saveJButtonActionPerformed_impl, updateProfileActionUI, updateProfileActionUI_super, updateProfileActionUI_impl, genericProfileActionsJListValueChanged, genericProfileActionsJListValueChanged_super, genericProfileActionsJListValueChanged_impl, okNewProfileActionJButtonActionPerformed, okNewProfileActionJButtonActionPerformed_super, okNewProfileActionJButtonActionPerformed_impl, deleteActionJButtonActionPerformed, deleteActionJButtonActionPerformed_super, deleteActionJButtonActionPerformed_impl, selectFirstElement, selectFirstElement_super, selectFirstElement_impl, getGenericProfileActionJPanel, getGenericProfileActionJPanel_super, getGenericProfileActionJPanel_impl, setGenericProfileActionJPanel, setGenericProfileActionJPanel_super, setGenericProfileActionJPanel_impl, getGenericProfileActions, getGenericProfileActions_super, getGenericProfileActions_impl, setGenericProfileActions, setGenericProfileActions_super, setGenericProfileActions_impl, newActionJButtonActionPerformed, newActionJButtonActionPerformed_super, newActionJButtonActionPerformed_impl, logUtil, commonStrings, genericProfileActions, genericProfileActionJPanel, blankGenericProfileActionJPanel, deleteActionJButton, genericProfileActionsJList, genericProfileActionsJPanel, genericProfileActionsJScrollPane, newActionJButton, newProfileActionJDialog, newProfileActionJLabel, newProfileActionJTextField, okNewProfileActionJButton, saveJButton)
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
import qualified GenericProfileActions -- same package or java.lang
import qualified GenericProfileActionJPanel -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JList -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified ListSelectionListener -- same package or java.lang
import qualified ListSelectionEvent -- same package or java.lang
import qualified GenericProfileAction -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified DefaultListModelHelper -- org.allbinary.input.automation.module.DefaultListModelHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JPanel

data GenericProfileActionsJPanel = GenericProfileActionsJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , genericProfileActions :: IORef (GenericProfileActions.GenericProfileActions)
    , genericProfileActionJPanel :: IORef (GenericProfileActionJPanel.GenericProfileActionJPanel)
    , blankGenericProfileActionJPanel :: IORef (JPanel.JPanel)
    , deleteActionJButton :: IORef (JButton.JButton)
    , genericProfileActionsJList :: IORef (JList.JList)
    , genericProfileActionsJPanel :: IORef (JPanel.JPanel)
    , genericProfileActionsJScrollPane :: IORef (JScrollPane.JScrollPane)
    , newActionJButton :: IORef (JButton.JButton)
    , newProfileActionJDialog :: IORef (JDialog.JDialog)
    , newProfileActionJLabel :: IORef (JLabel.JLabel)
    , newProfileActionJTextField :: IORef (JTextField.JTextField)
    , okNewProfileActionJButton :: IORef (JButton.JButton)
    , saveJButton :: IORef (JButton.JButton)
    }

instance JavaNull GenericProfileActionsJPanel where
    javaNull = javaNullRecord "GenericProfileActionsJPanel"

instance JavaEquals GenericProfileActionsJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileActionsJPanel where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileActionsJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericProfileActionsJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    genericProfileActions <- newIORef javaNull
    genericProfileActionJPanel <- newIORef javaNull
    blankGenericProfileActionJPanel <- newIORef javaNull
    deleteActionJButton <- newIORef javaNull
    genericProfileActionsJList <- newIORef javaNull
    genericProfileActionsJPanel <- newIORef javaNull
    genericProfileActionsJScrollPane <- newIORef javaNull
    newActionJButton <- newIORef javaNull
    newProfileActionJDialog <- newIORef javaNull
    newProfileActionJLabel <- newIORef javaNull
    newProfileActionJTextField <- newIORef javaNull
    okNewProfileActionJButton <- newIORef javaNull
    saveJButton <- newIORef javaNull
    let this = GenericProfileActionsJPanel header_ base logUtil commonStrings genericProfileActions genericProfileActionJPanel blankGenericProfileActionJPanel deleteActionJButton genericProfileActionsJList genericProfileActionsJPanel genericProfileActionsJScrollPane newActionJButton newProfileActionJDialog newProfileActionJLabel newProfileActionJTextField okNewProfileActionJButton saveJButton
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "setModel" (\() -> setModel_impl this)
    jregisterMethod header_ "saveJButtonActionPerformed" (\() -> saveJButtonActionPerformed_impl this)
    jregisterMethod header_ "updateProfileActionUI" (\() -> updateProfileActionUI_impl this)
    jregisterMethod header_ "genericProfileActionsJListValueChanged" (\() -> genericProfileActionsJListValueChanged_impl this)
    jregisterMethod header_ "okNewProfileActionJButtonActionPerformed" (\() -> okNewProfileActionJButtonActionPerformed_impl this)
    jregisterMethod header_ "deleteActionJButtonActionPerformed" (\() -> deleteActionJButtonActionPerformed_impl this)
    jregisterMethod header_ "selectFirstElement" (\() -> selectFirstElement_impl this)
    jregisterMethod header_ "getGenericProfileActionJPanel" (\() -> getGenericProfileActionJPanel_impl this)
    jregisterMethod header_ "setGenericProfileActionJPanel" (\() -> setGenericProfileActionJPanel_impl this)
    jregisterMethod header_ "getGenericProfileActions" (\() -> getGenericProfileActions_impl this)
    jregisterMethod header_ "setGenericProfileActions" (\() -> setGenericProfileActions_impl this)
    jregisterMethod header_ "newActionJButtonActionPerformed" (\() -> newActionJButtonActionPerformed_impl this)
    pure this

initFields_ :: GenericProfileActionsJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.genericProfileActions (javaNull)
    jset this.genericProfileActionJPanel (javaNull)
    jset this.blankGenericProfileActionJPanel (javaNull)
    jset this.deleteActionJButton (javaNull)
    jset this.genericProfileActionsJList (javaNull)
    jset this.genericProfileActionsJPanel (javaNull)
    jset this.genericProfileActionsJScrollPane (javaNull)
    jset this.newActionJButton (javaNull)
    jset this.newProfileActionJDialog (javaNull)
    jset this.newProfileActionJLabel (javaNull)
    jset this.newProfileActionJTextField (javaNull)
    jset this.okNewProfileActionJButton (javaNull)
    jset this.saveJButton (javaNull)
    pure ()

new_ :: IO GenericProfileActionsJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericProfileActionsJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (GenericProfileActionsJPanel.initComponents this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: GenericProfileActionsJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: GenericProfileActionsJPanel))

initComponents_impl :: GenericProfileActionsJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).newProfileActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).newProfileActionJLabel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okNewProfileActionJButton (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).newProfileActionJTextField (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).genericProfileActionsJPanel (assignedValue)
        assignedValue <- (JScrollPane.new_)
        jset (this).genericProfileActionsJScrollPane (assignedValue)
        assignedValue <- (JList.new_)
        jset (this).genericProfileActionsJList (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).newActionJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).deleteActionJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).saveJButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).blankGenericProfileActionJPanel (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).newProfileActionJDialog)) (jio (Dimension.new_2 250 150)))
        Control.Monad.void (JDialog.setResizable ((jget (this).newProfileActionJDialog)) False)
        Control.Monad.void (JLabel.setText ((jget (this).newProfileActionJLabel)) "New Action Name")
        Control.Monad.void (JButton.setText ((jget (this).okNewProfileActionJButton)) "Ok")
        Control.Monad.void (JButton.addActionListener ((jget (this).okNewProfileActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        newProfileActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).newProfileActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).newProfileActionJDialog))))) newProfileActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup newProfileActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup newProfileActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup newProfileActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup newProfileActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileActionJDialogLayout))) 93 93 93))) (jget this.okNewProfileActionJButton)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileActionJDialogLayout))) 75 75 75))) (jget this.newProfileActionJLabel)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileActionJDialogLayout))) 29 29 29))) (jget this.newProfileActionJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 178 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))) 34 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup newProfileActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup newProfileActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup newProfileActionJDialogLayout)))))) (jget this.newProfileActionJLabel)))) 21 21 21))) (jget this.newProfileActionJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 20 (Prelude.maxBound :: Int16)))) (jget this.okNewProfileActionJButton)))))))))
        Control.Monad.void (JPanel.setPreferredSize ((jget (this).genericProfileActionsJPanel)) (jio (Dimension.new_2 10000 10000)))
        Control.Monad.void (JList.addListSelectionListener ((jget (this).genericProfileActionsJList)) (ListSelectionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- valueChanged
-}))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).genericProfileActionsJScrollPane)) (jget (this).genericProfileActionsJList))
        Control.Monad.void (JButton.setText ((jget (this).newActionJButton)) "New")
        Control.Monad.void (JButton.addActionListener ((jget (this).newActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).deleteActionJButton)) "Delete")
        Control.Monad.void (JButton.addActionListener ((jget (this).deleteActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).saveJButton)) "Save")
        Control.Monad.void (JButton.addActionListener ((jget (this).saveJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JPanel.setMinimumSize ((jget (this).blankGenericProfileActionJPanel)) (jio (Dimension.new_2 500 300)))
        blankGenericProfileActionJPanelLayout <- (GroupLayout.new_1 (jget (this).blankGenericProfileActionJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).blankGenericProfileActionJPanel)) blankGenericProfileActionJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup blankGenericProfileActionJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup blankGenericProfileActionJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 500 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup blankGenericProfileActionJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup blankGenericProfileActionJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 296 (Prelude.maxBound :: Int16))))
        genericProfileActionsJPanelLayout <- (GroupLayout.new_1 (jget (this).genericProfileActionsJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).genericProfileActionsJPanel)) genericProfileActionsJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup genericProfileActionsJPanelLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup genericProfileActionsJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup genericProfileActionsJPanelLayout))) (jget this.genericProfileActionsJScrollPane) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 95 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.blankGenericProfileActionJPanel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup genericProfileActionsJPanelLayout))) (jget this.newActionJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.deleteActionJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.saveJButton)))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup genericProfileActionsJPanelLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup genericProfileActionsJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup genericProfileActionsJPanelLayout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup genericProfileActionsJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.newActionJButton)))) (jget this.deleteActionJButton)))) (jget this.saveJButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup genericProfileActionsJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) False))) (jget this.blankGenericProfileActionJPanel) 0 296 (Prelude.maxBound :: Int16)))) (jget this.genericProfileActionsJScrollPane) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 296 (Prelude.maxBound :: Int16)))))) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.genericProfileActionsJPanel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 596 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.genericProfileActionsJPanel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 336 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
        pure ()


setModel :: (JavaObjectClass this_) => this_ -> IO (())
setModel object_ = jmethod object_ "setModel" (\() -> (setModel_impl (javaCast object_ :: GenericProfileActionsJPanel))) ()

setModel_super :: (JavaObjectClass this_) => this_ -> IO (())
setModel_super object_ = (setModel_impl (javaCast object_ :: GenericProfileActionsJPanel))

setModel_impl :: GenericProfileActionsJPanel -> IO (())
setModel_impl this = do
        defaultListModelHelper <- (GenericProfileActions.getDefaultListModelHelper ((jio (GenericProfileActionsJPanel.getGenericProfileActions this))))
        when ((jio (ListModel.getSize ((jio (DefaultListModelHelper.getListModel defaultListModelHelper))))) > 0) $ do
            Control.Monad.void (JList.setModel ((jget (this).genericProfileActionsJList)) (jio (DefaultListModelHelper.getListModel defaultListModelHelper)))
        pure ()


saveJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
saveJButtonActionPerformed object_ a1 = jmethod object_ "saveJButtonActionPerformed" (\() -> (saveJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

saveJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
saveJButtonActionPerformed_super object_ a1 = (saveJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

saveJButtonActionPerformed_impl :: GenericProfileActionsJPanel -> ActionEvent.ActionEvent -> IO (())
saveJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "saveJButtonActionPerformed" e)
            ) $ do
            Control.Monad.void (GenericProfileActions.save ((jio (GenericProfileActionsJPanel.getGenericProfileActions this))))
        pure ()


updateProfileActionUI :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateProfileActionUI object_ a1 = jmethod object_ "updateProfileActionUI" (\() -> (updateProfileActionUI_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

updateProfileActionUI_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateProfileActionUI_super object_ a1 = (updateProfileActionUI_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

updateProfileActionUI_impl :: GenericProfileActionsJPanel -> String -> IO (())
updateProfileActionUI_impl this profileActionNameString = do
        Control.Monad.void (JPanel.removeAll ((jget (this).blankGenericProfileActionJPanel)))
        when (profileActionNameString /= javaNull) $ do
            genericProfileAction <- (GenericProfileActions.getAction ((jio (GenericProfileActionsJPanel.getGenericProfileActions this))) profileActionNameString)
            Control.Monad.void (GenericProfileActionsJPanel.setGenericProfileActionJPanel this (jio (GenericProfileActionJPanel.new_)))
            Control.Monad.void (GenericProfileActionJPanel.setGenericProfileAction ((jio (GenericProfileActionsJPanel.getGenericProfileActionJPanel this))) genericProfileAction)
            Control.Monad.void (GenericProfileActionJPanel.updateProfileActionUI ((jio (GenericProfileActionsJPanel.getGenericProfileActionJPanel this))))
            let layout = (javaCast (jio (JPanel.getLayout ((jget (this).blankGenericProfileActionJPanel)))) :: GroupLayout.GroupLayout)
            Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 395 (Prelude.maxBound :: Int16)))) (jio (GenericProfileActionsJPanel.getGenericProfileActionJPanel this)) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
            Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 256 (Prelude.maxBound :: Int16)))) (jio (GenericProfileActionsJPanel.getGenericProfileActionJPanel this)) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Setting Configuration Profile Actions JPanel" this "genericProfileActionsJListValueChanged")
        pure ()


genericProfileActionsJListValueChanged :: (JavaObjectClass this_) => this_ -> ListSelectionEvent.ListSelectionEvent -> IO (())
genericProfileActionsJListValueChanged object_ a1 = jmethod object_ "genericProfileActionsJListValueChanged" (\() -> (genericProfileActionsJListValueChanged_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

genericProfileActionsJListValueChanged_super :: (JavaObjectClass this_) => this_ -> ListSelectionEvent.ListSelectionEvent -> IO (())
genericProfileActionsJListValueChanged_super object_ a1 = (genericProfileActionsJListValueChanged_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

genericProfileActionsJListValueChanged_impl :: GenericProfileActionsJPanel -> ListSelectionEvent.ListSelectionEvent -> IO (())
genericProfileActionsJListValueChanged_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "genericProfileActionsJListValueChanged" e)
            ) $ do
            let profileActionNameString = (javaCast (jio (JList.getSelectedValue ((jget (this).genericProfileActionsJList)))) :: String)
            Control.Monad.void (GenericProfileActionsJPanel.updateProfileActionUI this profileActionNameString)
        pure ()


okNewProfileActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okNewProfileActionJButtonActionPerformed object_ a1 = jmethod object_ "okNewProfileActionJButtonActionPerformed" (\() -> (okNewProfileActionJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

okNewProfileActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okNewProfileActionJButtonActionPerformed_super object_ a1 = (okNewProfileActionJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

okNewProfileActionJButtonActionPerformed_impl :: GenericProfileActionsJPanel -> ActionEvent.ActionEvent -> IO (())
okNewProfileActionJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "okNewProfileActionJButtonActionPerformed" e)
            ) $ do
            newActionName <- (JTextField.getText ((jget (this).newProfileActionJTextField)))
            Control.Monad.void (GenericProfileActions.add ((jio (GenericProfileActionsJPanel.getGenericProfileActions this))) newActionName)
            Control.Monad.void (GenericProfileActionsJPanel.setModel this)
            Control.Monad.void (JList.setSelectedValue ((jget (this).genericProfileActionsJList)) newActionName True)
            Control.Monad.void (JDialog.setVisible ((jget (this).newProfileActionJDialog)) False)
            Control.Monad.void (GenericProfileActionsJPanel.updateProfileActionUI this newActionName)
        pure ()


deleteActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
deleteActionJButtonActionPerformed object_ a1 = jmethod object_ "deleteActionJButtonActionPerformed" (\() -> (deleteActionJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

deleteActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
deleteActionJButtonActionPerformed_super object_ a1 = (deleteActionJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

deleteActionJButtonActionPerformed_impl :: GenericProfileActionsJPanel -> ActionEvent.ActionEvent -> IO (())
deleteActionJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "deleteActionJButtonActionPerformed" e)
            ) $ do
            anyType <- (JList.getSelectedValues ((jget (this).genericProfileActionsJList)))
            forM_ [0 .. (jlength anyType) - 1] $ \index -> javaIteration (pure ()) $ do
                let nextSelectedValueString = (javaCast (jindex anyType (index)) :: String)
                Control.Monad.void (GenericProfileActions.remove ((jio (GenericProfileActionsJPanel.getGenericProfileActions this))) nextSelectedValueString)
            Control.Monad.void (GenericProfileActionsJPanel.selectFirstElement this)
        pure ()


-- throws Exception
selectFirstElement :: (JavaObjectClass this_) => this_ -> IO (())
selectFirstElement object_ = jmethod object_ "selectFirstElement" (\() -> (selectFirstElement_impl (javaCast object_ :: GenericProfileActionsJPanel))) ()

selectFirstElement_super :: (JavaObjectClass this_) => this_ -> IO (())
selectFirstElement_super object_ = (selectFirstElement_impl (javaCast object_ :: GenericProfileActionsJPanel))

selectFirstElement_impl :: GenericProfileActionsJPanel -> IO (())
selectFirstElement_impl this = do
        Control.Monad.void (GenericProfileActionsJPanel.setModel this)
        if ((jio (JList.getSize ((jio (JList.getModel ((jget (this).genericProfileActionsJList))))))) > 0) then do
            Control.Monad.void (JList.setSelectedValue ((jget (this).genericProfileActionsJList)) (jio (JList.getElementAt ((jio (JList.getModel ((jget (this).genericProfileActionsJList))))) 0)) True)
            Control.Monad.void (GenericProfileActionsJPanel.updateProfileActionUI this (javaCast (jio (JList.getElementAt ((jio (JList.getModel ((jget (this).genericProfileActionsJList))))) 0)) :: String))
        else do
            Control.Monad.void (JPanel.removeAll ((jget (this).blankGenericProfileActionJPanel)))
            Control.Monad.void (JPanel.repaint ((jget (this).blankGenericProfileActionJPanel)))
        pure ()


getGenericProfileActionJPanel :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionJPanel.GenericProfileActionJPanel)
getGenericProfileActionJPanel object_ = jmethod object_ "getGenericProfileActionJPanel" (\() -> (getGenericProfileActionJPanel_impl (javaCast object_ :: GenericProfileActionsJPanel))) ()

getGenericProfileActionJPanel_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionJPanel.GenericProfileActionJPanel)
getGenericProfileActionJPanel_super object_ = (getGenericProfileActionJPanel_impl (javaCast object_ :: GenericProfileActionsJPanel))

getGenericProfileActionJPanel_impl :: GenericProfileActionsJPanel -> IO (GenericProfileActionJPanel.GenericProfileActionJPanel)
getGenericProfileActionJPanel_impl this = do
        pure ((jget (this).genericProfileActionJPanel))


setGenericProfileActionJPanel :: (JavaObjectClass this_) => this_ -> GenericProfileActionJPanel.GenericProfileActionJPanel -> IO (())
setGenericProfileActionJPanel object_ a1 = jmethod object_ "setGenericProfileActionJPanel" (\() -> (setGenericProfileActionJPanel_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

setGenericProfileActionJPanel_super :: (JavaObjectClass this_) => this_ -> GenericProfileActionJPanel.GenericProfileActionJPanel -> IO (())
setGenericProfileActionJPanel_super object_ a1 = (setGenericProfileActionJPanel_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

setGenericProfileActionJPanel_impl :: GenericProfileActionsJPanel -> GenericProfileActionJPanel.GenericProfileActionJPanel -> IO (())
setGenericProfileActionJPanel_impl this genericProfileActionJPanel = do
        jset (this).genericProfileActionJPanel (genericProfileActionJPanel)
        pure ()


getGenericProfileActions :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions object_ = jmethod object_ "getGenericProfileActions" (\() -> (getGenericProfileActions_impl (javaCast object_ :: GenericProfileActionsJPanel))) ()

getGenericProfileActions_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions_super object_ = (getGenericProfileActions_impl (javaCast object_ :: GenericProfileActionsJPanel))

getGenericProfileActions_impl :: GenericProfileActionsJPanel -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions_impl this = do
        pure ((jget (this).genericProfileActions))


setGenericProfileActions :: (JavaObjectClass this_) => this_ -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions object_ a1 = jmethod object_ "setGenericProfileActions" (\() -> (setGenericProfileActions_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

setGenericProfileActions_super :: (JavaObjectClass this_) => this_ -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions_super object_ a1 = (setGenericProfileActions_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

setGenericProfileActions_impl :: GenericProfileActionsJPanel -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions_impl this genericProfileActions = do
        jset (this).genericProfileActions (genericProfileActions)
        pure ()


newActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newActionJButtonActionPerformed object_ a1 = jmethod object_ "newActionJButtonActionPerformed" (\() -> (newActionJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel))) () a1

newActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newActionJButtonActionPerformed_super object_ a1 = (newActionJButtonActionPerformed_impl (javaCast object_ :: GenericProfileActionsJPanel)) a1

newActionJButtonActionPerformed_impl :: GenericProfileActionsJPanel -> ActionEvent.ActionEvent -> IO (())
newActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jget (this).newProfileActionJDialog)) True)
        pure ()


