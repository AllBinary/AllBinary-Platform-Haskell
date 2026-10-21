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
-- package org.allbinary.graphics.j2me.workarea.properties
module PropertiesJPanel (module PropertiesJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, initComponents, initComponents_super, initComponents_impl, rotateJButton, copyVerticalJButton, leftJButton, rotateJPanel, angleJTextField, workAreaPropertiesJPanel, modifierJPanel, upJButton, jPanel8, downJButton, jPanel7, rightJButton, copyHorizontalJButton)
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
import qualified JButton -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified Font -- same package or java.lang
-- import javax.swing.*
import qualified JPanel

data PropertiesJPanel = PropertiesJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , rotateJButton :: IORef (JButton.JButton)
    , copyVerticalJButton :: IORef (JButton.JButton)
    , leftJButton :: IORef (JButton.JButton)
    , rotateJPanel :: IORef (JPanel.JPanel)
    , angleJTextField :: IORef (JTextField.JTextField)
    , workAreaPropertiesJPanel :: IORef (JPanel.JPanel)
    , modifierJPanel :: IORef (JPanel.JPanel)
    , upJButton :: IORef (JButton.JButton)
    , jPanel8 :: IORef (JPanel.JPanel)
    , downJButton :: IORef (JButton.JButton)
    , jPanel7 :: IORef (JPanel.JPanel)
    , rightJButton :: IORef (JButton.JButton)
    , copyHorizontalJButton :: IORef (JButton.JButton)
    }

instance JavaNull PropertiesJPanel where
    javaNull = javaNullRecord "PropertiesJPanel"

instance JavaEquals PropertiesJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PropertiesJPanel where
    (==) = jrecordEquals

instance JavaObjectClass PropertiesJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PropertiesJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    rotateJButton <- newIORef javaNull
    copyVerticalJButton <- newIORef javaNull
    leftJButton <- newIORef javaNull
    rotateJPanel <- newIORef javaNull
    angleJTextField <- newIORef javaNull
    workAreaPropertiesJPanel <- newIORef javaNull
    modifierJPanel <- newIORef javaNull
    upJButton <- newIORef javaNull
    jPanel8 <- newIORef javaNull
    downJButton <- newIORef javaNull
    jPanel7 <- newIORef javaNull
    rightJButton <- newIORef javaNull
    copyHorizontalJButton <- newIORef javaNull
    let this = PropertiesJPanel header_ base rotateJButton copyVerticalJButton leftJButton rotateJPanel angleJTextField workAreaPropertiesJPanel modifierJPanel upJButton jPanel8 downJButton jPanel7 rightJButton copyHorizontalJButton
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    pure this

initFields_ :: PropertiesJPanel -> IO ()
initFields_ this = do
    jset this.rotateJButton (javaNull)
    jset this.copyVerticalJButton (javaNull)
    jset this.leftJButton (javaNull)
    jset this.rotateJPanel (javaNull)
    jset this.angleJTextField (javaNull)
    jset this.workAreaPropertiesJPanel (javaNull)
    jset this.modifierJPanel (javaNull)
    jset this.upJButton (javaNull)
    jset this.jPanel8 (javaNull)
    jset this.downJButton (javaNull)
    jset this.jPanel7 (javaNull)
    jset this.rightJButton (javaNull)
    jset this.copyHorizontalJButton (javaNull)
    pure ()

new_ :: IO PropertiesJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PropertiesJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (PropertiesJPanel.initComponents this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: PropertiesJPanel))) () a1

set_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: PropertiesJPanel)) a1

set_impl :: PropertiesJPanel -> JPanel.JPanel -> IO (())
set_impl this panel = do
        Control.Monad.void (JPanel.add ((jget (this).workAreaPropertiesJPanel)) panel)
        Control.Monad.void (JPanel.repaint this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: PropertiesJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: PropertiesJPanel))

initComponents_impl :: PropertiesJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JPanel.new_)
        jset (this).workAreaPropertiesJPanel (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).modifierJPanel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).copyVerticalJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).copyHorizontalJButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).rotateJPanel (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).rotateJButton (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).angleJTextField (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel7 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).upJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).downJButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel8 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).leftJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).rightJButton (assignedValue)
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 2 1)))
        Control.Monad.void (JPanel.setLayout ((jget (this).workAreaPropertiesJPanel)) (jio (GridLayout.new_)))
        Control.Monad.void (JPanel.add this (jget (this).workAreaPropertiesJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).modifierJPanel)) (jio (GridLayout.new_2 6 0)))
        Control.Monad.void (JButton.setFont ((jget (this).copyVerticalJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).copyVerticalJButton)) "Copy Vertical")
        Control.Monad.void (JPanel.add ((jget (this).modifierJPanel)) (jget (this).copyVerticalJButton))
        Control.Monad.void (JButton.setFont ((jget (this).copyHorizontalJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).copyHorizontalJButton)) "Copy Horizontal")
        Control.Monad.void (JPanel.add ((jget (this).modifierJPanel)) (jget (this).copyHorizontalJButton))
        Control.Monad.void (JPanel.setLayout ((jget (this).rotateJPanel)) (jio (GridLayout.new_2 1 2)))
        Control.Monad.void (JButton.setFont ((jget (this).rotateJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).rotateJButton)) "Rotate")
        Control.Monad.void (JPanel.add ((jget (this).rotateJPanel)) (jget (this).rotateJButton))
        Control.Monad.void (JTextField.setText ((jget (this).angleJTextField)) "Angle")
        Control.Monad.void (JPanel.add ((jget (this).rotateJPanel)) (jget (this).angleJTextField))
        Control.Monad.void (JPanel.add ((jget (this).modifierJPanel)) (jget (this).rotateJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel7)) (jio (GridLayout.new_2 1 2)))
        Control.Monad.void (JButton.setFont ((jget (this).upJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).upJButton)) "Up")
        Control.Monad.void (JPanel.add ((jget (this).jPanel7)) (jget (this).upJButton))
        Control.Monad.void (JButton.setFont ((jget (this).downJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).downJButton)) "Down")
        Control.Monad.void (JPanel.add ((jget (this).jPanel7)) (jget (this).downJButton))
        Control.Monad.void (JPanel.add ((jget (this).modifierJPanel)) (jget (this).jPanel7))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel8)) (jio (GridLayout.new_2 1 2)))
        Control.Monad.void (JButton.setFont ((jget (this).leftJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).leftJButton)) "Left")
        Control.Monad.void (JPanel.add ((jget (this).jPanel8)) (jget (this).leftJButton))
        Control.Monad.void (JButton.setFont ((jget (this).rightJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).rightJButton)) "Right")
        Control.Monad.void (JPanel.add ((jget (this).jPanel8)) (jget (this).rightJButton))
        Control.Monad.void (JPanel.add ((jget (this).modifierJPanel)) (jget (this).jPanel8))
        Control.Monad.void (JPanel.add this (jget (this).modifierJPanel))
        pure ()


