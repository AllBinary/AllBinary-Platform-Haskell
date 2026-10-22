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
module ResizeImageJPanel (module ResizeImageJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, update, update_super, update_impl, updateFor16Above, updateFor16Above_super, updateFor16Above_impl, updateFor16Below, updateFor16Below_super, updateFor16Below_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, initComponents, initComponents_super, initComponents_impl, aboveJButtonActionPerformed, aboveJButtonActionPerformed_super, aboveJButtonActionPerformed_impl, updateJButtonActionPerformed, updateJButtonActionPerformed_super, updateJButtonActionPerformed_impl, adjustFor16AboveJButtonActionPerformed, adjustFor16AboveJButtonActionPerformed_super, adjustFor16AboveJButtonActionPerformed_impl, adjustFor16BelowJButtonActionPerformed, adjustFor16BelowJButtonActionPerformed_super, adjustFor16BelowJButtonActionPerformed_impl, logUtil, commonStrings, imageProcessorInput, aboveJButton, adjustFor16AboveJButton, adjustFor16BelowJButton, floatPercentJTextField, jComboBox1, jLabel1, jLabel2, jLabel3, jTextField1, jTextField2, updateJButton)
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
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JComboBox -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified Raster -- java.awt.image.Raster
import qualified File -- java.io.File
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified FileWrapperUtil -- org.allbinary.logic.io.file.FileWrapperUtil
import qualified ImagePersistanceUtil -- org.allbinary.media.image.ImagePersistanceUtil
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JPanel

-- implements ImageProcessorInputCompositeInterface
data ResizeImageJPanel = ResizeImageJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , aboveJButton :: IORef (JButton.JButton)
    , adjustFor16AboveJButton :: IORef (JButton.JButton)
    , adjustFor16BelowJButton :: IORef (JButton.JButton)
    , floatPercentJTextField :: IORef (JTextField.JTextField)
    , jComboBox1 :: IORef (JComboBox.JComboBox)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jLabel3 :: IORef (JLabel.JLabel)
    , jTextField1 :: IORef (JTextField.JTextField)
    , jTextField2 :: IORef (JTextField.JTextField)
    , updateJButton :: IORef (JButton.JButton)
    }

instance JavaNull ResizeImageJPanel where
    javaNull = javaNullRecord "ResizeImageJPanel"

instance JavaEquals ResizeImageJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResizeImageJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ResizeImageJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ResizeImageJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    aboveJButton <- newIORef javaNull
    adjustFor16AboveJButton <- newIORef javaNull
    adjustFor16BelowJButton <- newIORef javaNull
    floatPercentJTextField <- newIORef javaNull
    jComboBox1 <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jLabel3 <- newIORef javaNull
    jTextField1 <- newIORef javaNull
    jTextField2 <- newIORef javaNull
    updateJButton <- newIORef javaNull
    let this = ResizeImageJPanel header_ base logUtil commonStrings imageProcessorInput aboveJButton adjustFor16AboveJButton adjustFor16BelowJButton floatPercentJTextField jComboBox1 jLabel1 jLabel2 jLabel3 jTextField1 jTextField2 updateJButton
    jregisterLevel header_ this
    ImageProcessorInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "updateFor16Above" (\() -> updateFor16Above_impl this)
    jregisterMethod header_ "updateFor16Below" (\() -> updateFor16Below_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "aboveJButtonActionPerformed" (\() -> aboveJButtonActionPerformed_impl this)
    jregisterMethod header_ "updateJButtonActionPerformed" (\() -> updateJButtonActionPerformed_impl this)
    jregisterMethod header_ "adjustFor16AboveJButtonActionPerformed" (\() -> adjustFor16AboveJButtonActionPerformed_impl this)
    jregisterMethod header_ "adjustFor16BelowJButtonActionPerformed" (\() -> adjustFor16BelowJButtonActionPerformed_impl this)
    pure this

initFields_ :: ResizeImageJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.aboveJButton (javaNull)
    jset this.adjustFor16AboveJButton (javaNull)
    jset this.adjustFor16BelowJButton (javaNull)
    jset this.floatPercentJTextField (javaNull)
    jset this.jComboBox1 (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jLabel3 (javaNull)
    jset this.jTextField1 (javaNull)
    jset this.jTextField2 (javaNull)
    jset this.updateJButton (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO ResizeImageJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: ResizeImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ResizeImageJPanel.initComponents this)
        jset (this).imageProcessorInput (imageProcessorInput)
        let numberStringArray = (jnewArray (101) javaNull)
        jsetIndex numberStringArray (0) ((javaToString (Prelude.negate 1)))
        forM_ [1 .. 100 - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex numberStringArray (index) ((javaToString index))
        Control.Monad.void (JComboBox.setModel ((jget (this).jComboBox1)) (jio (DefaultComboBoxModel.new_1 numberStringArray)))
        araster <- (getAlphaRaster ((jindex ((jio (ImageProcessorInput.getBufferedImageArray ((jget (this).imageProcessorInput))))) (0))))
        if (araster == javaNull) then do
            Control.Monad.void (putStrLn (javaToString "there is no Alpha channel!!!!!!!!!"))
        else do
            Control.Monad.void (putStrLn (javaToString "Alpha channel found !"))
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ResizeImageJPanel))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: ResizeImageJPanel))

process_impl :: ResizeImageJPanel -> IO (())
process_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ResizeImageJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: ResizeImageJPanel))

update_impl :: ResizeImageJPanel -> IO (())
update_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


updateFor16Above :: (JavaObjectClass this_) => this_ -> IO (())
updateFor16Above object_ = jmethod object_ "updateFor16Above" (\() -> (updateFor16Above_impl (javaCast object_ :: ResizeImageJPanel))) ()

updateFor16Above_super :: (JavaObjectClass this_) => this_ -> IO (())
updateFor16Above_super object_ = (updateFor16Above_impl (javaCast object_ :: ResizeImageJPanel))

updateFor16Above_impl :: ResizeImageJPanel -> IO (())
updateFor16Above_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


updateFor16Below :: (JavaObjectClass this_) => this_ -> IO (())
updateFor16Below object_ = jmethod object_ "updateFor16Below" (\() -> (updateFor16Below_impl (javaCast object_ :: ResizeImageJPanel))) ()

updateFor16Below_super :: (JavaObjectClass this_) => this_ -> IO (())
updateFor16Below_super object_ = (updateFor16Below_impl (javaCast object_ :: ResizeImageJPanel))

updateFor16Below_impl :: ResizeImageJPanel -> IO (())
updateFor16Below_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: ResizeImageJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: ResizeImageJPanel))

getImageProcessorInput_impl :: ResizeImageJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: ResizeImageJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: ResizeImageJPanel)) a1

setImageProcessorInput_impl :: ResizeImageJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ResizeImageJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ResizeImageJPanel))

initComponents_impl :: ResizeImageJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        assignedValue <- (JComboBox.new_)
        jset (this).jComboBox1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).aboveJButton (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).jTextField1 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel3 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).jTextField2 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).updateJButton (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).floatPercentJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).adjustFor16AboveJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).adjustFor16BelowJButton (assignedValue)
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Percent:")
        Control.Monad.void (JComboBox.setModel ((jget (this).jComboBox1)) (jio (DefaultComboBoxModel.new_1 (jarrayFromList ["Item 1", "Item 2", "Item 3", "Item 4"]))))
        Control.Monad.void (JButton.setText ((jget (this).aboveJButton)) "Process")
        Control.Monad.void (JButton.addActionListener ((jget (this).aboveJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Width:")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel3)) "Height:")
        Control.Monad.void (JButton.setText ((jget (this).updateJButton)) "Update")
        Control.Monad.void (JButton.addActionListener ((jget (this).updateJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JTextField.setText ((jget (this).floatPercentJTextField)) "-1.000000")
        Control.Monad.void (JTextField.setMinimumSize ((jget (this).floatPercentJTextField)) (jio (Dimension.new_2 120 22)))
        Control.Monad.void (JButton.setText ((jget (this).adjustFor16AboveJButton)) "Adjust for 16 Above")
        Control.Monad.void (JButton.addActionListener ((jget (this).adjustFor16AboveJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JButton.setText ((jget (this).adjustFor16BelowJButton)) "Adjust for 16 Below")
        Control.Monad.void (JButton.addActionListener ((jget (this).adjustFor16BelowJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jLabel1)))) (jget this.jLabel2)))) (jget this.jLabel3)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) False))) (jget this.jComboBox1) 0 (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.jTextField1)))) (jget this.jTextField2)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).uNRELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.floatPercentJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.adjustFor16AboveJButton)))) (jget this.adjustFor16BelowJButton)))))) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))))) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.updateJButton)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.aboveJButton)))) 0 250 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.jComboBox1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.floatPercentJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jTextField1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel2)))) (jget this.adjustFor16AboveJButton)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel3)))) (jget this.jTextField2) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.adjustFor16BelowJButton)))))) 18 18 18))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.aboveJButton)))) (jget this.updateJButton)))))) 175 (Prelude.maxBound :: Int16))))))
        pure ()


aboveJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
aboveJButtonActionPerformed object_ a1 = jmethod object_ "aboveJButtonActionPerformed" (\() -> (aboveJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel))) () a1

aboveJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
aboveJButtonActionPerformed_super object_ a1 = (aboveJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel)) a1

aboveJButtonActionPerformed_impl :: ResizeImageJPanel -> ActionEvent.ActionEvent -> IO (())
aboveJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ResizeImageJPanel.process this)
        pure ()


updateJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
updateJButtonActionPerformed object_ a1 = jmethod object_ "updateJButtonActionPerformed" (\() -> (updateJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel))) () a1

updateJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
updateJButtonActionPerformed_super object_ a1 = (updateJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel)) a1

updateJButtonActionPerformed_impl :: ResizeImageJPanel -> ActionEvent.ActionEvent -> IO (())
updateJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ResizeImageJPanel.update this)
        pure ()


adjustFor16AboveJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
adjustFor16AboveJButtonActionPerformed object_ a1 = jmethod object_ "adjustFor16AboveJButtonActionPerformed" (\() -> (adjustFor16AboveJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel))) () a1

adjustFor16AboveJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
adjustFor16AboveJButtonActionPerformed_super object_ a1 = (adjustFor16AboveJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel)) a1

adjustFor16AboveJButtonActionPerformed_impl :: ResizeImageJPanel -> ActionEvent.ActionEvent -> IO (())
adjustFor16AboveJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ResizeImageJPanel.updateFor16Above this)
        pure ()


adjustFor16BelowJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
adjustFor16BelowJButtonActionPerformed object_ a1 = jmethod object_ "adjustFor16BelowJButtonActionPerformed" (\() -> (adjustFor16BelowJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel))) () a1

adjustFor16BelowJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
adjustFor16BelowJButtonActionPerformed_super object_ a1 = (adjustFor16BelowJButtonActionPerformed_impl (javaCast object_ :: ResizeImageJPanel)) a1

adjustFor16BelowJButtonActionPerformed_impl :: ResizeImageJPanel -> ActionEvent.ActionEvent -> IO (())
adjustFor16BelowJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ResizeImageJPanel.updateFor16Below this)
        pure ()


