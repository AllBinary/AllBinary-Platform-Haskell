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
module ImageToolJFrame (module ImageToolJFrame, module JFrame) where

import JFrame hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, createStripImageJMenuItemActionPerformed, createStripImageJMenuItemActionPerformed_super, createStripImageJMenuItemActionPerformed_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, processingJMenuActionPerformed, processingJMenuActionPerformed_super, processingJMenuActionPerformed_impl, openImageJMenuItemActionPerformed, openImageJMenuItemActionPerformed_super, openImageJMenuItemActionPerformed_impl, onFiles, onFiles_super, onFiles_impl, fileJMenuActionPerformed, fileJMenuActionPerformed_super, fileJMenuActionPerformed_impl, analyzeJMenuItemActionPerformed, analyzeJMenuItemActionPerformed_super, analyzeJMenuItemActionPerformed_impl, generateRotationSpriteJMenuItemActionPerformed, generateRotationSpriteJMenuItemActionPerformed_super, generateRotationSpriteJMenuItemActionPerformed_impl, generateSpriteSplitterMenuItemActionPerformed, generateSpriteSplitterMenuItemActionPerformed_super, generateSpriteSplitterMenuItemActionPerformed_impl, generateRotationMenuItemActionPerformed, generateRotationMenuItemActionPerformed_super, generateRotationMenuItemActionPerformed_impl, scaleImagesJMenuItemActionPerformed, scaleImagesJMenuItemActionPerformed_super, scaleImagesJMenuItemActionPerformed_impl, createIconsJMenuItemActionPerformed, createIconsJMenuItemActionPerformed_super, createIconsJMenuItemActionPerformed_impl, canvasImagesJMenuItemActionPerformed, canvasImagesJMenuItemActionPerformed_super, canvasImagesJMenuItemActionPerformed_impl, generateMirrorSpriteMenuItemActionPerformed, generateMirrorSpriteMenuItemActionPerformed_super, generateMirrorSpriteMenuItemActionPerformed_impl, mirrorJMenuItemActionPerformed, mirrorJMenuItemActionPerformed_super, mirrorJMenuItemActionPerformed_impl, getColorRangeInterface, getColorRangeInterface_super, getColorRangeInterface_impl, getMaxBlueJTextField, getMaxBlueJTextField_super, getMaxBlueJTextField_impl, setMaxBlueJTextField, setMaxBlueJTextField_super, setMaxBlueJTextField_impl, getMaxGreenJTextField, getMaxGreenJTextField_super, getMaxGreenJTextField_impl, setMaxGreenJTextField, setMaxGreenJTextField_super, setMaxGreenJTextField_impl, getMaxRedJTextField, getMaxRedJTextField_super, getMaxRedJTextField_impl, setMaxRedJTextField, setMaxRedJTextField_super, setMaxRedJTextField_impl, getMinBlueJTextField, getMinBlueJTextField_super, getMinBlueJTextField_impl, setMinBlueJTextField, setMinBlueJTextField_super, setMinBlueJTextField_impl, getMinGreenJTextField, getMinGreenJTextField_super, getMinGreenJTextField_impl, setMinGreenJTextField, setMinGreenJTextField_super, setMinGreenJTextField_impl, getMinRedJTextField, getMinRedJTextField_super, getMinRedJTextField_impl, setMinRedJTextField, setMinRedJTextField_super, setMinRedJTextField_impl, logUtil, commonStrings, imageProcessorInputCompositeInterface, fileJDialog, imageProcessorInput, analysisActionJDialog, analyzeJMenuItem, blueJLabel, colorRangeJLabel, createStripImageJMenuItem, fileJMenu, generateSpriteSplitterMenuItem, generateRotationMenuItem, generateMirrorSpriteMenuItem, generateRotationSpriteJMenuItem, greenJLabel, jPanel1, mainJMenuBar, maxBlueJTextField, maxGreenJTextField, maxJLabel, maxRedJTextField, minBlueJTextField, minGreenJTextField, minJLabel, minRedJTextField, mirrorJMenuItem, okJButton, openImageJMenuItem, processingJMenu, redJLabel, scaleImagesJMenuItem, canvasImagesJMenuItem, createIconImagesJMenuItem, titleJLabel)
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
import qualified JLabel -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JPanel -- same package or java.lang
import qualified JMenuBar -- same package or java.lang
import qualified JMenu -- same package or java.lang
import qualified JMenuItem -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified ImageUnifierJPanel -- same package or java.lang
import qualified ImageAnalysisResultsJPanel -- same package or java.lang
import qualified RotationSpriteImageJPanel -- same package or java.lang
import qualified SpriteSplitterImageJPanel -- same package or java.lang
import qualified RotationImageJPanel -- same package or java.lang
import qualified ResizeImageJPanel -- same package or java.lang
import qualified CreateIconImagesJPanel -- same package or java.lang
import qualified CanvasImageJPanel -- same package or java.lang
import qualified MirrorSpriteImageJPanel -- same package or java.lang
import qualified MirrorImageJPanel -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified File -- java.io.File
import qualified Arrays -- java.util.Arrays
import qualified Comparator -- java.util.Comparator
import qualified ImageIO -- javax.imageio.ImageIO
import qualified FileJDialog -- org.allbinary.gui.dialog.FileJDialog
import qualified FileJDialogListenerInterface -- org.allbinary.gui.dialog.FileJDialogListenerInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ColorRange -- org.allbinary.media.image.analysis.ColorRange
import qualified ColorRangeInterface -- org.allbinary.media.image.analysis.ColorRangeInterface
import qualified ImageAnalysis -- org.allbinary.media.image.analysis.ImageAnalysis
import qualified ImageAnalysisResults -- org.allbinary.media.image.analysis.ImageAnalysisResults
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JFrame

-- implements FileJDialogListenerInterface
data ImageToolJFrame = ImageToolJFrame
    { header_ :: JavaHeader
    , base :: JFrame.JFrame
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , fileJDialog :: IORef (FileJDialog.FileJDialog)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , analysisActionJDialog :: IORef (JDialog.JDialog)
    , analyzeJMenuItem :: IORef (JMenuItem.JMenuItem)
    , blueJLabel :: IORef (JLabel.JLabel)
    , colorRangeJLabel :: IORef (JLabel.JLabel)
    , createStripImageJMenuItem :: IORef (JMenuItem.JMenuItem)
    , fileJMenu :: IORef (JMenu.JMenu)
    , generateSpriteSplitterMenuItem :: IORef (JMenuItem.JMenuItem)
    , generateRotationMenuItem :: IORef (JMenuItem.JMenuItem)
    , generateMirrorSpriteMenuItem :: IORef (JMenuItem.JMenuItem)
    , generateRotationSpriteJMenuItem :: IORef (JMenuItem.JMenuItem)
    , greenJLabel :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , mainJMenuBar :: IORef (JMenuBar.JMenuBar)
    , maxBlueJTextField :: IORef (JTextField.JTextField)
    , maxGreenJTextField :: IORef (JTextField.JTextField)
    , maxJLabel :: IORef (JLabel.JLabel)
    , maxRedJTextField :: IORef (JTextField.JTextField)
    , minBlueJTextField :: IORef (JTextField.JTextField)
    , minGreenJTextField :: IORef (JTextField.JTextField)
    , minJLabel :: IORef (JLabel.JLabel)
    , minRedJTextField :: IORef (JTextField.JTextField)
    , mirrorJMenuItem :: IORef (JMenuItem.JMenuItem)
    , okJButton :: IORef (JButton.JButton)
    , openImageJMenuItem :: IORef (JMenuItem.JMenuItem)
    , processingJMenu :: IORef (JMenu.JMenu)
    , redJLabel :: IORef (JLabel.JLabel)
    , scaleImagesJMenuItem :: IORef (JMenuItem.JMenuItem)
    , canvasImagesJMenuItem :: IORef (JMenuItem.JMenuItem)
    , createIconImagesJMenuItem :: IORef (JMenuItem.JMenuItem)
    , titleJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull ImageToolJFrame where
    javaNull = javaNullRecord "ImageToolJFrame"

instance JavaEquals ImageToolJFrame where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageToolJFrame where
    (==) = jrecordEquals

instance JavaObjectClass ImageToolJFrame where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE imageProcessorInputCompositeInterface #-}
imageProcessorInputCompositeInterface = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO ImageToolJFrame
newRecord_ = do
    base <- JFrame.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    fileJDialog <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    analysisActionJDialog <- newIORef javaNull
    analyzeJMenuItem <- newIORef javaNull
    blueJLabel <- newIORef javaNull
    colorRangeJLabel <- newIORef javaNull
    createStripImageJMenuItem <- newIORef javaNull
    fileJMenu <- newIORef javaNull
    generateSpriteSplitterMenuItem <- newIORef javaNull
    generateRotationMenuItem <- newIORef javaNull
    generateMirrorSpriteMenuItem <- newIORef javaNull
    generateRotationSpriteJMenuItem <- newIORef javaNull
    greenJLabel <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    mainJMenuBar <- newIORef javaNull
    maxBlueJTextField <- newIORef javaNull
    maxGreenJTextField <- newIORef javaNull
    maxJLabel <- newIORef javaNull
    maxRedJTextField <- newIORef javaNull
    minBlueJTextField <- newIORef javaNull
    minGreenJTextField <- newIORef javaNull
    minJLabel <- newIORef javaNull
    minRedJTextField <- newIORef javaNull
    mirrorJMenuItem <- newIORef javaNull
    okJButton <- newIORef javaNull
    openImageJMenuItem <- newIORef javaNull
    processingJMenu <- newIORef javaNull
    redJLabel <- newIORef javaNull
    scaleImagesJMenuItem <- newIORef javaNull
    canvasImagesJMenuItem <- newIORef javaNull
    createIconImagesJMenuItem <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    let this = ImageToolJFrame header_ base logUtil commonStrings fileJDialog imageProcessorInput analysisActionJDialog analyzeJMenuItem blueJLabel colorRangeJLabel createStripImageJMenuItem fileJMenu generateSpriteSplitterMenuItem generateRotationMenuItem generateMirrorSpriteMenuItem generateRotationSpriteJMenuItem greenJLabel jPanel1 mainJMenuBar maxBlueJTextField maxGreenJTextField maxJLabel maxRedJTextField minBlueJTextField minGreenJTextField minJLabel minRedJTextField mirrorJMenuItem okJButton openImageJMenuItem processingJMenu redJLabel scaleImagesJMenuItem canvasImagesJMenuItem createIconImagesJMenuItem titleJLabel
    jregisterLevel header_ this
    FileJDialogListenerInterface.registerInterface_ header_
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "createStripImageJMenuItemActionPerformed" (\() -> createStripImageJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "processingJMenuActionPerformed" (\() -> processingJMenuActionPerformed_impl this)
    jregisterMethod header_ "openImageJMenuItemActionPerformed" (\() -> openImageJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "onFiles" (\() -> onFiles_impl this)
    jregisterMethod header_ "fileJMenuActionPerformed" (\() -> fileJMenuActionPerformed_impl this)
    jregisterMethod header_ "analyzeJMenuItemActionPerformed" (\() -> analyzeJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "generateRotationSpriteJMenuItemActionPerformed" (\() -> generateRotationSpriteJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "generateSpriteSplitterMenuItemActionPerformed" (\() -> generateSpriteSplitterMenuItemActionPerformed_impl this)
    jregisterMethod header_ "generateRotationMenuItemActionPerformed" (\() -> generateRotationMenuItemActionPerformed_impl this)
    jregisterMethod header_ "scaleImagesJMenuItemActionPerformed" (\() -> scaleImagesJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "createIconsJMenuItemActionPerformed" (\() -> createIconsJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "canvasImagesJMenuItemActionPerformed" (\() -> canvasImagesJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "generateMirrorSpriteMenuItemActionPerformed" (\() -> generateMirrorSpriteMenuItemActionPerformed_impl this)
    jregisterMethod header_ "mirrorJMenuItemActionPerformed" (\() -> mirrorJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "getColorRangeInterface" (\() -> getColorRangeInterface_impl this)
    jregisterMethod header_ "getMaxBlueJTextField" (\() -> getMaxBlueJTextField_impl this)
    jregisterMethod header_ "setMaxBlueJTextField" (\() -> setMaxBlueJTextField_impl this)
    jregisterMethod header_ "getMaxGreenJTextField" (\() -> getMaxGreenJTextField_impl this)
    jregisterMethod header_ "setMaxGreenJTextField" (\() -> setMaxGreenJTextField_impl this)
    jregisterMethod header_ "getMaxRedJTextField" (\() -> getMaxRedJTextField_impl this)
    jregisterMethod header_ "setMaxRedJTextField" (\() -> setMaxRedJTextField_impl this)
    jregisterMethod header_ "getMinBlueJTextField" (\() -> getMinBlueJTextField_impl this)
    jregisterMethod header_ "setMinBlueJTextField" (\() -> setMinBlueJTextField_impl this)
    jregisterMethod header_ "getMinGreenJTextField" (\() -> getMinGreenJTextField_impl this)
    jregisterMethod header_ "setMinGreenJTextField" (\() -> setMinGreenJTextField_impl this)
    jregisterMethod header_ "getMinRedJTextField" (\() -> getMinRedJTextField_impl this)
    jregisterMethod header_ "setMinRedJTextField" (\() -> setMinRedJTextField_impl this)
    pure this

initFields_ :: ImageToolJFrame -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.fileJDialog (javaNull)
    jset this.imageProcessorInput (javaNull)
    jset this.analysisActionJDialog (javaNull)
    jset this.analyzeJMenuItem (javaNull)
    jset this.blueJLabel (javaNull)
    jset this.colorRangeJLabel (javaNull)
    jset this.createStripImageJMenuItem (javaNull)
    jset this.fileJMenu (javaNull)
    jset this.generateSpriteSplitterMenuItem (javaNull)
    jset this.generateRotationMenuItem (javaNull)
    jset this.generateMirrorSpriteMenuItem (javaNull)
    jset this.generateRotationSpriteJMenuItem (javaNull)
    jset this.greenJLabel (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.mainJMenuBar (javaNull)
    jset this.maxBlueJTextField (javaNull)
    jset this.maxGreenJTextField (javaNull)
    jset this.maxJLabel (javaNull)
    jset this.maxRedJTextField (javaNull)
    jset this.minBlueJTextField (javaNull)
    jset this.minGreenJTextField (javaNull)
    jset this.minJLabel (javaNull)
    jset this.minRedJTextField (javaNull)
    jset this.mirrorJMenuItem (javaNull)
    jset this.okJButton (javaNull)
    jset this.openImageJMenuItem (javaNull)
    jset this.processingJMenu (javaNull)
    jset this.redJLabel (javaNull)
    jset this.scaleImagesJMenuItem (javaNull)
    jset this.canvasImagesJMenuItem (javaNull)
    jset this.createIconImagesJMenuItem (javaNull)
    jset this.titleJLabel (javaNull)
    pure ()

new_ :: IO ImageToolJFrame
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageToolJFrame -> IO ()
init_ this = do
        JFrame.init_ this.base
        initFields_ this
        Control.Monad.void (ImageToolJFrame.initComponents this)
        commonPhoneStrings <- (CommonPhoneStrings.getInstance)
        Control.Monad.void (JFrame.setSize this 640 480)
        Control.Monad.void (JTextField.setText ((jio (ImageToolJFrame.getMaxRedJTextField this))) "255")
        Control.Monad.void (JTextField.setText ((jio (ImageToolJFrame.getMaxGreenJTextField this))) "255")
        Control.Monad.void (JTextField.setText ((jio (ImageToolJFrame.getMaxBlueJTextField this))) "255")
        Control.Monad.void (JTextField.setText ((jio (ImageToolJFrame.getMinRedJTextField this))) (jget (commonPhoneStrings).zERO))
        Control.Monad.void (JTextField.setText ((jio (ImageToolJFrame.getMinGreenJTextField this))) (jget (commonPhoneStrings).zERO))
        Control.Monad.void (JTextField.setText ((jio (ImageToolJFrame.getMinBlueJTextField this))) (jget (commonPhoneStrings).zERO))
        assignedValue <- (FileJDialog.new_)
        jset (this).fileJDialog (assignedValue)
        Control.Monad.void (FileJDialog.addFinishedListener ((jget (this).fileJDialog)) (javaCast this))
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ImageToolJFrame))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ImageToolJFrame))

initComponents_impl :: ImageToolJFrame -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset this.analysisActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).colorRangeJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).redJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).minJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).maxJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).greenJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).blueJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxGreenJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minBlueJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxBlueJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minGreenJTextField (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JMenuBar.new_)
        jset (this).mainJMenuBar (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).fileJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).openImageJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).processingJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).analyzeJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).generateSpriteSplitterMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).generateRotationMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).generateMirrorSpriteMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).generateRotationSpriteJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).createStripImageJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).mirrorJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).scaleImagesJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).canvasImagesJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).createIconImagesJMenuItem (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).analysisActionJDialog)) (jio (Dimension.new_2 350 250)))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "              Color At Action Options            ")
        Control.Monad.void (JLabel.setText ((jget (this).colorRangeJLabel)) "Color Range")
        Control.Monad.void (JLabel.setText ((jget (this).redJLabel)) "Red:")
        Control.Monad.void (JLabel.setText ((jget (this).minJLabel)) "Minimum")
        Control.Monad.void (JLabel.setText ((jget (this).maxJLabel)) "Maximum")
        Control.Monad.void (JLabel.setText ((jget (this).greenJLabel)) "Green:")
        Control.Monad.void (JLabel.setText ((jget (this).blueJLabel)) "Blue:")
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        analysisActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).analysisActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).analysisActionJDialog))))) analysisActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup analysisActionJDialogLayout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup analysisActionJDialogLayout)))))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup analysisActionJDialogLayout))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget this.blueJLabel)))) (jget this.greenJLabel)))) (jget this.redJLabel)))) (jget this.colorRangeJLabel)))))) 29 29 29))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) (jget this.minJLabel) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) 58 (Prelude.maxBound :: Int16)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) False))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jget this.minBlueJTextField)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jget this.minGreenJTextField)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jget this.minRedJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) 42 (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jget this.okJButton)))))))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup analysisActionJDialogLayout))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) False))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jget this.maxRedJTextField)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup analysisActionJDialogLayout))) 1 1 1))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget this.maxBlueJTextField)))) (jget this.maxGreenJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) 43 (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))))))))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED) 17 (Prelude.maxBound :: Int16)))))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING) (jget this.maxJLabel) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) 61 (Prelude.maxBound :: Int16))))))))))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup analysisActionJDialogLayout))) (jget this.titleJLabel)))) 25 25 25)))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup analysisActionJDialogLayout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.add ((jio (GroupLayout.createSequentialGroup analysisActionJDialogLayout))) (jget this.titleJLabel)))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.minJLabel)))) (jget this.colorRangeJLabel)))) (jget this.maxJLabel)))))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING)))) (jget this.redJLabel)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.minRedJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget this.maxRedJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))))))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING)))) (jget this.greenJLabel)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.minGreenJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget this.maxGreenJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))))))) (jget ((jget ((jget (org.jdesktop).layout)).layoutStyle)).rELATED)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING)))) (jget this.blueJLabel)))) (jio (GroupLayout.add ((jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup analysisActionJDialogLayout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).bASELINE)))) (jget this.minBlueJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget this.maxBlueJTextField) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))))))) 16 16 16))) (jget this.okJButton)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (JFrame.setDefaultCloseOperation this (jget ((jget (javax.swing).windowConstants)).eXIT_ON_CLOSE))
        Control.Monad.void (setLayout ((jio (JFrame.getContentPane this))) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (add ((jio (JFrame.getContentPane this))) (jget (this).jPanel1))
        Control.Monad.void (JMenu.setText ((jget (this).fileJMenu)) "File")
        Control.Monad.void (JMenu.addActionListener ((jget (this).fileJMenu)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenuItem.setText ((jget (this).openImageJMenuItem)) "Open")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).openImageJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).openImageJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).mainJMenuBar)) (jget (this).fileJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).processingJMenu)) "Processing")
        Control.Monad.void (JMenu.addActionListener ((jget (this).processingJMenu)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenuItem.setText ((jget (this).analyzeJMenuItem)) "Image Analyze")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).analyzeJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).analyzeJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).generateMirrorSpriteMenuItem)) "Mirror Sprite Generator")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).generateMirrorSpriteMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).generateMirrorSpriteMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).generateRotationSpriteJMenuItem)) "Rotation Sprite Generator")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).generateRotationSpriteJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).generateRotationSpriteJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).generateSpriteSplitterMenuItem)) "Sprite Splitter Generator")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).generateSpriteSplitterMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).generateSpriteSplitterMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).generateRotationMenuItem)) "Rotate Image Generator")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).generateRotationMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).generateRotationMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).createStripImageJMenuItem)) "Multi Image Unifier")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).createStripImageJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).createStripImageJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).mirrorJMenuItem)) "Mirror Image(s)")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).mirrorJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).mirrorJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).scaleImagesJMenuItem)) "Scale Image(s)")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).scaleImagesJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).scaleImagesJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).canvasImagesJMenuItem)) "Canvas Image(s)")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).canvasImagesJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).canvasImagesJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).createIconImagesJMenuItem)) "Create Icon Image(s)")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).createIconImagesJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).createIconImagesJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).mainJMenuBar)) (jget (this).processingJMenu))
        Control.Monad.void (JFrame.setJMenuBar this (jget (this).mainJMenuBar))
        Control.Monad.void (JFrame.pack this)
        pure ()


createStripImageJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
createStripImageJMenuItemActionPerformed object_ a1 = jmethod object_ "createStripImageJMenuItemActionPerformed" (\() -> (createStripImageJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

createStripImageJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
createStripImageJMenuItemActionPerformed_super object_ a1 = (createStripImageJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

createStripImageJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
createStripImageJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "createStripImageJMenuItemActionPerformed" e)
            ) $ do
            imageUnifierJPanel <- (ImageUnifierJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) imageUnifierJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (imageUnifierJPanel)
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

okJButtonActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "okJButtonActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "okJButtonActionPerformed")
            imageAnalysisResultsArray <- (ImageAnalysis.process ((jio (ImageAnalysis.getInstance))) (jio (ImageProcessorInput.getBufferedImageArray ((jget (this).imageProcessorInput)))) (jio (ImageToolJFrame.getColorRangeInterface this)))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) (jio (ImageAnalysisResultsJPanel.new_1 imageAnalysisResultsArray)))
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            Control.Monad.void (JDialog.setVisible ((jget (this).analysisActionJDialog)) False)
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (javaNull)
        pure ()


processingJMenuActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
processingJMenuActionPerformed object_ a1 = jmethod object_ "processingJMenuActionPerformed" (\() -> (processingJMenuActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

processingJMenuActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
processingJMenuActionPerformed_super object_ a1 = (processingJMenuActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

processingJMenuActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
processingJMenuActionPerformed_impl this evt = do
        pure ()


openImageJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
openImageJMenuItemActionPerformed object_ a1 = jmethod object_ "openImageJMenuItemActionPerformed" (\() -> (openImageJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

openImageJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
openImageJMenuItemActionPerformed_super object_ a1 = (openImageJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

openImageJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
openImageJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "openImageJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "openImageJMenuItemActionPerformed")
            Control.Monad.void (FileJDialog.setVisible ((jget (this).fileJDialog)) True)
        pure ()


onFiles :: (JavaObjectClass this_) => this_ -> JavaArray (File.File) -> IO (())
onFiles object_ a1 = jmethod object_ "onFiles" (\() -> (onFiles_impl (javaCast object_ :: ImageToolJFrame))) () a1

onFiles_super :: (JavaObjectClass this_) => this_ -> JavaArray (File.File) -> IO (())
onFiles_super object_ a1 = (onFiles_impl (javaCast object_ :: ImageToolJFrame)) a1

onFiles_impl :: ImageToolJFrame -> JavaArray (File.File) -> IO (())
onFiles_impl this files = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "onFiles" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Reading " ++ javaToString (jlength files)) ++ " files.") this "onFiles")
            Control.Monad.void (Arrays.sort files (Comparator.new_ {- Java anonymous class body: implement it as a record of functions
                -- compare
                -- extractIndexNumberIfAnyFromFileName
-}))
            let bufferedImageArray = (jnewArray ((jlength files)) javaNull)
            forM_ [0 .. (jlength files) - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (ImageIO.read (jindex files (index)))
                jsetIndex bufferedImageArray (index) (assignedValue)
                when ((jindex bufferedImageArray (index)) == javaNull) $ do
                    javaThrow ((JavaException "Exception" ("Unable to read file: " ++ javaToString (jio (getPath ((jindex files (index))))))))
            assignedValue <- (ImageProcessorInput.new_2 files bufferedImageArray)
            jset (this).imageProcessorInput (assignedValue)
            Control.Monad.void (FileJDialog.setVisible ((jget (this).fileJDialog)) False)
            when ((jget ImageToolJFrame.imageProcessorInputCompositeInterface) /= javaNull) $ do
                Control.Monad.void (setImageProcessorInput ((jget ImageToolJFrame.imageProcessorInputCompositeInterface)) (jget (this).imageProcessorInput))
        pure ()


fileJMenuActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
fileJMenuActionPerformed object_ a1 = jmethod object_ "fileJMenuActionPerformed" (\() -> (fileJMenuActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

fileJMenuActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
fileJMenuActionPerformed_super object_ a1 = (fileJMenuActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

fileJMenuActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
fileJMenuActionPerformed_impl this evt = do
        pure ()


analyzeJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
analyzeJMenuItemActionPerformed object_ a1 = jmethod object_ "analyzeJMenuItemActionPerformed" (\() -> (analyzeJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

analyzeJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
analyzeJMenuItemActionPerformed_super object_ a1 = (analyzeJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

analyzeJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
analyzeJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "analyzeJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "analyzeJMenuItemActionPerformed")
            Control.Monad.void (JDialog.setVisible ((jget (this).analysisActionJDialog)) True)
        pure ()


generateRotationSpriteJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateRotationSpriteJMenuItemActionPerformed object_ a1 = jmethod object_ "generateRotationSpriteJMenuItemActionPerformed" (\() -> (generateRotationSpriteJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

generateRotationSpriteJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateRotationSpriteJMenuItemActionPerformed_super object_ a1 = (generateRotationSpriteJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

generateRotationSpriteJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
generateRotationSpriteJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "generateRotationSpriteJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "generateRotationSpriteJMenuItemActionPerformed")
            spriteImageJPanel <- (RotationSpriteImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) spriteImageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (spriteImageJPanel)
        pure ()


generateSpriteSplitterMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateSpriteSplitterMenuItemActionPerformed object_ a1 = jmethod object_ "generateSpriteSplitterMenuItemActionPerformed" (\() -> (generateSpriteSplitterMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

generateSpriteSplitterMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateSpriteSplitterMenuItemActionPerformed_super object_ a1 = (generateSpriteSplitterMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

generateSpriteSplitterMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
generateSpriteSplitterMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "generateRotationMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "generateRotationSpriteJMenuItemActionPerformed")
            imageJPanel <- (SpriteSplitterImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) imageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (imageJPanel)
        pure ()


generateRotationMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateRotationMenuItemActionPerformed object_ a1 = jmethod object_ "generateRotationMenuItemActionPerformed" (\() -> (generateRotationMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

generateRotationMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateRotationMenuItemActionPerformed_super object_ a1 = (generateRotationMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

generateRotationMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
generateRotationMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "generateRotationMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "generateRotationSpriteJMenuItemActionPerformed")
            rotationImageJPanel <- (RotationImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) rotationImageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (rotationImageJPanel)
        pure ()


scaleImagesJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
scaleImagesJMenuItemActionPerformed object_ a1 = jmethod object_ "scaleImagesJMenuItemActionPerformed" (\() -> (scaleImagesJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

scaleImagesJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
scaleImagesJMenuItemActionPerformed_super object_ a1 = (scaleImagesJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

scaleImagesJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
scaleImagesJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "scaleImagesJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "scaleImagesJMenuItemActionPerformed")
            resizeImageJPanel <- (ResizeImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) resizeImageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (resizeImageJPanel)
        pure ()


createIconsJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
createIconsJMenuItemActionPerformed object_ a1 = jmethod object_ "createIconsJMenuItemActionPerformed" (\() -> (createIconsJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

createIconsJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
createIconsJMenuItemActionPerformed_super object_ a1 = (createIconsJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

createIconsJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
createIconsJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "scaleImagesJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "createIconsJMenuItemActionPerformed")
            createIconImagesJPanel <- (CreateIconImagesJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) createIconImagesJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (createIconImagesJPanel)
        pure ()


canvasImagesJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
canvasImagesJMenuItemActionPerformed object_ a1 = jmethod object_ "canvasImagesJMenuItemActionPerformed" (\() -> (canvasImagesJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

canvasImagesJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
canvasImagesJMenuItemActionPerformed_super object_ a1 = (canvasImagesJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

canvasImagesJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
canvasImagesJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "scaleImagesJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "canvasImagesJMenuItemActionPerformed")
            resizeImageJPanel <- (CanvasImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) resizeImageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (resizeImageJPanel)
        pure ()


generateMirrorSpriteMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateMirrorSpriteMenuItemActionPerformed object_ a1 = jmethod object_ "generateMirrorSpriteMenuItemActionPerformed" (\() -> (generateMirrorSpriteMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

generateMirrorSpriteMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
generateMirrorSpriteMenuItemActionPerformed_super object_ a1 = (generateMirrorSpriteMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

generateMirrorSpriteMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
generateMirrorSpriteMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "generateMirrorSpriteJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "generateMirrorSpriteJMenuItemActionPerformed")
            spriteImageJPanel <- (MirrorSpriteImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) spriteImageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (spriteImageJPanel)
        pure ()


mirrorJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
mirrorJMenuItemActionPerformed object_ a1 = jmethod object_ "mirrorJMenuItemActionPerformed" (\() -> (mirrorJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame))) () a1

mirrorJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
mirrorJMenuItemActionPerformed_super object_ a1 = (mirrorJMenuItemActionPerformed_impl (javaCast object_ :: ImageToolJFrame)) a1

mirrorJMenuItemActionPerformed_impl :: ImageToolJFrame -> ActionEvent.ActionEvent -> IO (())
mirrorJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "generateMirrorJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "generateMirrorJMenuItemActionPerformed")
            mirrorImageJPanel <- (MirrorImageJPanel.new_1 (jget (this).imageProcessorInput))
            Control.Monad.void (JPanel.removeAll ((jget (this).jPanel1)))
            Control.Monad.void (JPanel.add ((jget (this).jPanel1)) mirrorImageJPanel)
            Control.Monad.void (JPanel.updateUI ((jget (this).jPanel1)))
            jset ImageToolJFrame.imageProcessorInputCompositeInterface (mirrorImageJPanel)
        pure ()


getColorRangeInterface :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface object_ = jmethod object_ "getColorRangeInterface" (\() -> (getColorRangeInterface_impl (javaCast object_ :: ImageToolJFrame))) ()

getColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_super object_ = (getColorRangeInterface_impl (javaCast object_ :: ImageToolJFrame))

getColorRangeInterface_impl :: ImageToolJFrame -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_impl this = do
        let colorRangeInterface = (javaCast (jio (ColorRange.new_)) :: ColorRangeInterface.ColorRangeInterface)
        Control.Monad.void (ColorRangeInterface.setMinRed colorRangeInterface (Prelude.fromIntegral ((jio (JTextField.getText ((jio (ImageToolJFrame.getMinRedJTextField this)))))) :: Int))
        Control.Monad.void (ColorRangeInterface.setMaxRed colorRangeInterface (Prelude.fromIntegral ((jio (JTextField.getText ((jio (ImageToolJFrame.getMaxRedJTextField this)))))) :: Int))
        Control.Monad.void (ColorRangeInterface.setMinGreen colorRangeInterface (Prelude.fromIntegral ((jio (JTextField.getText ((jio (ImageToolJFrame.getMinGreenJTextField this)))))) :: Int))
        Control.Monad.void (ColorRangeInterface.setMaxGreen colorRangeInterface (Prelude.fromIntegral ((jio (JTextField.getText ((jio (ImageToolJFrame.getMaxGreenJTextField this)))))) :: Int))
        Control.Monad.void (ColorRangeInterface.setMinBlue colorRangeInterface (Prelude.fromIntegral ((jio (JTextField.getText ((jio (ImageToolJFrame.getMinBlueJTextField this)))))) :: Int))
        Control.Monad.void (ColorRangeInterface.setMaxBlue colorRangeInterface (Prelude.fromIntegral ((jio (JTextField.getText ((jio (ImageToolJFrame.getMaxBlueJTextField this)))))) :: Int))
        pure (colorRangeInterface)


getMaxBlueJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxBlueJTextField object_ = jmethod object_ "getMaxBlueJTextField" (\() -> (getMaxBlueJTextField_impl (javaCast object_ :: ImageToolJFrame))) ()

getMaxBlueJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxBlueJTextField_super object_ = (getMaxBlueJTextField_impl (javaCast object_ :: ImageToolJFrame))

getMaxBlueJTextField_impl :: ImageToolJFrame -> IO (JTextField.JTextField)
getMaxBlueJTextField_impl this = do
        pure ((jget (this).maxBlueJTextField))


setMaxBlueJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxBlueJTextField object_ a1 = jmethod object_ "setMaxBlueJTextField" (\() -> (setMaxBlueJTextField_impl (javaCast object_ :: ImageToolJFrame))) () a1

setMaxBlueJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxBlueJTextField_super object_ a1 = (setMaxBlueJTextField_impl (javaCast object_ :: ImageToolJFrame)) a1

setMaxBlueJTextField_impl :: ImageToolJFrame -> JTextField.JTextField -> IO (())
setMaxBlueJTextField_impl this maxBlueJTextField = do
        jset (this).maxBlueJTextField ((jget (this).maxBlueJTextField))
        pure ()


getMaxGreenJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxGreenJTextField object_ = jmethod object_ "getMaxGreenJTextField" (\() -> (getMaxGreenJTextField_impl (javaCast object_ :: ImageToolJFrame))) ()

getMaxGreenJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxGreenJTextField_super object_ = (getMaxGreenJTextField_impl (javaCast object_ :: ImageToolJFrame))

getMaxGreenJTextField_impl :: ImageToolJFrame -> IO (JTextField.JTextField)
getMaxGreenJTextField_impl this = do
        pure ((jget (this).maxGreenJTextField))


setMaxGreenJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxGreenJTextField object_ a1 = jmethod object_ "setMaxGreenJTextField" (\() -> (setMaxGreenJTextField_impl (javaCast object_ :: ImageToolJFrame))) () a1

setMaxGreenJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxGreenJTextField_super object_ a1 = (setMaxGreenJTextField_impl (javaCast object_ :: ImageToolJFrame)) a1

setMaxGreenJTextField_impl :: ImageToolJFrame -> JTextField.JTextField -> IO (())
setMaxGreenJTextField_impl this maxGreenJTextField = do
        jset (this).maxGreenJTextField ((jget (this).maxGreenJTextField))
        pure ()


getMaxRedJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxRedJTextField object_ = jmethod object_ "getMaxRedJTextField" (\() -> (getMaxRedJTextField_impl (javaCast object_ :: ImageToolJFrame))) ()

getMaxRedJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxRedJTextField_super object_ = (getMaxRedJTextField_impl (javaCast object_ :: ImageToolJFrame))

getMaxRedJTextField_impl :: ImageToolJFrame -> IO (JTextField.JTextField)
getMaxRedJTextField_impl this = do
        pure ((jget (this).maxRedJTextField))


setMaxRedJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxRedJTextField object_ a1 = jmethod object_ "setMaxRedJTextField" (\() -> (setMaxRedJTextField_impl (javaCast object_ :: ImageToolJFrame))) () a1

setMaxRedJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxRedJTextField_super object_ a1 = (setMaxRedJTextField_impl (javaCast object_ :: ImageToolJFrame)) a1

setMaxRedJTextField_impl :: ImageToolJFrame -> JTextField.JTextField -> IO (())
setMaxRedJTextField_impl this maxRedJTextField = do
        jset (this).maxRedJTextField ((jget (this).maxRedJTextField))
        pure ()


getMinBlueJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinBlueJTextField object_ = jmethod object_ "getMinBlueJTextField" (\() -> (getMinBlueJTextField_impl (javaCast object_ :: ImageToolJFrame))) ()

getMinBlueJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinBlueJTextField_super object_ = (getMinBlueJTextField_impl (javaCast object_ :: ImageToolJFrame))

getMinBlueJTextField_impl :: ImageToolJFrame -> IO (JTextField.JTextField)
getMinBlueJTextField_impl this = do
        pure ((jget (this).minBlueJTextField))


setMinBlueJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinBlueJTextField object_ a1 = jmethod object_ "setMinBlueJTextField" (\() -> (setMinBlueJTextField_impl (javaCast object_ :: ImageToolJFrame))) () a1

setMinBlueJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinBlueJTextField_super object_ a1 = (setMinBlueJTextField_impl (javaCast object_ :: ImageToolJFrame)) a1

setMinBlueJTextField_impl :: ImageToolJFrame -> JTextField.JTextField -> IO (())
setMinBlueJTextField_impl this minBlueJTextField = do
        jset (this).minBlueJTextField ((jget (this).minBlueJTextField))
        pure ()


getMinGreenJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinGreenJTextField object_ = jmethod object_ "getMinGreenJTextField" (\() -> (getMinGreenJTextField_impl (javaCast object_ :: ImageToolJFrame))) ()

getMinGreenJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinGreenJTextField_super object_ = (getMinGreenJTextField_impl (javaCast object_ :: ImageToolJFrame))

getMinGreenJTextField_impl :: ImageToolJFrame -> IO (JTextField.JTextField)
getMinGreenJTextField_impl this = do
        pure ((jget (this).minGreenJTextField))


setMinGreenJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinGreenJTextField object_ a1 = jmethod object_ "setMinGreenJTextField" (\() -> (setMinGreenJTextField_impl (javaCast object_ :: ImageToolJFrame))) () a1

setMinGreenJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinGreenJTextField_super object_ a1 = (setMinGreenJTextField_impl (javaCast object_ :: ImageToolJFrame)) a1

setMinGreenJTextField_impl :: ImageToolJFrame -> JTextField.JTextField -> IO (())
setMinGreenJTextField_impl this minGreenJTextField = do
        jset (this).minGreenJTextField ((jget (this).minGreenJTextField))
        pure ()


getMinRedJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinRedJTextField object_ = jmethod object_ "getMinRedJTextField" (\() -> (getMinRedJTextField_impl (javaCast object_ :: ImageToolJFrame))) ()

getMinRedJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinRedJTextField_super object_ = (getMinRedJTextField_impl (javaCast object_ :: ImageToolJFrame))

getMinRedJTextField_impl :: ImageToolJFrame -> IO (JTextField.JTextField)
getMinRedJTextField_impl this = do
        pure ((jget (this).minRedJTextField))


setMinRedJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinRedJTextField object_ a1 = jmethod object_ "setMinRedJTextField" (\() -> (setMinRedJTextField_impl (javaCast object_ :: ImageToolJFrame))) () a1

setMinRedJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinRedJTextField_super object_ a1 = (setMinRedJTextField_impl (javaCast object_ :: ImageToolJFrame)) a1

setMinRedJTextField_impl :: ImageToolJFrame -> JTextField.JTextField -> IO (())
setMinRedJTextField_impl this minRedJTextField = do
        jset (this).minRedJTextField ((jget (this).minRedJTextField))
        pure ()


