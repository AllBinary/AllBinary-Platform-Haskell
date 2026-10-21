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
module ImageUnifierJPanel (module ImageUnifierJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, updateImage, updateImage_super, updateImage_impl, updateImageWithFudgedImages, updateImageWithFudgedImages_super, updateImageWithFudgedImages_impl, updateImage, updateImage_super, updateImage_impl, updateOnPropertiesChange, updateOnPropertiesChange_super, updateOnPropertiesChange_impl, initComponents, initComponents_super, initComponents_impl, jButton2ActionPerformed, jButton2ActionPerformed_super, jButton2ActionPerformed_impl, columnsJTextFieldKeyPressed, columnsJTextFieldKeyPressed_super, columnsJTextFieldKeyPressed_impl, columnsJTextFieldKeyTyped, columnsJTextFieldKeyTyped_super, columnsJTextFieldKeyTyped_impl, columnsJTextFieldPropertyChange, columnsJTextFieldPropertyChange_super, columnsJTextFieldPropertyChange_impl, fudgeItJButtonActionPerformed, fudgeItJButtonActionPerformed_super, fudgeItJButtonActionPerformed_impl, cellHeightJTextFieldActionPerformed, cellHeightJTextFieldActionPerformed_super, cellHeightJTextFieldActionPerformed_impl, cellWidthJTextFieldActionPerformed, cellWidthJTextFieldActionPerformed_super, cellWidthJTextFieldActionPerformed_impl, columnsJTextFieldActionPerformed, columnsJTextFieldActionPerformed_super, columnsJTextFieldActionPerformed_impl, rowsJTextFieldActionPerformed, rowsJTextFieldActionPerformed_super, rowsJTextFieldActionPerformed_impl, jButton1ActionPerformed, jButton1ActionPerformed_super, jButton1ActionPerformed_impl, downJButtonActionPerformed, downJButtonActionPerformed_super, downJButtonActionPerformed_impl, upJButtonActionPerformed, upJButtonActionPerformed_super, upJButtonActionPerformed_impl, jButtonOrderActionPerformed, jButtonOrderActionPerformed_super, jButtonOrderActionPerformed_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, logUtil, commonStrings, imageStrings, imagesRatioUtil, imageProcessorInput, icon, imageUnifierProperties, result, isImageFillIn, avgRatioJTextField, cellHeightJTextField, cellRatioJTextField, cellWidthJTextField, columnsJTextField, downJButton, fudgeItJButton, imageJList, jButton1, jButton2, jButtonOrder, jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, jPanel1, jScrollPane1, jScrollPane2, rowsJTextField, upJButton)
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
import qualified ImageIconUnique -- same package or java.lang
import qualified DefaultListModel -- same package or java.lang
import qualified ImageIcon -- same package or java.lang
import qualified Icon -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JList -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified PropertyChangeListener -- same package or java.lang
import qualified PropertyChangeEvent -- same package or java.lang
import qualified KeyAdapter -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified File -- java.io.File
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified FileWrapperUtil -- org.allbinary.logic.io.file.FileWrapperUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ImagePersistanceUtil -- org.allbinary.media.image.ImagePersistanceUtil
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ImageStrings -- org.allbinary.media.image.ImageStrings
import qualified ImageUnifierCell -- org.allbinary.media.image.ImageUnifierCell
import qualified ImageUnifierProperties -- org.allbinary.media.image.ImageUnifierProperties
import qualified ImageUnifierUtil -- org.allbinary.media.image.ImageUnifierUtil
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified ImagesRatioUtil -- org.allbinary.media.image.ImagesRatioUtil
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import javax.swing.*
import qualified JPanel

-- implements ImageProcessorInputCompositeInterface
data ImageUnifierJPanel = ImageUnifierJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageStrings :: IORef (ImageStrings.ImageStrings)
    , imagesRatioUtil :: IORef (ImagesRatioUtil.ImagesRatioUtil)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , icon :: IORef (JavaArray (ImageIconUnique.ImageIconUnique))
    , imageUnifierProperties :: IORef (ImageUnifierProperties.ImageUnifierProperties)
    , result :: IORef (BufferedImage.BufferedImage)
    , isImageFillIn :: IORef (Bool)
    , avgRatioJTextField :: IORef (JTextField.JTextField)
    , cellHeightJTextField :: IORef (JTextField.JTextField)
    , cellRatioJTextField :: IORef (JTextField.JTextField)
    , cellWidthJTextField :: IORef (JTextField.JTextField)
    , columnsJTextField :: IORef (JTextField.JTextField)
    , downJButton :: IORef (JButton.JButton)
    , fudgeItJButton :: IORef (JButton.JButton)
    , imageJList :: IORef (JList.JList)
    , jButton1 :: IORef (JButton.JButton)
    , jButton2 :: IORef (JButton.JButton)
    , jButtonOrder :: IORef (JButton.JButton)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLabel3 :: IORef (JLabel.JLabel)
    , jLabel4 :: IORef (JLabel.JLabel)
    , jLabel5 :: IORef (JLabel.JLabel)
    , jLabel6 :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , jScrollPane1 :: IORef (JScrollPane.JScrollPane)
    , jScrollPane2 :: IORef (JScrollPane.JScrollPane)
    , rowsJTextField :: IORef (JTextField.JTextField)
    , upJButton :: IORef (JButton.JButton)
    }

instance JavaNull ImageUnifierJPanel where
    javaNull = javaNullRecord "ImageUnifierJPanel"

instance JavaEquals ImageUnifierJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageUnifierJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ImageUnifierJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageUnifierJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageStrings <- newIORef javaNull
    imagesRatioUtil <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    icon <- newIORef javaNull
    imageUnifierProperties <- newIORef javaNull
    result <- newIORef javaNull
    isImageFillIn <- newIORef False
    avgRatioJTextField <- newIORef javaNull
    cellHeightJTextField <- newIORef javaNull
    cellRatioJTextField <- newIORef javaNull
    cellWidthJTextField <- newIORef javaNull
    columnsJTextField <- newIORef javaNull
    downJButton <- newIORef javaNull
    fudgeItJButton <- newIORef javaNull
    imageJList <- newIORef javaNull
    jButton1 <- newIORef javaNull
    jButton2 <- newIORef javaNull
    jButtonOrder <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLabel3 <- newIORef javaNull
    jLabel4 <- newIORef javaNull
    jLabel5 <- newIORef javaNull
    jLabel6 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    jScrollPane1 <- newIORef javaNull
    jScrollPane2 <- newIORef javaNull
    rowsJTextField <- newIORef javaNull
    upJButton <- newIORef javaNull
    let this = ImageUnifierJPanel header_ base logUtil commonStrings imageStrings imagesRatioUtil imageProcessorInput icon imageUnifierProperties result isImageFillIn avgRatioJTextField cellHeightJTextField cellRatioJTextField cellWidthJTextField columnsJTextField downJButton fudgeItJButton imageJList jButton1 jButton2 jButtonOrder jLabel1 jLabel2 jLabel3 jLabel4 jLabel5 jLabel6 jPanel1 jScrollPane1 jScrollPane2 rowsJTextField upJButton
    jregisterLevel header_ this
    ImageProcessorInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "updateImage" (\() -> updateImage_impl this)
    jregisterMethod header_ "updateImageWithFudgedImages" (\() -> updateImageWithFudgedImages_impl this)
    jregisterMethod header_ "updateImage" (\() -> updateImage_impl this)
    jregisterMethod header_ "updateOnPropertiesChange" (\() -> updateOnPropertiesChange_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "jButton2ActionPerformed" (\() -> jButton2ActionPerformed_impl this)
    jregisterMethod header_ "columnsJTextFieldKeyPressed" (\() -> columnsJTextFieldKeyPressed_impl this)
    jregisterMethod header_ "columnsJTextFieldKeyTyped" (\() -> columnsJTextFieldKeyTyped_impl this)
    jregisterMethod header_ "columnsJTextFieldPropertyChange" (\() -> columnsJTextFieldPropertyChange_impl this)
    jregisterMethod header_ "fudgeItJButtonActionPerformed" (\() -> fudgeItJButtonActionPerformed_impl this)
    jregisterMethod header_ "cellHeightJTextFieldActionPerformed" (\() -> cellHeightJTextFieldActionPerformed_impl this)
    jregisterMethod header_ "cellWidthJTextFieldActionPerformed" (\() -> cellWidthJTextFieldActionPerformed_impl this)
    jregisterMethod header_ "columnsJTextFieldActionPerformed" (\() -> columnsJTextFieldActionPerformed_impl this)
    jregisterMethod header_ "rowsJTextFieldActionPerformed" (\() -> rowsJTextFieldActionPerformed_impl this)
    jregisterMethod header_ "jButton1ActionPerformed" (\() -> jButton1ActionPerformed_impl this)
    jregisterMethod header_ "downJButtonActionPerformed" (\() -> downJButtonActionPerformed_impl this)
    jregisterMethod header_ "upJButtonActionPerformed" (\() -> upJButtonActionPerformed_impl this)
    jregisterMethod header_ "jButtonOrderActionPerformed" (\() -> jButtonOrderActionPerformed_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    pure this

initFields_ :: ImageUnifierJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageStrings =<< (ImageStrings.getInstance)
    jset this.imagesRatioUtil =<< (ImagesRatioUtil.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.icon (javaNull)
    jset this.imageUnifierProperties (javaNull)
    jset this.result (javaNull)
    jset this.isImageFillIn (True)
    jset this.avgRatioJTextField (javaNull)
    jset this.cellHeightJTextField (javaNull)
    jset this.cellRatioJTextField (javaNull)
    jset this.cellWidthJTextField (javaNull)
    jset this.columnsJTextField (javaNull)
    jset this.downJButton (javaNull)
    jset this.fudgeItJButton (javaNull)
    jset this.imageJList (javaNull)
    jset this.jButton1 (javaNull)
    jset this.jButton2 (javaNull)
    jset this.jButtonOrder (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLabel3 (javaNull)
    jset this.jLabel4 (javaNull)
    jset this.jLabel5 (javaNull)
    jset this.jLabel6 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.jScrollPane1 (javaNull)
    jset this.jScrollPane2 (javaNull)
    jset this.rowsJTextField (javaNull)
    jset this.upJButton (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO ImageUnifierJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: ImageUnifierJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (ImageUnifierJPanel.initComponents this)
        Control.Monad.void (ImageUnifierJPanel.setImageProcessorInput this imageProcessorInput)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ImageUnifierJPanel))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ImageUnifierJPanel))

init_impl :: ImageUnifierJPanel -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            ) $ do
            imageProcessorInput <- (ImageUnifierJPanel.getImageProcessorInput this)
            bufferedImageArray <- (ImageProcessorInput.getBufferedImageArray imageProcessorInput)
            jset (this).icon ((jnewArray ((jlength bufferedImageArray)) javaNull))
            defaultListModel <- (DefaultListModel.new_)
            forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
                width <- (getWidth ((jindex bufferedImageArray (index))))
                height <- (getHeight ((jindex bufferedImageArray (index))))
                let newWidth = 52
                let oldRatio = (width / height)
                let newHeight = (Prelude.truncate (((Prelude.fromIntegral newWidth) / oldRatio)))
                iconBufferedImage <- (ImageUtil.createBufferedImage ((jio (ImageUtil.getInstance))) (jindex bufferedImageArray (index)) newWidth newHeight True)
                assignedValue <- (ImageIconUnique.new_2 iconBufferedImage index)
                jsetIndex ((jget (this).icon)) (index) (assignedValue)
                Control.Monad.void (DefaultListModel.addElement defaultListModel (jindex ((jget (this).icon)) (index)))
            Control.Monad.void (JList.setModel ((jget (this).imageJList)) defaultListModel)
            Control.Monad.void (ImageUnifierJPanel.updateOnPropertiesChange this)
        pure ()


updateImage :: (JavaObjectClass this_) => this_ -> IO (())
updateImage object_ = jmethod object_ "updateImage" (\() -> (updateImage_impl (javaCast object_ :: ImageUnifierJPanel))) ()

updateImage_super :: (JavaObjectClass this_) => this_ -> IO (())
updateImage_super object_ = (updateImage_impl (javaCast object_ :: ImageUnifierJPanel))

updateImage_impl :: ImageUnifierJPanel -> IO (())
updateImage_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "updateImage" e)
            ) $ do
            bufferedImageArray <- (ImageUnifierJPanel.getBufferedImageArray ((jio (ImageUnifierJPanel.getImageProcessorInput this))))
            let tempBufferedImageArray = (jnewArray ((jlength bufferedImageArray)) javaNull)
            forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
                let indexedImageIcon = (javaCast (jio (JList.getElementAt ((jio (JList.getModel ((jget (this).imageJList))))) index)) :: ImageIconUnique.ImageIconUnique)
                bufferedImage <- (ImageUtil.createBufferedImage ((jio (ImageUtil.getInstance))) (jindex bufferedImageArray ((jio (ImageIconUnique.getId indexedImageIcon)))) (jio (ImageUnifierProperties.getWidth ((jio (ImageUnifierProperties.getImageUnifierCell ((jget (this).imageUnifierProperties))))))) (jio (ImageUnifierProperties.getHeight ((jio (ImageUnifierProperties.getImageUnifierCell ((jget (this).imageUnifierProperties))))))) False)
                jsetIndex tempBufferedImageArray (index) (bufferedImage)
            let totalImages = ((jio (ImageUnifierProperties.getRows ((jget (this).imageUnifierProperties)))) * (jio (ImageUnifierProperties.getColumns ((jget (this).imageUnifierProperties)))))
            averageRatio <- (ImagesRatioUtil.getAverage ((jget (this).imagesRatioUtil)) tempBufferedImageArray totalImages)
            averageRatioString <- newIORef ((javaToString averageRatio))
            when ((Prelude.length (jget averageRatioString)) > 4) $ do
                jset averageRatioString ((Prelude.take ((4) - (0)) (Prelude.drop (0) (jget averageRatioString))))
            Control.Monad.void (JTextField.setText ((jget (this).avgRatioJTextField)) (jget averageRatioString))
            Control.Monad.void (JButton.setEnabled ((jget (this).fudgeItJButton)) False)
            when (Prelude.not (jio (ImagesRatioUtil.isEqual ((jget (this).imagesRatioUtil)) tempBufferedImageArray totalImages))) $ do
                when (jget (this).isImageFillIn) $ do
                    Control.Monad.void (JButton.setEnabled ((jget (this).fudgeItJButton)) True)
            Control.Monad.void (ImageUnifierJPanel.updateImage this tempBufferedImageArray)
        pure ()


updateImageWithFudgedImages :: (JavaObjectClass this_) => this_ -> IO (())
updateImageWithFudgedImages object_ = jmethod object_ "updateImageWithFudgedImages" (\() -> (updateImageWithFudgedImages_impl (javaCast object_ :: ImageUnifierJPanel))) ()

updateImageWithFudgedImages_super :: (JavaObjectClass this_) => this_ -> IO (())
updateImageWithFudgedImages_super object_ = (updateImageWithFudgedImages_impl (javaCast object_ :: ImageUnifierJPanel))

updateImageWithFudgedImages_impl :: ImageUnifierJPanel -> IO (())
updateImageWithFudgedImages_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "updateImageWithFudgedImages" e)
            ) $ do
            bufferedImageArray <- (ImageUnifierJPanel.getBufferedImageArray ((jio (ImageUnifierJPanel.getImageProcessorInput this))))
            let tempBufferedImageArray = (jnewArray ((jlength bufferedImageArray)) javaNull)
            forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
                let indexedImageIcon = (javaCast (jio (JList.getElementAt ((jio (JList.getModel ((jget (this).imageJList))))) index)) :: ImageIconUnique.ImageIconUnique)
                bufferedImage <- (ImageUtil.createBufferedImage ((jio (ImageUtil.getInstance))) (jindex bufferedImageArray ((jio (ImageIconUnique.getId indexedImageIcon)))) (jio (ImageUnifierProperties.getWidth ((jio (ImageUnifierProperties.getImageUnifierCell ((jget (this).imageUnifierProperties))))))) (jio (ImageUnifierProperties.getHeight ((jio (ImageUnifierProperties.getImageUnifierCell ((jget (this).imageUnifierProperties))))))) False)
                jsetIndex tempBufferedImageArray (index) (bufferedImage)
            let totalImages = ((jio (ImageUnifierProperties.getRows ((jget (this).imageUnifierProperties)))) * (jio (ImageUnifierProperties.getColumns ((jget (this).imageUnifierProperties)))))
            averageRatio <- (ImagesRatioUtil.getAverage ((jget (this).imagesRatioUtil)) tempBufferedImageArray totalImages)
            fudgedBufferedImageArray <- (ImagesRatioUtil.fudge ((jget this.imagesRatioUtil)) tempBufferedImageArray totalImages averageRatio)
            Control.Monad.void (ImageUnifierJPanel.updateImage this fudgedBufferedImageArray)
        pure ()


-- Java overload of updateImage with a different parameter count: give it a different name
updateImage :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (())
updateImage object_ a1 = jmethod object_ "updateImage" (\() -> (updateImage_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

updateImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (())
updateImage_super object_ a1 = (updateImage_impl (javaCast object_ :: ImageUnifierJPanel)) a1

updateImage_impl :: ImageUnifierJPanel -> JavaArray (BufferedImage.BufferedImage) -> IO (())
updateImage_impl this tempBufferedImageArray = do
        assignedValue <- (ImageUnifierUtil.getImage ((jio (ImageUnifierUtil.getInstance))) tempBufferedImageArray (jget (this).imageUnifierProperties))
        jset (this).result (assignedValue)
        image <- (fmap (\value_ -> javaCast value_ :: Icon.Icon) (ImageIcon.new_1 (jget (this).result)))
        label <- (JLabel.new_1 image)
        Control.Monad.void (JScrollPane.add ((jio (JScrollPane.getViewport ((jget (this).jScrollPane2))))) label)
        Control.Monad.void (JPanel.updateUI this)
        pure ()


updateOnPropertiesChange :: (JavaObjectClass this_) => this_ -> IO (())
updateOnPropertiesChange object_ = jmethod object_ "updateOnPropertiesChange" (\() -> (updateOnPropertiesChange_impl (javaCast object_ :: ImageUnifierJPanel))) ()

updateOnPropertiesChange_super :: (JavaObjectClass this_) => this_ -> IO (())
updateOnPropertiesChange_super object_ = (updateOnPropertiesChange_impl (javaCast object_ :: ImageUnifierJPanel))

updateOnPropertiesChange_impl :: ImageUnifierJPanel -> IO (())
updateOnPropertiesChange_impl this = do
        when (((((jio (JTextField.length ((jio (JTextField.getText ((jget (this).rowsJTextField))))))) > 0) && ((jio (JTextField.length ((jio (JTextField.getText ((jget (this).columnsJTextField))))))) > 0)) && ((jio (JTextField.length ((jio (JTextField.getText ((jget (this).cellWidthJTextField))))))) > 0)) && ((jio (JTextField.length ((jio (JTextField.getText ((jget (this).cellHeightJTextField))))))) > 0)) $ do
            assignedValue <- (ImageUnifierProperties.new_)
            jset (this).imageUnifierProperties (assignedValue)
            Control.Monad.void (ImageUnifierProperties.setRows ((jget (this).imageUnifierProperties)) (Prelude.fromIntegral ((jio (JTextField.getText ((jget (this).rowsJTextField))))) :: Int))
            Control.Monad.void (ImageUnifierProperties.setColumns ((jget (this).imageUnifierProperties)) (Prelude.fromIntegral ((jio (JTextField.getText ((jget (this).columnsJTextField))))) :: Int))
            imageUnifierCell <- (ImageUnifierCell.new_2 (Prelude.fromIntegral ((jio (JTextField.getText ((jget (this).cellWidthJTextField))))) :: Int) (Prelude.fromIntegral ((jio (JTextField.getText ((jget (this).cellHeightJTextField))))) :: Int))
            Control.Monad.void (ImageUnifierProperties.setImageUnifierCell ((jget (this).imageUnifierProperties)) imageUnifierCell)
            let cellRatio = (((Prelude.realToFrac (jnumericDouble (jio (ImageUnifierCell.getWidth imageUnifierCell)))) / (jio (ImageUnifierCell.getHeight imageUnifierCell))))
            cellRatioString <- newIORef ((javaToString cellRatio))
            when ((Prelude.length (jget cellRatioString)) > 4) $ do
                jset cellRatioString ((Prelude.take ((4) - (0)) (Prelude.drop (0) (jget cellRatioString))))
            Control.Monad.void (JTextField.setText ((jget (this).cellRatioJTextField)) (jget cellRatioString))
            Control.Monad.void (ImageUnifierJPanel.updateImage this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ImageUnifierJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ImageUnifierJPanel))

initComponents_impl :: ImageUnifierJPanel -> IO (())
initComponents_impl this = do
        commonPhoneStrings <- (CommonPhoneStrings.getInstance)
        assignedValue <- (JScrollPane.new_)
        jset (this).jScrollPane1 (assignedValue)
        assignedValue <- (JList.new_)
        jset (this).imageJList (assignedValue)
        assignedValue <- (JScrollPane.new_)
        jset (this).jScrollPane2 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).upJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).downJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).fudgeItJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).columnsJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).rowsJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel3 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).cellWidthJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel4 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).cellHeightJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel5 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).cellRatioJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel6 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).avgRatioJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton2 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButtonOrder (assignedValue)
        Control.Monad.void (JPanel.setMinimumSize this (jio (Dimension.new_2 500 375)))
        Control.Monad.void (JPanel.setPreferredSize this (jio (Dimension.new_2 0 0)))
        Control.Monad.void (JList.setMinimumSize ((jget (this).imageJList)) (jio (Dimension.new_2 50 0)))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).jScrollPane1)) (jget (this).imageJList))
        Control.Monad.void (JButton.setText ((jget (this).jButton1)) "Save")
        Control.Monad.void (JButton.addActionListener ((jget (this).jButton1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).upJButton)) "Up")
        Control.Monad.void (JButton.addActionListener ((jget (this).upJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).downJButton)) "Down")
        Control.Monad.void (JButton.addActionListener ((jget (this).downJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).fudgeItJButton)) "Fudge It!")
        Control.Monad.void (JButton.addActionListener ((jget (this).fudgeItJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Columns:")
        Control.Monad.void (JTextField.setText ((jget (this).columnsJTextField)) (jget (commonPhoneStrings).tWO))
        Control.Monad.void (JTextField.addActionListener ((jget (this).columnsJTextField)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JTextField.addPropertyChangeListener ((jget (this).columnsJTextField)) (PropertyChangeListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- propertyChange
-}))
        Control.Monad.void (JTextField.addKeyListener ((jget (this).columnsJTextField)) (KeyAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- keyPressed
            -- keyTyped
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Rows:")
        Control.Monad.void (JTextField.setText ((jget (this).rowsJTextField)) (jget (commonPhoneStrings).tWO))
        Control.Monad.void (JTextField.addActionListener ((jget (this).rowsJTextField)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel3)) "Cell Width:")
        Control.Monad.void (JTextField.setText ((jget (this).cellWidthJTextField)) "200")
        Control.Monad.void (JTextField.addActionListener ((jget (this).cellWidthJTextField)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel4)) "Cell Height:")
        Control.Monad.void (JTextField.setText ((jget (this).cellHeightJTextField)) "150")
        Control.Monad.void (JTextField.addActionListener ((jget (this).cellHeightJTextField)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel5)) "Cell Ratio:")
        Control.Monad.void (JTextField.setEditable ((jget (this).cellRatioJTextField)) False)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel6)) "Avg Image Ratio:")
        Control.Monad.void (JTextField.setEditable ((jget (this).avgRatioJTextField)) False)
        Control.Monad.void (JButton.setText ((jget (this).jButton2)) (jget ((jget (this).commonStrings)).uPDATE))
        Control.Monad.void (JButton.addActionListener ((jget (this).jButton2)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).jButtonOrder)) "Order")
        Control.Monad.void (JButton.addActionListener ((jget (this).jButtonOrder)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup jPanel1Layout)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.jButton1) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jget this.upJButton) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 71 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 10 (Prelude.maxBound :: Int16)))) (jget this.downJButton) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 70 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget this.fudgeItJButton) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jget this.jLabel3)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 99 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jget this.jLabel4)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 96 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget this.avgRatioJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget this.jLabel6) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget this.cellRatioJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget this.jLabel5) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget this.cellHeightJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget this.cellWidthJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget this.jButton2) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel2)))) (jget this.jLabel1)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.rowsJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 103 (Prelude.maxBound :: Int16)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) (jget this.columnsJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 102 (Prelude.maxBound :: Int16)))) 1 1 1))))))))) (jget this.jButtonOrder) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 151 (Prelude.maxBound :: Int16)))))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup jPanel1Layout)))))) (jget this.jButton1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.upJButton)))) (jget this.downJButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jButtonOrder)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.fudgeItJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel2)))) (jget this.columnsJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.rowsJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel3)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.cellWidthJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel4)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.cellHeightJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jButton2)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jLabel5)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.cellRatioJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) 7 7 7))) (jget this.jLabel6)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.avgRatioJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) 66 66 66)))))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jScrollPane1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 84 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.jScrollPane2) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 527 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.jPanel1) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) 0 445 (Prelude.maxBound :: Int16)))) (jget this.jScrollPane2) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 445 (Prelude.maxBound :: Int16)))) (jget this.jScrollPane1) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 445 (Prelude.maxBound :: Int16)))))))))))
        pure ()


jButton2ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton2ActionPerformed object_ a1 = jmethod object_ "jButton2ActionPerformed" (\() -> (jButton2ActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

jButton2ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton2ActionPerformed_super object_ a1 = (jButton2ActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

jButton2ActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
jButton2ActionPerformed_impl this evt = do
        Control.Monad.void (ImageUnifierJPanel.updateOnPropertiesChange this)
        pure ()


columnsJTextFieldKeyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
columnsJTextFieldKeyPressed object_ a1 = jmethod object_ "columnsJTextFieldKeyPressed" (\() -> (columnsJTextFieldKeyPressed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

columnsJTextFieldKeyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
columnsJTextFieldKeyPressed_super object_ a1 = (columnsJTextFieldKeyPressed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

columnsJTextFieldKeyPressed_impl :: ImageUnifierJPanel -> KeyEvent.KeyEvent -> IO (())
columnsJTextFieldKeyPressed_impl this evt = do
        pure ()


columnsJTextFieldKeyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
columnsJTextFieldKeyTyped object_ a1 = jmethod object_ "columnsJTextFieldKeyTyped" (\() -> (columnsJTextFieldKeyTyped_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

columnsJTextFieldKeyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
columnsJTextFieldKeyTyped_super object_ a1 = (columnsJTextFieldKeyTyped_impl (javaCast object_ :: ImageUnifierJPanel)) a1

columnsJTextFieldKeyTyped_impl :: ImageUnifierJPanel -> KeyEvent.KeyEvent -> IO (())
columnsJTextFieldKeyTyped_impl this evt = do
        pure ()


columnsJTextFieldPropertyChange :: (JavaObjectClass this_) => this_ -> PropertyChangeEvent.PropertyChangeEvent -> IO (())
columnsJTextFieldPropertyChange object_ a1 = jmethod object_ "columnsJTextFieldPropertyChange" (\() -> (columnsJTextFieldPropertyChange_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

columnsJTextFieldPropertyChange_super :: (JavaObjectClass this_) => this_ -> PropertyChangeEvent.PropertyChangeEvent -> IO (())
columnsJTextFieldPropertyChange_super object_ a1 = (columnsJTextFieldPropertyChange_impl (javaCast object_ :: ImageUnifierJPanel)) a1

columnsJTextFieldPropertyChange_impl :: ImageUnifierJPanel -> PropertyChangeEvent.PropertyChangeEvent -> IO (())
columnsJTextFieldPropertyChange_impl this evt = do
        pure ()


fudgeItJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
fudgeItJButtonActionPerformed object_ a1 = jmethod object_ "fudgeItJButtonActionPerformed" (\() -> (fudgeItJButtonActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

fudgeItJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
fudgeItJButtonActionPerformed_super object_ a1 = (fudgeItJButtonActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

fudgeItJButtonActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
fudgeItJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ImageUnifierJPanel.updateImageWithFudgedImages this)
        pure ()


cellHeightJTextFieldActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
cellHeightJTextFieldActionPerformed object_ a1 = jmethod object_ "cellHeightJTextFieldActionPerformed" (\() -> (cellHeightJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

cellHeightJTextFieldActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
cellHeightJTextFieldActionPerformed_super object_ a1 = (cellHeightJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

cellHeightJTextFieldActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
cellHeightJTextFieldActionPerformed_impl this evt = do
        Control.Monad.void (ImageUnifierJPanel.updateOnPropertiesChange this)
        pure ()


cellWidthJTextFieldActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
cellWidthJTextFieldActionPerformed object_ a1 = jmethod object_ "cellWidthJTextFieldActionPerformed" (\() -> (cellWidthJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

cellWidthJTextFieldActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
cellWidthJTextFieldActionPerformed_super object_ a1 = (cellWidthJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

cellWidthJTextFieldActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
cellWidthJTextFieldActionPerformed_impl this evt = do
        Control.Monad.void (ImageUnifierJPanel.updateOnPropertiesChange this)
        pure ()


columnsJTextFieldActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
columnsJTextFieldActionPerformed object_ a1 = jmethod object_ "columnsJTextFieldActionPerformed" (\() -> (columnsJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

columnsJTextFieldActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
columnsJTextFieldActionPerformed_super object_ a1 = (columnsJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

columnsJTextFieldActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
columnsJTextFieldActionPerformed_impl this evt = do
        Control.Monad.void (ImageUnifierJPanel.updateOnPropertiesChange this)
        pure ()


rowsJTextFieldActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
rowsJTextFieldActionPerformed object_ a1 = jmethod object_ "rowsJTextFieldActionPerformed" (\() -> (rowsJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

rowsJTextFieldActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
rowsJTextFieldActionPerformed_super object_ a1 = (rowsJTextFieldActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

rowsJTextFieldActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
rowsJTextFieldActionPerformed_impl this evt = do
        Control.Monad.void (ImageUnifierJPanel.updateOnPropertiesChange this)
        pure ()


jButton1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed object_ a1 = jmethod object_ "jButton1ActionPerformed" (\() -> (jButton1ActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

jButton1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_super object_ a1 = (jButton1ActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

jButton1ActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "jButton1ActionPerformed" e)
            ) $ do
            fileArray <- (ImageProcessorInput.getFiles ((jget (this).imageProcessorInput)))
            let file = (jindex fileArray (0))
            filePath <- newIORef =<< (File.getAbsolutePath file)
            let extensionIndex = (jstringIndexOf (jget filePath) (jget ((jget (this).imageStrings)).pNG_EXTENSION) 0)
            assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (Prelude.take ((extensionIndex) - (0)) (Prelude.drop (0) (jget filePath)))))) (jget ((jio (CommonSeps.getInstance))).uNDERSCORE)))) (Prelude.fromInteger (jnumericInteger (jio (ImageUnifierProperties.getColumns ((jget (this).imageUnifierProperties))))))))) "_By_"))) (Prelude.fromInteger (jnumericInteger (jio (ImageUnifierProperties.getRows ((jget (this).imageUnifierProperties))))))))) "_Unified"))) (jget ((jget (this).imageStrings)).pNG_EXTENSION)))))
            jset filePath (assignedValue)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("New File Path: " ++ (jget filePath)) this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            outputFile <- (File.new_1 (jget filePath))
            Control.Monad.void (ImagePersistanceUtil.saveWithBatik ((jio (ImagePersistanceUtil.getInstance))) (jio (FileWrapperUtil.wrapFile outputFile)) (jget (this).result))
        pure ()


downJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
downJButtonActionPerformed object_ a1 = jmethod object_ "downJButtonActionPerformed" (\() -> (downJButtonActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

downJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
downJButtonActionPerformed_super object_ a1 = (downJButtonActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

downJButtonActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
downJButtonActionPerformed_impl this evt = do
        index <- (JList.getSelectedIndex ((jget (this).imageJList)))
        let defaultListModel = (javaCast (jio (JList.getModel ((jget (this).imageJList)))) :: DefaultListModel.DefaultListModel)
        when ((index >= 0) && ((index + 1) < (jio (DefaultListModel.size defaultListModel)))) $ do
            let indexedImageIcon = (javaCast (jio (DefaultListModel.remove defaultListModel index)) :: ImageIconUnique.ImageIconUnique)
            Control.Monad.void (DefaultListModel.insertElementAt defaultListModel indexedImageIcon (index + 1))
            Control.Monad.void (JList.setSelectedIndex ((jget (this).imageJList)) (index + 1))
            Control.Monad.void (ImageUnifierJPanel.updateImage this)
        pure ()


upJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
upJButtonActionPerformed object_ a1 = jmethod object_ "upJButtonActionPerformed" (\() -> (upJButtonActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

upJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
upJButtonActionPerformed_super object_ a1 = (upJButtonActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

upJButtonActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
upJButtonActionPerformed_impl this evt = do
        index <- (JList.getSelectedIndex ((jget (this).imageJList)))
        when (index > 0) $ do
            let defaultListModel = (javaCast (jio (JList.getModel ((jget (this).imageJList)))) :: DefaultListModel.DefaultListModel)
            let indexedImageIcon = (javaCast (jio (DefaultListModel.remove defaultListModel index)) :: ImageIconUnique.ImageIconUnique)
            Control.Monad.void (DefaultListModel.insertElementAt defaultListModel indexedImageIcon (index - 1))
            Control.Monad.void (JList.setSelectedIndex ((jget (this).imageJList)) (index - 1))
            Control.Monad.void (ImageUnifierJPanel.updateImage this)
        pure ()


jButtonOrderActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButtonOrderActionPerformed object_ a1 = jmethod object_ "jButtonOrderActionPerformed" (\() -> (jButtonOrderActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

jButtonOrderActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButtonOrderActionPerformed_super object_ a1 = (jButtonOrderActionPerformed_impl (javaCast object_ :: ImageUnifierJPanel)) a1

jButtonOrderActionPerformed_impl :: ImageUnifierJPanel -> ActionEvent.ActionEvent -> IO (())
jButtonOrderActionPerformed_impl this evt = do
        let defaultListModel = (javaCast (jio (JList.getModel ((jget (this).imageJList)))) :: DefaultListModel.DefaultListModel)
        size <- (DefaultListModel.size defaultListModel)
        let last = (size - 1)
        forM_ [last, last + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let indexedImageIcon = (javaCast (jio (DefaultListModel.remove defaultListModel last)) :: ImageIconUnique.ImageIconUnique)
            Control.Monad.void (DefaultListModel.insertElementAt defaultListModel indexedImageIcon (last - index))
        when (size > 0) $ do
            Control.Monad.void (JList.setSelectedIndex ((jget (this).imageJList)) 0)
            Control.Monad.void (ImageUnifierJPanel.updateImage this)
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: ImageUnifierJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: ImageUnifierJPanel))

getImageProcessorInput_impl :: ImageUnifierJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: ImageUnifierJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: ImageUnifierJPanel)) a1

setImageProcessorInput_impl :: ImageUnifierJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        Control.Monad.void (ImageUnifierJPanel.init this)
        pure ()


