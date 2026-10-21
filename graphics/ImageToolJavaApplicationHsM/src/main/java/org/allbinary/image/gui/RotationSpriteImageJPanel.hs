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
module RotationSpriteImageJPanel (module RotationSpriteImageJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, initComponents, initComponents_super, initComponents_impl, generateJButtonActionPerformed, generateJButtonActionPerformed_super, generateJButtonActionPerformed_impl, totalAngleJComboBoxActionPerformed, totalAngleJComboBoxActionPerformed_super, totalAngleJComboBoxActionPerformed_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, logUtil, commonStrings, imageStrings, imageProcessorInput, result, generateJButton, jLabel1, jLabel2, jLabel3, jPanel1, jPanel2, jPanel3, totalAngleJComboBox, totalFramesJComboBox, writeOverOriginalJCheckBox)
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
import qualified Graphics -- same package or java.lang
import qualified JComboBox -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified RenderedImage -- java.awt.image.RenderedImage
import qualified File -- java.io.File
import qualified ImageIO -- javax.imageio.ImageIO
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ImageJ2SERotationUtil -- org.allbinary.media.image.ImageJ2SERotationUtil
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ImageStrings -- org.allbinary.media.image.ImageStrings
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
import qualified JPanel

-- implements ImageProcessorInputCompositeInterface
data RotationSpriteImageJPanel = RotationSpriteImageJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageStrings :: IORef (ImageStrings.ImageStrings)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , result :: IORef (BufferedImage.BufferedImage)
    , generateJButton :: IORef (JButton.JButton)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLabel3 :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , jPanel2 :: IORef (JPanel.JPanel)
    , jPanel3 :: IORef (JPanel.JPanel)
    , totalAngleJComboBox :: IORef (JComboBox.JComboBox)
    , totalFramesJComboBox :: IORef (JComboBox.JComboBox)
    , writeOverOriginalJCheckBox :: IORef (JCheckBox.JCheckBox)
    }

instance JavaNull RotationSpriteImageJPanel where
    javaNull = javaNullRecord "RotationSpriteImageJPanel"

instance JavaEquals RotationSpriteImageJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RotationSpriteImageJPanel where
    (==) = jrecordEquals

instance JavaObjectClass RotationSpriteImageJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RotationSpriteImageJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageStrings <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    result <- newIORef javaNull
    generateJButton <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLabel3 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    jPanel2 <- newIORef javaNull
    jPanel3 <- newIORef javaNull
    totalAngleJComboBox <- newIORef javaNull
    totalFramesJComboBox <- newIORef javaNull
    writeOverOriginalJCheckBox <- newIORef javaNull
    let this = RotationSpriteImageJPanel header_ base logUtil commonStrings imageStrings imageProcessorInput result generateJButton jLabel1 jLabel2 jLabel3 jPanel1 jPanel2 jPanel3 totalAngleJComboBox totalFramesJComboBox writeOverOriginalJCheckBox
    jregisterLevel header_ this
    ImageProcessorInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "generateJButtonActionPerformed" (\() -> generateJButtonActionPerformed_impl this)
    jregisterMethod header_ "totalAngleJComboBoxActionPerformed" (\() -> totalAngleJComboBoxActionPerformed_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    pure this

initFields_ :: RotationSpriteImageJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageStrings =<< (ImageStrings.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.result (javaNull)
    jset this.generateJButton (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLabel3 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.jPanel2 (javaNull)
    jset this.jPanel3 (javaNull)
    jset this.totalAngleJComboBox (javaNull)
    jset this.totalFramesJComboBox (javaNull)
    jset this.writeOverOriginalJCheckBox (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO RotationSpriteImageJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: RotationSpriteImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RotationSpriteImageJPanel.initComponents this)
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RotationSpriteImageJPanel))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: RotationSpriteImageJPanel))

process_impl :: RotationSpriteImageJPanel -> IO (())
process_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: RotationSpriteImageJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: RotationSpriteImageJPanel))

initComponents_impl :: RotationSpriteImageJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JPanel.new_ {- Java anonymous class body: implement it as a record of functions
            -- paint
-})
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel2 (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).totalFramesJComboBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).generateJButton (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).totalAngleJComboBox (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel3 (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).writeOverOriginalJCheckBox (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel3 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) 0 436 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) 0 227 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JComboBox.setModel ((jget (this).totalFramesJComboBox)) (jio (DefaultComboBoxModel.new_1 (jarrayFromList [(jget ((jio (CommonPhoneStrings.getInstance))).fOUR), (jget ((jio (CommonPhoneStrings.getInstance))).nINE), "18", "20", "36"]))))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Total Frames:")
        Control.Monad.void (JButton.setText ((jget (this).generateJButton)) "Generate")
        Control.Monad.void (JButton.addActionListener ((jget (this).generateJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JComboBox.setModel ((jget (this).totalAngleJComboBox)) (jio (DefaultComboBoxModel.new_1 (jarrayFromList ["360", "90"]))))
        Control.Monad.void (JComboBox.addActionListener ((jget (this).totalAngleJComboBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel3)) "Total Angle:")
        Control.Monad.void (JCheckBox.setText ((jget (this).writeOverOriginalJCheckBox)) "Write Over Original")
        jPanel2Layout <- (GroupLayout.new_1 (jget (this).jPanel2))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel2)) jPanel2Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel2Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup jPanel2Layout))) 8 8 8))) (jget this.jLabel1)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.totalFramesJComboBox) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.jLabel3)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.totalAngleJComboBox) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.writeOverOriginalJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.generateJButton)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel2Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.jLabel1)))) (jget this.totalFramesJComboBox) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget this.generateJButton)))) (jget this.totalAngleJComboBox) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel3)))) (jget this.writeOverOriginalJCheckBox))))))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Results:")
        jPanel3Layout <- (GroupLayout.new_1 (jget (this).jPanel3))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel3)) jPanel3Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel3Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel3Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup jPanel3Layout))) (jget this.jLabel2)))) 377 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel3Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel3Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget this.jLabel2))))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) (jget this.jPanel2) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.jPanel3) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))))) (jget this.jPanel1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).uNRELATED)))) (jget this.jPanel3) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.jPanel1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        pure ()


generateJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed object_ a1 = jmethod object_ "generateJButtonActionPerformed" (\() -> (generateJButtonActionPerformed_impl (javaCast object_ :: RotationSpriteImageJPanel))) () a1

generateJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_super object_ a1 = (generateJButtonActionPerformed_impl (javaCast object_ :: RotationSpriteImageJPanel)) a1

generateJButtonActionPerformed_impl :: RotationSpriteImageJPanel -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_impl this evt = do
        Control.Monad.void (RotationSpriteImageJPanel.process this)
        pure ()


totalAngleJComboBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
totalAngleJComboBoxActionPerformed object_ a1 = jmethod object_ "totalAngleJComboBoxActionPerformed" (\() -> (totalAngleJComboBoxActionPerformed_impl (javaCast object_ :: RotationSpriteImageJPanel))) () a1

totalAngleJComboBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
totalAngleJComboBoxActionPerformed_super object_ a1 = (totalAngleJComboBoxActionPerformed_impl (javaCast object_ :: RotationSpriteImageJPanel)) a1

totalAngleJComboBoxActionPerformed_impl :: RotationSpriteImageJPanel -> ActionEvent.ActionEvent -> IO (())
totalAngleJComboBoxActionPerformed_impl this evt = do
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: RotationSpriteImageJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: RotationSpriteImageJPanel))

getImageProcessorInput_impl :: RotationSpriteImageJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: RotationSpriteImageJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: RotationSpriteImageJPanel)) a1

setImageProcessorInput_impl :: RotationSpriteImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


