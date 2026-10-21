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
module ImageAnalysisResultsJPanel (module ImageAnalysisResultsJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, updateImageColorRangeResults, updateImageColorRangeResults_super, updateImageColorRangeResults_impl, avgBlueJTextField, avgGreenJTextField, avgRedJTextField, jComboBox1, jLabel1, jLabel10, jLabel11, jLabel12, jLabel13, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, jLabel7, jLabel8, jLabel9, matchingPixelsJTextField, maxBlueJTextField, maxGreenJTextField, maxRedJTextField, minBlueJTextField, minGreenJTextField, minRedJTextField, percentMatchingJTextField, totalPixelsJTextField)
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
import qualified JLabel -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JComboBox -- same package or java.lang
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified ImageAnalysisResults -- org.allbinary.media.image.analysis.ImageAnalysisResults
import qualified ImageColorRangeResults -- org.allbinary.media.image.analysis.ImageColorRangeResults
import qualified ImageColorResults -- org.allbinary.media.image.analysis.ImageColorResults
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified JPanel

data ImageAnalysisResultsJPanel = ImageAnalysisResultsJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , avgBlueJTextField :: IORef (JTextField.JTextField)
    , avgGreenJTextField :: IORef (JTextField.JTextField)
    , avgRedJTextField :: IORef (JTextField.JTextField)
    , jComboBox1 :: IORef (JComboBox.JComboBox)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel10 :: IORef (JLabel.JLabel)
    , jLabel11 :: IORef (JLabel.JLabel)
    , jLabel12 :: IORef (JLabel.JLabel)
    , jLabel13 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLabel3 :: IORef (JLabel.JLabel)
    , jLabel4 :: IORef (JLabel.JLabel)
    , jLabel5 :: IORef (JLabel.JLabel)
    , jLabel6 :: IORef (JLabel.JLabel)
    , jLabel7 :: IORef (JLabel.JLabel)
    , jLabel8 :: IORef (JLabel.JLabel)
    , jLabel9 :: IORef (JLabel.JLabel)
    , matchingPixelsJTextField :: IORef (JTextField.JTextField)
    , maxBlueJTextField :: IORef (JTextField.JTextField)
    , maxGreenJTextField :: IORef (JTextField.JTextField)
    , maxRedJTextField :: IORef (JTextField.JTextField)
    , minBlueJTextField :: IORef (JTextField.JTextField)
    , minGreenJTextField :: IORef (JTextField.JTextField)
    , minRedJTextField :: IORef (JTextField.JTextField)
    , percentMatchingJTextField :: IORef (JTextField.JTextField)
    , totalPixelsJTextField :: IORef (JTextField.JTextField)
    }

instance JavaNull ImageAnalysisResultsJPanel where
    javaNull = javaNullRecord "ImageAnalysisResultsJPanel"

instance JavaEquals ImageAnalysisResultsJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageAnalysisResultsJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ImageAnalysisResultsJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageAnalysisResultsJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    avgBlueJTextField <- newIORef javaNull
    avgGreenJTextField <- newIORef javaNull
    avgRedJTextField <- newIORef javaNull
    jComboBox1 <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel10 <- newIORef javaNull
    jLabel11 <- newIORef javaNull
    jLabel12 <- newIORef javaNull
    jLabel13 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLabel3 <- newIORef javaNull
    jLabel4 <- newIORef javaNull
    jLabel5 <- newIORef javaNull
    jLabel6 <- newIORef javaNull
    jLabel7 <- newIORef javaNull
    jLabel8 <- newIORef javaNull
    jLabel9 <- newIORef javaNull
    matchingPixelsJTextField <- newIORef javaNull
    maxBlueJTextField <- newIORef javaNull
    maxGreenJTextField <- newIORef javaNull
    maxRedJTextField <- newIORef javaNull
    minBlueJTextField <- newIORef javaNull
    minGreenJTextField <- newIORef javaNull
    minRedJTextField <- newIORef javaNull
    percentMatchingJTextField <- newIORef javaNull
    totalPixelsJTextField <- newIORef javaNull
    let this = ImageAnalysisResultsJPanel header_ base avgBlueJTextField avgGreenJTextField avgRedJTextField jComboBox1 jLabel1 jLabel10 jLabel11 jLabel12 jLabel13 jLabel2 jLabel3 jLabel4 jLabel5 jLabel6 jLabel7 jLabel8 jLabel9 matchingPixelsJTextField maxBlueJTextField maxGreenJTextField maxRedJTextField minBlueJTextField minGreenJTextField minRedJTextField percentMatchingJTextField totalPixelsJTextField
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "updateImageColorRangeResults" (\() -> updateImageColorRangeResults_impl this)
    pure this

initFields_ :: ImageAnalysisResultsJPanel -> IO ()
initFields_ this = do
    jset this.avgBlueJTextField (javaNull)
    jset this.avgGreenJTextField (javaNull)
    jset this.avgRedJTextField (javaNull)
    jset this.jComboBox1 (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel10 (javaNull)
    jset this.jLabel11 (javaNull)
    jset this.jLabel12 (javaNull)
    jset this.jLabel13 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLabel3 (javaNull)
    jset this.jLabel4 (javaNull)
    jset this.jLabel5 (javaNull)
    jset this.jLabel6 (javaNull)
    jset this.jLabel7 (javaNull)
    jset this.jLabel8 (javaNull)
    jset this.jLabel9 (javaNull)
    jset this.matchingPixelsJTextField (javaNull)
    jset this.maxBlueJTextField (javaNull)
    jset this.maxGreenJTextField (javaNull)
    jset this.maxRedJTextField (javaNull)
    jset this.minBlueJTextField (javaNull)
    jset this.minGreenJTextField (javaNull)
    jset this.minRedJTextField (javaNull)
    jset this.percentMatchingJTextField (javaNull)
    jset this.totalPixelsJTextField (javaNull)
    pure ()

new_1 :: JavaArray (ImageAnalysisResults.ImageAnalysisResults) -> IO ImageAnalysisResultsJPanel
new_1 imageAnalysisResultsArray = do
    this <- newRecord_
    init_1 this imageAnalysisResultsArray
    pure this

init_1 :: ImageAnalysisResultsJPanel -> JavaArray (ImageAnalysisResults.ImageAnalysisResults) -> IO ()
init_1 this imageAnalysisResultsArray = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (ImageAnalysisResultsJPanel.initComponents this)
        let imageAnalysisResults = (jindex imageAnalysisResultsArray (0))
        Control.Monad.void (ImageAnalysisResultsJPanel.updateImageColorRangeResults this imageAnalysisResults)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ImageAnalysisResultsJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ImageAnalysisResultsJPanel))

initComponents_impl :: ImageAnalysisResultsJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel3 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).percentMatchingJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).totalPixelsJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).matchingPixelsJTextField (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).jComboBox1 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel4 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel5 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel6 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel7 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).avgRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).avgGreenJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).avgBlueJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minGreenJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel8 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel9 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel10 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minBlueJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel11 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel12 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel13 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxGreenJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxBlueJTextField (assignedValue)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Matching Pixels:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Total Pixels:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel3)) "Percent Matching:")
        Control.Monad.void (JTextField.setEditable ((jget (this).percentMatchingJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).totalPixelsJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).matchingPixelsJTextField)) False)
        Control.Monad.void (JComboBox.setModel ((jget (this).jComboBox1)) (jio (DefaultComboBoxModel.new_1 (jarrayFromList [(jget ((jio (CommonPhoneStrings.getInstance))).oNE)]))))
        Control.Monad.void (JComboBox.setEnabled ((jget (this).jComboBox1)) False)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel4)) "Image:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel5)) "Average Red:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel6)) "Average Green:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel7)) "Average Blue:")
        Control.Monad.void (JTextField.setEditable ((jget (this).avgRedJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).avgGreenJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).avgBlueJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).minGreenJTextField)) False)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel8)) "Min Red:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel9)) "Min Green:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel10)) "Min Blue:")
        Control.Monad.void (JTextField.setEditable ((jget (this).minRedJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).minBlueJTextField)) False)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel11)) "Max Red:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel12)) "Max Green:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel13)) "Max Blue:")
        Control.Monad.void (JTextField.setEditable ((jget (this).maxRedJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).maxGreenJTextField)) False)
        Control.Monad.void (JTextField.setEditable ((jget (this).maxBlueJTextField)) False)
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel3)))) (jget this.jLabel2)))) (jget this.jLabel1)))) (jget this.jLabel5)))) (jget this.jLabel6)))) (jget this.jLabel7)))) (jget this.jLabel4)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jComboBox1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 81 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.avgBlueJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 81 (Prelude.maxBound :: Int16)))) (jget this.avgGreenJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 81 (Prelude.maxBound :: Int16)))) (jget this.avgRedJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 81 (Prelude.maxBound :: Int16)))) (jget this.totalPixelsJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 81 (Prelude.maxBound :: Int16)))) (jget this.percentMatchingJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 81 (Prelude.maxBound :: Int16)))) (jget this.matchingPixelsJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 81 (Prelude.maxBound :: Int16)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel12)))) (jget this.jLabel13)))) (jget this.jLabel8)))) (jget this.jLabel9)))) (jget this.jLabel10)))) (jget this.jLabel11)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.minRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 82 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.maxGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 82 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.minGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 82 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.minBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 82 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.maxRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 82 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.maxBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 82 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) 18 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel4)))) (jget this.jComboBox1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.matchingPixelsJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel8)))) (jget this.minRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel2)))) (jget this.totalPixelsJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel9)))) (jget this.minGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel3)))) (jget this.percentMatchingJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel10)))) (jget this.minBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel5)))) (jget this.avgRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel11)))) (jget this.maxRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel6)))) (jget this.avgGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.maxGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel12)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel7)))) (jget this.avgBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel13)))) (jget this.maxBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))))))
        pure ()


updateImageColorRangeResults :: (JavaObjectClass this_) => this_ -> ImageAnalysisResults.ImageAnalysisResults -> IO (())
updateImageColorRangeResults object_ a1 = jmethod object_ "updateImageColorRangeResults" (\() -> (updateImageColorRangeResults_impl (javaCast object_ :: ImageAnalysisResultsJPanel))) () a1

updateImageColorRangeResults_super :: (JavaObjectClass this_) => this_ -> ImageAnalysisResults.ImageAnalysisResults -> IO (())
updateImageColorRangeResults_super object_ a1 = (updateImageColorRangeResults_impl (javaCast object_ :: ImageAnalysisResultsJPanel)) a1

updateImageColorRangeResults_impl :: ImageAnalysisResultsJPanel -> ImageAnalysisResults.ImageAnalysisResults -> IO (())
updateImageColorRangeResults_impl this imageAnalysisResults = do
        imageColorRangeResults <- (ImageAnalysisResults.getImageColorRangeResults imageAnalysisResults)
        Control.Monad.void (JTextField.setText ((jget (this).matchingPixelsJTextField)) (javaToString (Prelude.fromIntegral ((jio (ImageColorRangeResults.getMatchingPixelsChecked imageColorRangeResults))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).totalPixelsJTextField)) (javaToString (Prelude.fromIntegral ((jio (ImageColorRangeResults.getTotalPixelsChecked imageColorRangeResults))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).percentMatchingJTextField)) (javaToString (jio (ImageColorRangeResults.getPercent imageColorRangeResults))))
        imageColorResults <- (ImageAnalysisResults.getImageColorResults imageAnalysisResults)
        Control.Monad.void (JTextField.setText ((jget (this).avgRedJTextField)) (javaToString (jio (ColorAverage.getAvgRed ((jio (ImageColorResults.getColorAverage imageColorResults)))))))
        Control.Monad.void (JTextField.setText ((jget (this).avgGreenJTextField)) (javaToString (jio (ColorAverage.getAvgGreen ((jio (ImageColorResults.getColorAverage imageColorResults)))))))
        Control.Monad.void (JTextField.setText ((jget (this).avgBlueJTextField)) (javaToString (jio (ColorAverage.getAvgBlue ((jio (ImageColorResults.getColorAverage imageColorResults)))))))
        Control.Monad.void (JTextField.setText ((jget (this).minRedJTextField)) (javaToString (Prelude.fromIntegral ((jio (ColorRange.getMinRed ((jio (ImageColorResults.getColorRange imageColorResults)))))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).minGreenJTextField)) (javaToString (Prelude.fromIntegral ((jio (ColorRange.getMinGreen ((jio (ImageColorResults.getColorRange imageColorResults)))))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).minBlueJTextField)) (javaToString (Prelude.fromIntegral ((jio (ColorRange.getMinBlue ((jio (ImageColorResults.getColorRange imageColorResults)))))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).maxRedJTextField)) (javaToString (Prelude.fromIntegral ((jio (ColorRange.getMaxRed ((jio (ImageColorResults.getColorRange imageColorResults)))))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).maxGreenJTextField)) (javaToString (Prelude.fromIntegral ((jio (ColorRange.getMaxGreen ((jio (ImageColorResults.getColorRange imageColorResults)))))) :: Int64)))
        Control.Monad.void (JTextField.setText ((jget (this).maxBlueJTextField)) (javaToString (Prelude.fromIntegral ((jio (ColorRange.getMaxBlue ((jio (ImageColorResults.getColorRange imageColorResults)))))) :: Int64)))
        pure ()


