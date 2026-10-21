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
-- package org.allbinary.image.gui
module MirrorImageJPanel (module MirrorImageJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, initComponents, initComponents_super, initComponents_impl, generateJButtonActionPerformed, generateJButtonActionPerformed_super, generateJButtonActionPerformed_impl, renameJRadioButtonActionPerformed, renameJRadioButtonActionPerformed_super, renameJRadioButtonActionPerformed_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, logUtil, commonStrings, imageStrings, imageProcessorInput, result, buttonGroup, generateJButton, horizontalJCheckBox, jLabel2, jLayeredPane1, jPanel1, jPanel2, jPanel3, renameJRadioButton, verticleJCheckBox, writeOverOriginalJRadioButton)
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
import qualified JLayeredPane -- same package or java.lang
import qualified ButtonGroup -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JRadioButton -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified RenderedImage -- java.awt.image.RenderedImage
import qualified File -- java.io.File
import qualified ImageIO -- javax.imageio.ImageIO
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ImageStrings -- org.allbinary.media.image.ImageStrings
import qualified MirrorImageUtil -- org.allbinary.media.image.MirrorImageUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
import qualified JPanel

-- implements ImageProcessorInputCompositeInterface
data MirrorImageJPanel = MirrorImageJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageStrings :: IORef (ImageStrings.ImageStrings)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , result :: IORef (BufferedImage.BufferedImage)
    , buttonGroup :: IORef (ButtonGroup.ButtonGroup)
    , generateJButton :: IORef (JButton.JButton)
    , horizontalJCheckBox :: IORef (JCheckBox.JCheckBox)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLayeredPane1 :: IORef (JLayeredPane.JLayeredPane)
    , jPanel1 :: IORef (JPanel.JPanel)
    , jPanel2 :: IORef (JPanel.JPanel)
    , jPanel3 :: IORef (JPanel.JPanel)
    , renameJRadioButton :: IORef (JRadioButton.JRadioButton)
    , verticleJCheckBox :: IORef (JCheckBox.JCheckBox)
    , writeOverOriginalJRadioButton :: IORef (JRadioButton.JRadioButton)
    }

instance JavaNull MirrorImageJPanel where
    javaNull = javaNullRecord "MirrorImageJPanel"

instance JavaEquals MirrorImageJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MirrorImageJPanel where
    (==) = jrecordEquals

instance JavaObjectClass MirrorImageJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MirrorImageJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageStrings <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    result <- newIORef javaNull
    buttonGroup <- newIORef javaNull
    generateJButton <- newIORef javaNull
    horizontalJCheckBox <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLayeredPane1 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    jPanel2 <- newIORef javaNull
    jPanel3 <- newIORef javaNull
    renameJRadioButton <- newIORef javaNull
    verticleJCheckBox <- newIORef javaNull
    writeOverOriginalJRadioButton <- newIORef javaNull
    let this = MirrorImageJPanel header_ base logUtil commonStrings imageStrings imageProcessorInput result buttonGroup generateJButton horizontalJCheckBox jLabel2 jLayeredPane1 jPanel1 jPanel2 jPanel3 renameJRadioButton verticleJCheckBox writeOverOriginalJRadioButton
    jregisterLevel header_ this
    ImageProcessorInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "generateJButtonActionPerformed" (\() -> generateJButtonActionPerformed_impl this)
    jregisterMethod header_ "renameJRadioButtonActionPerformed" (\() -> renameJRadioButtonActionPerformed_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    pure this

initFields_ :: MirrorImageJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageStrings =<< (ImageStrings.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.result (javaNull)
    jset this.buttonGroup (javaNull)
    jset this.generateJButton (javaNull)
    jset this.horizontalJCheckBox (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLayeredPane1 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.jPanel2 (javaNull)
    jset this.jPanel3 (javaNull)
    jset this.renameJRadioButton (javaNull)
    jset this.verticleJCheckBox (javaNull)
    jset this.writeOverOriginalJRadioButton (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO MirrorImageJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: MirrorImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (MirrorImageJPanel.initComponents this)
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MirrorImageJPanel))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: MirrorImageJPanel))

process_impl :: MirrorImageJPanel -> IO (())
process_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: MirrorImageJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: MirrorImageJPanel))

initComponents_impl :: MirrorImageJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JLayeredPane.new_)
        jset this.jLayeredPane1 (assignedValue)
        assignedValue <- (ButtonGroup.new_)
        jset (this).buttonGroup (assignedValue)
        assignedValue <- (JPanel.new_ {- Java anonymous class body: implement it as a record of functions
            -- paint
-})
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel2 (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).horizontalJCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).verticleJCheckBox (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).generateJButton (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).renameJRadioButton (assignedValue)
        assignedValue <- (JRadioButton.new_)
        jset (this).writeOverOriginalJRadioButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel3 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) 0 522 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) 0 230 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JCheckBox.setSelected ((jget (this).horizontalJCheckBox)) True)
        Control.Monad.void (JCheckBox.setText ((jget (this).horizontalJCheckBox)) "Horizontal")
        Control.Monad.void (JCheckBox.setEnabled ((jget (this).horizontalJCheckBox)) False)
        Control.Monad.void (JCheckBox.setText ((jget (this).verticleJCheckBox)) "Verticle")
        Control.Monad.void (JCheckBox.setEnabled ((jget (this).verticleJCheckBox)) False)
        Control.Monad.void (JButton.setText ((jget (this).generateJButton)) "Generate")
        Control.Monad.void (JButton.addActionListener ((jget (this).generateJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JRadioButton.setText ((jget (this).renameJRadioButton)) "Save As filename_mirror")
        Control.Monad.void (JRadioButton.addActionListener ((jget (this).renameJRadioButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JRadioButton.setText ((jget (this).writeOverOriginalJRadioButton)) "Write Over Original")
        jPanel2Layout <- (GroupLayout.new_1 (jget (this).jPanel2))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel2)) jPanel2Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel2Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup jPanel2Layout))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.verticleJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).uNRELATED)))) (jget this.horizontalJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.writeOverOriginalJRadioButton)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).uNRELATED)))) (jget this.renameJRadioButton)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.generateJButton)))) 37 37 37)))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel2Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup jPanel2Layout))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.horizontalJCheckBox)))) (jget this.verticleJCheckBox)))) (jget this.writeOverOriginalJRadioButton)))) (jget this.renameJRadioButton)))) (jget this.generateJButton)))))))))))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Results:")
        jPanel3Layout <- (GroupLayout.new_1 (jget (this).jPanel3))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel3)) jPanel3Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel3Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel3Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup jPanel3Layout))) (jget this.jLabel2)))) 433 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel3Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel3Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget this.jLabel2))))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.jPanel3) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))))) (jget this.jPanel1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) 25 (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.jPanel3) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.jPanel1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        pure ()


generateJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed object_ a1 = jmethod object_ "generateJButtonActionPerformed" (\() -> (generateJButtonActionPerformed_impl (javaCast object_ :: MirrorImageJPanel))) () a1

generateJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_super object_ a1 = (generateJButtonActionPerformed_impl (javaCast object_ :: MirrorImageJPanel)) a1

generateJButtonActionPerformed_impl :: MirrorImageJPanel -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_impl this evt = do
        Control.Monad.void (MirrorImageJPanel.process this)
        pure ()


renameJRadioButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
renameJRadioButtonActionPerformed object_ a1 = jmethod object_ "renameJRadioButtonActionPerformed" (\() -> (renameJRadioButtonActionPerformed_impl (javaCast object_ :: MirrorImageJPanel))) () a1

renameJRadioButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
renameJRadioButtonActionPerformed_super object_ a1 = (renameJRadioButtonActionPerformed_impl (javaCast object_ :: MirrorImageJPanel)) a1

renameJRadioButtonActionPerformed_impl :: MirrorImageJPanel -> ActionEvent.ActionEvent -> IO (())
renameJRadioButtonActionPerformed_impl this evt = do
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: MirrorImageJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: MirrorImageJPanel))

getImageProcessorInput_impl :: MirrorImageJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: MirrorImageJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: MirrorImageJPanel)) a1

setImageProcessorInput_impl :: MirrorImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


