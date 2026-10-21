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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module ImageActionScriptOutputJPanel (module ImageActionScriptOutputJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, update, update_super, update_impl, setImageTypeJlistModel, setImageTypeJlistModel_super, setImageTypeJlistModel_impl, getCapturedImageActionJDialog, getCapturedImageActionJDialog_super, getCapturedImageActionJDialog_impl, setCapturedImageActionJDialog, setCapturedImageActionJDialog_super, setCapturedImageActionJDialog_impl, initComponents, initComponents_super, initComponents_impl, displayJCheckBoxActionPerformed, displayJCheckBoxActionPerformed_super, displayJCheckBoxActionPerformed_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, capturedImageActionJButtonActionPerformed, capturedImageActionJButtonActionPerformed_super, capturedImageActionJButtonActionPerformed_impl, logUtil, commonStrings, capturedImageActionScriptOutputInterface, capturedImageActionJButton, capturedImageActionJDialog, displayJCheckBox, itemTypesJList, jLabel1, jScrollPane1, okJButton, saveJCheckBox, titleJLabel)
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
import qualified ImageActionScriptOutputInterface -- same package or java.lang
import qualified ImageTypes -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified DefaultListModel -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JList -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified Insets -- same package or java.lang
import qualified AbstractListModel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified InputImageType -- org.allbinary.input.media.image.InputImageType
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import javax.swing.*
import qualified JPanel

data ImageActionScriptOutputJPanel = ImageActionScriptOutputJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , capturedImageActionScriptOutputInterface :: IORef (ImageActionScriptOutputInterface.ImageActionScriptOutputInterface)
    , capturedImageActionJButton :: IORef (JButton.JButton)
    , capturedImageActionJDialog :: IORef (JDialog.JDialog)
    , displayJCheckBox :: IORef (JCheckBox.JCheckBox)
    , itemTypesJList :: IORef (JList.JList)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jScrollPane1 :: IORef (JScrollPane.JScrollPane)
    , okJButton :: IORef (JButton.JButton)
    , saveJCheckBox :: IORef (JCheckBox.JCheckBox)
    , titleJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull ImageActionScriptOutputJPanel where
    javaNull = javaNullRecord "ImageActionScriptOutputJPanel"

instance JavaEquals ImageActionScriptOutputJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageActionScriptOutputJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ImageActionScriptOutputJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageActionScriptOutputJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    capturedImageActionScriptOutputInterface <- newIORef javaNull
    capturedImageActionJButton <- newIORef javaNull
    capturedImageActionJDialog <- newIORef javaNull
    displayJCheckBox <- newIORef javaNull
    itemTypesJList <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jScrollPane1 <- newIORef javaNull
    okJButton <- newIORef javaNull
    saveJCheckBox <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    let this = ImageActionScriptOutputJPanel header_ base logUtil commonStrings capturedImageActionScriptOutputInterface capturedImageActionJButton capturedImageActionJDialog displayJCheckBox itemTypesJList jLabel1 jScrollPane1 okJButton saveJCheckBox titleJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setImageTypeJlistModel" (\() -> setImageTypeJlistModel_impl this)
    jregisterMethod header_ "getCapturedImageActionJDialog" (\() -> getCapturedImageActionJDialog_impl this)
    jregisterMethod header_ "setCapturedImageActionJDialog" (\() -> setCapturedImageActionJDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "displayJCheckBoxActionPerformed" (\() -> displayJCheckBoxActionPerformed_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "capturedImageActionJButtonActionPerformed" (\() -> capturedImageActionJButtonActionPerformed_impl this)
    pure this

initFields_ :: ImageActionScriptOutputJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.capturedImageActionScriptOutputInterface (javaNull)
    jset this.capturedImageActionJButton (javaNull)
    jset this.capturedImageActionJDialog (javaNull)
    jset this.displayJCheckBox (javaNull)
    jset this.itemTypesJList (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jScrollPane1 (javaNull)
    jset this.okJButton (javaNull)
    jset this.saveJCheckBox (javaNull)
    jset this.titleJLabel (javaNull)
    pure ()

new_1 :: ImageActionScriptOutputInterface.ImageActionScriptOutputInterface -> IO ImageActionScriptOutputJPanel
new_1 capturedImageActionScriptOutputInterface = do
    this <- newRecord_
    init_1 this capturedImageActionScriptOutputInterface
    pure this

init_1 :: ImageActionScriptOutputJPanel -> ImageActionScriptOutputInterface.ImageActionScriptOutputInterface -> IO ()
init_1 this capturedImageActionScriptOutputInterface = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (ImageActionScriptOutputJPanel.initComponents this)
        jset (this).capturedImageActionScriptOutputInterface (capturedImageActionScriptOutputInterface)
        Control.Monad.void (ImageActionScriptOutputJPanel.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: ImageActionScriptOutputJPanel))

set_impl :: ImageActionScriptOutputJPanel -> IO (())
set_impl this = do
        Control.Monad.void (ImageActionScriptOutputJPanel.setImageTypeJlistModel this)
        imageTypes <- (ImageActionScriptOutputInterface.getImageTypes ((jget (this).capturedImageActionScriptOutputInterface)))
        vector <- (ImageTypes.getVector imageTypes)
        let selectedArray = (jnewArray ((jio (BasicArrayList.size vector))) 0)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let imageType = (javaCast (jio (BasicArrayList.get vector index)) :: InputImageType.InputImageType)
            assignedValue <- (InputImageType.getIndex imageType)
            jsetIndex selectedArray ((jpostIncrement  (+ 1))) (assignedValue)
        Control.Monad.void (JList.setSelectedIndices ((jget (this).itemTypesJList)) selectedArray)
        when (jio (ImageActionScriptOutputInterface.isSaved ((jget (this).capturedImageActionScriptOutputInterface)))) $ do
            Control.Monad.void (JCheckBox.setSelected ((jget (this).saveJCheckBox)) True)
        when (jio (ImageActionScriptOutputInterface.isSaved ((jget (this).capturedImageActionScriptOutputInterface)))) $ do
            Control.Monad.void (JCheckBox.setSelected ((jget (this).displayJCheckBox)) True)
        Control.Monad.void (ImageActionScriptOutputInterface.log ((jget (this).capturedImageActionScriptOutputInterface)))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: ImageActionScriptOutputJPanel))

update_impl :: ImageActionScriptOutputJPanel -> IO (())
update_impl this = do
        anyType <- (JList.getSelectedValues ((jget (this).itemTypesJList)))
        imageTypes <- (ImageTypes.valueOf anyType)
        Control.Monad.void (ImageActionScriptOutputInterface.setImageTypes ((jget (this).capturedImageActionScriptOutputInterface)) imageTypes)
        if (jio (JCheckBox.isSelected ((jget (this).saveJCheckBox)))) then do
            Control.Monad.void (ImageActionScriptOutputInterface.setSaved ((jget (this).capturedImageActionScriptOutputInterface)) True)
        else do
            Control.Monad.void (ImageActionScriptOutputInterface.setSaved ((jget (this).capturedImageActionScriptOutputInterface)) False)
        if (jio (JCheckBox.isSelected ((jget (this).displayJCheckBox)))) then do
            Control.Monad.void (ImageActionScriptOutputInterface.setDisplay ((jget (this).capturedImageActionScriptOutputInterface)) True)
        else do
            Control.Monad.void (ImageActionScriptOutputInterface.setDisplay ((jget (this).capturedImageActionScriptOutputInterface)) False)
        Control.Monad.void (ImageActionScriptOutputInterface.log ((jget (this).capturedImageActionScriptOutputInterface)))
        pure ()


setImageTypeJlistModel :: (JavaObjectClass this_) => this_ -> IO (())
setImageTypeJlistModel object_ = jmethod object_ "setImageTypeJlistModel" (\() -> (setImageTypeJlistModel_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) ()

setImageTypeJlistModel_super :: (JavaObjectClass this_) => this_ -> IO (())
setImageTypeJlistModel_super object_ = (setImageTypeJlistModel_impl (javaCast object_ :: ImageActionScriptOutputJPanel))

setImageTypeJlistModel_impl :: ImageActionScriptOutputJPanel -> IO (())
setImageTypeJlistModel_impl this = do
        defaultListModel <- (DefaultListModel.new_)
        vector <- (InputImageType.getAllAsVector)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let imageType = (javaCast (jio (BasicArrayList.get vector index)) :: InputImageType.InputImageType)
            Control.Monad.void (DefaultListModel.addElement defaultListModel (jio (InputImageType.getName imageType)))
        Control.Monad.void (JList.setModel ((jget (this).itemTypesJList)) defaultListModel)
        pure ()


getCapturedImageActionJDialog :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getCapturedImageActionJDialog object_ = jmethod object_ "getCapturedImageActionJDialog" (\() -> (getCapturedImageActionJDialog_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) ()

getCapturedImageActionJDialog_super :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getCapturedImageActionJDialog_super object_ = (getCapturedImageActionJDialog_impl (javaCast object_ :: ImageActionScriptOutputJPanel))

getCapturedImageActionJDialog_impl :: ImageActionScriptOutputJPanel -> IO (JDialog.JDialog)
getCapturedImageActionJDialog_impl this = do
        pure ((jget (this).capturedImageActionJDialog))


setCapturedImageActionJDialog :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setCapturedImageActionJDialog object_ a1 = jmethod object_ "setCapturedImageActionJDialog" (\() -> (setCapturedImageActionJDialog_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) () a1

setCapturedImageActionJDialog_super :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setCapturedImageActionJDialog_super object_ a1 = (setCapturedImageActionJDialog_impl (javaCast object_ :: ImageActionScriptOutputJPanel)) a1

setCapturedImageActionJDialog_impl :: ImageActionScriptOutputJPanel -> JDialog.JDialog -> IO (())
setCapturedImageActionJDialog_impl this capturedImageActionJDialog = do
        jset (this).capturedImageActionJDialog (capturedImageActionJDialog)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ImageActionScriptOutputJPanel))

initComponents_impl :: ImageActionScriptOutputJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).capturedImageActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).saveJCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).displayJCheckBox (assignedValue)
        assignedValue <- (JScrollPane.new_)
        jset (this).jScrollPane1 (assignedValue)
        assignedValue <- (JList.new_)
        jset (this).itemTypesJList (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).capturedImageActionJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).capturedImageActionJDialog)) (jio (Dimension.new_2 250 250)))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "Image Output Options")
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JCheckBox.setText ((jget (this).saveJCheckBox)) "Save To File")
        Control.Monad.void (JCheckBox.setBorder ((jget (this).saveJCheckBox)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JCheckBox.setMargin ((jget (this).saveJCheckBox)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JCheckBox.setText ((jget (this).displayJCheckBox)) "Display")
        Control.Monad.void (JCheckBox.setBorder ((jget (this).displayJCheckBox)) (jio (createEmptyBorder ((jget (javax.swing).borderFactory)) 0 0 0 0)))
        Control.Monad.void (JCheckBox.setMargin ((jget (this).displayJCheckBox)) (jio (Insets.new_4 0 0 0 0)))
        Control.Monad.void (JCheckBox.addActionListener ((jget (this).displayJCheckBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JList.setModel ((jget (this).itemTypesJList)) (AbstractListModel.new_ {- Java anonymous class body: implement it as a record of functions
            jset this.strings ((jarrayFromList ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]))
            -- getSize
            -- getElementAt
-}))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).jScrollPane1)) (jget (this).itemTypesJList))
        capturedImageActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).capturedImageActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).capturedImageActionJDialog))))) capturedImageActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup capturedImageActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup capturedImageActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup capturedImageActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup capturedImageActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup capturedImageActionJDialogLayout))) 61 61 61))) (jget this.titleJLabel)))))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup capturedImageActionJDialogLayout)))))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup capturedImageActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup capturedImageActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.displayJCheckBox)))) (jget this.saveJCheckBox) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup capturedImageActionJDialogLayout))) 84 84 84))) (jget this.okJButton)))))))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup capturedImageActionJDialogLayout)))))) (jget this.jScrollPane1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 216 (Prelude.maxBound :: Int16)))))))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup capturedImageActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup capturedImageActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup capturedImageActionJDialogLayout))) (jget this.titleJLabel)))) 5 5 5))) (jget this.jScrollPane1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 105 (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.saveJCheckBox)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.displayJCheckBox)))) 9 9 9))) (jget this.okJButton)))))))))
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 100 0)))
        Control.Monad.void (JButton.setText ((jget (this).capturedImageActionJButton)) "Edit")
        Control.Monad.void (JButton.addActionListener ((jget (this).capturedImageActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Capture Image:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.capturedImageActionJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.capturedImageActionJButton))))))
        pure ()


displayJCheckBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
displayJCheckBoxActionPerformed object_ a1 = jmethod object_ "displayJCheckBoxActionPerformed" (\() -> (displayJCheckBoxActionPerformed_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) () a1

displayJCheckBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
displayJCheckBoxActionPerformed_super object_ a1 = (displayJCheckBoxActionPerformed_impl (javaCast object_ :: ImageActionScriptOutputJPanel)) a1

displayJCheckBoxActionPerformed_impl :: ImageActionScriptOutputJPanel -> ActionEvent.ActionEvent -> IO (())
displayJCheckBoxActionPerformed_impl this evt = do
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: ImageActionScriptOutputJPanel)) a1

okJButtonActionPerformed_impl :: ImageActionScriptOutputJPanel -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ImageActionScriptOutputJPanel.update this)
        Control.Monad.void (JDialog.setVisible ((jio (ImageActionScriptOutputJPanel.getCapturedImageActionJDialog this))) False)
        pure ()


capturedImageActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
capturedImageActionJButtonActionPerformed object_ a1 = jmethod object_ "capturedImageActionJButtonActionPerformed" (\() -> (capturedImageActionJButtonActionPerformed_impl (javaCast object_ :: ImageActionScriptOutputJPanel))) () a1

capturedImageActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
capturedImageActionJButtonActionPerformed_super object_ a1 = (capturedImageActionJButtonActionPerformed_impl (javaCast object_ :: ImageActionScriptOutputJPanel)) a1

capturedImageActionJButtonActionPerformed_impl :: ImageActionScriptOutputJPanel -> ActionEvent.ActionEvent -> IO (())
capturedImageActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jio (ImageActionScriptOutputJPanel.getCapturedImageActionJDialog this))) True)
        pure ()


