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
-- package org.allbinary.input.automation.module.generic.configuration
module GenericModuleConfigurationJPanel (module GenericModuleConfigurationJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, savedCaptureJRadioButtonActionPerformed, savedCaptureJRadioButtonActionPerformed_super, savedCaptureJRadioButtonActionPerformed_impl, screenCaptureJRadioButtonActionPerformed, screenCaptureJRadioButtonActionPerformed_super, screenCaptureJRadioButtonActionPerformed_impl, captureMotionAnalysisJCheckBoxActionPerformed, captureMotionAnalysisJCheckBoxActionPerformed_super, captureMotionAnalysisJCheckBoxActionPerformed_impl, captureComparisonJCheckBoxActionPerformed, captureComparisonJCheckBoxActionPerformed_super, captureComparisonJCheckBoxActionPerformed_impl, updateProfileUI, updateProfileUI_super, updateProfileUI_impl, selectFirstElement, selectFirstElement_super, selectFirstElement_impl, updateProfileOptions, updateProfileOptions_super, updateProfileOptions_impl, getBlankGenericProfileActionsJPanel, getBlankGenericProfileActionsJPanel_super, getBlankGenericProfileActionsJPanel_impl, setBlankGenericProfileActionsJPanel, setBlankGenericProfileActionsJPanel_super, setBlankGenericProfileActionsJPanel_impl, getGenericProfiles, getGenericProfiles_super, getGenericProfiles_impl, setGenericProfiles, setGenericProfiles_super, setGenericProfiles_impl, getSelectedGenericProfile, getSelectedGenericProfile_super, getSelectedGenericProfile_impl, setSelectedGenericProfile, setSelectedGenericProfile_super, setSelectedGenericProfile_impl, genericProfilesJListValueChanged, genericProfilesJListValueChanged_super, genericProfilesJListValueChanged_impl, deleteProfileJButtonActionPerformed, deleteProfileJButtonActionPerformed_super, deleteProfileJButtonActionPerformed_impl, okNewProfileJButtonActionPerformed, okNewProfileJButtonActionPerformed_super, okNewProfileJButtonActionPerformed_impl, newProfileJButtonActionPerformed, newProfileJButtonActionPerformed_super, newProfileJButtonActionPerformed_impl, logUtil, stringUtil, commonStrings, genericProfiles, selectedGenericProfile, blankGenericProfileActionsJPanel, buttonGroup2, captureComparisonJCheckBox, captureMotionAnalysisJCheckBox, deleteProfileJButton, genericJTabbedPane, genericProfilesJList, genericProfilesJPanel, genericProfilesJScrollPane, jLabel1, jLabel2, jLabel3, jPanel1, newProfileJButton, newProfileJDialog, newProfileNameJLabel, newProfileNameJTextField, okNewProfileJButton, savedCaptureJRadioButton, screenCaptureJRadioButton)
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
import qualified JDialog -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified ButtonGroup -- same package or java.lang
import qualified JTabbedPane -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JList -- same package or java.lang
import qualified JRadioButton -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified ListSelectionListener -- same package or java.lang
import qualified ListSelectionEvent -- same package or java.lang
import qualified Insets -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified GenericProfile -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile
import qualified GenericProfileDataWorkerType -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType
import qualified GenericProfiles -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfiles
import qualified GenericProfileActions -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions
import qualified GenericProfileActionsJPanel -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionsJPanel
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JPanel
import qualified GenericModuleConfigurationInterface

-- implements GenericModuleConfigurationInterface
data GenericModuleConfigurationJPanel = GenericModuleConfigurationJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , genericProfiles :: IORef (GenericProfiles.GenericProfiles)
    , selectedGenericProfile :: IORef (GenericProfile.GenericProfile)
    , blankGenericProfileActionsJPanel :: IORef (JPanel.JPanel)
    , buttonGroup2 :: IORef (ButtonGroup.ButtonGroup)
    , captureComparisonJCheckBox :: IORef (JCheckBox.JCheckBox)
    , captureMotionAnalysisJCheckBox :: IORef (JCheckBox.JCheckBox)
    , deleteProfileJButton :: IORef (JButton.JButton)
    , genericJTabbedPane :: IORef (JTabbedPane.JTabbedPane)
    , genericProfilesJList :: IORef (JList.JList)
    , genericProfilesJPanel :: IORef (JPanel.JPanel)
    , genericProfilesJScrollPane :: IORef (JScrollPane.JScrollPane)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLabel3 :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , newProfileJButton :: IORef (JButton.JButton)
    , newProfileJDialog :: IORef (JDialog.JDialog)
    , newProfileNameJLabel :: IORef (JLabel.JLabel)
    , newProfileNameJTextField :: IORef (JTextField.JTextField)
    , okNewProfileJButton :: IORef (JButton.JButton)
    , savedCaptureJRadioButton :: IORef (JRadioButton.JRadioButton)
    , screenCaptureJRadioButton :: IORef (JRadioButton.JRadioButton)
    }

instance JavaNull GenericModuleConfigurationJPanel where
    javaNull = javaNullRecord "GenericModuleConfigurationJPanel"

instance JavaEquals GenericModuleConfigurationJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericModuleConfigurationJPanel where
    (==) = jrecordEquals

instance JavaObjectClass GenericModuleConfigurationJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericModuleConfigurationJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    stringUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    genericProfiles <- newIORef javaNull
    selectedGenericProfile <- newIORef javaNull
    blankGenericProfileActionsJPanel <- newIORef javaNull
    buttonGroup2 <- newIORef javaNull
    captureComparisonJCheckBox <- newIORef javaNull
    captureMotionAnalysisJCheckBox <- newIORef javaNull
    deleteProfileJButton <- newIORef javaNull
    genericJTabbedPane <- newIORef javaNull
    genericProfilesJList <- newIORef javaNull
    genericProfilesJPanel <- newIORef javaNull
    genericProfilesJScrollPane <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLabel3 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    newProfileJButton <- newIORef javaNull
    newProfileJDialog <- newIORef javaNull
    newProfileNameJLabel <- newIORef javaNull
    newProfileNameJTextField <- newIORef javaNull
    okNewProfileJButton <- newIORef javaNull
    savedCaptureJRadioButton <- newIORef javaNull
    screenCaptureJRadioButton <- newIORef javaNull
    let this = GenericModuleConfigurationJPanel header_ base logUtil stringUtil commonStrings genericProfiles selectedGenericProfile blankGenericProfileActionsJPanel buttonGroup2 captureComparisonJCheckBox captureMotionAnalysisJCheckBox deleteProfileJButton genericJTabbedPane genericProfilesJList genericProfilesJPanel genericProfilesJScrollPane jLabel1 jLabel2 jLabel3 jPanel1 newProfileJButton newProfileJDialog newProfileNameJLabel newProfileNameJTextField okNewProfileJButton savedCaptureJRadioButton screenCaptureJRadioButton
    jregisterLevel header_ this
    GenericModuleConfigurationInterface.registerInterface_ header_
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "savedCaptureJRadioButtonActionPerformed" (\() -> savedCaptureJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "screenCaptureJRadioButtonActionPerformed" (\() -> screenCaptureJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "captureMotionAnalysisJCheckBoxActionPerformed" (\() -> captureMotionAnalysisJCheckBoxActionPerformed_impl this)
    jregisterMethod header_ "captureComparisonJCheckBoxActionPerformed" (\() -> captureComparisonJCheckBoxActionPerformed_impl this)
    jregisterMethod header_ "updateProfileUI" (\() -> updateProfileUI_impl this)
    jregisterMethod header_ "selectFirstElement" (\() -> selectFirstElement_impl this)
    jregisterMethod header_ "updateProfileOptions" (\() -> updateProfileOptions_impl this)
    jregisterMethod header_ "getBlankGenericProfileActionsJPanel" (\() -> getBlankGenericProfileActionsJPanel_impl this)
    jregisterMethod header_ "setBlankGenericProfileActionsJPanel" (\() -> setBlankGenericProfileActionsJPanel_impl this)
    jregisterMethod header_ "getGenericProfiles" (\() -> getGenericProfiles_impl this)
    jregisterMethod header_ "setGenericProfiles" (\() -> setGenericProfiles_impl this)
    jregisterMethod header_ "getSelectedGenericProfile" (\() -> getSelectedGenericProfile_impl this)
    jregisterMethod header_ "setSelectedGenericProfile" (\() -> setSelectedGenericProfile_impl this)
    jregisterMethod header_ "genericProfilesJListValueChanged" (\() -> genericProfilesJListValueChanged_impl this)
    jregisterMethod header_ "deleteProfileJButtonActionPerformed" (\() -> deleteProfileJButtonActionPerformed_impl this)
    jregisterMethod header_ "okNewProfileJButtonActionPerformed" (\() -> okNewProfileJButtonActionPerformed_impl this)
    jregisterMethod header_ "newProfileJButtonActionPerformed" (\() -> newProfileJButtonActionPerformed_impl this)
    pure this

initFields_ :: GenericModuleConfigurationJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.genericProfiles (javaNull)
    jset this.selectedGenericProfile (javaNull)
    jset this.blankGenericProfileActionsJPanel (javaNull)
    jset this.buttonGroup2 (javaNull)
    jset this.captureComparisonJCheckBox (javaNull)
    jset this.captureMotionAnalysisJCheckBox (javaNull)
    jset this.deleteProfileJButton (javaNull)
    jset this.genericJTabbedPane (javaNull)
    jset this.genericProfilesJList (javaNull)
    jset this.genericProfilesJPanel (javaNull)
    jset this.genericProfilesJScrollPane (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLabel3 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.newProfileJButton (javaNull)
    jset this.newProfileJDialog (javaNull)
    jset this.newProfileNameJLabel (javaNull)
    jset this.newProfileNameJTextField (javaNull)
    jset this.okNewProfileJButton (javaNull)
    jset this.savedCaptureJRadioButton (javaNull)
    jset this.screenCaptureJRadioButton (javaNull)
    pure ()

new_ :: IO GenericModuleConfigurationJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericModuleConfigurationJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (GenericModuleConfigurationJPanel.initComponents this)
        Control.Monad.void (GenericModuleConfigurationJPanel.setGenericProfiles this (jio (GenericProfiles.new_1 (GenericProfiles.dEFAULT_FILE))))
        Control.Monad.void (GenericModuleConfigurationJPanel.selectFirstElement this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: GenericModuleConfigurationJPanel))

initComponents_impl :: GenericModuleConfigurationJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).newProfileJDialog (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okNewProfileJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).newProfileNameJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).newProfileNameJTextField (assignedValue)
        assignedValue <- (ButtonGroup.new_)
        jset (this).buttonGroup2 (assignedValue)
        assignedValue <- (JTabbedPane.new_)
        jset (this).genericJTabbedPane (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).genericProfilesJPanel (assignedValue)
        assignedValue <- (JScrollPane.new_)
        jset (this).genericProfilesJScrollPane (assignedValue)
        assignedValue <- (JList.new_)
        jset (this).genericProfilesJList (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).newProfileJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).deleteProfileJButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).screenCaptureJRadioButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).savedCaptureJRadioButton (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).captureMotionAnalysisJCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).captureComparisonJCheckBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel3 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).blankGenericProfileActionsJPanel (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).newProfileJDialog)) (jio (Dimension.new_2 250 150)))
        Control.Monad.void (JDialog.setResizable ((jget (this).newProfileJDialog)) False)
        Control.Monad.void (JButton.setText ((jget (this).okNewProfileJButton)) "Ok")
        Control.Monad.void (JButton.addActionListener ((jget (this).okNewProfileJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).newProfileNameJLabel)) "New Profile Name")
        newProfileJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).newProfileJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).newProfileJDialog))))) newProfileJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup newProfileJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup newProfileJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup newProfileJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup newProfileJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileJDialogLayout))) 80 80 80))) (jget this.newProfileNameJLabel)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileJDialogLayout))) 30 30 30))) (jget this.newProfileNameJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 180 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileJDialogLayout))) 100 100 100))) (jget this.okNewProfileJButton)))))))) 35 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup newProfileJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup newProfileJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup newProfileJDialogLayout))) 10 10 10))) (jget this.newProfileNameJLabel)))) 16 16 16))) (jget this.newProfileNameJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) 20 20 20))) (jget this.okNewProfileJButton))))))
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 400 300)))
        Control.Monad.void (JPanel.setPreferredSize this (jio (Dimension.new_2 700 700)))
        Control.Monad.void (JTabbedPane.setToolTipText ((jget (this).genericJTabbedPane)) (jget ((jget (this).stringUtil)).eMPTY_STRING))
        Control.Monad.void (JTabbedPane.setMinimumSize ((jget (this).genericJTabbedPane)) (jio (Dimension.new_2 800 600)))
        Control.Monad.void (JPanel.setMinimumSize ((jget (this).genericProfilesJPanel)) (jio (Dimension.new_2 400 300)))
        Control.Monad.void (JPanel.setPreferredSize ((jget (this).genericProfilesJPanel)) (jio (Dimension.new_2 0 0)))
        Control.Monad.void (JList.addListSelectionListener ((jget (this).genericProfilesJList)) (ListSelectionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- valueChanged
-}))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).genericProfilesJScrollPane)) (jget (this).genericProfilesJList))
        Control.Monad.void (JButton.setText ((jget (this).newProfileJButton)) "New")
        Control.Monad.void (JButton.setToolTipText ((jget (this).newProfileJButton)) "Creates a new profile")
        Control.Monad.void (JButton.addActionListener ((jget (this).newProfileJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).deleteProfileJButton)) "Delete")
        Control.Monad.void (JButton.setToolTipText ((jget (this).deleteProfileJButton)) "Deletes the selected profile")
        Control.Monad.void (JButton.addActionListener ((jget (this).deleteProfileJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JPanel.setPreferredSize ((jget (this).jPanel1)) (jio (Dimension.new_2 1000 100)))
        Control.Monad.void (JRadioButton.setText ((jget (this).screenCaptureJRadioButton)) "Screen Captures")
        Control.Monad.void (JRadioButton.setToolTipText ((jget (this).screenCaptureJRadioButton)) "Records the screen into memory for logical processing")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).screenCaptureJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).screenCaptureJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).screenCaptureJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Profile Options")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Process From:")
        Control.Monad.void (JRadioButton.setText ((jget (this).savedCaptureJRadioButton)) "Saved Images")
        Control.Monad.void (JRadioButton.setToolTipText ((jget (this).savedCaptureJRadioButton)) "Loads images from files for logical processing.  Usually for debugging your profile actions")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).savedCaptureJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).savedCaptureJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).savedCaptureJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JCheckBox.setText ((jget (this).captureMotionAnalysisJCheckBox)) "Motion Analysis")
        Control.Monad.void (JCheckBox.setToolTipText ((jget (this).captureMotionAnalysisJCheckBox)) "Uses image comparison and contraints to locate moving objects")
        Control.Monad.void (JCheckBox.setBorder ((jget (this).captureMotionAnalysisJCheckBox)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JCheckBox.setMargin ((jget (this).captureMotionAnalysisJCheckBox)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JCheckBox.addActionListener ((jget (this).captureMotionAnalysisJCheckBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JCheckBox.setText ((jget (this).captureComparisonJCheckBox)) "Comparison")
        Control.Monad.void (JCheckBox.setToolTipText ((jget (this).captureComparisonJCheckBox)) "Compares the last two input images for multi image logic")
        Control.Monad.void (JCheckBox.setBorder ((jget (this).captureComparisonJCheckBox)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JCheckBox.setMargin ((jget (this).captureComparisonJCheckBox)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JCheckBox.addActionListener ((jget (this).captureComparisonJCheckBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel3)) "Image Processing:")
        Control.Monad.void (JLabel.setToolTipText ((jget (this).jLabel3)) "Turns on/off various extended image processing")
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.screenCaptureJRadioButton)))) (jget this.jLabel1)))) (jget this.jLabel2)))) (jget this.savedCaptureJRadioButton)))) (jget this.captureMotionAnalysisJCheckBox)))) (jget this.captureComparisonJCheckBox)))) (jget this.jLabel3)))))) 22 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel2)))) 7 7 7))) (jget this.screenCaptureJRadioButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.savedCaptureJRadioButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel3)))) 7 7 7))) (jget this.captureComparisonJCheckBox)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.captureMotionAnalysisJCheckBox)))) 106 (Prelude.maxBound :: Int16))))))
        genericProfilesJPanelLayout <- (GroupLayout.new_1 (jget (this).genericProfilesJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).genericProfilesJPanel)) genericProfilesJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup genericProfilesJPanelLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup genericProfilesJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup genericProfilesJPanelLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup genericProfilesJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup genericProfilesJPanelLayout))) (jget this.newProfileJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.deleteProfileJButton)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup genericProfilesJPanelLayout))) (jget this.genericProfilesJScrollPane) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 119 (Prelude.maxBound :: Int16)))))))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup genericProfilesJPanelLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup genericProfilesJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup genericProfilesJPanelLayout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup genericProfilesJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.newProfileJButton)))) (jget this.deleteProfileJButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup genericProfilesJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 246 (Prelude.maxBound :: Int16)))) (jget this.genericProfilesJScrollPane) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 246 (Prelude.maxBound :: Int16))))))))
        Control.Monad.void (JTabbedPane.addTab ((jget (this).genericJTabbedPane)) "Profiles" (jget this.genericProfilesJPanel))
        blankGenericProfileActionsJPanelLayout <- (GroupLayout.new_1 (jget (this).blankGenericProfileActionsJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).blankGenericProfileActionsJPanel)) blankGenericProfileActionsJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup blankGenericProfileActionsJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup blankGenericProfileActionsJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 395 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup blankGenericProfileActionsJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup blankGenericProfileActionsJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 275 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JTabbedPane.addTab ((jget (this).genericJTabbedPane)) "Actions" (jget this.blankGenericProfileActionsJPanel))
        Control.Monad.void (JPanel.add this (jget (this).genericJTabbedPane))
        pure ()


savedCaptureJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
savedCaptureJRadioButtonActionPerformed object_ a1 = jmethod object_ "savedCaptureJRadioButtonActionPerformed" (\() -> (savedCaptureJRadioButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

savedCaptureJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
savedCaptureJRadioButtonActionPerformed_super object_ a1 = (savedCaptureJRadioButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

savedCaptureJRadioButtonActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
savedCaptureJRadioButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "savedCaptureJRadioButtonActionPerformed" e)
            ) $ do
            when (jio (JRadioButton.isSelected ((jget (this).savedCaptureJRadioButton)))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Selected" this "savedCaptureJRadioButtonActionPerformed")
                Control.Monad.void (GenericProfile.add ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.sAVED_CAPTURE))
                Control.Monad.void (GenericProfile.remove ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.sCREEN_CAPTURE))
                Control.Monad.void (JRadioButton.setSelected ((jget (this).screenCaptureJRadioButton)) False)
                Control.Monad.void (GenericProfiles.save ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))))
        pure ()


screenCaptureJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
screenCaptureJRadioButtonActionPerformed object_ a1 = jmethod object_ "screenCaptureJRadioButtonActionPerformed" (\() -> (screenCaptureJRadioButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

screenCaptureJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
screenCaptureJRadioButtonActionPerformed_super object_ a1 = (screenCaptureJRadioButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

screenCaptureJRadioButtonActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
screenCaptureJRadioButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "screenCaptureJRadioButtonActionPerformed" e)
            ) $ do
            when (jio (JRadioButton.isSelected ((jget (this).screenCaptureJRadioButton)))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Selected" this "screenCaptureJRadioButtonActionPerformed")
                Control.Monad.void (GenericProfile.add ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.sCREEN_CAPTURE))
                Control.Monad.void (GenericProfile.remove ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.sAVED_CAPTURE))
                Control.Monad.void (JRadioButton.setSelected ((jget (this).savedCaptureJRadioButton)) False)
                Control.Monad.void (GenericProfiles.save ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))))
        pure ()


captureMotionAnalysisJCheckBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
captureMotionAnalysisJCheckBoxActionPerformed object_ a1 = jmethod object_ "captureMotionAnalysisJCheckBoxActionPerformed" (\() -> (captureMotionAnalysisJCheckBoxActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

captureMotionAnalysisJCheckBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
captureMotionAnalysisJCheckBoxActionPerformed_super object_ a1 = (captureMotionAnalysisJCheckBoxActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

captureMotionAnalysisJCheckBoxActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
captureMotionAnalysisJCheckBoxActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "captureComparisonJCheckBoxActionPerformed" e)
            ) $ do
            if (jio (JCheckBox.isSelected ((jget (this).captureMotionAnalysisJCheckBox)))) then do
                Control.Monad.void (GenericProfile.add ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.mOTION))
            else do
                Control.Monad.void (GenericProfile.remove ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.mOTION))
            Control.Monad.void (GenericProfiles.save ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))))
        pure ()


captureComparisonJCheckBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
captureComparisonJCheckBoxActionPerformed object_ a1 = jmethod object_ "captureComparisonJCheckBoxActionPerformed" (\() -> (captureComparisonJCheckBoxActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

captureComparisonJCheckBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
captureComparisonJCheckBoxActionPerformed_super object_ a1 = (captureComparisonJCheckBoxActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

captureComparisonJCheckBoxActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
captureComparisonJCheckBoxActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "captureComparisonJCheckBoxActionPerformed" e)
            ) $ do
            if (jio (JCheckBox.isSelected ((jget (this).captureComparisonJCheckBox)))) then do
                Control.Monad.void (GenericProfile.add ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.cOMPARISON))
            else do
                Control.Monad.void (GenericProfile.remove ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.cOMPARISON))
            Control.Monad.void (GenericProfiles.save ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))))
        pure ()


-- throws Exception
updateProfileUI :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateProfileUI object_ a1 = jmethod object_ "updateProfileUI" (\() -> (updateProfileUI_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

updateProfileUI_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateProfileUI_super object_ a1 = (updateProfileUI_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

updateProfileUI_impl :: GenericModuleConfigurationJPanel -> String -> IO (())
updateProfileUI_impl this profileNameString = do
        Control.Monad.void (JPanel.removeAll ((jio (GenericModuleConfigurationJPanel.getBlankGenericProfileActionsJPanel this))))
        if (profileNameString /= javaNull) then do
            genericProfileActionsJPanel <- (GenericProfileActionsJPanel.new_)
            Control.Monad.void (GenericModuleConfigurationJPanel.setSelectedGenericProfile this (jio (GenericProfiles.get ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))) profileNameString)))
            Control.Monad.void (GenericProfile.setGenericProfileActions ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jio (GenericProfileActions.new_2 genericProfileActionsJPanel profileNameString)))
            Control.Monad.void (GenericProfileActionsJPanel.setGenericProfileActions genericProfileActionsJPanel (jio (GenericProfile.getGenericProfileActions ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))))))
            Control.Monad.void (GenericProfileActionsJPanel.selectFirstElement genericProfileActionsJPanel)
            let layout = (javaCast (jio (JPanel.getLayout ((jio (GenericModuleConfigurationJPanel.getBlankGenericProfileActionsJPanel this))))) :: GroupLayout.GroupLayout)
            Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 395 (Prelude.maxBound :: Int16)))) genericProfileActionsJPanel (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
            Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 256 (Prelude.maxBound :: Int16)))) genericProfileActionsJPanel (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
            Control.Monad.void (GenericModuleConfigurationJPanel.updateProfileOptions this)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Setting Configuration Profile JPanel" this "updateProfileUI")
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Null Configuration Profile" this "updateProfileUI")
        pure ()


-- throws Exception
selectFirstElement :: (JavaObjectClass this_) => this_ -> IO (())
selectFirstElement object_ = jmethod object_ "selectFirstElement" (\() -> (selectFirstElement_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) ()

selectFirstElement_super :: (JavaObjectClass this_) => this_ -> IO (())
selectFirstElement_super object_ = (selectFirstElement_impl (javaCast object_ :: GenericModuleConfigurationJPanel))

selectFirstElement_impl :: GenericModuleConfigurationJPanel -> IO (())
selectFirstElement_impl this = do
        Control.Monad.void (JList.setModel ((jget (this).genericProfilesJList)) (jio (DefaultListModelHelper.getListModel ((jio (GenericProfiles.getDefaultListModelHelper ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this)))))))))
        when ((jio (JList.getSize ((jio (JList.getModel ((jget (this).genericProfilesJList))))))) > 0) $ do
            Control.Monad.void (JList.setSelectedValue ((jget (this).genericProfilesJList)) (jio (JList.getElementAt ((jio (JList.getModel ((jget (this).genericProfilesJList))))) 0)) True)
            Control.Monad.void (GenericModuleConfigurationJPanel.updateProfileUI this (javaCast (jio (JList.getElementAt ((jio (JList.getModel ((jget (this).genericProfilesJList))))) 0)) :: String))
        pure ()


-- throws Exception
updateProfileOptions :: (JavaObjectClass this_) => this_ -> IO (())
updateProfileOptions object_ = jmethod object_ "updateProfileOptions" (\() -> (updateProfileOptions_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) ()

updateProfileOptions_super :: (JavaObjectClass this_) => this_ -> IO (())
updateProfileOptions_super object_ = (updateProfileOptions_impl (javaCast object_ :: GenericModuleConfigurationJPanel))

updateProfileOptions_impl :: GenericModuleConfigurationJPanel -> IO (())
updateProfileOptions_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "updateProfileOptions")
        genericProfile <- (GenericModuleConfigurationJPanel.getSelectedGenericProfile this)
        vector <- (GenericProfile.getGenericProfileDataWorkerTypeVector genericProfile)
        Control.Monad.void (JRadioButton.setSelected ((jget (this).screenCaptureJRadioButton)) False)
        Control.Monad.void (JRadioButton.setSelected ((jget (this).savedCaptureJRadioButton)) False)
        Control.Monad.void (JCheckBox.setSelected ((jget (this).captureComparisonJCheckBox)) False)
        Control.Monad.void (JCheckBox.setSelected ((jget (this).captureMotionAnalysisJCheckBox)) False)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let genericProfileDataWorkerType = (javaCast (jio (BasicArrayList.get vector index)) :: GenericProfileDataWorkerType.GenericProfileDataWorkerType)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((jio (GenericProfile.getName genericProfile)) ++ " has GenericProfileDataWorkerType: ") ++ (jio (GenericProfileDataWorkerType.toString genericProfileDataWorkerType))) this "updateProfileOptions")
            if (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.sCREEN_CAPTURE)) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Screen Capture Selected" this "updateProfileOptions")
                Control.Monad.void (JRadioButton.setSelected ((jget (this).screenCaptureJRadioButton)) True)
            else if (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.sAVED_CAPTURE)) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Saved Capture Selected" this "updateProfileOptions")
                Control.Monad.void (JRadioButton.setSelected ((jget (this).savedCaptureJRadioButton)) True)
            else if (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.cOMPARISON)) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Checking Comparison Box" this "updateProfileOptions")
                Control.Monad.void (JCheckBox.setSelected ((jget (this).captureComparisonJCheckBox)) True)
            else when (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.mOTION)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Checking Motion Box" this "updateProfileOptions")
                Control.Monad.void (JCheckBox.setSelected ((jget (this).captureMotionAnalysisJCheckBox)) True)
        when ((Prelude.not (jio (JRadioButton.isSelected ((jget (this).screenCaptureJRadioButton))))) && (Prelude.not (jio (JRadioButton.isSelected ((jget (this).savedCaptureJRadioButton)))))) $ do
            Control.Monad.void (JRadioButton.setSelected ((jget (this).screenCaptureJRadioButton)) True)
            Control.Monad.void (GenericProfile.add ((jio (GenericModuleConfigurationJPanel.getSelectedGenericProfile this))) (jget GenericProfileDataWorkerType.sCREEN_CAPTURE))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this "updateProfileOptions")
        pure ()


getBlankGenericProfileActionsJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getBlankGenericProfileActionsJPanel object_ = jmethod object_ "getBlankGenericProfileActionsJPanel" (\() -> (getBlankGenericProfileActionsJPanel_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) ()

getBlankGenericProfileActionsJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getBlankGenericProfileActionsJPanel_super object_ = (getBlankGenericProfileActionsJPanel_impl (javaCast object_ :: GenericModuleConfigurationJPanel))

getBlankGenericProfileActionsJPanel_impl :: GenericModuleConfigurationJPanel -> IO (JPanel.JPanel)
getBlankGenericProfileActionsJPanel_impl this = do
        pure ((jget (this).blankGenericProfileActionsJPanel))


setBlankGenericProfileActionsJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setBlankGenericProfileActionsJPanel object_ a1 = jmethod object_ "setBlankGenericProfileActionsJPanel" (\() -> (setBlankGenericProfileActionsJPanel_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

setBlankGenericProfileActionsJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setBlankGenericProfileActionsJPanel_super object_ a1 = (setBlankGenericProfileActionsJPanel_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

setBlankGenericProfileActionsJPanel_impl :: GenericModuleConfigurationJPanel -> JPanel.JPanel -> IO (())
setBlankGenericProfileActionsJPanel_impl this blankGenericProfileActionsJPanel = do
        jset (this).blankGenericProfileActionsJPanel (blankGenericProfileActionsJPanel)
        pure ()


getGenericProfiles :: (JavaObjectClass this_) => this_ -> IO (GenericProfiles.GenericProfiles)
getGenericProfiles object_ = jmethod object_ "getGenericProfiles" (\() -> (getGenericProfiles_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) ()

getGenericProfiles_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfiles.GenericProfiles)
getGenericProfiles_super object_ = (getGenericProfiles_impl (javaCast object_ :: GenericModuleConfigurationJPanel))

getGenericProfiles_impl :: GenericModuleConfigurationJPanel -> IO (GenericProfiles.GenericProfiles)
getGenericProfiles_impl this = do
        pure ((jget (this).genericProfiles))


setGenericProfiles :: (JavaObjectClass this_) => this_ -> GenericProfiles.GenericProfiles -> IO (())
setGenericProfiles object_ a1 = jmethod object_ "setGenericProfiles" (\() -> (setGenericProfiles_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

setGenericProfiles_super :: (JavaObjectClass this_) => this_ -> GenericProfiles.GenericProfiles -> IO (())
setGenericProfiles_super object_ a1 = (setGenericProfiles_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

setGenericProfiles_impl :: GenericModuleConfigurationJPanel -> GenericProfiles.GenericProfiles -> IO (())
setGenericProfiles_impl this genericProfiles = do
        jset (this).genericProfiles (genericProfiles)
        pure ()


getSelectedGenericProfile :: (JavaObjectClass this_) => this_ -> IO (GenericProfile.GenericProfile)
getSelectedGenericProfile object_ = jmethod object_ "getSelectedGenericProfile" (\() -> (getSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) ()

getSelectedGenericProfile_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfile.GenericProfile)
getSelectedGenericProfile_super object_ = (getSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationJPanel))

getSelectedGenericProfile_impl :: GenericModuleConfigurationJPanel -> IO (GenericProfile.GenericProfile)
getSelectedGenericProfile_impl this = do
        pure ((jget (this).selectedGenericProfile))


setSelectedGenericProfile :: (JavaObjectClass this_) => this_ -> GenericProfile.GenericProfile -> IO (())
setSelectedGenericProfile object_ a1 = jmethod object_ "setSelectedGenericProfile" (\() -> (setSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

setSelectedGenericProfile_super :: (JavaObjectClass this_) => this_ -> GenericProfile.GenericProfile -> IO (())
setSelectedGenericProfile_super object_ a1 = (setSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

setSelectedGenericProfile_impl :: GenericModuleConfigurationJPanel -> GenericProfile.GenericProfile -> IO (())
setSelectedGenericProfile_impl this selectedGenericProfile = do
        jset (this).selectedGenericProfile (selectedGenericProfile)
        pure ()


genericProfilesJListValueChanged :: (JavaObjectClass this_) => this_ -> ListSelectionEvent.ListSelectionEvent -> IO (())
genericProfilesJListValueChanged object_ a1 = jmethod object_ "genericProfilesJListValueChanged" (\() -> (genericProfilesJListValueChanged_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

genericProfilesJListValueChanged_super :: (JavaObjectClass this_) => this_ -> ListSelectionEvent.ListSelectionEvent -> IO (())
genericProfilesJListValueChanged_super object_ a1 = (genericProfilesJListValueChanged_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

genericProfilesJListValueChanged_impl :: GenericModuleConfigurationJPanel -> ListSelectionEvent.ListSelectionEvent -> IO (())
genericProfilesJListValueChanged_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "genericProfilesJListValueChanged" e)
            ) $ do
            let profileNameString = (javaCast (jio (JList.getSelectedValue ((jget (this).genericProfilesJList)))) :: String)
            Control.Monad.void (GenericModuleConfigurationJPanel.updateProfileUI this profileNameString)
        pure ()


deleteProfileJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
deleteProfileJButtonActionPerformed object_ a1 = jmethod object_ "deleteProfileJButtonActionPerformed" (\() -> (deleteProfileJButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

deleteProfileJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
deleteProfileJButtonActionPerformed_super object_ a1 = (deleteProfileJButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

deleteProfileJButtonActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
deleteProfileJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "deleteProfileJButtonActionPerformed" e)
            ) $ do
            anyType <- (JList.getSelectedValues ((jget (this).genericProfilesJList)))
            forM_ [0 .. (jlength anyType) - 1] $ \index -> javaIteration (pure ()) $ do
                let nextSelectedValueString = (javaCast (jindex anyType (index)) :: String)
                Control.Monad.void (GenericProfiles.remove ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))) nextSelectedValueString)
            Control.Monad.void (GenericModuleConfigurationJPanel.selectFirstElement this)
        pure ()


okNewProfileJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okNewProfileJButtonActionPerformed object_ a1 = jmethod object_ "okNewProfileJButtonActionPerformed" (\() -> (okNewProfileJButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

okNewProfileJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okNewProfileJButtonActionPerformed_super object_ a1 = (okNewProfileJButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

okNewProfileJButtonActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
okNewProfileJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "okNewProfileJButtonActionPerformed" e)
            ) $ do
            newProfileName <- (JTextField.getText ((jget (this).newProfileNameJTextField)))
            Control.Monad.void (GenericProfiles.add ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this))) newProfileName)
            Control.Monad.void (JList.setModel ((jget (this).genericProfilesJList)) (jio (DefaultListModelHelper.getListModel ((jio (GenericProfiles.getDefaultListModelHelper ((jio (GenericModuleConfigurationJPanel.getGenericProfiles this)))))))))
            Control.Monad.void (JList.setSelectedValue ((jget (this).genericProfilesJList)) newProfileName True)
            Control.Monad.void (JDialog.setVisible ((jget (this).newProfileJDialog)) False)
            Control.Monad.void (GenericModuleConfigurationJPanel.updateProfileUI this newProfileName)
        pure ()


newProfileJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newProfileJButtonActionPerformed object_ a1 = jmethod object_ "newProfileJButtonActionPerformed" (\() -> (newProfileJButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel))) () a1

newProfileJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newProfileJButtonActionPerformed_super object_ a1 = (newProfileJButtonActionPerformed_impl (javaCast object_ :: GenericModuleConfigurationJPanel)) a1

newProfileJButtonActionPerformed_impl :: GenericModuleConfigurationJPanel -> ActionEvent.ActionEvent -> IO (())
newProfileJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jget (this).newProfileJDialog)) True)
        pure ()


