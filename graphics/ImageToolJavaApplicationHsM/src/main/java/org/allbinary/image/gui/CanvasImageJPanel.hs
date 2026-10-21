{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module CanvasImageJPanel (module CanvasImageJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, initComponents, initComponents_super, initComponents_impl, writeOverOriginalJCheckBoxActionPerformed, writeOverOriginalJCheckBoxActionPerformed_super, writeOverOriginalJCheckBoxActionPerformed_impl, generateJButtonActionPerformed, generateJButtonActionPerformed_super, generateJButtonActionPerformed_impl, widthReductionTextFieldActionPerformed, widthReductionTextFieldActionPerformed_super, widthReductionTextFieldActionPerformed_impl, widthReductionTextField1ActionPerformed, widthReductionTextField1ActionPerformed_super, widthReductionTextField1ActionPerformed_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, visit, visit_super, visit_impl, logUtil, commonStrings, commonSeps, imageStrings, imageProcessorInput, result, generateJButton, heightReductionTextField, heightReductionTextField1, jLabel4, jLabel5, jLabel6, jLabel7, jLabel8, jPanel1, jPanel2, widthReductionTextField, widthReductionTextField1, writeOverOriginalJCheckBox)
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
import qualified Thread -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified RenderedImage -- java.awt.image.RenderedImage
import qualified File -- java.io.File
import qualified IOException -- java.io.IOException
import qualified ImageIO -- javax.imageio.ImageIO
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CanvasExpandUtil -- org.allbinary.media.image.CanvasExpandUtil
import qualified CanvasTrimUtil -- org.allbinary.media.image.CanvasTrimUtil
import qualified ImageProcessedVisitor -- org.allbinary.media.image.ImageProcessedVisitor
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageStrings -- org.allbinary.media.image.ImageStrings
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
import qualified JPanel

-- implements ImageProcessedVisitor
data CanvasImageJPanel = CanvasImageJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , imageStrings :: IORef (ImageStrings.ImageStrings)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , result :: IORef (BufferedImage.BufferedImage)
    , generateJButton :: IORef (JButton.JButton)
    , heightReductionTextField :: IORef (JTextField.JTextField)
    , heightReductionTextField1 :: IORef (JTextField.JTextField)
    , jLabel4 :: IORef (JLabel.JLabel)
    , jLabel5 :: IORef (JLabel.JLabel)
    , jLabel6 :: IORef (JLabel.JLabel)
    , jLabel7 :: IORef (JLabel.JLabel)
    , jLabel8 :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , jPanel2 :: IORef (JPanel.JPanel)
    , widthReductionTextField :: IORef (JTextField.JTextField)
    , widthReductionTextField1 :: IORef (JTextField.JTextField)
    , writeOverOriginalJCheckBox :: IORef (JCheckBox.JCheckBox)
    }

instance JavaNull CanvasImageJPanel where
    javaNull = javaNullRecord "CanvasImageJPanel"

instance JavaEquals CanvasImageJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasImageJPanel where
    (==) = jrecordEquals

instance JavaObjectClass CanvasImageJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CanvasImageJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    imageStrings <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    result <- newIORef javaNull
    generateJButton <- newIORef javaNull
    heightReductionTextField <- newIORef javaNull
    heightReductionTextField1 <- newIORef javaNull
    jLabel4 <- newIORef javaNull
    jLabel5 <- newIORef javaNull
    jLabel6 <- newIORef javaNull
    jLabel7 <- newIORef javaNull
    jLabel8 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    jPanel2 <- newIORef javaNull
    widthReductionTextField <- newIORef javaNull
    widthReductionTextField1 <- newIORef javaNull
    writeOverOriginalJCheckBox <- newIORef javaNull
    let this = CanvasImageJPanel header_ base logUtil commonStrings commonSeps imageStrings imageProcessorInput result generateJButton heightReductionTextField heightReductionTextField1 jLabel4 jLabel5 jLabel6 jLabel7 jLabel8 jPanel1 jPanel2 widthReductionTextField widthReductionTextField1 writeOverOriginalJCheckBox
    jregisterLevel header_ this
    ImageProcessedVisitor.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "writeOverOriginalJCheckBoxActionPerformed" (\() -> writeOverOriginalJCheckBoxActionPerformed_impl this)
    jregisterMethod header_ "generateJButtonActionPerformed" (\() -> generateJButtonActionPerformed_impl this)
    jregisterMethod header_ "widthReductionTextFieldActionPerformed" (\() -> widthReductionTextFieldActionPerformed_impl this)
    jregisterMethod header_ "widthReductionTextField1ActionPerformed" (\() -> widthReductionTextField1ActionPerformed_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: CanvasImageJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.imageStrings =<< (ImageStrings.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.result (javaNull)
    jset this.generateJButton (javaNull)
    jset this.heightReductionTextField (javaNull)
    jset this.heightReductionTextField1 (javaNull)
    jset this.jLabel4 (javaNull)
    jset this.jLabel5 (javaNull)
    jset this.jLabel6 (javaNull)
    jset this.jLabel7 (javaNull)
    jset this.jLabel8 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.jPanel2 (javaNull)
    jset this.widthReductionTextField (javaNull)
    jset this.widthReductionTextField1 (javaNull)
    jset this.writeOverOriginalJCheckBox (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO CanvasImageJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: CanvasImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (CanvasImageJPanel.initComponents this)
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: CanvasImageJPanel))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: CanvasImageJPanel))

process_impl :: CanvasImageJPanel -> IO (())
process_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: CanvasImageJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: CanvasImageJPanel))

initComponents_impl :: CanvasImageJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JCheckBox.new_)
        jset (this).writeOverOriginalJCheckBox (assignedValue)
        assignedValue <- (JPanel.new_ {- Java anonymous class body: implement it as a record of functions
            -- paint
-})
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).generateJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel4 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel2 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel5 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).widthReductionTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel6 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).heightReductionTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).widthReductionTextField1 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel7 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel8 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).heightReductionTextField1 (assignedValue)
        Control.Monad.void (JCheckBox.setSelected ((jget (this).writeOverOriginalJCheckBox)) True)
        Control.Monad.void (JCheckBox.setText ((jget (this).writeOverOriginalJCheckBox)) "Write Over Original")
        Control.Monad.void (JCheckBox.addActionListener ((jget (this).writeOverOriginalJCheckBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 0 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 196 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JButton.setText ((jget (this).generateJButton)) "Generate")
        Control.Monad.void (JButton.addActionListener ((jget (this).generateJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel4)) "Results:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel5)) "Right:")
        Control.Monad.void (JTextField.setText ((jget (this).widthReductionTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JTextField.addActionListener ((jget (this).widthReductionTextField)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel6)) "Bottom")
        Control.Monad.void (JTextField.setText ((jget (this).heightReductionTextField)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JTextField.setText ((jget (this).widthReductionTextField1)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (JTextField.addActionListener ((jget (this).widthReductionTextField1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel7)) "Top")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel8)) "Left:")
        Control.Monad.void (JTextField.setText ((jget (this).heightReductionTextField1)) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        jPanel2Layout <- (GroupLayout.new_1 (jget (this).jPanel2))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel2)) jPanel2Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel2Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup jPanel2Layout)))))) (jget this.jLabel8)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.widthReductionTextField1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 41 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel5)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.widthReductionTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 41 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel7)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.heightReductionTextField1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 46 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel6)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.heightReductionTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 46 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) 140 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel2Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup jPanel2Layout))) 0 16 (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel6)))) (jget this.heightReductionTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel8)))) (jget this.widthReductionTextField1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 22 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel7)))) (jget this.heightReductionTextField1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel5)))) (jget this.widthReductionTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 22 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))))))))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) 78 78 78))))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))))) (jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel4)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.writeOverOriginalJCheckBox)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.generateJButton)))))))) 0 0 (Prelude.maxBound :: Int16)))))))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.generateJButton)))) (jget this.writeOverOriginalJCheckBox)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel4)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        pure ()


writeOverOriginalJCheckBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
writeOverOriginalJCheckBoxActionPerformed object_ a1 = jmethod object_ "writeOverOriginalJCheckBoxActionPerformed" (\() -> (writeOverOriginalJCheckBoxActionPerformed_impl (javaCast object_ :: CanvasImageJPanel))) () a1

writeOverOriginalJCheckBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
writeOverOriginalJCheckBoxActionPerformed_super object_ a1 = (writeOverOriginalJCheckBoxActionPerformed_impl (javaCast object_ :: CanvasImageJPanel)) a1

writeOverOriginalJCheckBoxActionPerformed_impl :: CanvasImageJPanel -> ActionEvent.ActionEvent -> IO (())
writeOverOriginalJCheckBoxActionPerformed_impl this evt = do
        pure ()


generateJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed object_ a1 = jmethod object_ "generateJButtonActionPerformed" (\() -> (generateJButtonActionPerformed_impl (javaCast object_ :: CanvasImageJPanel))) () a1

generateJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_super object_ a1 = (generateJButtonActionPerformed_impl (javaCast object_ :: CanvasImageJPanel)) a1

generateJButtonActionPerformed_impl :: CanvasImageJPanel -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_impl this evt = do
        Control.Monad.void (CanvasImageJPanel.process this)
        pure ()


widthReductionTextFieldActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
widthReductionTextFieldActionPerformed object_ a1 = jmethod object_ "widthReductionTextFieldActionPerformed" (\() -> (widthReductionTextFieldActionPerformed_impl (javaCast object_ :: CanvasImageJPanel))) () a1

widthReductionTextFieldActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
widthReductionTextFieldActionPerformed_super object_ a1 = (widthReductionTextFieldActionPerformed_impl (javaCast object_ :: CanvasImageJPanel)) a1

widthReductionTextFieldActionPerformed_impl :: CanvasImageJPanel -> ActionEvent.ActionEvent -> IO (())
widthReductionTextFieldActionPerformed_impl this evt = do
        pure ()


widthReductionTextField1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
widthReductionTextField1ActionPerformed object_ a1 = jmethod object_ "widthReductionTextField1ActionPerformed" (\() -> (widthReductionTextField1ActionPerformed_impl (javaCast object_ :: CanvasImageJPanel))) () a1

widthReductionTextField1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
widthReductionTextField1ActionPerformed_super object_ a1 = (widthReductionTextField1ActionPerformed_impl (javaCast object_ :: CanvasImageJPanel)) a1

widthReductionTextField1ActionPerformed_impl :: CanvasImageJPanel -> ActionEvent.ActionEvent -> IO (())
widthReductionTextField1ActionPerformed_impl this evt = do
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: CanvasImageJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: CanvasImageJPanel))

getImageProcessorInput_impl :: CanvasImageJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: CanvasImageJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: CanvasImageJPanel)) a1

setImageProcessorInput_impl :: CanvasImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


-- throws IOException
visit :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> String -> Int -> IO (())
visit object_ a1 a2 a3 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: CanvasImageJPanel))) () a1 a2 a3

visit_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> String -> Int -> IO (())
visit_super object_ a1 a2 a3 = (visit_impl (javaCast object_ :: CanvasImageJPanel)) a1 a2 a3

visit_impl :: CanvasImageJPanel -> BufferedImage.BufferedImage -> String -> Int -> IO (())
visit_impl this generatedBufferedImage name index = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).vISIT) this (jget ((jget (this).commonStrings)).vISIT))
        jset (this).result (generatedBufferedImage)
        Control.Monad.void (JPanel.repaint ((jio (JPanel.getParent this))))
        file <- newIORef ((jindex ((jio (ImageProcessorInput.getFiles ((jget (this).imageProcessorInput))))) (index)))
        when (Prelude.not (jio (JCheckBox.isSelected ((jget (this).writeOverOriginalJCheckBox))))) $ do
            filePath <- newIORef =<< (File.getAbsolutePath ((jget file)))
            let extensionIndex = (jstringIndexOf (jget filePath) (jget ((jget (this).imageStrings)).pNG_EXTENSION) 0)
            assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (Prelude.take ((extensionIndex) - (0)) (Prelude.drop (0) (jget filePath)))))) (jget ((jget (this).commonSeps)).uNDERSCORE)))) name))) (jget ((jget (this).imageStrings)).pNG_EXTENSION)))))
            jset filePath (assignedValue)
            assignedValue <- (File.new_1 (jget filePath))
            jset file (assignedValue)
        isWritten <- (ImageIO.write (javaCast (jget (this).result) :: RenderedImage.RenderedImage) (jget ((jget this.imageStrings)).pNG) (jget file))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "File: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget file)))))) " Wrote: "))) isWritten))))) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


