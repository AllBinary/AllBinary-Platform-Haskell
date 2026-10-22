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
module KeyboardActionScriptInputJPanel (module KeyboardActionScriptInputJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, updateInputType, updateInputType_super, updateInputType_impl, getSelectedKey, getSelectedKey_super, getSelectedKey_impl, updateKeys, updateKeys_super, updateKeys_impl, update, update_super, update_impl, getKeyActionJDialog, getKeyActionJDialog_super, getKeyActionJDialog_impl, setKeyActionJDialog, setKeyActionJDialog_super, setKeyActionJDialog_impl, initComponents, initComponents_super, initComponents_impl, prependText, prependText_super, prependText_impl, keyIntegerJComboBoxActionPerformed, keyIntegerJComboBoxActionPerformed_super, keyIntegerJComboBoxActionPerformed_impl, sequenceJRadioButtonActionPerformed, sequenceJRadioButtonActionPerformed_super, sequenceJRadioButtonActionPerformed_impl, simultaneousJRadioButtonActionPerformed, simultaneousJRadioButtonActionPerformed_super, simultaneousJRadioButtonActionPerformed_impl, keyNameJComboBoxActionPerformed, keyNameJComboBoxActionPerformed_super, keyNameJComboBoxActionPerformed_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, keyActionJButtonActionPerformed, keyActionJButtonActionPerformed_super, keyActionJButtonActionPerformed_impl, normalJRadioButtonActionPerformed, normalJRadioButtonActionPerformed_super, normalJRadioButtonActionPerformed_impl, releaseJRadioButtonActionPerformed, releaseJRadioButtonActionPerformed_super, releaseJRadioButtonActionPerformed_impl, pressJRadioButtonActionPerformed, pressJRadioButtonActionPerformed_super, pressJRadioButtonActionPerformed_impl, logUtil, commonStrings, keyActionScriptInputInterface, addKeyJLabel, delayBetweenJLabel, delayJTextField, holdTimeJLabel, inputAutomationTypeJComboBox, inputTypeJLabel, jLabel1, jPanel1, keyActionJButton, keyActionJDialog, keyIntegerJComboBox, keyNameJComboBox, normalJRadioButton, okJButton, pressJRadioButton, releaseJRadioButton, sequenceJRadioButton, simultaneousJRadioButton, testJLabel, textJTextField, timeJTextField, titleJLabel)
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
import qualified KeyboardActionScriptInputInterface -- same package or java.lang
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified KeyNameDefaultComboBoxModelFactory -- same package or java.lang
import qualified KeyCharDefaultComboBoxModelFactory -- same package or java.lang
import qualified ComboBoxModel -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JComboBox -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JRadioButton -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified Insets -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified KeySingletonFactory -- org.allbinary.input.KeySingletonFactory
import qualified InputRobot -- org.allbinary.input.automation.robot.InputRobot
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
import qualified TempInputRobotNames -- org.allbinary.input.automation.robot.TempInputRobotNames
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import javax.swing.*
import qualified JPanel

data KeyboardActionScriptInputJPanel = KeyboardActionScriptInputJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , keyActionScriptInputInterface :: IORef (KeyboardActionScriptInputInterface.KeyboardActionScriptInputInterface)
    , addKeyJLabel :: IORef (JLabel.JLabel)
    , delayBetweenJLabel :: IORef (JLabel.JLabel)
    , delayJTextField :: IORef (JTextField.JTextField)
    , holdTimeJLabel :: IORef (JLabel.JLabel)
    , inputAutomationTypeJComboBox :: IORef (JComboBox.JComboBox)
    , inputTypeJLabel :: IORef (JLabel.JLabel)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , keyActionJButton :: IORef (JButton.JButton)
    , keyActionJDialog :: IORef (JDialog.JDialog)
    , keyIntegerJComboBox :: IORef (JComboBox.JComboBox)
    , keyNameJComboBox :: IORef (JComboBox.JComboBox)
    , normalJRadioButton :: IORef (JRadioButton.JRadioButton)
    , okJButton :: IORef (JButton.JButton)
    , pressJRadioButton :: IORef (JRadioButton.JRadioButton)
    , releaseJRadioButton :: IORef (JRadioButton.JRadioButton)
    , sequenceJRadioButton :: IORef (JRadioButton.JRadioButton)
    , simultaneousJRadioButton :: IORef (JRadioButton.JRadioButton)
    , testJLabel :: IORef (JLabel.JLabel)
    , textJTextField :: IORef (JTextField.JTextField)
    , timeJTextField :: IORef (JTextField.JTextField)
    , titleJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull KeyboardActionScriptInputJPanel where
    javaNull = javaNullRecord "KeyboardActionScriptInputJPanel"

instance JavaEquals KeyboardActionScriptInputJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyboardActionScriptInputJPanel where
    (==) = jrecordEquals

instance JavaObjectClass KeyboardActionScriptInputJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO KeyboardActionScriptInputJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    keyActionScriptInputInterface <- newIORef javaNull
    addKeyJLabel <- newIORef javaNull
    delayBetweenJLabel <- newIORef javaNull
    delayJTextField <- newIORef javaNull
    holdTimeJLabel <- newIORef javaNull
    inputAutomationTypeJComboBox <- newIORef javaNull
    inputTypeJLabel <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    keyActionJButton <- newIORef javaNull
    keyActionJDialog <- newIORef javaNull
    keyIntegerJComboBox <- newIORef javaNull
    keyNameJComboBox <- newIORef javaNull
    normalJRadioButton <- newIORef javaNull
    okJButton <- newIORef javaNull
    pressJRadioButton <- newIORef javaNull
    releaseJRadioButton <- newIORef javaNull
    sequenceJRadioButton <- newIORef javaNull
    simultaneousJRadioButton <- newIORef javaNull
    testJLabel <- newIORef javaNull
    textJTextField <- newIORef javaNull
    timeJTextField <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    let this = KeyboardActionScriptInputJPanel header_ base logUtil commonStrings keyActionScriptInputInterface addKeyJLabel delayBetweenJLabel delayJTextField holdTimeJLabel inputAutomationTypeJComboBox inputTypeJLabel jLabel1 jPanel1 keyActionJButton keyActionJDialog keyIntegerJComboBox keyNameJComboBox normalJRadioButton okJButton pressJRadioButton releaseJRadioButton sequenceJRadioButton simultaneousJRadioButton testJLabel textJTextField timeJTextField titleJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "updateInputType" (\() -> updateInputType_impl this)
    jregisterMethod header_ "getSelectedKey" (\() -> getSelectedKey_impl this)
    jregisterMethod header_ "updateKeys" (\() -> updateKeys_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getKeyActionJDialog" (\() -> getKeyActionJDialog_impl this)
    jregisterMethod header_ "setKeyActionJDialog" (\() -> setKeyActionJDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "prependText" (\() -> prependText_impl this)
    jregisterMethod header_ "keyIntegerJComboBoxActionPerformed" (\() -> keyIntegerJComboBoxActionPerformed_impl this)
    jregisterMethod header_ "sequenceJRadioButtonActionPerformed" (\() -> sequenceJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "simultaneousJRadioButtonActionPerformed" (\() -> simultaneousJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "keyNameJComboBoxActionPerformed" (\() -> keyNameJComboBoxActionPerformed_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "keyActionJButtonActionPerformed" (\() -> keyActionJButtonActionPerformed_impl this)
    jregisterMethod header_ "normalJRadioButtonActionPerformed" (\() -> normalJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "releaseJRadioButtonActionPerformed" (\() -> releaseJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "pressJRadioButtonActionPerformed" (\() -> pressJRadioButtonActionPerformed_impl this)
    pure this

initFields_ :: KeyboardActionScriptInputJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.keyActionScriptInputInterface (javaNull)
    jset this.addKeyJLabel (javaNull)
    jset this.delayBetweenJLabel (javaNull)
    jset this.delayJTextField (javaNull)
    jset this.holdTimeJLabel (javaNull)
    jset this.inputAutomationTypeJComboBox (javaNull)
    jset this.inputTypeJLabel (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.keyActionJButton (javaNull)
    jset this.keyActionJDialog (javaNull)
    jset this.keyIntegerJComboBox (javaNull)
    jset this.keyNameJComboBox (javaNull)
    jset this.normalJRadioButton (javaNull)
    jset this.okJButton (javaNull)
    jset this.pressJRadioButton (javaNull)
    jset this.releaseJRadioButton (javaNull)
    jset this.sequenceJRadioButton (javaNull)
    jset this.simultaneousJRadioButton (javaNull)
    jset this.testJLabel (javaNull)
    jset this.textJTextField (javaNull)
    jset this.timeJTextField (javaNull)
    jset this.titleJLabel (javaNull)
    pure ()

new_1 :: KeyboardActionScriptInputInterface.KeyboardActionScriptInputInterface -> IO KeyboardActionScriptInputJPanel
new_1 keyActionScriptInputInterface = do
    this <- newRecord_
    init_1 this keyActionScriptInputInterface
    pure this

init_1 :: KeyboardActionScriptInputJPanel -> KeyboardActionScriptInputInterface.KeyboardActionScriptInputInterface -> IO ()
init_1 this keyActionScriptInputInterface = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (KeyboardActionScriptInputJPanel.initComponents this)
        jset (this).keyActionScriptInputInterface (keyActionScriptInputInterface)
        defaultComboBoxModel <- (DefaultComboBoxModel.new_)
        Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (TempInputRobotNames.dX_NAME))
        Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (InputRobot.nAME))
        Control.Monad.void (JComboBox.setModel ((jget (this).inputAutomationTypeJComboBox)) defaultComboBoxModel)
        Control.Monad.void (JComboBox.setModel ((jget (this).keyNameJComboBox)) (jio (KeyNameDefaultComboBoxModelFactory.getInstance)))
        Control.Monad.void (JComboBox.setModel ((jget (this).keyIntegerJComboBox)) (jio (KeyCharDefaultComboBoxModelFactory.getInstance)))
        if (jio (KeyboardActionScriptInputInterface.isNormal ((jget (this).keyActionScriptInputInterface)))) then do
            Control.Monad.void (JRadioButton.setSelected ((jget (this).normalJRadioButton)) True)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).pressJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).releaseJRadioButton)) False)
        else if (jio (KeyboardActionScriptInputInterface.isPress ((jget (this).keyActionScriptInputInterface)))) then do
            Control.Monad.void (JRadioButton.setSelected ((jget (this).normalJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).pressJRadioButton)) True)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).releaseJRadioButton)) False)
        else when (jio (KeyboardActionScriptInputInterface.isRelease ((jget (this).keyActionScriptInputInterface)))) $ do
            Control.Monad.void (JRadioButton.setSelected ((jget (this).normalJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).pressJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).releaseJRadioButton)) True)
        Control.Monad.void (KeyboardActionScriptInputJPanel.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

set_impl :: KeyboardActionScriptInputJPanel -> IO (())
set_impl this = do
        inputTypeComboBoxModel <- (JComboBox.getModel ((jget (this).inputAutomationTypeJComboBox)))
        Control.Monad.void (ComboBoxModel.setSelectedItem inputTypeComboBoxModel (jio (KeyboardActionScriptInputInterface.getName ((jio (KeyboardActionScriptInputInterface.getInputRobotInterface ((jget (this).keyActionScriptInputInterface))))))))
        Control.Monad.void (JTextField.setText ((jget (this).textJTextField)) (jio (KeyboardActionScriptInputInterface.getText ((jget (this).keyActionScriptInputInterface)))))
        Control.Monad.void (JTextField.setText ((jget (this).delayJTextField)) (javaToString (jio (KeyboardActionScriptInputInterface.getDelayBetweenKeys ((jget (this).keyActionScriptInputInterface))))))
        Control.Monad.void (JTextField.setText ((jget (this).timeJTextField)) (javaToString (jio (KeyboardActionScriptInputInterface.getTime ((jget (this).keyActionScriptInputInterface))))))
        Control.Monad.void (KeyboardActionScriptInputInterface.log ((jget (this).keyActionScriptInputInterface)))
        pure ()


-- throws Exception
updateInputType :: (JavaObjectClass this_) => this_ -> IO (())
updateInputType object_ = jmethod object_ "updateInputType" (\() -> (updateInputType_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

updateInputType_super :: (JavaObjectClass this_) => this_ -> IO (())
updateInputType_super object_ = (updateInputType_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

updateInputType_impl :: KeyboardActionScriptInputJPanel -> IO (())
updateInputType_impl this = do
        comboBoxModel <- (JComboBox.getModel ((jget (this).inputAutomationTypeJComboBox)))
        let selectedItem = (javaCast (jio (ComboBoxModel.getSelectedItem comboBoxModel)) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) selectedItem))) $ do
            Control.Monad.void (KeyboardActionScriptInputInterface.setInputRobotInterface ((jget (this).keyActionScriptInputInterface)) (jio (InputRobotFactory.get_1 ((jio (InputRobotFactory.getInstance))) selectedItem)))
        pure ()


getSelectedKey :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedKey object_ = jmethod object_ "getSelectedKey" (\() -> (getSelectedKey_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

getSelectedKey_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedKey_super object_ = (getSelectedKey_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

getSelectedKey_impl :: KeyboardActionScriptInputJPanel -> IO (Int)
getSelectedKey_impl this = do
    javaCatchReturn $ do
        comboBoxModel <- (JComboBox.getModel ((jget (this).keyNameJComboBox)))
        let selectedItem = (javaCast (jio (ComboBoxModel.getSelectedItem comboBoxModel)) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) selectedItem))) $ do
            javaReturn ((javaCast (jio (ABHashtable.get ((jio (KeySingletonFactory.getHashtable))) selectedItem)) :: Int))
        pure (javaNull)


updateKeys :: (JavaObjectClass this_) => this_ -> IO (())
updateKeys object_ = jmethod object_ "updateKeys" (\() -> (updateKeys_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

updateKeys_super :: (JavaObjectClass this_) => this_ -> IO (())
updateKeys_super object_ = (updateKeys_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

updateKeys_impl :: KeyboardActionScriptInputJPanel -> IO (())
updateKeys_impl this = do
        text <- (JTextField.getText ((jget (this).textJTextField)))
        Control.Monad.void (KeyboardActionScriptInputInterface.setText ((jget (this).keyActionScriptInputInterface)) text)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

update_impl :: KeyboardActionScriptInputJPanel -> IO (())
update_impl this = do
        Control.Monad.void (KeyboardActionScriptInputJPanel.updateInputType this)
        Control.Monad.void (KeyboardActionScriptInputJPanel.updateKeys this)
        Control.Monad.void (KeyboardActionScriptInputInterface.setTime ((jget (this).keyActionScriptInputInterface)) (javaToString (jio (JTextField.getText ((jget (this).timeJTextField))))))
        Control.Monad.void (KeyboardActionScriptInputInterface.log ((jget (this).keyActionScriptInputInterface)))
        pure ()


getKeyActionJDialog :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getKeyActionJDialog object_ = jmethod object_ "getKeyActionJDialog" (\() -> (getKeyActionJDialog_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

getKeyActionJDialog_super :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getKeyActionJDialog_super object_ = (getKeyActionJDialog_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

getKeyActionJDialog_impl :: KeyboardActionScriptInputJPanel -> IO (JDialog.JDialog)
getKeyActionJDialog_impl this = do
        pure ((jget (this).keyActionJDialog))


setKeyActionJDialog :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setKeyActionJDialog object_ a1 = jmethod object_ "setKeyActionJDialog" (\() -> (setKeyActionJDialog_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

setKeyActionJDialog_super :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setKeyActionJDialog_super object_ a1 = (setKeyActionJDialog_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

setKeyActionJDialog_impl :: KeyboardActionScriptInputJPanel -> JDialog.JDialog -> IO (())
setKeyActionJDialog_impl this keyActionJDialog = do
        jset (this).keyActionJDialog (keyActionJDialog)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))

initComponents_impl :: KeyboardActionScriptInputJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).keyActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).addKeyJLabel (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).keyNameJComboBox (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).timeJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).holdTimeJLabel (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).inputAutomationTypeJComboBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).inputTypeJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).delayJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).delayBetweenJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).testJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).textJTextField (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).pressJRadioButton (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).releaseJRadioButton (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).normalJRadioButton (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).simultaneousJRadioButton (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).sequenceJRadioButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).keyIntegerJComboBox (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).keyActionJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).keyActionJDialog)) (jio (Dimension.new_2 255 280)))
        Control.Monad.void (JLabel.setHorizontalAlignment ((jget (this).titleJLabel)) (jget ((jget (javax.swing).swingConstants)).cENTER))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "Keyboard Input Options")
        Control.Monad.void (JLabel.setText ((jget (this).addKeyJLabel)) "Add Key:")
        Control.Monad.void (JComboBox.addActionListener ((jget (this).keyNameJComboBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JTextField.setText ((jget (this).timeJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JLabel.setText ((jget (this).holdTimeJLabel)) "Hold Time (ms):")
        Control.Monad.void (JLabel.setText ((jget (this).inputTypeJLabel)) "Input Type:")
        Control.Monad.void (JTextField.setText ((jget (this).delayJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JLabel.setText ((jget (this).delayBetweenJLabel)) "Delay Between Keys (ms):")
        Control.Monad.void (JLabel.setText ((jget (this).testJLabel)) "Text:")
        Control.Monad.void (JTextField.setText ((jget (this).textJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JRadioButton.setText ((jget (this).pressJRadioButton)) "Press")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).pressJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).pressJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).pressJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JRadioButton.setText ((jget (this).releaseJRadioButton)) "Release")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).releaseJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).releaseJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).releaseJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JRadioButton.setSelected ((jget (this).normalJRadioButton)) True)
        Control.Monad.void (JRadioButton.setText ((jget (this).normalJRadioButton)) "Normal")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).normalJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).normalJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).normalJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JRadioButton.setSelected ((jget (this).simultaneousJRadioButton)) True)
        Control.Monad.void (JRadioButton.setText ((jget (this).simultaneousJRadioButton)) "Simultaneous")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).simultaneousJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).simultaneousJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).simultaneousJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JRadioButton.setText ((jget (this).sequenceJRadioButton)) "Sequence")
        Control.Monad.void (JRadioButton.setBorder ((jget (this).sequenceJRadioButton)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JRadioButton.setMargin ((jget (this).sequenceJRadioButton)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).sequenceJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.setHorizontalTextPosition ((jget (this).okJButton)) (jget ((jget (javax.swing).swingConstants)).cENTER))
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JPanel.add ((jget (this).jPanel1)) (jget (this).okJButton))
        Control.Monad.void (JComboBox.addActionListener ((jget (this).keyIntegerJComboBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        keyActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).keyActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).keyActionJDialog))))) keyActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup keyActionJDialogLayout (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout)))))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) False))) (jget this.addKeyJLabel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.inputTypeJLabel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.inputAutomationTypeJComboBox) 0 148 (Prelude.maxBound :: Int16)))) (jget this.textJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 148 (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jget this.keyNameJComboBox) 0 101 (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.keyIntegerJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 41 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))))) (jget this.testJLabel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 60 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jget this.normalJRadioButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.pressJRadioButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.releaseJRadioButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 48 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jget this.holdTimeJLabel)))) 22 22 22))) (jget this.timeJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 113 (Prelude.maxBound :: Int16)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jget this.delayBetweenJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 15 (Prelude.maxBound :: Int16)))) (jget this.delayJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 68 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jget this.simultaneousJRadioButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.sequenceJRadioButton))))))))))))) (jget this.titleJLabel) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 229 (Prelude.maxBound :: Int16)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 229 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup keyActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup keyActionJDialogLayout))) (jget this.titleJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.inputTypeJLabel)))) (jget this.inputAutomationTypeJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.addKeyJLabel)))) (jget this.keyIntegerJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.keyNameJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.testJLabel)))) (jget this.textJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.pressJRadioButton)))) (jget this.normalJRadioButton)))) (jget this.releaseJRadioButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.holdTimeJLabel)))) (jget this.timeJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.delayBetweenJLabel)))) (jget this.delayJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup keyActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.simultaneousJRadioButton)))) (jget this.sequenceJRadioButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))))
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 100 0)))
        Control.Monad.void (JButton.setText ((jget (this).keyActionJButton)) "Edit")
        Control.Monad.void (JButton.addActionListener ((jget (this).keyActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Key:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 49 (Prelude.maxBound :: Int16)))) (jget this.keyActionJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.keyActionJButton))))))
        pure ()


prependText :: (JavaObjectClass this_) => this_ -> Int -> IO (())
prependText object_ a1 = jmethod object_ "prependText" (\() -> (prependText_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

prependText_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
prependText_super object_ a1 = (prependText_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

prependText_impl :: KeyboardActionScriptInputJPanel -> Int -> IO (())
prependText_impl this integer = do
        when (integer /= javaNull) $ do
            let newKey = (("&#" ++ (javaToString integer)) ++ ";")
            Control.Monad.void (JTextField.setText ((jget (this).textJTextField)) (newKey ++ javaToString (jio (JTextField.getText ((jget (this).textJTextField))))))
        pure ()


keyIntegerJComboBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
keyIntegerJComboBoxActionPerformed object_ a1 = jmethod object_ "keyIntegerJComboBoxActionPerformed" (\() -> (keyIntegerJComboBoxActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

keyIntegerJComboBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
keyIntegerJComboBoxActionPerformed_super object_ a1 = (keyIntegerJComboBoxActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

keyIntegerJComboBoxActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
keyIntegerJComboBoxActionPerformed_impl this evt = do
        Control.Monad.void (JComboBox.getSelectedIndex ((jget (this).keyIntegerJComboBox)))
        Control.Monad.void (JComboBox.setSelectedIndex ((jget (this).keyNameJComboBox)) (jio (JComboBox.getSelectedIndex ((jget (this).keyIntegerJComboBox)))))
        pure ()


sequenceJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
sequenceJRadioButtonActionPerformed object_ a1 = jmethod object_ "sequenceJRadioButtonActionPerformed" (\() -> (sequenceJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

sequenceJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
sequenceJRadioButtonActionPerformed_super object_ a1 = (sequenceJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

sequenceJRadioButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
sequenceJRadioButtonActionPerformed_impl this evt = do
        when (jio (JRadioButton.isSelected ((jget (this).sequenceJRadioButton)))) $ do
            Control.Monad.void (JTextField.setText ((jget (this).delayJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).oNE))
            Control.Monad.void (JRadioButton.setSelected ((jget (this).simultaneousJRadioButton)) False)
        pure ()


simultaneousJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
simultaneousJRadioButtonActionPerformed object_ a1 = jmethod object_ "simultaneousJRadioButtonActionPerformed" (\() -> (simultaneousJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

simultaneousJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
simultaneousJRadioButtonActionPerformed_super object_ a1 = (simultaneousJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

simultaneousJRadioButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
simultaneousJRadioButtonActionPerformed_impl this evt = do
        when (jio (JRadioButton.isSelected ((jget (this).simultaneousJRadioButton)))) $ do
            Control.Monad.void (JTextField.setText ((jget (this).delayJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
            Control.Monad.void (JRadioButton.setSelected ((jget (this).sequenceJRadioButton)) False)
        pure ()


keyNameJComboBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
keyNameJComboBoxActionPerformed object_ a1 = jmethod object_ "keyNameJComboBoxActionPerformed" (\() -> (keyNameJComboBoxActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

keyNameJComboBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
keyNameJComboBoxActionPerformed_super object_ a1 = (keyNameJComboBoxActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

keyNameJComboBoxActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
keyNameJComboBoxActionPerformed_impl this evt = do
        integer <- (KeyboardActionScriptInputJPanel.getSelectedKey this)
        Control.Monad.void (KeyboardActionScriptInputJPanel.prependText this integer)
        Control.Monad.void (JComboBox.setSelectedIndex ((jget (this).keyIntegerJComboBox)) (jio (JComboBox.getSelectedIndex ((jget (this).keyNameJComboBox)))))
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

okJButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "okButtonActionPerformed" e)
            ) $ do
            Control.Monad.void (KeyboardActionScriptInputJPanel.update this)
            Control.Monad.void (JDialog.setVisible ((jio (KeyboardActionScriptInputJPanel.getKeyActionJDialog this))) False)
        pure ()


keyActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
keyActionJButtonActionPerformed object_ a1 = jmethod object_ "keyActionJButtonActionPerformed" (\() -> (keyActionJButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

keyActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
keyActionJButtonActionPerformed_super object_ a1 = (keyActionJButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

keyActionJButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
keyActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jio (KeyboardActionScriptInputJPanel.getKeyActionJDialog this))) True)
        pure ()


normalJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
normalJRadioButtonActionPerformed object_ a1 = jmethod object_ "normalJRadioButtonActionPerformed" (\() -> (normalJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

normalJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
normalJRadioButtonActionPerformed_super object_ a1 = (normalJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

normalJRadioButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
normalJRadioButtonActionPerformed_impl this evt = do
        when (jio (JRadioButton.isSelected ((jget (this).normalJRadioButton)))) $ do
            Control.Monad.void (KeyboardActionScriptInputInterface.setNormal ((jget (this).keyActionScriptInputInterface)))
            Control.Monad.void (JRadioButton.setSelected ((jget (this).pressJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).releaseJRadioButton)) False)
        pure ()


releaseJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
releaseJRadioButtonActionPerformed object_ a1 = jmethod object_ "releaseJRadioButtonActionPerformed" (\() -> (releaseJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

releaseJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
releaseJRadioButtonActionPerformed_super object_ a1 = (releaseJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

releaseJRadioButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
releaseJRadioButtonActionPerformed_impl this evt = do
        when (jio (JRadioButton.isSelected ((jget (this).releaseJRadioButton)))) $ do
            Control.Monad.void (KeyboardActionScriptInputInterface.setRelease ((jget (this).keyActionScriptInputInterface)) True)
            Control.Monad.void (KeyboardActionScriptInputInterface.setPress ((jget (this).keyActionScriptInputInterface)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).pressJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).normalJRadioButton)) False)
        pure ()


pressJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
pressJRadioButtonActionPerformed object_ a1 = jmethod object_ "pressJRadioButtonActionPerformed" (\() -> (pressJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel))) () a1

pressJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
pressJRadioButtonActionPerformed_super object_ a1 = (pressJRadioButtonActionPerformed_impl (javaCast object_ :: KeyboardActionScriptInputJPanel)) a1

pressJRadioButtonActionPerformed_impl :: KeyboardActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
pressJRadioButtonActionPerformed_impl this evt = do
        when (jio (JRadioButton.isSelected ((jget (this).pressJRadioButton)))) $ do
            Control.Monad.void (KeyboardActionScriptInputInterface.setPress ((jget (this).keyActionScriptInputInterface)) True)
            Control.Monad.void (KeyboardActionScriptInputInterface.setRelease ((jget (this).keyActionScriptInputInterface)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).releaseJRadioButton)) False)
            Control.Monad.void (JRadioButton.setSelected ((jget (this).normalJRadioButton)) False)
        pure ()


