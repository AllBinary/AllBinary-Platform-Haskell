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
module CreateIconImagesJPanel (module CreateIconImagesJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, getImageProcessorInput, getImageProcessorInput_super, getImageProcessorInput_impl, setImageProcessorInput, setImageProcessorInput_super, setImageProcessorInput_impl, initComponents, initComponents_super, initComponents_impl, aboveJButtonActionPerformed, aboveJButtonActionPerformed_super, aboveJButtonActionPerformed_impl, logUtil, commonStrings, imageProcessorInput, aboveJButton)
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
import qualified JButton -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified Raster -- java.awt.image.Raster
import qualified File -- java.io.File
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ImagePersistanceUtil -- org.allbinary.media.image.ImagePersistanceUtil
import qualified ImageProcessorInput -- org.allbinary.media.image.ImageProcessorInput
import qualified ImageProcessorInputCompositeInterface -- org.allbinary.media.image.ImageProcessorInputCompositeInterface
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified JPanel

-- implements ImageProcessorInputCompositeInterface
data CreateIconImagesJPanel = CreateIconImagesJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageProcessorInput :: IORef (ImageProcessorInput.ImageProcessorInput)
    , aboveJButton :: IORef (JButton.JButton)
    }

instance JavaNull CreateIconImagesJPanel where
    javaNull = javaNullRecord "CreateIconImagesJPanel"

instance JavaEquals CreateIconImagesJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CreateIconImagesJPanel where
    (==) = jrecordEquals

instance JavaObjectClass CreateIconImagesJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CreateIconImagesJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageProcessorInput <- newIORef javaNull
    aboveJButton <- newIORef javaNull
    let this = CreateIconImagesJPanel header_ base logUtil commonStrings imageProcessorInput aboveJButton
    jregisterLevel header_ this
    ImageProcessorInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getImageProcessorInput" (\() -> getImageProcessorInput_impl this)
    jregisterMethod header_ "setImageProcessorInput" (\() -> setImageProcessorInput_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "aboveJButtonActionPerformed" (\() -> aboveJButtonActionPerformed_impl this)
    pure this

initFields_ :: CreateIconImagesJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageProcessorInput (javaNull)
    jset this.aboveJButton (javaNull)
    pure ()

new_1 :: ImageProcessorInput.ImageProcessorInput -> IO CreateIconImagesJPanel
new_1 imageProcessorInput = do
    this <- newRecord_
    init_1 this imageProcessorInput
    pure this

init_1 :: CreateIconImagesJPanel -> ImageProcessorInput.ImageProcessorInput -> IO ()
init_1 this imageProcessorInput = do
        JPanel.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (CreateIconImagesJPanel.initComponents this)
        jset (this).imageProcessorInput (imageProcessorInput)
        let numberStringArray = (jnewArray (101) javaNull)
        jsetIndex numberStringArray (0) ((javaToString (Prelude.negate 1)))
        forM_ [1 .. 100 - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex numberStringArray (index) ((javaToString index))
        araster <- (getAlphaRaster ((jindex ((jio (ImageProcessorInput.getBufferedImageArray ((jget (this).imageProcessorInput))))) (0))))
        if (araster == javaNull) then do
            Control.Monad.void (putStrLn (javaToString "there is no Alpha channel!!!!!!!!!"))
        else do
            Control.Monad.void (putStrLn (javaToString "Alpha channel found !"))
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: CreateIconImagesJPanel))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: CreateIconImagesJPanel))

process_impl :: CreateIconImagesJPanel -> IO (())
process_impl this = do
        Control.Monad.void (Thread.start ((Thread.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


getImageProcessorInput :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput object_ = jmethod object_ "getImageProcessorInput" (\() -> (getImageProcessorInput_impl (javaCast object_ :: CreateIconImagesJPanel))) ()

getImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_super object_ = (getImageProcessorInput_impl (javaCast object_ :: CreateIconImagesJPanel))

getImageProcessorInput_impl :: CreateIconImagesJPanel -> IO (ImageProcessorInput.ImageProcessorInput)
getImageProcessorInput_impl this = do
        pure ((jget (this).imageProcessorInput))


setImageProcessorInput :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput object_ a1 = jmethod object_ "setImageProcessorInput" (\() -> (setImageProcessorInput_impl (javaCast object_ :: CreateIconImagesJPanel))) () a1

setImageProcessorInput_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_super object_ a1 = (setImageProcessorInput_impl (javaCast object_ :: CreateIconImagesJPanel)) a1

setImageProcessorInput_impl :: CreateIconImagesJPanel -> ImageProcessorInput.ImageProcessorInput -> IO (())
setImageProcessorInput_impl this imageProcessorInput = do
        jset (this).imageProcessorInput (imageProcessorInput)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: CreateIconImagesJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: CreateIconImagesJPanel))

initComponents_impl :: CreateIconImagesJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JButton.new_)
        jset (this).aboveJButton (assignedValue)
        Control.Monad.void (JButton.setText ((jget (this).aboveJButton)) "Process")
        Control.Monad.void (JButton.addActionListener ((jget (this).aboveJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.aboveJButton)))) 0 335 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.aboveJButton)))) 286 (Prelude.maxBound :: Int16))))))
        pure ()


aboveJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
aboveJButtonActionPerformed object_ a1 = jmethod object_ "aboveJButtonActionPerformed" (\() -> (aboveJButtonActionPerformed_impl (javaCast object_ :: CreateIconImagesJPanel))) () a1

aboveJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
aboveJButtonActionPerformed_super object_ a1 = (aboveJButtonActionPerformed_impl (javaCast object_ :: CreateIconImagesJPanel)) a1

aboveJButtonActionPerformed_impl :: CreateIconImagesJPanel -> ActionEvent.ActionEvent -> IO (())
aboveJButtonActionPerformed_impl this evt = do
        Control.Monad.void (CreateIconImagesJPanel.process this)
        pure ()


