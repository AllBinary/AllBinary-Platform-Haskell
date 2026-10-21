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
module ImageJPanel (module ImageJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, initComponents, initComponents_super, initComponents_impl, logUtil, commonStrings, canvasStrings, isDrawn, bufferedImage)
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
import qualified GroupLayout -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
import qualified JPanel

data ImageJPanel = ImageJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , canvasStrings :: IORef (CanvasStrings.CanvasStrings)
    , isDrawn :: IORef (Bool)
    , bufferedImage :: IORef (BufferedImage.BufferedImage)
    }

instance JavaNull ImageJPanel where
    javaNull = javaNullRecord "ImageJPanel"

instance JavaEquals ImageJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ImageJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    canvasStrings <- newIORef javaNull
    isDrawn <- newIORef False
    bufferedImage <- newIORef javaNull
    let this = ImageJPanel header_ base logUtil commonStrings canvasStrings isDrawn bufferedImage
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    pure this

initFields_ :: ImageJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.canvasStrings =<< (CanvasStrings.getInstance)
    jset this.isDrawn (False)
    jset this.bufferedImage (javaNull)
    pure ()

new_1 :: BufferedImage.BufferedImage -> IO ImageJPanel
new_1 bufferedImage = do
    this <- newRecord_
    init_1 this bufferedImage
    pure this

init_1 :: ImageJPanel -> BufferedImage.BufferedImage -> IO ()
init_1 this bufferedImage = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (ImageJPanel.initComponents this)
        jset (this).bufferedImage (bufferedImage)
        Control.Monad.void (JPanel.setSize this (jio (BufferedImage.getWidth ((jget (this).bufferedImage)) javaNull)) (jio (BufferedImage.getHeight ((jget (this).bufferedImage)) javaNull)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ImageJPanel))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ImageJPanel)) a1

paint_impl :: ImageJPanel -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        when (Prelude.not (jget (this).isDrawn)) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).canvasStrings)).pAINT))
            Control.Monad.void (Graphics.drawImage graphics (jget this.bufferedImage) 0 0 (jio (BufferedImage.getWidth ((jget (this).bufferedImage)) javaNull)) (jio (BufferedImage.getHeight ((jget (this).bufferedImage)) javaNull)) javaNull)
            jset (this).isDrawn (True)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ImageJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ImageJPanel))

initComponents_impl :: ImageJPanel -> IO (())
initComponents_impl this = do
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 400 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 300 (Prelude.maxBound :: Int16))))
        pure ()


