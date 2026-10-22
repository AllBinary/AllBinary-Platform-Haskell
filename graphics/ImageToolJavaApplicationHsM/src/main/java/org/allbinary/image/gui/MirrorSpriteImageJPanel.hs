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
module MirrorSpriteImageJPanel (module MirrorSpriteImageJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, initComponents, initComponents_super, initComponents_impl, generateJButtonActionPerformed, generateJButtonActionPerformed_super, generateJButtonActionPerformed_impl, imageHeightIsFrameSizeJCheckBoxActionPerformed, imageHeightIsFrameSizeJCheckBoxActionPerformed_super, imageHeightIsFrameSizeJCheckBoxActionPerformed_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, logUtil, commonStrings, imageStrings, imageProcessorInput, result, generateJButton, horizontalJCheckBox, imageHeightIsFrameSizeJCheckBox, jLabel2, jLayeredPane1, jPanel1, jPanel2, jPanel3, verticleJCheckBox, writeOverOriginalJCheckBox)
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
import qualified JLayeredPane -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified JCheckBox -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified RenderedImage -- java.awt.image.RenderedImage
import qualified File -- java.io.File
import qualified ImageIO -- javax.imageio.ImageIO
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BufferedImageUtil2 -- org.allbinary.media.image.BufferedImageUtil2
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ImageStrings -- org.allbinary.media.image.ImageStrings
import qualified MirrorImageUtil -- org.allbinary.media.image.MirrorImageUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
import qualified JPanel

-- implements ImageProcessorInputCompositeInterface
data MirrorSpriteImageJPanel = MirrorSpriteImageJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageStrings :: IORef (ImageStrings.ImageStrings)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , result :: IORef (BufferedImage.BufferedImage)
    , generateJButton :: IORef (JButton.JButton)
    , horizontalJCheckBox :: IORef (JCheckBox.JCheckBox)
    , imageHeightIsFrameSizeJCheckBox :: IORef (JCheckBox.JCheckBox)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLayeredPane1 :: IORef (JLayeredPane.JLayeredPane)
    , jPanel1 :: IORef (JPanel.JPanel)
    , jPanel2 :: IORef (JPanel.JPanel)
    , jPanel3 :: IORef (JPanel.JPanel)
    , verticleJCheckBox :: IORef (JCheckBox.JCheckBox)
    , writeOverOriginalJCheckBox :: IORef (JCheckBox.JCheckBox)
    }

instance JavaNull MirrorSpriteImageJPanel where
    javaNull = javaNullRecord "MirrorSpriteImageJPanel"

instance JavaEquals MirrorSpriteImageJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MirrorSpriteImageJPanel where
    (==) = jrecordEquals

instance JavaObjectClass MirrorSpriteImageJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MirrorSpriteImageJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageStrings <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    result <- newIORef javaNull
    generateJButton <- newIORef javaNull
    horizontalJCheckBox <- newIORef javaNull
    imageHeightIsFrameSizeJCheckBox <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLayeredPane1 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    jPanel2 <- newIORef javaNull
    jPanel3 <- newIORef javaNull
    verticleJCheckBox <- newIORef javaNull
    writeOverOriginalJCheckBox <- newIORef javaNull
    let this = MirrorSpriteImageJPanel header_ base logUtil commonStrings imageStrings imageProcessorInput result generateJButton horizontalJCheckBox imageHeightIsFrameSizeJCheckBox jLabel2 jLayeredPane1 jPanel1 jPanel2 jPanel3 verticleJCheckBox writeOverOriginalJCheckBox
    jregisterLevel header_ this
    ImageProcessorInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "generateJButtonActionPerformed" (\() -> generateJButtonActionPerformed_impl this)
    jregisterMethod header_ "imageHeightIsFrameSizeJCheckBoxActionPerformed" (\() -> imageHeightIsFrameSizeJCheckBoxActionPerformed_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    pure this

initFields_ :: MirrorSpriteImageJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageStrings =<< (ImageStrings.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.result (javaNull)
    jset this.generateJButton (javaNull)
    jset this.horizontalJCheckBox (javaNull)
    jset this.imageHeightIsFrameSizeJCheckBox (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLayeredPane1 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.jPanel2 (javaNull)
    jset this.jPanel3 (javaNull)
    jset this.verticleJCheckBox (javaNull)
    jset this.writeOverOriginalJCheckBox (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO MirrorSpriteImageJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: MirrorSpriteImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (MirrorSpriteImageJPanel.initComponents this)
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MirrorSpriteImageJPanel))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: MirrorSpriteImageJPanel))

process_impl :: MirrorSpriteImageJPanel -> IO (())
process_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: MirrorSpriteImageJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: MirrorSpriteImageJPanel))

initComponents_impl :: MirrorSpriteImageJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JLayeredPane.new_)
        jset this.jLayeredPane1 (assignedValue)
        assignedValue <- (JPanel.new_ {- Java anonymous class body: implement it as a record of functions
            -- paint
-})
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel2 (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).imageHeightIsFrameSizeJCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).horizontalJCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).verticleJCheckBox (assignedValue)
        assignedValue <- (JCheckBox.new_)
        jset (this).writeOverOriginalJCheckBox (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).generateJButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel3 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) 0 507 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) 0 230 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JCheckBox.setSelected ((jget (this).imageHeightIsFrameSizeJCheckBox)) True)
        Control.Monad.void (JCheckBox.setText ((jget (this).imageHeightIsFrameSizeJCheckBox)) "Image Height Is Frame Size")
        Control.Monad.void (JCheckBox.setEnabled ((jget (this).imageHeightIsFrameSizeJCheckBox)) False)
        Control.Monad.void (JCheckBox.addActionListener ((jget (this).imageHeightIsFrameSizeJCheckBox)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JCheckBox.setSelected ((jget (this).horizontalJCheckBox)) True)
        Control.Monad.void (JCheckBox.setText ((jget (this).horizontalJCheckBox)) "Horizontal")
        Control.Monad.void (JCheckBox.setEnabled ((jget (this).horizontalJCheckBox)) False)
        Control.Monad.void (JCheckBox.setText ((jget (this).verticleJCheckBox)) "Verticle")
        Control.Monad.void (JCheckBox.setEnabled ((jget (this).verticleJCheckBox)) False)
        Control.Monad.void (JCheckBox.setText ((jget (this).writeOverOriginalJCheckBox)) "Write Over Original")
        Control.Monad.void (JButton.setText ((jget (this).generateJButton)) "Generate")
        Control.Monad.void (JButton.addActionListener ((jget (this).generateJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        jPanel2Layout <- (GroupLayout.new_1 (jget (this).jPanel2))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel2)) jPanel2Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel2Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup jPanel2Layout))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.verticleJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).uNRELATED)))) (jget this.horizontalJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.imageHeightIsFrameSizeJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.writeOverOriginalJCheckBox)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.generateJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel2Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup jPanel2Layout))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel2Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.imageHeightIsFrameSizeJCheckBox) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.horizontalJCheckBox)))) (jget this.verticleJCheckBox)))) (jget this.writeOverOriginalJCheckBox)))) (jget this.generateJButton) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) 25 (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))))))))))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Results:")
        jPanel3Layout <- (GroupLayout.new_1 (jget (this).jPanel3))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel3)) jPanel3Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel3Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel3Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup jPanel3Layout))) (jget this.jLabel2)))) 448 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel3Layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup jPanel3Layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget this.jLabel2))))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.jPanel3) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))))) (jget this.jPanel1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jPanel2) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) 25 (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.jPanel3) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jget this.jPanel1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        pure ()


generateJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed object_ a1 = jmethod object_ "generateJButtonActionPerformed" (\() -> (generateJButtonActionPerformed_impl (javaCast object_ :: MirrorSpriteImageJPanel))) () a1

generateJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_super object_ a1 = (generateJButtonActionPerformed_impl (javaCast object_ :: MirrorSpriteImageJPanel)) a1

generateJButtonActionPerformed_impl :: MirrorSpriteImageJPanel -> ActionEvent.ActionEvent -> IO (())
generateJButtonActionPerformed_impl this evt = do
        Control.Monad.void (MirrorSpriteImageJPanel.process this)
        pure ()


imageHeightIsFrameSizeJCheckBoxActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
imageHeightIsFrameSizeJCheckBoxActionPerformed object_ a1 = jmethod object_ "imageHeightIsFrameSizeJCheckBoxActionPerformed" (\() -> (imageHeightIsFrameSizeJCheckBoxActionPerformed_impl (javaCast object_ :: MirrorSpriteImageJPanel))) () a1

imageHeightIsFrameSizeJCheckBoxActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
imageHeightIsFrameSizeJCheckBoxActionPerformed_super object_ a1 = (imageHeightIsFrameSizeJCheckBoxActionPerformed_impl (javaCast object_ :: MirrorSpriteImageJPanel)) a1

imageHeightIsFrameSizeJCheckBoxActionPerformed_impl :: MirrorSpriteImageJPanel -> ActionEvent.ActionEvent -> IO (())
imageHeightIsFrameSizeJCheckBoxActionPerformed_impl this evt = do
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: MirrorSpriteImageJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: MirrorSpriteImageJPanel))

getImageProcessorInput_impl :: MirrorSpriteImageJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: MirrorSpriteImageJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: MirrorSpriteImageJPanel)) a1

setImageProcessorInput_impl :: MirrorSpriteImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


