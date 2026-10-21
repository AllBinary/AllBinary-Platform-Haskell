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
module MouseActionScriptInputJPanel (module MouseActionScriptInputJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, updateInputType, updateInputType_super, updateInputType_impl, update, update_super, update_impl, getMouseActionJDialog, getMouseActionJDialog_super, getMouseActionJDialog_impl, setMouseActionJDialog, setMouseActionJDialog_super, setMouseActionJDialog_impl, initComponents, initComponents_super, initComponents_impl, button2JCheckBoxActionPerformed, button2JCheckBoxActionPerformed_super, button2JCheckBoxActionPerformed_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, mouseActionJButtonActionPerformed, mouseActionJButtonActionPerformed_super, mouseActionJButtonActionPerformed_impl, logUtil, commonStrings, mouseActionScriptInputInterface, button1JCheckBox, button2JCheckBox, inputAutomationTypeJComboBox, inputTypeJLabel, jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, mouseActionJButton, mouseActionJDialog, mouseDelayJTextField, mouseXJTextField, mouseYJTextField, okJButton, titleJLabel)
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
import qualified MouseActionScriptInputInterface -- same package or java.lang
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified ComboBoxModel -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JComboBox -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified Insets -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified InputEvent -- java.awt.event.InputEvent
import qualified InputRobot -- org.allbinary.input.automation.robot.InputRobot
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
import qualified TempInputRobotNames -- org.allbinary.input.automation.robot.TempInputRobotNames
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import javax.swing.*
import qualified JPanel

data MouseActionScriptInputJPanel = MouseActionScriptInputJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , mouseActionScriptInputInterface :: IORef (MouseActionScriptInputInterface.MouseActionScriptInputInterface)
    , button1JCheckBox :: IORef (JCheckBox.JCheckBox)
    , button2JCheckBox :: IORef (JCheckBox.JCheckBox)
    , inputAutomationTypeJComboBox :: IORef (JComboBox.JComboBox)
    , inputTypeJLabel :: IORef (JLabel.JLabel)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLabel3 :: IORef (JLabel.JLabel)
    , jLabel4 :: IORef (JLabel.JLabel)
    , jLabel5 :: IORef (JLabel.JLabel)
    , jLabel6 :: IORef (JLabel.JLabel)
    , mouseActionJButton :: IORef (JButton.JButton)
    , mouseActionJDialog :: IORef (JDialog.JDialog)
    , mouseDelayJTextField :: IORef (JTextField.JTextField)
    , mouseXJTextField :: IORef (JTextField.JTextField)
    , mouseYJTextField :: IORef (JTextField.JTextField)
    , okJButton :: IORef (JButton.JButton)
    , titleJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull MouseActionScriptInputJPanel where
    javaNull = javaNullRecord "MouseActionScriptInputJPanel"

instance JavaEquals MouseActionScriptInputJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MouseActionScriptInputJPanel where
    (==) = jrecordEquals

instance JavaObjectClass MouseActionScriptInputJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MouseActionScriptInputJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    mouseActionScriptInputInterface <- newIORef javaNull
    button1JCheckBox <- newIORef javaNull
    button2JCheckBox <- newIORef javaNull
    inputAutomationTypeJComboBox <- newIORef javaNull
    inputTypeJLabel <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLabel3 <- newIORef javaNull
    jLabel4 <- newIORef javaNull
    jLabel5 <- newIORef javaNull
    jLabel6 <- newIORef javaNull
    mouseActionJButton <- newIORef javaNull
    mouseActionJDialog <- newIORef javaNull
    mouseDelayJTextField <- newIORef javaNull
    mouseXJTextField <- newIORef javaNull
    mouseYJTextField <- newIORef javaNull
    okJButton <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    let this = MouseActionScriptInputJPanel header_ base logUtil commonStrings mouseActionScriptInputInterface button1JCheckBox button2JCheckBox inputAutomationTypeJComboBox inputTypeJLabel jLabel1 jLabel2 jLabel3 jLabel4 jLabel5 jLabel6 mouseActionJButton mouseActionJDialog mouseDelayJTextField mouseXJTextField mouseYJTextField okJButton titleJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "updateInputType" (\() -> updateInputType_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getMouseActionJDialog" (\() -> getMouseActionJDialog_impl this)
    jregisterMethod header_ "setMouseActionJDialog" (\() -> setMouseActionJDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "button2JCheckBoxActionPerformed" (\() -> button2JCheckBoxActionPerformed_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "mouseActionJButtonActionPerformed" (\() -> mouseActionJButtonActionPerformed_impl this)
    pure this

initFields_ :: MouseActionScriptInputJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.mouseActionScriptInputInterface (javaNull)
    jset this.button1JCheckBox (javaNull)
    jset this.button2JCheckBox (javaNull)
    jset this.inputAutomationTypeJComboBox (javaNull)
    jset this.inputTypeJLabel (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLabel3 (javaNull)
    jset this.jLabel4 (javaNull)
    jset this.jLabel5 (javaNull)
    jset this.jLabel6 (javaNull)
    jset this.mouseActionJButton (javaNull)
    jset this.mouseActionJDialog (javaNull)
    jset this.mouseDelayJTextField (javaNull)
    jset this.mouseXJTextField (javaNull)
    jset this.mouseYJTextField (javaNull)
    jset this.okJButton (javaNull)
    jset this.titleJLabel (javaNull)
    pure ()

new_1 :: MouseActionScriptInputInterface.MouseActionScriptInputInterface -> IO MouseActionScriptInputJPanel
new_1 mouseActionScriptInputInterface = do
    this <- newRecord_
    init_1 this mouseActionScriptInputInterface
    pure this

init_1 :: MouseActionScriptInputJPanel -> MouseActionScriptInputInterface.MouseActionScriptInputInterface -> IO ()
init_1 this mouseActionScriptInputInterface = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).sTART) + mouseActionScriptInputInterface) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (MouseActionScriptInputJPanel.initComponents this)
        jset (this).mouseActionScriptInputInterface (mouseActionScriptInputInterface)
        defaultComboBoxModel <- (DefaultComboBoxModel.new_)
        Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (TempInputRobotNames.lOW_NAME))
        Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (TempInputRobotNames.sYS_NAME))
        Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (InputRobot.nAME))
        Control.Monad.void (JComboBox.setModel ((jget (this).inputAutomationTypeJComboBox)) defaultComboBoxModel)
        Control.Monad.void (MouseActionScriptInputJPanel.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: MouseActionScriptInputJPanel))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: MouseActionScriptInputJPanel))

set_impl :: MouseActionScriptInputJPanel -> IO (())
set_impl this = do
        inputTypeComboBoxModel <- (JComboBox.getModel ((jget (this).inputAutomationTypeJComboBox)))
        Control.Monad.void (ComboBoxModel.setSelectedItem inputTypeComboBoxModel (jio (MouseActionScriptInputInterface.getName ((jio (MouseActionScriptInputInterface.getInputRobotInterface ((jget (this).mouseActionScriptInputInterface))))))))
        if ((((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..&. InputEvent.bUTTON1_MASK)) /= 0) then do
            Control.Monad.void (JCheckBox.setSelected ((jget (this).button1JCheckBox)) True)
        else do
            Control.Monad.void (JCheckBox.setSelected ((jget (this).button1JCheckBox)) False)
        if ((((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..&. InputEvent.bUTTON2_MASK)) /= 0) then do
            Control.Monad.void (JCheckBox.setSelected ((jget (this).button2JCheckBox)) True)
        else do
            Control.Monad.void (JCheckBox.setSelected ((jget (this).button2JCheckBox)) False)
        Control.Monad.void (JTextField.setText ((jget (this).mouseDelayJTextField)) (javaToString (jio (MouseActionScriptInputInterface.getTime ((jget (this).mouseActionScriptInputInterface))))))
        Control.Monad.void (JTextField.setText ((jget (this).mouseXJTextField)) (javaToString (jget ((jio (MouseActionScriptInputInterface.getPoint ((jget (this).mouseActionScriptInputInterface))))).x)))
        Control.Monad.void (JTextField.setText ((jget (this).mouseYJTextField)) (javaToString (jget ((jio (MouseActionScriptInputInterface.getPoint ((jget (this).mouseActionScriptInputInterface))))).y)))
        Control.Monad.void (MouseActionScriptInputInterface.log ((jget (this).mouseActionScriptInputInterface)))
        pure ()


-- throws Exception
updateInputType :: (JavaObjectClass this_) => this_ -> IO (())
updateInputType object_ = jmethod object_ "updateInputType" (\() -> (updateInputType_impl (javaCast object_ :: MouseActionScriptInputJPanel))) ()

updateInputType_super :: (JavaObjectClass this_) => this_ -> IO (())
updateInputType_super object_ = (updateInputType_impl (javaCast object_ :: MouseActionScriptInputJPanel))

updateInputType_impl :: MouseActionScriptInputJPanel -> IO (())
updateInputType_impl this = do
        comboBoxModel <- (JComboBox.getModel ((jget (this).inputAutomationTypeJComboBox)))
        let selectedItem = (javaCast (jio (ComboBoxModel.getSelectedItem comboBoxModel)) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) selectedItem))) $ do
            Control.Monad.void (MouseActionScriptInputInterface.setInputRobotInterface ((jget (this).mouseActionScriptInputInterface)) (jio (InputRobotFactory.get ((jio (InputRobotFactory.getInstance))) selectedItem)))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: MouseActionScriptInputJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: MouseActionScriptInputJPanel))

update_impl :: MouseActionScriptInputJPanel -> IO (())
update_impl this = do
        Control.Monad.void (MouseActionScriptInputJPanel.updateInputType this)
        Control.Monad.void (MouseActionScriptInputInterface.setTime ((jget (this).mouseActionScriptInputInterface)) (javaToString (jio (JTextField.getText ((jget (this).mouseDelayJTextField))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Button State: " ++ javaToString (jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface))))) this "update")
        if (jio (JCheckBox.isSelected ((jget (this).button1JCheckBox)))) then do
            when ((((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..&. InputEvent.bUTTON1_MASK)) == 0) $ do
                Control.Monad.void (MouseActionScriptInputInterface.setButtonClicks ((jget (this).mouseActionScriptInputInterface)) ((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..|. InputEvent.bUTTON1_MASK))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Button 1 Selected: " ++ javaToString (jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface))))) this "update")
        else do
            when ((((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..&. InputEvent.bUTTON1_MASK)) /= 0) $ do
                Control.Monad.void (MouseActionScriptInputInterface.setButtonClicks ((jget (this).mouseActionScriptInputInterface)) ((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) `Data.Bits.xor` InputEvent.bUTTON1_MASK))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Button 1 Deselected: " ++ javaToString (jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface))))) this "update")
        if (jio (JCheckBox.isSelected ((jget (this).button2JCheckBox)))) then do
            when ((((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..&. InputEvent.bUTTON2_MASK)) == 0) $ do
                Control.Monad.void (MouseActionScriptInputInterface.setButtonClicks ((jget (this).mouseActionScriptInputInterface)) ((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..|. InputEvent.bUTTON2_MASK))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Button 2 Selected: " ++ javaToString (jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface))))) this "update")
        else do
            when ((((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) Data.Bits..&. InputEvent.bUTTON2_MASK)) /= 0) $ do
                Control.Monad.void (MouseActionScriptInputInterface.setButtonClicks ((jget (this).mouseActionScriptInputInterface)) ((jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface)))) `Data.Bits.xor` InputEvent.bUTTON2_MASK))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Button 2 Deselected: " ++ javaToString (jio (MouseActionScriptInputInterface.getButtonClicks ((jget (this).mouseActionScriptInputInterface))))) this "update")
        mouseXString <- (JTextField.getText ((jget (this).mouseXJTextField)))
        when ((Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) mouseXString))) && (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) mouseXString))) $ do
            jset ((jio (MouseActionScriptInputInterface.getPoint ((jget (this).mouseActionScriptInputInterface))))).x ((Prelude.read mouseXString))
        mouseYString <- (JTextField.getText ((jget (this).mouseYJTextField)))
        when ((Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) mouseYString))) && (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) mouseYString))) $ do
            jset ((jio (MouseActionScriptInputInterface.getPoint ((jget (this).mouseActionScriptInputInterface))))).y ((Prelude.read mouseYString))
        Control.Monad.void (MouseActionScriptInputInterface.log ((jget (this).mouseActionScriptInputInterface)))
        pure ()


getMouseActionJDialog :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getMouseActionJDialog object_ = jmethod object_ "getMouseActionJDialog" (\() -> (getMouseActionJDialog_impl (javaCast object_ :: MouseActionScriptInputJPanel))) ()

getMouseActionJDialog_super :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getMouseActionJDialog_super object_ = (getMouseActionJDialog_impl (javaCast object_ :: MouseActionScriptInputJPanel))

getMouseActionJDialog_impl :: MouseActionScriptInputJPanel -> IO (JDialog.JDialog)
getMouseActionJDialog_impl this = do
        pure ((jget (this).mouseActionJDialog))


setMouseActionJDialog :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setMouseActionJDialog object_ a1 = jmethod object_ "setMouseActionJDialog" (\() -> (setMouseActionJDialog_impl (javaCast object_ :: MouseActionScriptInputJPanel))) () a1

setMouseActionJDialog_super :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setMouseActionJDialog_super object_ a1 = (setMouseActionJDialog_impl (javaCast object_ :: MouseActionScriptInputJPanel)) a1

setMouseActionJDialog_impl :: MouseActionScriptInputJPanel -> JDialog.JDialog -> IO (())
setMouseActionJDialog_impl this mouseActionJDialog = do
        jset (this).mouseActionJDialog (mouseActionJDialog)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: MouseActionScriptInputJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: MouseActionScriptInputJPanel))

initComponents_impl :: MouseActionScriptInputJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).mouseActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel3 (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).button1JCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).button2JCheckBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel4 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).mouseXJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel5 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).mouseYJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).inputTypeJLabel (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).inputAutomationTypeJComboBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel6 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).mouseDelayJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).mouseActionJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).mouseActionJDialog)) (jio (Dimension.new_2 275 185)))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "Mouse Input Options")
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Buttons:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel3)) "Move To:")
        Control.Monad.void (JCheckBox.setText ((jget (this).button1JCheckBox)) (jget ((jio (CommonPhoneStrings.getInstance))).oNE))
        Control.Monad.void (JCheckBox.setBorder ((jget (this).button1JCheckBox)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JCheckBox.setMargin ((jget (this).button1JCheckBox)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JCheckBox.setText ((jget (this).button2JCheckBox)) (jget ((jio (CommonPhoneStrings.getInstance))).tWO))
        Control.Monad.void (JCheckBox.setBorder ((jget (this).button2JCheckBox)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JCheckBox.setMargin ((jget (this).button2JCheckBox)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JCheckBox.addActionListener ((jget (this).button2JCheckBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel4)) "x:")
        Control.Monad.void (JTextField.setText ((jget (this).mouseXJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel5)) "y:")
        Control.Monad.void (JTextField.setText ((jget (this).mouseYJTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JLabel.setText ((jget (this).inputTypeJLabel)) "Input Type:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel6)) "Delay:")
        Control.Monad.void (JTextField.setText ((jget (this).mouseDelayJTextField)) "100")
        mouseActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).mouseActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).mouseActionJDialog))))) mouseActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup mouseActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout)))))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.inputTypeJLabel)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget this.jLabel2)))) 25 25 25))))) (jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel3)))) (jget this.jLabel6)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))))))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.mouseDelayJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 154 (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget this.titleJLabel)))) 45 45 45))))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.inputAutomationTypeJComboBox) 0 154 (Prelude.maxBound :: Int16)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget this.button1JCheckBox)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.button2JCheckBox)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.okJButton)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget this.jLabel4)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 5 (Prelude.maxBound :: Int16)))) (jget this.mouseXJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 59 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel5)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.mouseYJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 62 (Prelude.maxBound :: Int16)))))))))))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup mouseActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup mouseActionJDialogLayout))) (jget this.titleJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.inputTypeJLabel)))) (jget this.inputAutomationTypeJComboBox) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel2) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 15 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.button1JCheckBox)))) (jget this.button2JCheckBox)))))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel6)))) (jget this.mouseDelayJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup mouseActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel3)))) (jget this.jLabel4)))) (jget this.jLabel5)))) (jget this.mouseYJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.mouseXJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.okJButton)))))))))
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 100 0)))
        Control.Monad.void (JButton.setText ((jget (this).mouseActionJButton)) "Edit")
        Control.Monad.void (JButton.addActionListener ((jget (this).mouseActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Mouse:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 36 (Prelude.maxBound :: Int16)))) (jget this.mouseActionJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.mouseActionJButton))))))
        pure ()


button2JCheckBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
button2JCheckBoxActionPerformed object_ a1 = jmethod object_ "button2JCheckBoxActionPerformed" (\() -> (button2JCheckBoxActionPerformed_impl (javaCast object_ :: MouseActionScriptInputJPanel))) () a1

button2JCheckBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
button2JCheckBoxActionPerformed_super object_ a1 = (button2JCheckBoxActionPerformed_impl (javaCast object_ :: MouseActionScriptInputJPanel)) a1

button2JCheckBoxActionPerformed_impl :: MouseActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
button2JCheckBoxActionPerformed_impl this evt = do
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: MouseActionScriptInputJPanel))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: MouseActionScriptInputJPanel)) a1

okJButtonActionPerformed_impl :: MouseActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "okButtonActionPerformed" e)
            ) $ do
            Control.Monad.void (MouseActionScriptInputJPanel.update this)
            Control.Monad.void (JDialog.setVisible ((jio (MouseActionScriptInputJPanel.getMouseActionJDialog this))) False)
        pure ()


mouseActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
mouseActionJButtonActionPerformed object_ a1 = jmethod object_ "mouseActionJButtonActionPerformed" (\() -> (mouseActionJButtonActionPerformed_impl (javaCast object_ :: MouseActionScriptInputJPanel))) () a1

mouseActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
mouseActionJButtonActionPerformed_super object_ a1 = (mouseActionJButtonActionPerformed_impl (javaCast object_ :: MouseActionScriptInputJPanel)) a1

mouseActionJButtonActionPerformed_impl :: MouseActionScriptInputJPanel -> ActionEvent.ActionEvent -> IO (())
mouseActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jio (MouseActionScriptInputJPanel.getMouseActionJDialog this))) True)
        pure ()


